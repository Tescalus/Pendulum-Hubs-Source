--Made local by:gamingsugo
--Discord:Arvain#7962

Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
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
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
--Left--
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Weld")
o5 = Instance.new("Part")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("SpecialMesh")
o10 = Instance.new("Weld")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Weld")
o14 = Instance.new("Part")
o15 = Instance.new("CylinderMesh")
o16 = Instance.new("Part")
o17 = Instance.new("SpecialMesh")
o18 = Instance.new("Part")
o19 = Instance.new("SpecialMesh")
o20 = Instance.new("Weld")
o21 = Instance.new("Part")
o22 = Instance.new("SpecialMesh")
o23 = Instance.new("Weld")
o24 = Instance.new("Part")
o25 = Instance.new("SpecialMesh")
o26 = Instance.new("Weld")
o27 = Instance.new("Part")
o28 = Instance.new("SpecialMesh")
o29 = Instance.new("Weld")
o30 = Instance.new("Part")
o31 = Instance.new("SpecialMesh")
o32 = Instance.new("Weld")
o33 = Instance.new("Part")
o34 = Instance.new("Weld")
o35 = Instance.new("Part")
o36 = Instance.new("SpecialMesh")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Weld")
o41 = Instance.new("Part")
o42 = Instance.new("CylinderMesh")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("CylinderMesh")
o46 = Instance.new("Weld")
o47 = Instance.new("Part")
o48 = Instance.new("CylinderMesh")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Weld")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Weld")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Weld")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Weld")
o62 = Instance.new("Part")
o63 = Instance.new("SpecialMesh")
o64 = Instance.new("Weld")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Weld")
o68 = Instance.new("Part")
o69 = Instance.new("SpecialMesh")
o70 = Instance.new("Weld")
o71 = Instance.new("Part")
o72 = Instance.new("SpecialMesh")
o73 = Instance.new("Weld")
o74 = Instance.new("Part")
o75 = Instance.new("CylinderMesh")
o76 = Instance.new("Weld")
o77 = Instance.new("Part")
o78 = Instance.new("SpecialMesh")
o79 = Instance.new("Weld")
o80 = Instance.new("Part")
o81 = Instance.new("SpecialMesh")
o82 = Instance.new("Weld")
o83 = Instance.new("Part")
o84 = Instance.new("SpecialMesh")
o85 = Instance.new("Weld")
o86 = Instance.new("Part")
o87 = Instance.new("CylinderMesh")
o88 = Instance.new("Weld")
o89 = Instance.new("Part")
o90 = Instance.new("SpecialMesh")
o91 = Instance.new("Weld")
o92 = Instance.new("Part")
o93 = Instance.new("SpecialMesh")
o94 = Instance.new("Weld")
o95 = Instance.new("Part")
o96 = Instance.new("SpecialMesh")
o97 = Instance.new("Weld")
o98 = Instance.new("Part")
o99 = Instance.new("Weld")
o100 = Instance.new("Part")
o101 = Instance.new("SpecialMesh")
o102 = Instance.new("Weld")
o103 = Instance.new("Part")
o104 = Instance.new("Weld")
o105 = Instance.new("Part")
o106 = Instance.new("CylinderMesh")
o107 = Instance.new("Weld")
o108 = Instance.new("Part")
o109 = Instance.new("BlockMesh")
o110 = Instance.new("Weld")
o111 = Instance.new("Part")
o112 = Instance.new("BlockMesh")
o113 = Instance.new("Weld")
o114 = Instance.new("Part")
o115 = Instance.new("BlockMesh")
o116 = Instance.new("Weld")
o117 = Instance.new("Part")
o118 = Instance.new("SpecialMesh")
o119 = Instance.new("Weld")
o120 = Instance.new("Part")
o121 = Instance.new("SpecialMesh")
o122 = Instance.new("Weld")
o123 = Instance.new("Part")
o124 = Instance.new("BlockMesh")
o125 = Instance.new("Weld")
o126 = Instance.new("Part")
o127 = Instance.new("SpecialMesh")
o128 = Instance.new("Weld")
o129 = Instance.new("Part")
o130 = Instance.new("SpecialMesh")
o131 = Instance.new("Weld")
o132 = Instance.new("Part")
o133 = Instance.new("SpecialMesh")
o134 = Instance.new("Weld")
o135 = Instance.new("Part")
o136 = Instance.new("SpecialMesh")
o137 = Instance.new("Weld")
o138 = Instance.new("Part")
o139 = Instance.new("SpecialMesh")
o140 = Instance.new("Weld")
o141 = Instance.new("Part")
o142 = Instance.new("SpecialMesh")
o143 = Instance.new("Part")
o144 = Instance.new("SpecialMesh")
o145 = Instance.new("Weld")
o146 = Instance.new("Part")
o147 = Instance.new("SpecialMesh")
o148 = Instance.new("Weld")
o149 = Instance.new("Part")
o150 = Instance.new("SpecialMesh")
o151 = Instance.new("Weld")
o152 = Instance.new("Part")
o153 = Instance.new("CylinderMesh")
o154 = Instance.new("Weld")
o155 = Instance.new("Part")
o156 = Instance.new("CylinderMesh")
o157 = Instance.new("Weld")
o158 = Instance.new("Part")
o159 = Instance.new("SpecialMesh")
o160 = Instance.new("Weld")
o161 = Instance.new("Part")
o162 = Instance.new("SpecialMesh")
o163 = Instance.new("Weld")
o164 = Instance.new("Part")
o165 = Instance.new("SpecialMesh")
o166 = Instance.new("Weld")
o167 = Instance.new("Part")
o168 = Instance.new("SpecialMesh")
o169 = Instance.new("Weld")
o170 = Instance.new("Part")
o171 = Instance.new("SpecialMesh")
o172 = Instance.new("Weld")
o173 = Instance.new("Part")
o174 = Instance.new("SpecialMesh")
o175 = Instance.new("Weld")
o176 = Instance.new("Part")
o177 = Instance.new("SpecialMesh")
o178 = Instance.new("Weld")
o179 = Instance.new("Part")
o180 = Instance.new("SpecialMesh")
o181 = Instance.new("Weld")
o182 = Instance.new("Part")
o183 = Instance.new("SpecialMesh")
o184 = Instance.new("Weld")
o185 = Instance.new("Part")
o186 = Instance.new("SpecialMesh")
o187 = Instance.new("Weld")
o188 = Instance.new("Part")
o189 = Instance.new("SpecialMesh")
o190 = Instance.new("Weld")
o191 = Instance.new("Part")
o192 = Instance.new("SpecialMesh")
o193 = Instance.new("Weld")
o194 = Instance.new("Part")
o195 = Instance.new("SpecialMesh")
o196 = Instance.new("Weld")
o197 = Instance.new("Part")
o198 = Instance.new("SpecialMesh")
o199 = Instance.new("Weld")
o200 = Instance.new("Part")
o201 = Instance.new("SpecialMesh")
o202 = Instance.new("Weld")
o203 = Instance.new("Part")
o204 = Instance.new("SpecialMesh")
o205 = Instance.new("Weld")
o206 = Instance.new("Part")
o207 = Instance.new("SpecialMesh")
o208 = Instance.new("Weld")
o209 = Instance.new("Part")
o210 = Instance.new("SpecialMesh")
o211 = Instance.new("Weld")
o212 = Instance.new("Part")
o213 = Instance.new("SpecialMesh")
o214 = Instance.new("Weld")
o215 = Instance.new("Part")
o216 = Instance.new("SpecialMesh")
o217 = Instance.new("Weld")
o218 = Instance.new("Part")
o219 = Instance.new("SpecialMesh")
o220 = Instance.new("Weld")
o221 = Instance.new("Part")
o222 = Instance.new("SpecialMesh")
o223 = Instance.new("Weld")
o224 = Instance.new("Part")
o225 = Instance.new("SpecialMesh")
o226 = Instance.new("Weld")
o227 = Instance.new("Part")
o228 = Instance.new("SpecialMesh")
o229 = Instance.new("Weld")
o230 = Instance.new("Part")
o231 = Instance.new("SpecialMesh")
o232 = Instance.new("Weld")
o233 = Instance.new("Part")
o234 = Instance.new("SpecialMesh")
o235 = Instance.new("Weld")
o236 = Instance.new("Part")
o237 = Instance.new("SpecialMesh")
o238 = Instance.new("Weld")
o239 = Instance.new("Part")
o240 = Instance.new("SpecialMesh")
o241 = Instance.new("Weld")
o242 = Instance.new("Part")
o243 = Instance.new("SpecialMesh")
o244 = Instance.new("Weld")
o245 = Instance.new("Part")
o246 = Instance.new("SpecialMesh")
o247 = Instance.new("Weld")
o248 = Instance.new("Part")
o249 = Instance.new("SpecialMesh")
o250 = Instance.new("Weld")
o251 = Instance.new("Part")
o252 = Instance.new("SpecialMesh")
o253 = Instance.new("Weld")
o254 = Instance.new("Part")
o255 = Instance.new("SpecialMesh")
o256 = Instance.new("Weld")
o257 = Instance.new("Part")
o258 = Instance.new("SpecialMesh")
o259 = Instance.new("Weld")
o260 = Instance.new("Part")
o261 = Instance.new("SpecialMesh")
o262 = Instance.new("Weld")
o263 = Instance.new("Part")
o264 = Instance.new("SpecialMesh")
o265 = Instance.new("Weld")
o266 = Instance.new("Part")
o267 = Instance.new("SpecialMesh")
o268 = Instance.new("Weld")
o269 = Instance.new("Part")
o270 = Instance.new("SpecialMesh")
o271 = Instance.new("Weld")
o272 = Instance.new("Part")
o273 = Instance.new("SpecialMesh")
o274 = Instance.new("Weld")
o275 = Instance.new("Part")
o276 = Instance.new("SpecialMesh")
o277 = Instance.new("Weld")
o278 = Instance.new("Part")
o279 = Instance.new("SpecialMesh")
o280 = Instance.new("Weld")
o281 = Instance.new("Part")
o282 = Instance.new("SpecialMesh")
o283 = Instance.new("Weld")
o284 = Instance.new("Part")
o285 = Instance.new("SpecialMesh")
o286 = Instance.new("Weld")
o287 = Instance.new("Part")
o288 = Instance.new("SpecialMesh")
o289 = Instance.new("Weld")
o290 = Instance.new("Part")
o291 = Instance.new("SpecialMesh")
o292 = Instance.new("Weld")
o293 = Instance.new("Part")
o294 = Instance.new("SpecialMesh")
o295 = Instance.new("Weld")
o296 = Instance.new("Part")
o297 = Instance.new("SpecialMesh")
o298 = Instance.new("Weld")
o299 = Instance.new("Part")
o300 = Instance.new("SpecialMesh")
o301 = Instance.new("Weld")
o302 = Instance.new("Part")
o303 = Instance.new("SpecialMesh")
o304 = Instance.new("Weld")
o305 = Instance.new("Part")
o306 = Instance.new("SpecialMesh")
o307 = Instance.new("Weld")
o308 = Instance.new("Part")
o309 = Instance.new("SpecialMesh")
o310 = Instance.new("Weld")
o311 = Instance.new("Part")
o312 = Instance.new("SpecialMesh")
o313 = Instance.new("Weld")
o314 = Instance.new("Part")
o315 = Instance.new("SpecialMesh")
o316 = Instance.new("Weld")
o317 = Instance.new("Part")
o318 = Instance.new("SpecialMesh")
o319 = Instance.new("Weld")
o320 = Instance.new("Part")
o321 = Instance.new("SpecialMesh")
o322 = Instance.new("Weld")
o323 = Instance.new("Part")
o324 = Instance.new("SpecialMesh")
o325 = Instance.new("Weld")
o326 = Instance.new("Part")
o327 = Instance.new("SpecialMesh")
o328 = Instance.new("Weld")
o329 = Instance.new("Part")
o330 = Instance.new("SpecialMesh")
o331 = Instance.new("Weld")
o332 = Instance.new("Part")
o333 = Instance.new("SpecialMesh")
o334 = Instance.new("Weld")
o335 = Instance.new("Part")
o336 = Instance.new("SpecialMesh")
o337 = Instance.new("Weld")
o338 = Instance.new("Part")
o339 = Instance.new("SpecialMesh")
o340 = Instance.new("Weld")
o341 = Instance.new("Part")
o342 = Instance.new("SpecialMesh")
o343 = Instance.new("Weld")
o344 = Instance.new("Part")
o345 = Instance.new("SpecialMesh")
o346 = Instance.new("Weld")
o347 = Instance.new("Part")
o348 = Instance.new("SpecialMesh")
o349 = Instance.new("Weld")
o350 = Instance.new("Part")
o351 = Instance.new("SpecialMesh")
o352 = Instance.new("Weld")
o353 = Instance.new("Part")
o354 = Instance.new("SpecialMesh")
o355 = Instance.new("Weld")
o356 = Instance.new("Part")
o357 = Instance.new("SpecialMesh")
o358 = Instance.new("Weld")
o359 = Instance.new("Part")
o360 = Instance.new("SpecialMesh")
o361 = Instance.new("Weld")
o362 = Instance.new("Part")
o363 = Instance.new("SpecialMesh")
o364 = Instance.new("Weld")
o365 = Instance.new("Part")
o1.Name = "Left"
o1.Parent = game.ReplicatedStorage
o2.Name = "part"
o2.Parent = o1
o2.Material = Enum.Material.Metal
o2.Position = Vector3.new(-7.26739264, 1.75540948, -9.51076508)
o2.Rotation = Vector3.new(-89.9899979, 85, -90.0099945)
o2.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o2.Velocity = Vector3.new(-2.61577552e-21, 0.103487223, -3.79704497e-21)
o2.CanCollide = false
o2.Locked = true
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(-7.26739264, 1.75540948, -9.51076508, -2.06523491e-05, 0.0871428549, 0.996199965, 1.552701e-05, -0.996199369, 0.0871426314, 0.999999702, 1.72970376e-05, 1.92113312e-05)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Position = Vector3.new(-7.26739264, 1.75540948, -9.51076508)
o2.Velocity = Vector3.new(-2.61577552e-21, 0.103487223, -3.79704497e-21)
o3.Parent = o2
o3.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o3.MeshType = Enum.MeshType.Brick
o4.Name = "part_Weld"
o4.Parent = o2
o4.C0 = CFrame.new(-15.4239855, 2.46731901, 12.3522243, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o4.C1 = CFrame.new(-15.4239874, 12.4249134, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o4.Part0 = o2
o4.Part1 = o308
o5.Name = "part"
o5.Parent = o1
o5.Material = Enum.Material.Metal
o5.Position = Vector3.new(-7.26737595, 1.75540423, -9.76076984)
o5.Rotation = Vector3.new(-89.9899979, 85, -90.0099945)
o5.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o5.Velocity = Vector3.new(-2.60984934e-21, 0.103487223, -3.7970579e-21)
o5.CanCollide = false
o5.Locked = true
o5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o5.CFrame = CFrame.new(-7.26737595, 1.75540423, -9.76076984, -2.06523491e-05, 0.0871426836, 0.996198654, 1.552701e-05, -0.996197939, 0.0871424526, 0.999999702, 1.72970103e-05, 1.92113021e-05)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Position = Vector3.new(-7.26737595, 1.75540423, -9.76076984)
o5.Velocity = Vector3.new(-2.60984934e-21, 0.103487223, -3.7970579e-21)
o6.Parent = o5
o6.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o6.MeshType = Enum.MeshType.Brick
o7.Name = "part_Weld"
o7.Parent = o5
o7.C0 = CFrame.new(-15.1739807, 2.46731949, 12.3522282, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o7.C1 = CFrame.new(-15.173975, 12.4249115, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o7.Part0 = o5
o7.Part1 = o242
o8.Name = "part"
o8.Parent = o1
o8.Material = Enum.Material.Metal
o8.Position = Vector3.new(-7.2673564, 1.7553978, -10.0107708)
o8.Rotation = Vector3.new(-89.9899979, 85, -90.0099945)
o8.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o8.Velocity = Vector3.new(-2.60392579e-21, 0.103487223, -3.79707405e-21)
o8.CanCollide = false
o8.Locked = true
o8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o8.CFrame = CFrame.new(-7.2673564, 1.7553978, -10.0107708, -2.06523491e-05, 0.0871424302, 0.996197104, 1.552701e-05, -0.996196508, 0.0871423557, 0.999999702, 1.72969831e-05, 1.9211273e-05)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Position = Vector3.new(-7.2673564, 1.7553978, -10.0107708)
o8.Velocity = Vector3.new(-2.60392579e-21, 0.103487223, -3.79707405e-21)
o9.Parent = o8
o9.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o9.MeshType = Enum.MeshType.Brick
o10.Name = "part_Weld"
o10.Parent = o8
o10.C0 = CFrame.new(-14.9239798, 2.46731997, 12.3522339, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o10.C1 = CFrame.new(-14.9239721, 12.4249153, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o10.Part0 = o8
o10.Part1 = o176
o11.Name = "part"
o11.Parent = o1
o11.Material = Enum.Material.SmoothPlastic
o11.BrickColor = BrickColor.new("Institutional white")
o11.Position = Vector3.new(-6.15531635, 3.97901082, -9.21477699)
o11.Rotation = Vector3.new(90, 90, 0)
o11.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o11.Velocity = Vector3.new(1.56150495e-21, 0.103487223, 2.14414666e-21)
o11.CanCollide = false
o11.Locked = true
o11.Shape = Enum.PartType.Ball
o11.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o11.CFrame = CFrame.new(-6.15531635, 3.97901082, -9.21477699, 1.18017197e-05, -2.06523491e-05, 1.00000048, 1, 1.552701e-05, -1.17719173e-05, -1.55568141e-05, 0.999999702, 2.06456607e-05)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.972549, 0.972549, 0.972549)
o11.Position = Vector3.new(-6.15531635, 3.97901082, -9.21477699)
o11.Velocity = Vector3.new(1.56150495e-21, 0.103487223, 2.14414666e-21)
o12.Parent = o11
o12.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o12.MeshType = Enum.MeshType.Sphere
o13.Name = "part_Weld"
o13.Parent = o11
o13.C0 = CFrame.new(-3.6050005, -15.719985, 11.4082508, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o13.C1 = CFrame.new(4.97322464, -15.719985, 11.5352583, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o13.Part0 = o11
o13.Part1 = o53
o14.Name = "part"
o14.Parent = o1
o14.Material = Enum.Material.Granite
o14.BrickColor = BrickColor.new("Alder")
o14.Position = Vector3.new(-6.47206688, 3.28450394, -9.76026821)
o14.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o14.Velocity = Vector3.new(2.67552488e-22, 0.103487223, 2.89234475e-22)
o14.CanCollide = false
o14.Locked = true
o14.Size = Vector3.new(0.915499985, 2.04999995, 1.0999999)
o14.CFrame = CFrame.new(-6.47206688, 3.28450394, -9.76026821, 1, 1.17220197e-05, -2.06454806e-05, -1.17216987e-05, 1, 1.55407015e-05, 2.06456625e-05, -1.55404614e-05, 1)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.705882, 0.501961, 1)
o14.Position = Vector3.new(-6.47206688, 3.28450394, -9.76026821)
o14.Velocity = Vector3.new(2.67552488e-22, 0.103487223, 2.89234475e-22)
o15.Parent = o14
o15.Scale = Vector3.new(0.5, 1, 0.5)
o16.Name = "Handle"
o16.Parent = o1
o16.BrickColor = BrickColor.new("Bright orange")
o16.Transparency = 1
o16.Position = Vector3.new(-6.45531607, 3.37400794, -9.75977612)
o16.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o16.Velocity = Vector3.new(4.35967602e-22, 0.103487223, 5.27714372e-22)
o16.CanCollide = false
o16.Size = Vector3.new(1, 2, 1)
o16.CFrame = CFrame.new(-6.45531607, 3.37400794, -9.75977612, 1.00000024, 1.17700811e-05, -2.06523491e-05, -1.17798645e-05, 0.99999994, 1.552701e-05, 2.06456625e-05, -1.55568123e-05, 0.999999702)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.854902, 0.521569, 0.254902)
o16.Position = Vector3.new(-6.45531607, 3.37400794, -9.75977612)
o16.Velocity = Vector3.new(4.35967602e-22, 0.103487223, 5.27714372e-22)
o17.Parent = o16
o17.MeshId = "rbxasset://fonts/rightarm.mesh"
o17.MeshType = Enum.MeshType.FileMesh
o18.Name = "part"
o18.Parent = o1
o18.BrickColor = BrickColor.new("Institutional white")
o18.Position = Vector3.new(-6.46031475, 2.79400635, -9.75976372)
o18.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o18.Velocity = Vector3.new(-6.55462279e-22, 0.103487223, -1.01521052e-21)
o18.CanCollide = false
o18.Locked = true
o18.Size = Vector3.new(0.5, 0.349999934, 1)
o18.CFrame = CFrame.new(-6.46031475, 2.79400635, -9.75976372, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.972549, 0.972549, 0.972549)
o18.Position = Vector3.new(-6.46031475, 2.79400635, -9.75976372)
o18.Velocity = Vector3.new(-6.55462279e-22, 0.103487223, -1.01521052e-21)
o19.Parent = o18
o19.MeshId = "rbxasset://fonts/rightarm.mesh"
o19.Scale = Vector3.new(1.10000002, 0.0500000007, 1.10000002)
o19.MeshType = Enum.MeshType.FileMesh
o20.Name = "part_Weld"
o20.Parent = o18
o20.C0 = CFrame.new(11.7132454, -2.42000055, -15.1749859, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o20.C1 = CFrame.new(-15.174984, -12.1832561, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o20.Part0 = o18
o20.Part1 = o56
o21.Name = "part"
o21.Parent = o1
o21.BrickColor = BrickColor.new("Institutional white")
o21.Position = Vector3.new(-6.45530319, 4.1435051, -9.75978851)
o21.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o21.Velocity = Vector3.new(1.88398503e-21, 0.103487223, 2.57457966e-21)
o21.CanCollide = false
o21.Locked = true
o21.Size = Vector3.new(0.5, 0.349999934, 1)
o21.CFrame = CFrame.new(-6.45530319, 4.1435051, -9.75978851, 1.00000024, 1.17700811e-05, -2.06523491e-05, -1.17798645e-05, 0.99999994, 1.552701e-05, 2.06456625e-05, -1.55568123e-05, 0.999999702)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.972549, 0.972549, 0.972549)
o21.Position = Vector3.new(-6.45530319, 4.1435051, -9.75978851)
o21.Velocity = Vector3.new(1.88398503e-21, 0.103487223, 2.57457966e-21)
o22.Parent = o21
o22.MeshId = "rbxasset://fonts/rightarm.mesh"
o22.Scale = Vector3.new(1.10000002, 0.075000003, 1.10000002)
o22.MeshType = Enum.MeshType.FileMesh
o23.Name = "ArmHandle_Weld"
o23.Parent = o21
o23.C0 = CFrame.new(11.7082539, -3.76949954, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o23.C1 = CFrame.new(11.7082577, -3.00000238, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o23.Part0 = o21
o23.Part1 = o16
o24.Name = "part"
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Institutional white")
o24.Position = Vector3.new(-6.15530109, 3.97899365, -10.3097734)
o24.Rotation = Vector3.new(90, 20, 0)
o24.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o24.Velocity = Vector3.new(1.58747006e-21, 0.103487223, 2.14410142e-21)
o24.CanCollide = false
o24.Locked = true
o24.Shape = Enum.PartType.Ball
o24.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o24.CFrame = CFrame.new(-6.15530109, 3.97899365, -10.3097734, 0.939697027, -2.06523491e-05, 0.342008919, 0.342008829, 1.552701e-05, -0.939696729, 1.40798393e-05, 0.999999702, 2.16798508e-05)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
o24.Position = Vector3.new(-6.15530109, 3.97899365, -10.3097734)
o24.Velocity = Vector3.new(1.58747006e-21, 0.103487223, 2.14410142e-21)
o25.Parent = o24
o25.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o25.MeshType = Enum.MeshType.Sphere
o26.Name = "part_Weld"
o26.Parent = o24
o26.C0 = CFrame.new(9.48727798, -14.6249886, 7.28944492, 0.939692736, 0.342019916, 0, 0, 0, 1, 0.342019886, -0.939692736, 0)
o26.C1 = CFrame.new(11.7082539, -3.76949954, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o26.Part0 = o24
o26.Part1 = o21
o27.Name = "part"
o27.Parent = o1
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Really black")
o27.Position = Vector3.new(-6.15530205, 3.97899342, -10.3097734)
o27.Rotation = Vector3.new(90, 20, 0)
o27.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o27.Velocity = Vector3.new(1.58746966e-21, 0.103487223, 2.14410082e-21)
o27.CanCollide = false
o27.Locked = true
o27.Shape = Enum.PartType.Ball
o27.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o27.CFrame = CFrame.new(-6.15530205, 3.97899342, -10.3097734, 0.939697027, -2.06523491e-05, 0.342008889, 0.342008859, 1.552701e-05, -0.939696729, 1.40798384e-05, 0.999999702, 2.16798508e-05)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o27.Position = Vector3.new(-6.15530205, 3.97899342, -10.3097734)
o27.Velocity = Vector3.new(1.58746966e-21, 0.103487223, 2.14410082e-21)
o28.Parent = o27
o28.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o28.MeshType = Enum.MeshType.Cylinder
o29.Name = "part_Weld"
o29.Parent = o27
o29.C0 = CFrame.new(9.48727798, -14.6249886, 7.28944492, 0.939692736, 0.342019916, 0, 0, 0, 1, 0.342019886, -0.939692736, 0)
o29.C1 = CFrame.new(9.48727798, -14.6249886, 7.28944492, 0.939692736, 0.342019916, 0, 0, 0, 1, 0.342019886, -0.939692736, 0)
o29.Part0 = o27
o29.Part1 = o24
o30.Name = "part"
o30.Parent = o1
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Institutional white")
o30.Position = Vector3.new(-6.78029633, 3.97900081, -10.3097887)
o30.Rotation = Vector3.new(-90, 10, 180)
o30.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o30.Velocity = Vector3.new(1.58748389e-21, 0.103487223, 2.12928164e-21)
o30.CanCollide = false
o30.Locked = true
o30.Shape = Enum.PartType.Ball
o30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o30.CFrame = CFrame.new(-6.78029633, 3.97900081, -10.3097887, -0.98480618, -2.06523491e-05, 0.173658699, 0.17365858, 1.552701e-05, 0.984805942, -2.30334063e-05, 0.999999702, -1.17354157e-05)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
o30.Position = Vector3.new(-6.78029633, 3.97900081, -10.3097887)
o30.Velocity = Vector3.new(1.58748389e-21, 0.103487223, 2.12928164e-21)
o31.Parent = o30
o31.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o31.MeshType = Enum.MeshType.Sphere
o32.Name = "part_Weld"
o32.Parent = o30
o32.C0 = CFrame.new(-12.4764423, -14.6249866, -1.46069455, -0.984807968, 0.173647001, 0, 0, 0, 1, 0.173647001, 0.984807968, 0)
o32.C1 = CFrame.new(9.48727798, -14.6249886, 7.28944492, 0.939692736, 0.342019916, 0, 0, 0, 1, 0.342019886, -0.939692736, 0)
o32.Part0 = o30
o32.Part1 = o27
o33.Name = "part"
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Institutional white")
o33.Position = Vector3.new(-6.45530558, 3.97900581, -9.75977516)
o33.Rotation = Vector3.new(0, 90, 0)
o33.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o33.Velocity = Vector3.new(1.5744348e-21, 0.103487223, 2.13701102e-21)
o33.CanCollide = false
o33.Locked = true
o33.Shape = Enum.PartType.Cylinder
o33.Size = Vector3.new(1.11000001, 0.349999934, 1)
o33.CFrame = CFrame.new(-6.45530558, 3.97900581, -9.75977516, 2.06523491e-05, 1.18166208e-05, 1.00000036, -1.552701e-05, 1, -1.17570162e-05, -0.999999702, -1.55568123e-05, 2.06456625e-05)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.972549, 0.972549, 0.972549)
o33.Position = Vector3.new(-6.45530558, 3.97900581, -9.75977516)
o33.Velocity = Vector3.new(1.5744348e-21, 0.103487223, 2.13701102e-21)
o34.Name = "part_Weld"
o34.Parent = o33
o34.C0 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o34.C1 = CFrame.new(-12.4764423, -14.6249866, -1.46069455, -0.984807968, 0.173647001, 0, 0, 0, 1, 0.173647001, 0.984807968, 0)
o34.Part0 = o33
o34.Part1 = o30
o35.Name = "part"
o35.Parent = o1
o35.BrickColor = BrickColor.new("Institutional white")
o35.Position = Vector3.new(-6.45530748, 3.97900581, -9.75978661)
o35.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o35.Velocity = Vector3.new(1.5744351e-21, 0.103487223, 2.13701102e-21)
o35.CanCollide = false
o35.Locked = true
o35.Size = Vector3.new(0.5, 0.349999934, 1)
o35.CFrame = CFrame.new(-6.45530748, 3.97900581, -9.75978661, 1.00000036, 1.18166208e-05, -2.06523491e-05, -1.17570162e-05, 1, 1.552701e-05, 2.06456625e-05, -1.55568123e-05, 0.999999702)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.972549, 0.972549, 0.972549)
o35.Position = Vector3.new(-6.45530748, 3.97900581, -9.75978661)
o35.Velocity = Vector3.new(1.5744351e-21, 0.103487223, 2.13701102e-21)
o36.Parent = o35
o36.MeshId = "rbxasset://fonts/rightarm.mesh"
o36.Scale = Vector3.new(1.10000002, 0.00999999978, 1.10000002)
o36.MeshType = Enum.MeshType.FileMesh
o37.Name = "part_Weld"
o37.Parent = o35
o37.C0 = CFrame.new(11.7082539, -3.6050005, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o37.C1 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o37.Part0 = o35
o37.Part1 = o33
o38.Name = "part"
o38.Parent = o1
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Really black")
o38.Position = Vector3.new(-6.1553154, 3.97901082, -9.21477795)
o38.Rotation = Vector3.new(90, 90, 0)
o38.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o38.Velocity = Vector3.new(1.56150485e-21, 0.103487223, 2.14414686e-21)
o38.CanCollide = false
o38.Locked = true
o38.Shape = Enum.PartType.Ball
o38.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o38.CFrame = CFrame.new(-6.1553154, 3.97901082, -9.21477795, 1.18166208e-05, -2.06523491e-05, 1.00000036, 1, 1.552701e-05, -1.17570162e-05, -1.55568123e-05, 0.999999702, 2.06456625e-05)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38.Position = Vector3.new(-6.1553154, 3.97901082, -9.21477795)
o38.Velocity = Vector3.new(1.56150485e-21, 0.103487223, 2.14414686e-21)
o39.Parent = o38
o39.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o39.MeshType = Enum.MeshType.Cylinder
o40.Name = "part_Weld"
o40.Parent = o38
o40.C0 = CFrame.new(-3.6050005, -15.719985, 11.4082508, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o40.C1 = CFrame.new(11.7082539, -3.6050005, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o40.Part0 = o38
o40.Part1 = o35
o41.Name = "part"
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Institutional white")
o41.Position = Vector3.new(-6.78030825, 3.97900963, -9.75978947)
o41.Rotation = Vector3.new(90, 50, 0)
o41.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o41.Velocity = Vector3.new(1.57444237e-21, 0.103487223, 2.12930487e-21)
o41.CanCollide = false
o41.Locked = true
o41.Shape = Enum.PartType.Cylinder
o41.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o41.CFrame = CFrame.new(-6.78030825, 3.97900963, -9.75978947, 0.642796278, -2.06523491e-05, 0.766037703, 0.766037405, 1.552701e-05, -0.64279598, 1.35354458e-06, 0.999999702, 2.58152213e-05)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o41.Position = Vector3.new(-6.78030825, 3.97900963, -9.75978947)
o41.Velocity = Vector3.new(1.57444237e-21, 0.103487223, 2.12930487e-21)
o42.Parent = o41
o42.Scale = Vector3.new(0.224999994, 0.736000001, 0.224999994)
o43.Name = "part_Weld"
o43.Parent = o41
o43.C0 = CFrame.new(4.97322655, -15.1749859, 11.5352612, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o43.C1 = CFrame.new(-3.6050005, -15.719985, 11.4082508, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o43.Part0 = o41
o43.Part1 = o38
o44.Name = "part"
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Dark stone grey")
o44.Position = Vector3.new(-6.15530825, 3.97900248, -9.75977612)
o44.Rotation = Vector3.new(90, 90, 0)
o44.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o44.Velocity = Vector3.new(1.57442864e-21, 0.103487223, 2.14412465e-21)
o44.CanCollide = false
o44.Locked = true
o44.Shape = Enum.PartType.Cylinder
o44.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o44.CFrame = CFrame.new(-6.15530825, 3.97900248, -9.75977612, 1.18017197e-05, -2.06523491e-05, 1.00000048, 1, 1.552701e-05, -1.17719173e-05, -1.55568123e-05, 0.999999702, 2.06456607e-05)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.388235, 0.372549, 0.384314)
o44.Position = Vector3.new(-6.15530825, 3.97900248, -9.75977612)
o44.Velocity = Vector3.new(1.57442864e-21, 0.103487223, 2.14412465e-21)
o45.Parent = o44
o45.Scale = Vector3.new(0.300000012, 0.734999955, 0.300000012)
o46.Name = "part_Weld"
o46.Parent = o44
o46.C0 = CFrame.new(-3.6050005, -15.1749859, 11.4082546, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o46.C1 = CFrame.new(4.97322655, -15.1749859, 11.5352612, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o46.Part0 = o44
o46.Part1 = o41
o47.Name = "part"
o47.Parent = o1
o47.Material = Enum.Material.SmoothPlastic
o47.BrickColor = BrickColor.new("Dark stone grey")
o47.Position = Vector3.new(-6.78030872, 3.97900987, -9.75978947)
o47.Rotation = Vector3.new(90, 50, 0)
o47.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o47.Velocity = Vector3.new(1.57444288e-21, 0.103487223, 2.12930547e-21)
o47.CanCollide = false
o47.Locked = true
o47.Shape = Enum.PartType.Cylinder
o47.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o47.CFrame = CFrame.new(-6.78030872, 3.97900987, -9.75978947, 0.642796338, -2.06523491e-05, 0.766037762, 0.766037405, 1.552701e-05, -0.64279598, 1.35354367e-06, 0.999999702, 2.58152213e-05)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.388235, 0.372549, 0.384314)
o47.Position = Vector3.new(-6.78030872, 3.97900987, -9.75978947)
o47.Velocity = Vector3.new(1.57444288e-21, 0.103487223, 2.12930547e-21)
o48.Parent = o47
o48.Scale = Vector3.new(0.300000012, 0.734999955, 0.300000012)
o49.Name = "part_Weld"
o49.Parent = o47
o49.C0 = CFrame.new(4.97322655, -15.1749859, 11.5352612, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o49.C1 = CFrame.new(-3.6050005, -15.1749859, 11.4082546, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o49.Part0 = o47
o49.Part1 = o44
o50.Name = "part"
o50.Parent = o1
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Institutional white")
o50.Position = Vector3.new(-6.78031635, 3.97901797, -9.21479034)
o50.Rotation = Vector3.new(90, 50, 0)
o50.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o50.Velocity = Vector3.new(1.56151868e-21, 0.103487223, 2.12932688e-21)
o50.CanCollide = false
o50.Locked = true
o50.Shape = Enum.PartType.Ball
o50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o50.CFrame = CFrame.new(-6.78031635, 3.97901797, -9.21479034, 0.642796338, -2.06523491e-05, 0.766037762, 0.766037405, 1.552701e-05, -0.64279598, 1.35354367e-06, 0.999999702, 2.58152213e-05)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.972549, 0.972549, 0.972549)
o50.Position = Vector3.new(-6.78031635, 3.97901797, -9.21479034)
o50.Velocity = Vector3.new(1.56151868e-21, 0.103487223, 2.12932688e-21)
o51.Parent = o50
o51.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o51.MeshType = Enum.MeshType.Sphere
o52.Name = "part_Weld"
o52.Parent = o50
o52.C0 = CFrame.new(4.97322464, -15.719985, 11.5352583, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o52.C1 = CFrame.new(4.97322655, -15.1749859, 11.5352612, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o52.Part0 = o50
o52.Part1 = o47
o53.Name = "part"
o53.Parent = o1
o53.Material = Enum.Material.SmoothPlastic
o53.BrickColor = BrickColor.new("Really black")
o53.Position = Vector3.new(-6.78031635, 3.97901797, -9.21479034)
o53.Rotation = Vector3.new(90, 50, 0)
o53.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o53.Velocity = Vector3.new(1.56151868e-21, 0.103487223, 2.12932688e-21)
o53.CanCollide = false
o53.Locked = true
o53.Shape = Enum.PartType.Ball
o53.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o53.CFrame = CFrame.new(-6.78031635, 3.97901797, -9.21479034, 0.642796338, -2.06523491e-05, 0.766037762, 0.766037405, 1.552701e-05, -0.64279598, 1.35354367e-06, 0.999999702, 2.58152213e-05)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Position = Vector3.new(-6.78031635, 3.97901797, -9.21479034)
o53.Velocity = Vector3.new(1.56151868e-21, 0.103487223, 2.12932688e-21)
o54.Parent = o53
o54.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o54.MeshType = Enum.MeshType.Cylinder
o55.Name = "part_Weld"
o55.Parent = o53
o55.C0 = CFrame.new(4.97322464, -15.719985, 11.5352583, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o55.C1 = CFrame.new(4.97322464, -15.719985, 11.5352583, 0.64278698, 0.766044974, 0, 0, 0, 1, 0.766044974, -0.64278698, 0)
o55.Part0 = o53
o55.Part1 = o50
o56.Name = "part"
o56.Parent = o1
o56.Position = Vector3.new(-6.93032694, 2.69901729, -9.75977421)
o56.Rotation = Vector3.new(90, 0, 90)
o56.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o56.Velocity = Vector3.new(-8.34209628e-22, 0.103487223, -1.27904085e-21)
o56.CanCollide = false
o56.Locked = true
o56.Size = Vector3.new(0.200000003, 0.349999934, 1)
o56.CFrame = CFrame.new(-6.93032694, 2.69901729, -9.75977421, -2.06523491e-05, -1.0000006, -1.18017197e-05, 1.552701e-05, 1.17719173e-05, -1, 0.999999702, -2.06456607e-05, 1.55568141e-05)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Position = Vector3.new(-6.93032694, 2.69901729, -9.75977421)
o56.Velocity = Vector3.new(-8.34209628e-22, 0.103487223, -1.27904085e-21)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o57.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o57.MeshType = Enum.MeshType.FileMesh
o58.Name = "part_Weld"
o58.Parent = o56
o58.C0 = CFrame.new(-15.174984, -12.1832561, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o58.C1 = CFrame.new(12.008255, -2.1250031, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o58.Part0 = o56
o58.Part1 = o59
o59.Name = "part"
o59.Parent = o1
o59.BrickColor = BrickColor.new("Institutional white")
o59.Position = Vector3.new(-6.75532818, 2.49901223, -9.75976181)
o59.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o59.Velocity = Vector3.new(-1.21057358e-21, 0.103487223, -1.80690012e-21)
o59.CanCollide = false
o59.Locked = true
o59.Size = Vector3.new(0.5, 0.349999934, 1)
o59.CFrame = CFrame.new(-6.75532818, 2.49901223, -9.75976181, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
o59.Position = Vector3.new(-6.75532818, 2.49901223, -9.75976181)
o59.Velocity = Vector3.new(-1.21057358e-21, 0.103487223, -1.80690012e-21)
o60.Parent = o59
o60.MeshId = "rbxasset://fonts/rightarm.mesh"
o60.Scale = Vector3.new(0.5, 0.174999997, 1.10000002)
o60.MeshType = Enum.MeshType.FileMesh
o61.Name = "part_Weld"
o61.Parent = o59
o61.C0 = CFrame.new(12.008255, -2.1250031, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o61.C1 = CFrame.new(11.8332577, -2.325001, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o61.Part0 = o59
o61.Part1 = o62
o62.Name = "part"
o62.Parent = o1
o62.BrickColor = BrickColor.new("Institutional white")
o62.Position = Vector3.new(-6.58032846, 2.69900799, -9.75976086)
o62.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o62.Velocity = Vector3.new(-8.34227501e-22, 0.103487223, -1.27075581e-21)
o62.CanCollide = false
o62.Locked = true
o62.Size = Vector3.new(0.5, 0.349999934, 1)
o62.CFrame = CFrame.new(-6.58032846, 2.69900799, -9.75976086, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.972549, 0.972549, 0.972549)
o62.Position = Vector3.new(-6.58032846, 2.69900799, -9.75976086)
o62.Velocity = Vector3.new(-8.34227501e-22, 0.103487223, -1.27075581e-21)
o63.Parent = o62
o63.MeshId = "rbxasset://fonts/rightarm.mesh"
o63.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o63.MeshType = Enum.MeshType.FileMesh
o64.Name = "part_Weld"
o64.Parent = o62
o64.C0 = CFrame.new(11.8332577, -2.325001, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o64.C1 = CFrame.new(11.9732513, -2.325001, -15.174984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o64.Part0 = o62
o64.Part1 = o65
o65.Name = "part"
o65.Parent = o1
o65.Material = Enum.Material.Granite
o65.BrickColor = BrickColor.new("Alder")
o65.Position = Vector3.new(-6.72032213, 2.69900966, -9.75976944)
o65.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o65.Velocity = Vector3.new(-8.34224169e-22, 0.103487223, -1.27407514e-21)
o65.CanCollide = false
o65.Locked = true
o65.Size = Vector3.new(0.5, 0.349999934, 1)
o65.CFrame = CFrame.new(-6.72032213, 2.69900966, -9.75976944, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Color = Color3.new(0.705882, 0.501961, 1)
o65.Position = Vector3.new(-6.72032213, 2.69900966, -9.75976944)
o65.Velocity = Vector3.new(-8.34224169e-22, 0.103487223, -1.27407514e-21)
o66.Parent = o65
o66.Scale = Vector3.new(0.529999971, 0.400000006, 1.09899998)
o67.Name = "part_Weld"
o67.Parent = o65
o67.C0 = CFrame.new(11.9732513, -2.325001, -15.174984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o67.C1 = CFrame.new(-14.9249811, -12.1832581, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o67.Part0 = o65
o67.Part1 = o68
o68.Name = "part"
o68.Parent = o1
o68.Position = Vector3.new(-6.9303236, 2.69901323, -10.0097761)
o68.Rotation = Vector3.new(90, 0, 90)
o68.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o68.Velocity = Vector3.new(-8.28281736e-22, 0.103487223, -1.27905155e-21)
o68.CanCollide = false
o68.Locked = true
o68.Size = Vector3.new(0.200000003, 0.349999934, 1)
o68.CFrame = CFrame.new(-6.9303236, 2.69901323, -10.0097761, -2.06523491e-05, -1.0000006, -1.18017197e-05, 1.552701e-05, 1.17719173e-05, -1, 0.999999702, -2.06456607e-05, 1.55568141e-05)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Position = Vector3.new(-6.9303236, 2.69901323, -10.0097761)
o68.Velocity = Vector3.new(-8.28281736e-22, 0.103487223, -1.27905155e-21)
o69.Parent = o68
o69.MeshId = "rbxassetid://9756362"
o69.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o69.MeshType = Enum.MeshType.FileMesh
o70.Name = "part_Weld"
o70.Parent = o68
o70.C0 = CFrame.new(-14.9249811, -12.1832581, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o70.C1 = CFrame.new(12.1082554, -2.325001, -15.1749859, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o70.Part0 = o68
o70.Part1 = o71
o71.Name = "part"
o71.Parent = o1
o71.BrickColor = BrickColor.new("Institutional white")
o71.Position = Vector3.new(-6.85532618, 2.69901133, -9.75976944)
o71.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o71.Velocity = Vector3.new(-8.34221038e-22, 0.103487223, -1.27727602e-21)
o71.CanCollide = false
o71.Locked = true
o71.Size = Vector3.new(0.5, 0.349999934, 1)
o71.CFrame = CFrame.new(-6.85532618, 2.69901133, -9.75976944, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o71.Color = Color3.new(0.972549, 0.972549, 0.972549)
o71.Position = Vector3.new(-6.85532618, 2.69901133, -9.75976944)
o71.Velocity = Vector3.new(-8.34221038e-22, 0.103487223, -1.27727602e-21)
o72.Parent = o71
o72.MeshId = "rbxasset://fonts/rightarm.mesh"
o72.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o72.MeshType = Enum.MeshType.FileMesh
o73.Name = "part_Weld"
o73.Parent = o71
o73.C0 = CFrame.new(12.1082554, -2.325001, -15.1749859, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o73.C1 = CFrame.new(12.1932487, -2.325001, -14.6799793, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o73.Part0 = o71
o73.Part1 = o74
o74.Name = "part"
o74.Parent = o1
o74.Material = Enum.Material.Granite
o74.BrickColor = BrickColor.new("Alder")
o74.Position = Vector3.new(-6.94030952, 2.69900465, -10.2547779)
o74.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o74.Velocity = Vector3.new(-8.22480971e-22, 0.103487223, -1.27931146e-21)
o74.CanCollide = false
o74.Locked = true
o74.Size = Vector3.new(0.200000003, 0.349999934, 0.200000003)
o74.CFrame = CFrame.new(-6.94030952, 2.69900465, -10.2547779, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.705882, 0.501961, 1)
o74.Position = Vector3.new(-6.94030952, 2.69900465, -10.2547779)
o74.Velocity = Vector3.new(-8.22480971e-22, 0.103487223, -1.27931146e-21)
o75.Parent = o74
o75.Scale = Vector3.new(0.5, 0.5, 0.5)
o76.Name = "part_Weld"
o76.Parent = o74
o76.C0 = CFrame.new(12.1932487, -2.325001, -14.6799793, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o76.C1 = CFrame.new(11.7082539, -3.00500154, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o76.Part0 = o74
o76.Part1 = o77
o77.Name = "part"
o77.Parent = o1
o77.BrickColor = BrickColor.new("Institutional white")
o77.Position = Vector3.new(-6.45531654, 3.3790071, -9.75977612)
o77.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o77.Velocity = Vector3.new(4.45375166e-22, 0.103487223, 5.41012168e-22)
o77.CanCollide = false
o77.Locked = true
o77.Size = Vector3.new(0.5, 0.349999934, 1)
o77.CFrame = CFrame.new(-6.45531654, 3.3790071, -9.75977612, 1.0000006, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.972549, 0.972549, 0.972549)
o77.Position = Vector3.new(-6.45531654, 3.3790071, -9.75977612)
o77.Velocity = Vector3.new(4.45375166e-22, 0.103487223, 5.41012168e-22)
o78.Parent = o77
o78.MeshId = "rbxasset://fonts/rightarm.mesh"
o78.Scale = Vector3.new(0.100000001, 0.649999976, 1.10000002)
o78.MeshType = Enum.MeshType.FileMesh
o79.Name = "part_Weld"
o79.Parent = o77
o79.C0 = CFrame.new(11.7082539, -3.00500154, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o79.C1 = CFrame.new(-12.4764423, -14.6249866, -1.46069455, -0.984807968, 0.173647001, 0, 0, 0, 1, 0.173647001, 0.984807968, 0)
o79.Part0 = o77
o79.Part1 = o80
o80.Name = "part"
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Really black")
o80.Position = Vector3.new(-6.78029823, 3.97900128, -10.3097878)
o80.Rotation = Vector3.new(-90, 10, 180)
o80.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o80.Velocity = Vector3.new(1.58748511e-21, 0.103487223, 2.12928285e-21)
o80.CanCollide = false
o80.Locked = true
o80.Shape = Enum.PartType.Ball
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o80.CFrame = CFrame.new(-6.78029823, 3.97900128, -10.3097878, -0.984806418, -2.06523491e-05, 0.173658714, 0.173658594, 1.552701e-05, 0.984805942, -2.30334044e-05, 0.999999702, -1.17354175e-05)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o80.Position = Vector3.new(-6.78029823, 3.97900128, -10.3097878)
o80.Velocity = Vector3.new(1.58748511e-21, 0.103487223, 2.12928285e-21)
o81.Parent = o80
o81.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o81.MeshType = Enum.MeshType.Cylinder
o82.Name = "part_Weld"
o82.Parent = o80
o82.C0 = CFrame.new(-12.4764423, -14.6249866, -1.46069455, -0.984807968, 0.173647001, 0, 0, 0, 1, 0.173647001, 0.984807968, 0)
o82.C1 = CFrame.new(-15.1749878, -12.0582561, 2.77500439, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o82.Part0 = o80
o82.Part1 = o83
o83.Name = "part"
o83.Parent = o1
o83.Material = Enum.Material.SmoothPlastic
o83.BrickColor = BrickColor.new("Institutional white")
o83.Position = Vector3.new(-6.80532074, 3.149014, -9.75977421)
o83.Rotation = Vector3.new(90, 0, 90)
o83.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o83.Velocity = Vector3.new(1.2580779e-23, 0.103487223, -7.90801629e-23)
o83.CanCollide = false
o83.Locked = true
o83.Size = Vector3.new(0.799999952, 0.349999934, 1)
o83.CFrame = CFrame.new(-6.80532074, 3.149014, -9.75977421, -2.06523491e-05, -1.00000048, -1.18017197e-05, 1.552701e-05, 1.17719173e-05, -1, 0.999999702, -2.06456607e-05, 1.55568141e-05)
o83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o83.Color = Color3.new(0.972549, 0.972549, 0.972549)
o83.Position = Vector3.new(-6.80532074, 3.149014, -9.75977421)
o83.Velocity = Vector3.new(1.2580779e-23, 0.103487223, -7.90801629e-23)
o84.Parent = o83
o84.Scale = Vector3.new(1.10000002, 1.125, 1)
o84.MeshType = Enum.MeshType.Wedge
o85.Name = "part_Weld"
o85.Parent = o83
o85.C0 = CFrame.new(-15.1749878, -12.0582561, 2.77500439, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o85.C1 = CFrame.new(12.1932526, -2.325001, -15.6699905, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o85.Part0 = o83
o85.Part1 = o86
o86.Name = "part"
o86.Parent = o1
o86.Material = Enum.Material.Granite
o86.BrickColor = BrickColor.new("Alder")
o86.Position = Vector3.new(-6.94033289, 2.69901991, -9.26476765)
o86.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o86.Velocity = Vector3.new(-8.45957471e-22, 0.103487223, -1.27927137e-21)
o86.CanCollide = false
o86.Locked = true
o86.Size = Vector3.new(0.200000003, 0.349999934, 0.200000003)
o86.CFrame = CFrame.new(-6.94033289, 2.69901991, -9.26476765, 1.00000048, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.705882, 0.501961, 1)
o86.Position = Vector3.new(-6.94033289, 2.69901991, -9.26476765)
o86.Velocity = Vector3.new(-8.45957471e-22, 0.103487223, -1.27927137e-21)
o87.Parent = o86
o87.Scale = Vector3.new(0.5, 0.5, 0.5)
o88.Name = "part_Weld"
o88.Parent = o86
o88.C0 = CFrame.new(12.1932526, -2.325001, -15.6699905, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o88.C1 = CFrame.new(11.9732513, -2.325001, -15.174984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o88.Part0 = o86
o88.Part1 = o89
o89.Name = "part"
o89.Parent = o1
o89.BrickColor = BrickColor.new("Institutional white")
o89.Position = Vector3.new(-6.72032118, 2.69900966, -9.75976944)
o89.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o89.Velocity = Vector3.new(-8.3422432e-22, 0.103487223, -1.27407504e-21)
o89.CanCollide = false
o89.Locked = true
o89.Size = Vector3.new(0.5, 0.349999934, 1)
o89.CFrame = CFrame.new(-6.72032118, 2.69900966, -9.75976944, 1.00000048, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o89.Color = Color3.new(0.972549, 0.972549, 0.972549)
o89.Position = Vector3.new(-6.72032118, 2.69900966, -9.75976944)
o89.Velocity = Vector3.new(-8.3422432e-22, 0.103487223, -1.27407504e-21)
o90.Parent = o89
o90.MeshId = "rbxasset://fonts/rightarm.mesh"
o90.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o90.MeshType = Enum.MeshType.FileMesh
o91.Name = "part_Weld"
o91.Parent = o89
o91.C0 = CFrame.new(11.9732513, -2.325001, -15.174984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o91.C1 = CFrame.new(-15.424983, -12.1832542, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o91.Part0 = o89
o91.Part1 = o92
o92.Name = "part"
o92.Parent = o1
o92.Position = Vector3.new(-6.93032932, 2.6990211, -9.50977516)
o92.Rotation = Vector3.new(90, 0, 90)
o92.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o92.Velocity = Vector3.new(-8.40138227e-22, 0.103487223, -1.27903065e-21)
o92.CanCollide = false
o92.Locked = true
o92.Size = Vector3.new(0.200000003, 0.349999934, 1)
o92.CFrame = CFrame.new(-6.93032932, 2.6990211, -9.50977516, -2.06523491e-05, -1.00000048, -1.18017197e-05, 1.552701e-05, 1.17719173e-05, -1, 0.999999702, -2.06456607e-05, 1.55568141e-05)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Position = Vector3.new(-6.93032932, 2.6990211, -9.50977516)
o92.Velocity = Vector3.new(-8.40138227e-22, 0.103487223, -1.27903065e-21)
o93.Parent = o92
o93.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o93.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o93.MeshType = Enum.MeshType.FileMesh
o94.Name = "part_Weld"
o94.Parent = o92
o94.C0 = CFrame.new(-15.424983, -12.1832542, 2.32500601, 0, 0, 1, -1, 0, 0, 0, -1, 0)
o94.C1 = CFrame.new(11.4032574, -3.00500154, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o94.Part0 = o92
o94.Part1 = o95
o95.Name = "part"
o95.Parent = o1
o95.BrickColor = BrickColor.new("Institutional white")
o95.Position = Vector3.new(-6.15031862, 3.37900352, -9.75976276)
o95.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o95.Velocity = Vector3.new(4.45367996e-22, 0.103487223, 5.48244041e-22)
o95.CanCollide = false
o95.Locked = true
o95.Size = Vector3.new(0.5, 0.349999934, 1)
o95.CFrame = CFrame.new(-6.15031862, 3.37900352, -9.75976276, 1.00000048, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.972549, 0.972549, 0.972549)
o95.Position = Vector3.new(-6.15031862, 3.37900352, -9.75976276)
o95.Velocity = Vector3.new(4.45367996e-22, 0.103487223, 5.48244041e-22)
o96.Parent = o95
o96.MeshId = "rbxasset://fonts/rightarm.mesh"
o96.Scale = Vector3.new(0.100000001, 0.649999976, 1.10000002)
o96.MeshType = Enum.MeshType.FileMesh
o97.Name = "part_Weld"
o97.Parent = o95
o97.C0 = CFrame.new(11.4032574, -3.00500154, -15.1749897, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o97.C1 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o97.Part0 = o95
o97.Part1 = o98
o98.Name = "part"
o98.Parent = o1
o98.Material = Enum.Material.Granite
o98.BrickColor = BrickColor.new("Alder")
o98.Position = Vector3.new(-6.45530605, 3.97900605, -9.75977421)
o98.Rotation = Vector3.new(0, 90, 0)
o98.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o98.Velocity = Vector3.new(1.5744354e-21, 0.103487223, 2.13701162e-21)
o98.CanCollide = false
o98.Locked = true
o98.Shape = Enum.PartType.Cylinder
o98.Size = Vector3.new(1.12, 0.300000012, 0.949999988)
o98.CFrame = CFrame.new(-6.45530605, 3.97900605, -9.75977421, 2.06523491e-05, 1.18017197e-05, 1.00000048, -1.552701e-05, 1, -1.17719173e-05, -0.999999702, -1.55568141e-05, 2.06456607e-05)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.705882, 0.501961, 1)
o98.Position = Vector3.new(-6.45530605, 3.97900605, -9.75977421)
o98.Velocity = Vector3.new(1.5744354e-21, 0.103487223, 2.13701162e-21)
o99.Name = "part_Weld"
o99.Parent = o98
o99.C0 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o99.C1 = CFrame.new(11.7082539, -3.6050005, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o99.Part0 = o98
o99.Part1 = o100
o100.Name = "part"
o100.Parent = o1
o100.BrickColor = BrickColor.new("Institutional white")
o100.Position = Vector3.new(-6.45530796, 3.97900605, -9.75978565)
o100.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o100.Velocity = Vector3.new(1.57443571e-21, 0.103487223, 2.13701162e-21)
o100.CanCollide = false
o100.Locked = true
o100.Size = Vector3.new(0.5, 0.349999934, 1)
o100.CFrame = CFrame.new(-6.45530796, 3.97900605, -9.75978565, 1.00000048, 1.18017197e-05, -2.06523491e-05, -1.17719173e-05, 1, 1.552701e-05, 2.06456607e-05, -1.55568141e-05, 0.999999702)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.972549, 0.972549, 0.972549)
o100.Position = Vector3.new(-6.45530796, 3.97900605, -9.75978565)
o100.Velocity = Vector3.new(1.57443571e-21, 0.103487223, 2.13701162e-21)
o101.Parent = o100
o101.MeshId = "rbxasset://fonts/rightarm.mesh"
o101.Scale = Vector3.new(0.800000012, 0.0500000007, 1.10000002)
o101.MeshType = Enum.MeshType.FileMesh
o102.Name = "part_Weld"
o102.Parent = o100
o102.C0 = CFrame.new(11.7082539, -3.6050005, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o102.C1 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o102.Part0 = o100
o102.Part1 = o103
o103.Name = "part"
o103.Parent = o1
o103.Material = Enum.Material.Neon
o103.BrickColor = BrickColor.new("Alder")
o103.Position = Vector3.new(-6.45530605, 3.97900605, -9.75977421)
o103.Rotation = Vector3.new(0, 90, 0)
o103.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o103.Velocity = Vector3.new(1.5744354e-21, 0.103487223, 2.13701162e-21)
o103.CanCollide = false
o103.Locked = true
o103.Shape = Enum.PartType.Cylinder
o103.Size = Vector3.new(1.11500001, 0.307500005, 0.957499981)
o103.CFrame = CFrame.new(-6.45530605, 3.97900605, -9.75977421, 2.06523491e-05, 1.18017197e-05, 1.00000048, -1.552701e-05, 1, -1.17719173e-05, -0.999999702, -1.55568141e-05, 2.06456607e-05)
o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.705882, 0.501961, 1)
o103.Position = Vector3.new(-6.45530605, 3.97900605, -9.75977421)
o103.Velocity = Vector3.new(1.5744354e-21, 0.103487223, 2.13701162e-21)
o104.Name = "part_Weld"
o104.Parent = o103
o104.C0 = CFrame.new(15.1749935, -3.6050005, 11.708252, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o104.C1 = CFrame.new(-3.6050005, -15.1749859, 11.4082546, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o104.Part0 = o103
o104.Part1 = o105
o105.Name = "part"
o105.Parent = o1
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Institutional white")
o105.Position = Vector3.new(-6.15530872, 3.97900248, -9.75977612)
o105.Rotation = Vector3.new(90, 90, 0)
o105.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o105.Velocity = Vector3.new(1.57442874e-21, 0.103487223, 2.14412465e-21)
o105.CanCollide = false
o105.Locked = true
o105.Shape = Enum.PartType.Cylinder
o105.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o105.CFrame = CFrame.new(-6.15530872, 3.97900248, -9.75977612, 1.18017197e-05, -2.06523491e-05, 1.00000048, 1, 1.552701e-05, -1.17719173e-05, -1.55568141e-05, 0.999999702, 2.06456607e-05)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.972549, 0.972549, 0.972549)
o105.Position = Vector3.new(-6.15530872, 3.97900248, -9.75977612)
o105.Velocity = Vector3.new(1.57442874e-21, 0.103487223, 2.14412465e-21)
o106.Parent = o105
o106.Scale = Vector3.new(0.224999994, 0.736000001, 0.224999994)
o107.Name = "part_Weld"
o107.Parent = o105
o107.C0 = CFrame.new(-3.6050005, -15.1749859, 11.4082546, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o107.C1 = CFrame.new(-3.6050005, -15.719985, 11.4082508, 0, 1, 0, 0, 0, 1, 1, 0, 0)
o107.Part0 = o105
o107.Part1 = o11
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Institutional white")
o108.Position = Vector3.new(-6.47820044, 2.08811569, -10.2095814)
o108.Rotation = Vector3.new(-45, 90, 0)
o108.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o108.Velocity = Vector3.new(-1.97310586e-21, 0.103487223, -2.89330411e-21)
o108.CanCollide = false
o108.Locked = true
o108.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o108.CFrame = CFrame.new(-6.47820044, 2.08811569, -10.2095814, 6.23700225e-06, 2.29261204e-05, 1.00000024, -0.707117677, 0.707095861, -1.18107737e-05, -0.707095623, -0.707117558, 2.06147542e-05)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.972549, 0.972549, 0.972549)
o108.Position = Vector3.new(-6.47820044, 2.08811569, -10.2095814)
o108.Velocity = Vector3.new(-1.97310586e-21, 0.103487223, -2.89330411e-21)
o109.Parent = o108
o109.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o110.Name = "Part_Weld"
o110.Parent = o108
o110.C0 = CFrame.new(11.62432, 9.20018959, 11.7311325, -4.37113883e-08, -0.707106709, -0.707106829, 0, 0.707106829, -0.707106709, 1, -3.09086161e-08, -3.09086197e-08)
o110.C1 = CFrame.new(-14.5369148, 6.04063177, -11.7311316, -4.37113883e-08, 0.500000119, 0.866025329, 0, 0.866025329, -0.500000119, -1, -2.18556995e-08, -3.78551697e-08)
o110.Part0 = o108
o110.Part1 = o111
o111.Parent = o1
o111.Material = Enum.Material.SmoothPlastic
o111.BrickColor = BrickColor.new("Institutional white")
o111.Position = Vector3.new(-6.47821569, 2.41113019, -9.32508469)
o111.Rotation = Vector3.new(-30, -90, 0)
o111.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o111.Velocity = Vector3.new(-1.38626656e-21, 0.103487223, -2.03408479e-21)
o111.CanCollide = false
o111.Locked = true
o111.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o111.CFrame = CFrame.new(-6.47821569, 2.41113019, -9.32508469, -1.20441282e-05, 2.05193683e-05, -1.00000024, 0.50001353, 0.86601758, 1.17580084e-05, 0.866017342, -0.500013471, -2.06835175e-05)
o111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o111.Color = Color3.new(0.972549, 0.972549, 0.972549)
o111.Position = Vector3.new(-6.47821569, 2.41113019, -9.32508469)
o111.Velocity = Vector3.new(-1.38626656e-21, 0.103487223, -2.03408479e-21)
o112.Parent = o111
o112.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o113.Name = "Part_Weld"
o113.Parent = o111
o113.C0 = CFrame.new(-14.5369148, 6.04063177, -11.7311316, -4.37113883e-08, 0.500000119, 0.866025329, 0, 0.866025329, -0.500000119, -1, -2.18556995e-08, -3.78551697e-08)
o113.C1 = CFrame.new(11.7440453, -9.10902119, 11.7311335, -4.37113883e-08, 0.500000119, -0.866025329, 0, 0.866025329, 0.500000119, 1, 2.18556995e-08, -3.78551697e-08)
o113.Part0 = o111
o113.Part1 = o114
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Institutional white")
o114.Position = Vector3.new(-6.47819757, 2.39061642, -10.2095842)
o114.Rotation = Vector3.new(30, 90, 0)
o114.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o114.Velocity = Vector3.new(-1.40386878e-21, 0.103487223, -2.08865104e-21)
o114.CanCollide = false
o114.Locked = true
o114.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o114.CFrame = CFrame.new(-6.47819757, 2.39061642, -10.2095842, 2.37267905e-05, -1.3298795e-07, 1.00000024, 0.499986678, 0.866033077, -1.17580094e-05, -0.866032958, 0.499986529, 2.06078075e-05)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.972549, 0.972549, 0.972549)
o114.Position = Vector3.new(-6.47819757, 2.39061642, -10.2095842)
o114.Velocity = Vector3.new(-1.40386878e-21, 0.103487223, -2.08865104e-21)
o115.Parent = o114
o115.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o116.Name = "Part_Weld"
o116.Parent = o114
o116.C0 = CFrame.new(11.7440453, -9.10902119, 11.7311335, -4.37113883e-08, 0.500000119, -0.866025329, 0, 0.866025329, 0.500000119, 1, 2.18556995e-08, -3.78551697e-08)
o116.C1 = CFrame.new(-1.92440557, 15.179328, -11.7311325, -4.37113883e-08, 1, -1.62920685e-07, 0, -1.62920685e-07, -1, -1, -4.37113883e-08, 7.12148964e-15)
o116.Part0 = o114
o116.Part1 = o117
o117.Parent = o1
o117.Material = Enum.Material.SmoothPlastic
o117.BrickColor = BrickColor.new("Institutional white")
o117.Position = Vector3.new(-6.47820807, 2.29841208, -9.75540829)
o117.Rotation = Vector3.new(-90, -90, 0)
o117.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o117.Velocity = Vector3.new(-1.58815931e-21, 0.103487223, -2.33391514e-21)
o117.CanCollide = false
o117.Locked = true
o117.Size = Vector3.new(0.200000003, 0.664949954, 0.200000003)
o117.CFrame = CFrame.new(-6.47820807, 2.29841208, -9.75540829, 1.17263735e-05, 2.06523491e-05, -1.00000024, 1, -1.56462193e-05, 1.17361533e-05, -1.57058239e-05, -0.999999821, -2.06456625e-05)
o117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o117.Color = Color3.new(0.972549, 0.972549, 0.972549)
o117.Position = Vector3.new(-6.47820807, 2.29841208, -9.75540829)
o117.Velocity = Vector3.new(-1.58815931e-21, 0.103487223, -2.33391514e-21)
o118.Parent = o117
o118.Scale = Vector3.new(0.158149958, 1, 0.763249993)
o118.MeshType = Enum.MeshType.Brick
o119.Name = "Part_Weld"
o119.Parent = o117
o119.C0 = CFrame.new(-1.92440557, 15.179328, -11.7311325, -4.37113883e-08, 1, -1.62920685e-07, 0, -1.62920685e-07, -1, -1, -4.37113883e-08, 7.12148964e-15)
o119.C1 = CFrame.new(-14.3873434, 6.09654665, -11.7311316, -4.37113883e-08, 0.5, 0.866025388, 0, 0.866025388, -0.5, -1, -2.18556941e-08, -3.78551732e-08)
o119.Part0 = o117
o119.Part1 = o120
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Institutional white")
o120.Position = Vector3.new(-6.47821474, 2.2879169, -9.42665863)
o120.Rotation = Vector3.new(-30, -90, 0)
o120.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o120.Velocity = Vector3.new(-1.61571406e-21, 0.103487223, -2.36183249e-21)
o120.CanCollide = false
o120.Locked = true
o120.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o120.CFrame = CFrame.new(-6.47821474, 2.2879169, -9.42665863, -1.20441318e-05, 2.05193646e-05, -1.00000024, 0.500013411, 0.86601764, 1.17580084e-05, 0.866017401, -0.500013351, -2.06835175e-05)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.972549, 0.972549, 0.972549)
o120.Position = Vector3.new(-6.47821474, 2.2879169, -9.42665863)
o120.Velocity = Vector3.new(-1.61571406e-21, 0.103487223, -2.36183249e-21)
o121.Parent = o120
o121.Scale = Vector3.new(0.158149958, 1, 0.763249993)
o121.MeshType = Enum.MeshType.Brick
o122.Name = "Part_Weld"
o122.Parent = o120
o122.C0 = CFrame.new(-14.3873434, 6.09654665, -11.7311316, -4.37113883e-08, 0.5, 0.866025388, 0, 0.866025388, -0.5, -1, -2.18556941e-08, -3.78551732e-08)
o122.C1 = CFrame.new(-9.81113243, -12.2642508, -11.7311316, -4.37113883e-08, -0.707106709, 0.707106829, 0, 0.707106829, 0.707106709, -1, 3.09086161e-08, -3.09086197e-08)
o122.Part0 = o120
o122.Part1 = o123
o123.Parent = o1
o123.Material = Enum.Material.SmoothPlastic
o123.BrickColor = BrickColor.new("Institutional white")
o123.Position = Vector3.new(-6.47821808, 2.10862899, -9.32507992)
o123.Rotation = Vector3.new(45, -90, 0)
o123.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o123.Velocity = Vector3.new(-1.95550445e-21, 0.103487223, -2.83873907e-21)
o123.CanCollide = false
o123.Locked = true
o123.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o123.CFrame = CFrame.new(-6.47821808, 2.10862899, -9.32507992, -2.29698326e-05, -6.2807112e-06, -1.00000024, -0.707095742, 0.707117736, 1.18107728e-05, 0.707117617, 0.707095504, -2.06765726e-05)
o123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o123.Color = Color3.new(0.972549, 0.972549, 0.972549)
o123.Position = Vector3.new(-6.47821808, 2.10862899, -9.32507992)
o123.Velocity = Vector3.new(-1.95550445e-21, 0.103487223, -2.83873907e-21)
o124.Parent = o123
o124.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o125.Name = "Part_Weld"
o125.Parent = o123
o125.C0 = CFrame.new(-9.81113243, -12.2642508, -11.7311316, -4.37113883e-08, -0.707106709, 0.707106829, 0, 0.707106829, 0.707106709, -1, 3.09086161e-08, -3.09086197e-08)
o125.C1 = CFrame.new(-11.8906012, -9.07503128, -11.7311316, -4.37113883e-08, -0.5, 0.866025388, 0, 0.866025388, 0.5, -1, 2.18556941e-08, -3.78551732e-08)
o125.Part0 = o123
o125.Part1 = o126
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Institutional white")
o126.Position = Vector3.new(-6.47820091, 2.28790617, -10.0996571)
o126.Rotation = Vector3.new(30, -90, 0)
o126.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o126.Velocity = Vector3.new(-1.59975569e-21, 0.103487223, -2.36186076e-21)
o126.CanCollide = false
o126.Locked = true
o126.Size = Vector3.new(0.200000003, 0.460449964, 0.200000003)
o126.CFrame = CFrame.new(-6.47820091, 2.28790617, -10.0996571, -2.38142111e-05, -1.32987353e-07, -1.00000024, -0.499986589, 0.866033018, 1.18017197e-05, 0.866032839, 0.49998641, -2.06835193e-05)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.972549, 0.972549, 0.972549)
o126.Position = Vector3.new(-6.47820091, 2.28790617, -10.0996571)
o126.Velocity = Vector3.new(-1.59975569e-21, 0.103487223, -2.36186076e-21)
o127.Parent = o126
o127.Scale = Vector3.new(0.158149958, 1, 0.763249993)
o127.MeshType = Enum.MeshType.Brick
o128.Name = "Part_Weld"
o128.Parent = o126
o128.C0 = CFrame.new(-11.8906012, -9.07503128, -11.7311316, -4.37113883e-08, -0.5, 0.866025388, 0, 0.866025388, 0.5, -1, 2.18556941e-08, -3.78551732e-08)
o128.C1 = CFrame.new(12.2190666, 0.378772736, 14.6808443, 0.965936959, -0.258777469, 2.36039277e-08, -0.258777469, -0.965936959, -1.62644113e-07, 6.4888539e-08, 1.50995803e-07, -1)
o128.Part0 = o126
o128.Part1 = o129
o129.Parent = o1
o129.Material = Enum.Material.Neon
o129.BrickColor = BrickColor.new("Alder")
o129.Position = Vector3.new(-6.45187712, 3.90188384, -10.2539158)
o129.Rotation = Vector3.new(180, 0, 15)
o129.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o129.Velocity = Vector3.new(1.44104263e-21, 0.103487223, 1.93194979e-21)
o129.CanCollide = false
o129.Locked = true
o129.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o129.CFrame = CFrame.new(-6.45187712, 3.90188384, -10.2539158, 0.965934157, -0.258788884, 2.07172397e-05, -0.258788824, -0.96593374, -1.53183937e-05, 2.39724868e-05, 9.45932607e-06, -0.999999642)
o129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o129.Color = Color3.new(0.705882, 0.501961, 1)
o129.Position = Vector3.new(-6.45187712, 3.90188384, -10.2539158)
o129.Velocity = Vector3.new(1.44104263e-21, 0.103487223, 1.93194979e-21)
o130.Parent = o129
o130.Scale = Vector3.new(0.392943025, 0.104347944, 0.606715083)
o130.MeshType = Enum.MeshType.Brick
o131.Name = "Part_Weld"
o131.Parent = o129
o131.C0 = CFrame.new(12.2190666, 0.378772736, 14.6808443, 0.965936959, -0.258777469, 2.36039277e-08, -0.258777469, -0.965936959, -1.62644113e-07, 6.4888539e-08, 1.50995803e-07, -1)
o131.C1 = CFrame.new(3.60923386, -11.7324982, 14.6808453, 4.31100525e-05, -1, 1.50998545e-07, -1, -4.31100525e-05, -6.35665174e-08, 6.3573026e-08, -1.50995803e-07, -1)
o131.Part0 = o129
o131.Part1 = o132
o132.Parent = o1
o132.Material = Enum.Material.Neon
o132.BrickColor = BrickColor.new("Alder")
o132.Position = Vector3.new(-6.47970009, 3.98272705, -10.2539177)
o132.Rotation = Vector3.new(180, 0, 90)
o132.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o132.Velocity = Vector3.new(1.59317106e-21, 0.103487223, 2.14633235e-21)
o132.CanCollide = false
o132.Locked = true
o132.Size = Vector3.new(0.302901715, 0.229906425, 0.229906395)
o132.CFrame = CFrame.new(-6.47970009, 3.98272705, -10.2539177, 3.13371347e-05, -1.00000024, 2.0715921e-05, -0.999999821, -3.13073397e-05, -1.5620386e-05, 1.56435381e-05, -2.07060621e-05, -0.999999642)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.705882, 0.501961, 1)
o132.Position = Vector3.new(-6.47970009, 3.98272705, -10.2539177)
o132.Velocity = Vector3.new(1.59317106e-21, 0.103487223, 2.14633235e-21)
o133.Parent = o132
o133.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o133.MeshType = Enum.MeshType.Brick
o134.Name = "Part_Weld"
o134.Parent = o132
o134.C0 = CFrame.new(3.60923386, -11.7324982, 14.6808453, 4.31100525e-05, -1, 1.50998545e-07, -1, -4.31100525e-05, -6.35665174e-08, 6.3573026e-08, -1.50995803e-07, -1)
o134.C1 = CFrame.new(8.31720257, 8.98535156, 14.6808434, 0.866003811, 0.500037432, 2.23302301e-08, 0.500037432, -0.866003811, -1.61465636e-07, -6.14007902e-08, 1.50995803e-07, -1)
o134.Part0 = o132
o134.Part1 = o135
o135.Parent = o1
o135.Material = Enum.Material.Neon
o135.BrickColor = BrickColor.new("Alder")
o135.Position = Vector3.new(-6.44278574, 3.9964304, -10.2539167)
o135.Rotation = Vector3.new(180, 0, -30)
o135.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o135.Velocity = Vector3.new(1.61895755e-21, 0.103487223, 2.18365968e-21)
o135.CanCollide = false
o135.Locked = true
o135.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o135.CFrame = CFrame.new(-6.44278574, 3.9964304, -10.2539167, 0.866009891, 0.500027359, 2.0590951e-05, 0.50002712, -0.866009533, -1.53183937e-05, 1.0152984e-05, 2.35767184e-05, -0.999999642)
o135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o135.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o135.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o135.Color = Color3.new(0.705882, 0.501961, 1)
o135.Position = Vector3.new(-6.44278574, 3.9964304, -10.2539167)
o135.Velocity = Vector3.new(1.61895755e-21, 0.103487223, 2.18365968e-21)
o136.Parent = o135
o136.Scale = Vector3.new(0.447949916, 0.104347944, 0.606715083)
o136.MeshType = Enum.MeshType.Brick
o137.Name = "Part_Weld"
o137.Parent = o135
o137.C0 = CFrame.new(8.31720257, 8.98535156, 14.6808434, 0.866003811, 0.500037432, 2.23302301e-08, 0.500037432, -0.866003811, -1.61465636e-07, -6.14007902e-08, 1.50995803e-07, -1)
o137.C1 = CFrame.new(11.9701443, -2.67644763, 14.6808453, 0.866046965, -0.499962628, 2.1012454e-09, -0.499962628, -0.866046965, -1.75563628e-07, 8.95950336e-08, 1.50995803e-07, -1)
o137.Part0 = o135
o137.Part1 = o138
o138.Parent = o1
o138.Material = Enum.Material.Neon
o138.BrickColor = BrickColor.new("Alder")
o138.Position = Vector3.new(-6.45187712, 4.04068899, -10.2539177)
o138.Rotation = Vector3.new(180, 0, 30)
o138.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o138.Velocity = Vector3.new(1.70224218e-21, 0.103487223, 2.30117183e-21)
o138.CanCollide = false
o138.Locked = true
o138.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o138.CFrame = CFrame.new(-6.45187712, 4.04068899, -10.2539177, 0.866041303, -0.499972939, 2.07419471e-05, -0.499972761, -0.866040945, -1.53183955e-05, 2.56252988e-05, 2.92012328e-06, -0.999999642)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.705882, 0.501961, 1)
o138.Position = Vector3.new(-6.45187712, 4.04068899, -10.2539177)
o138.Velocity = Vector3.new(1.70224218e-21, 0.103487223, 2.30117183e-21)
o139.Parent = o138
o139.Scale = Vector3.new(0.392943025, 0.104347944, 0.606715083)
o139.MeshType = Enum.MeshType.Brick
o140.Name = "Part_Weld"
o140.Parent = o138
o140.C0 = CFrame.new(11.9701443, -2.67644763, 14.6808453, 0.866046965, -0.499962628, 2.1012454e-09, -0.499962628, -0.866046965, -1.75563628e-07, 8.95950336e-08, 1.50995803e-07, -1)
o140.C1 = CFrame.new(-10.3952847, 6.437222, -15.6695423, -0.965936959, -0.258777469, 2.26190878e-07, 0.258777469, -0.965936959, 9.57233368e-08, 1.93715096e-07, 1.50995817e-07, 1)
o140.Part0 = o138
o140.Part1 = o141
o141.Parent = o1
o141.Material = Enum.Material.Neon
o141.BrickColor = BrickColor.new("Alder")
o141.Position = Vector3.new(-6.45406055, 3.90189886, -9.26521587)
o141.Rotation = Vector3.new(0, 0, -165)
o141.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o141.Velocity = Vector3.new(1.41759703e-21, 0.103487223, 1.93193788e-21)
o141.CanCollide = false
o141.Locked = true
o141.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o141.CFrame = CFrame.new(-6.45406055, 3.90189886, -9.26521587, -0.965940237, 0.258766174, -2.0458634e-05, -0.258766055, -0.965939879, 1.56203841e-05, -1.57049162e-05, 2.04016669e-05, 0.999999642)
o141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o141.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o141.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o141.Color = Color3.new(0.705882, 0.501961, 1)
o141.Position = Vector3.new(-6.45406055, 3.90189886, -9.26521587)
o141.Velocity = Vector3.new(1.41759703e-21, 0.103487223, 1.93193788e-21)
o142.Parent = o141
o142.Scale = Vector3.new(0.392943025, 0.104347944, 0.606715083)
o142.MeshType = Enum.MeshType.Brick
o143.Parent = o1
o143.Material = Enum.Material.Neon
o143.BrickColor = BrickColor.new("Alder")
o143.Position = Vector3.new(-6.46314669, 3.99644661, -9.26521683)
o143.Rotation = Vector3.new(0, 0, 150)
o143.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o143.Velocity = Vector3.new(1.59551165e-21, 0.103487223, 2.183216e-21)
o143.CanCollide = false
o143.Locked = true
o143.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o143.CFrame = CFrame.new(-6.46314669, 3.99644661, -9.26521683, -0.86599803, -0.500047565, -2.03474556e-05, 0.500047565, -0.86599803, 1.5691694e-05, -2.54674487e-05, 3.41428176e-06, 1)
o143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o143.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o143.Color = Color3.new(0.705882, 0.501961, 1)
o143.Position = Vector3.new(-6.46314669, 3.99644661, -9.26521683)
o143.Velocity = Vector3.new(1.59551165e-21, 0.103487223, 2.183216e-21)
o144.Parent = o143
o144.Scale = Vector3.new(0.447949916, 0.104347944, 0.606715083)
o144.MeshType = Enum.MeshType.Brick
o145.Name = "Part_Weld"
o145.Parent = o143
o145.C0 = CFrame.new(-11.9575319, -2.72144461, -15.6695414, -0.866003811, 0.500037432, 1.82585694e-07, -0.500037432, -0.866003811, 2.79785695e-07, 2.98023224e-07, 1.50995803e-07, 1)
o145.C1 = CFrame.new(-8.30559921, 9.02858734, -15.6695433, -0.866046965, -0.499962658, 2.17448431e-07, 0.499962658, -0.866046965, 4.88191958e-08, 1.63912773e-07, 1.50995817e-07, 1)
o145.Part0 = o143
o145.Part1 = o146
o146.Parent = o1
o146.Material = Enum.Material.Neon
o146.BrickColor = BrickColor.new("Alder")
o146.Position = Vector3.new(-6.45405054, 4.04070663, -9.26521778)
o146.Rotation = Vector3.new(0, 0, -150)
o146.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o146.Velocity = Vector3.new(1.6787989e-21, 0.103487223, 2.30116376e-21)
o146.CanCollide = false
o146.Locked = true
o146.Size = Vector3.new(0.200000003, 0.229906425, 0.229906395)
o146.CFrame = CFrame.new(-6.45405054, 4.04070663, -9.26521778, -0.866052866, 0.499952525, -2.0481566e-05, -0.499952525, -0.866052866, 1.56916958e-05, -9.89301407e-06, 2.38296489e-05, 1)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.705882, 0.501961, 1)
o146.Position = Vector3.new(-6.45405054, 4.04070663, -9.26521778)
o146.Velocity = Vector3.new(1.6787989e-21, 0.103487223, 2.30116376e-21)
o147.Parent = o146
o147.Scale = Vector3.new(0.392943025, 0.104347944, 0.606715083)
o147.MeshType = Enum.MeshType.Brick
o148.Name = "Part_Weld"
o148.Parent = o146
o148.C0 = CFrame.new(-8.30559921, 9.02858734, -15.6695433, -0.866046965, -0.499962658, 2.17448431e-07, 0.499962658, -0.866046965, 4.88191958e-08, 1.63912773e-07, 1.50995817e-07, 1)
o148.C1 = CFrame.new(3.60822964, 11.6793289, -15.6695404, -4.30782638e-05, -1, -1.50987475e-07, 1, -4.30782638e-05, -1.93721604e-07, 1.93715096e-07, -1.50995817e-07, 1)
o148.Part0 = o146
o148.Part1 = o149
o149.Parent = o1
o149.Material = Enum.Material.Neon
o149.BrickColor = BrickColor.new("Alder")
o149.Position = Vector3.new(-6.42622948, 3.9827435, -9.26521683)
o149.Rotation = Vector3.new(0, 0, -90)
o149.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o149.Velocity = Vector3.new(1.56972556e-21, 0.103487223, 2.14764218e-21)
o149.CanCollide = false
o149.Locked = true
o149.Size = Vector3.new(0.302901715, 0.229906425, 0.229906395)
o149.CFrame = CFrame.new(-6.42622948, 3.9827435, -9.26521683, -5.4800279e-05, 1, -2.04517673e-05, -1, -5.47999662e-05, 1.53897035e-05, 1.53885849e-05, 2.04526095e-05, 1)
o149.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o149.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o149.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o149.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o149.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o149.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o149.Color = Color3.new(0.705882, 0.501961, 1)
o149.Position = Vector3.new(-6.42622948, 3.9827435, -9.26521683)
o149.Velocity = Vector3.new(1.56972556e-21, 0.103487223, 2.14764218e-21)
o150.Parent = o149
o150.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o150.MeshType = Enum.MeshType.Brick
o151.Name = "part_Weld"
o151.Parent = o149
o151.C0 = CFrame.new(3.60822964, 11.6793289, -15.6695404, -4.30782638e-05, -1, -1.50987475e-07, 1, -4.30782638e-05, -1.93721604e-07, 1.93715096e-07, -1.50995817e-07, 1)
o151.C1 = CFrame.new(11.7252579, -2.88699794, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o151.Part0 = o149
o151.Part1 = o152
o152.Name = "part"
o152.Parent = o1
o152.Material = Enum.Material.SmoothPlastic
o152.BrickColor = BrickColor.new("Institutional white")
o152.Position = Vector3.new(-6.47231483, 3.26100397, -9.75976753)
o152.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o152.Velocity = Vector3.new(2.2331905e-22, 0.103487223, 2.26718599e-22)
o152.CanCollide = false
o152.Locked = true
o152.Size = Vector3.new(1, 2, 1)
o152.CFrame = CFrame.new(-6.47231483, 3.26100397, -9.75976753, 1, 1.17220197e-05, -2.06454806e-05, -1.17216987e-05, 1, 1.55407015e-05, 2.06456625e-05, -1.55404614e-05, 1)
o152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o152.Color = Color3.new(0.972549, 0.972549, 0.972549)
o152.Position = Vector3.new(-6.47231483, 3.26100397, -9.75976753)
o152.Velocity = Vector3.new(2.2331905e-22, 0.103487223, 2.26718599e-22)
o153.Parent = o152
o153.Scale = Vector3.new(0.5, 1, 0.5)
o154.Name = "part_Weld"
o154.Parent = o152
o154.C0 = CFrame.new(11.7252579, -2.88699794, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o154.C1 = CFrame.new(11.7252579, -2.90149784, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o154.Part0 = o152
o154.Part1 = o155
o155.Name = "part"
o155.Parent = o1
o155.Material = Enum.Material.Neon
o155.BrickColor = BrickColor.new("Alder")
o155.Position = Vector3.new(-6.47231483, 3.27550387, -9.75976753)
o155.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o155.Velocity = Vector3.new(2.5060455e-22, 0.103487223, 2.65288394e-22)
o155.CanCollide = false
o155.Locked = true
o155.Size = Vector3.new(0.849999964, 2.04999995, 1)
o155.CFrame = CFrame.new(-6.47231483, 3.27550387, -9.75976753, 1, 1.17220197e-05, -2.06454806e-05, -1.17216987e-05, 1, 1.55407015e-05, 2.06456625e-05, -1.55404614e-05, 1)
o155.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o155.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o155.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o155.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o155.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o155.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o155.Color = Color3.new(0.705882, 0.501961, 1)
o155.Position = Vector3.new(-6.47231483, 3.27550387, -9.75976753)
o155.Velocity = Vector3.new(2.5060455e-22, 0.103487223, 2.65288394e-22)
o156.Parent = o155
o156.Scale = Vector3.new(0.5, 1, 0.5)
o157.Name = "part_Weld"
o157.Parent = o155
o157.C0 = CFrame.new(11.7252579, -2.90149784, -15.1749821, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o157.C1 = CFrame.new(11.7250099, -2.9104979, -15.1744814, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o157.Part0 = o155
o157.Part1 = o14
o158.Name = "part"
o158.Parent = o1
o158.Material = Enum.Material.Metal
o158.Position = Vector3.new(-7.26236534, 2.07540035, -10.0107718)
o158.Rotation = Vector3.new(89.9899979, 85, 90.0099945)
o158.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o158.Velocity = Vector3.new(-2.00175467e-21, 0.103487223, -2.94574849e-21)
o158.CanCollide = false
o158.Locked = true
o158.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o158.CFrame = CFrame.new(-7.26236534, 2.07540035, -10.0107718, -2.06523491e-05, -0.087161839, 0.996196568, 1.552701e-05, -0.996195853, -0.0871618837, 0.999999702, 1.36983799e-05, 2.19229241e-05)
o158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o158.Position = Vector3.new(-7.26236534, 2.07540035, -10.0107718)
o158.Velocity = Vector3.new(-2.00175467e-21, 0.103487223, -2.94574849e-21)
o159.Parent = o158
o159.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o159.MeshType = Enum.MeshType.Brick
o160.Name = "part_Weld"
o160.Parent = o158
o160.C0 = CFrame.new(-14.9239836, 0.604206085, 12.6159229, 0, 0, 1, -0.0871500224, -0.996195257, 0, 0.996195257, -0.0871500224, 0)
o160.C1 = CFrame.new(-14.9239779, 3.40832949, 12.0952158, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o160.Part0 = o158
o160.Part1 = o179
o161.Name = "part"
o161.Parent = o1
o161.Material = Enum.Material.Metal
o161.BrickColor = BrickColor.new("Really black")
o161.Position = Vector3.new(-6.9128418, 2.61751699, -9.51077843)
o161.Rotation = Vector3.new(-90, -10, -90)
o161.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o161.Velocity = Vector3.new(-9.93486224e-22, 0.103487223, -1.49541673e-21)
o161.CanCollide = false
o161.Locked = true
o161.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o161.CFrame = CFrame.new(-6.9128418, 2.61751699, -9.51077843, -2.06523491e-05, 0.984810472, -0.173636466, 1.552701e-05, 0.173636392, 0.984809875, 0.999999702, 1.76305984e-05, -1.890555e-05)
o161.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o161.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o161.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o161.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o161.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o161.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o161.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o161.Position = Vector3.new(-6.9128418, 2.61751699, -9.51077843)
o161.Velocity = Vector3.new(-9.93486224e-22, 0.103487223, -1.49541673e-21)
o162.Parent = o161
o162.Scale = Vector3.new(0.075000003, 1.5, 1)
o162.MeshType = Enum.MeshType.Wedge
o163.Name = "part_Weld"
o163.Parent = o161
o163.C0 = CFrame.new(-15.4239779, 11.5913601, -4.32197857, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o163.C1 = CFrame.new(11.7132454, -2.42000055, -15.1749859, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o163.Part0 = o161
o163.Part1 = o18
o164.Name = "part"
o164.Parent = o1
o164.Material = Enum.Material.Metal
o164.BrickColor = BrickColor.new("Really black")
o164.Position = Vector3.new(-6.91284275, 2.6175139, -9.76078129)
o164.Rotation = Vector3.new(-90, -10, -90)
o164.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o164.Velocity = Vector3.new(-9.87556413e-22, 0.103487223, -1.49542501e-21)
o164.CanCollide = false
o164.Locked = true
o164.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o164.CFrame = CFrame.new(-6.91284275, 2.6175139, -9.76078129, -2.06523491e-05, 0.984810591, -0.173636481, 1.552701e-05, 0.173636407, 0.984809995, 0.999999702, 1.76306003e-05, -1.89055518e-05)
o164.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o164.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o164.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o164.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o164.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o164.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o164.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o164.Position = Vector3.new(-6.91284275, 2.6175139, -9.76078129)
o164.Velocity = Vector3.new(-9.87556413e-22, 0.103487223, -1.49542501e-21)
o165.Parent = o164
o165.Scale = Vector3.new(0.075000003, 1.5, 1)
o165.MeshType = Enum.MeshType.Wedge
o166.Name = "part_Weld"
o166.Parent = o164
o166.C0 = CFrame.new(-15.173975, 11.5913639, -4.32197952, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o166.C1 = CFrame.new(-15.4239779, 11.5913601, -4.32197857, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o166.Part0 = o164
o166.Part1 = o161
o167.Name = "part"
o167.Parent = o1
o167.Material = Enum.Material.Metal
o167.BrickColor = BrickColor.new("Really black")
o167.Position = Vector3.new(-6.91284323, 2.61750984, -10.0107822)
o167.Rotation = Vector3.new(-90, -10, -90)
o167.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o167.Velocity = Vector3.new(-9.8162842e-22, 0.103487223, -1.49543582e-21)
o167.CanCollide = false
o167.Locked = true
o167.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o167.CFrame = CFrame.new(-6.91284323, 2.61750984, -10.0107822, -2.06523491e-05, 0.98481071, -0.173636496, 1.552701e-05, 0.173636422, 0.984810114, 0.999999702, 1.76306021e-05, -1.89055536e-05)
o167.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o167.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o167.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o167.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o167.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o167.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o167.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o167.Position = Vector3.new(-6.91284323, 2.61750984, -10.0107822)
o167.Velocity = Vector3.new(-9.8162842e-22, 0.103487223, -1.49543582e-21)
o168.Parent = o167
o168.Scale = Vector3.new(0.075000003, 1.5, 1)
o168.MeshType = Enum.MeshType.Wedge
o169.Name = "part_Weld"
o169.Parent = o167
o169.C0 = CFrame.new(-14.923974, 11.5913677, -4.32198, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o169.C1 = CFrame.new(-15.173975, 11.5913639, -4.32197952, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o169.Part0 = o167
o169.Part1 = o164
o170.Name = "part"
o170.Parent = o1
o170.Material = Enum.Material.Metal
o170.Position = Vector3.new(-7.24260473, 1.5667212, -10.0107689)
o170.Rotation = Vector3.new(-90, 30, -90)
o170.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o170.Velocity = Vector3.new(-2.95897207e-21, 0.103487223, -4.2983665e-21)
o170.CanCollide = false
o170.Locked = true
o170.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o170.CFrame = CFrame.new(-7.24260473, 1.5667212, -10.0107689, -2.06523491e-05, 0.866020322, 0.500010908, 1.552701e-05, -0.50001055, 0.866019785, 0.999999702, 2.56580843e-05, -3.14976205e-06)
o170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o170.Position = Vector3.new(-7.24260473, 1.5667212, -10.0107689)
o170.Velocity = Vector3.new(-2.95897207e-21, 0.103487223, -4.2983665e-21)
o171.Parent = o170
o171.MeshId = "rbxassetid://9756362"
o171.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o171.MeshType = Enum.MeshType.FileMesh
o172.Name = "part_Weld"
o172.Parent = o170
o172.C0 = CFrame.new(-14.9239779, 11.4177895, 5.21484423, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o172.C1 = CFrame.new(-14.923974, 11.5913677, -4.32198, 0, 0, 1, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849, 0)
o172.Part0 = o170
o172.Part1 = o167
o173.Name = "part"
o173.Parent = o1
o173.Material = Enum.Material.Metal
o173.Position = Vector3.new(-7.17200708, 1.42038417, -10.0107689)
o173.Rotation = Vector3.new(-90, 20, -90)
o173.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o173.Velocity = Vector3.new(-3.23434486e-21, 0.103487223, -4.68594747e-21)
o173.CanCollide = false
o173.Locked = true
o173.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o173.CFrame = CFrame.new(-7.17200708, 1.42038417, -10.0107689, -2.06523491e-05, 0.939689755, 0.3420313, 1.552701e-05, -0.342031091, 0.939689219, 0.999999702, 2.47213302e-05, -7.55740348e-06)
o173.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o173.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o173.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o173.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o173.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o173.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o173.Position = Vector3.new(-7.17200708, 1.42038417, -10.0107689)
o173.Velocity = Vector3.new(-3.23434486e-21, 0.103487223, -4.68594747e-21)
o174.Parent = o173
o174.MeshId = "rbxassetid://9756362"
o174.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o174.MeshType = Enum.MeshType.FileMesh
o175.Name = "part_Weld"
o175.Parent = o173
o175.C0 = CFrame.new(-14.923974, 12.0334835, 3.26629925, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o175.C1 = CFrame.new(-14.9239779, 11.4177895, 5.21484423, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o175.Part0 = o173
o175.Part1 = o170
o176.Name = "part"
o176.Parent = o1
o176.Material = Enum.Material.Metal
o176.Position = Vector3.new(-7.17200804, 1.33038437, -10.0107698)
o176.Rotation = Vector3.new(-90, 0, -90)
o176.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o176.Velocity = Vector3.new(-3.40370363e-21, 0.103487223, -4.92534719e-21)
o176.CanCollide = false
o176.Locked = true
o176.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o176.CFrame = CFrame.new(-7.17200804, 1.33038437, -10.0107698, -2.06523491e-05, 1.00000119, 1.17123127e-05, 1.552701e-05, -1.1742115e-05, 1.0000006, 0.999999702, 2.06456716e-05, -1.5556825e-05)
o176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o176.Position = Vector3.new(-7.17200804, 1.33038437, -10.0107698)
o176.Velocity = Vector3.new(-3.40370363e-21, 0.103487223, -4.92534719e-21)
o177.Parent = o176
o177.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o177.MeshType = Enum.MeshType.Wedge
o178.Name = "part_Weld"
o178.Parent = o176
o178.C0 = CFrame.new(-14.9239721, 12.4249153, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o178.C1 = CFrame.new(-14.923974, 12.0334835, 3.26629925, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o178.Part0 = o176
o178.Part1 = o173
o179.Name = "part"
o179.Parent = o1
o179.Material = Enum.Material.Metal
o179.Position = Vector3.new(-7.25041485, 1.63026619, -10.0107698)
o179.Rotation = Vector3.new(-89.9899979, 80, -90.0099945)
o179.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o179.Velocity = Vector3.new(-2.8393952e-21, 0.103487223, -4.12952311e-21)
o179.CanCollide = false
o179.Locked = true
o179.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o179.CFrame = CFrame.new(-7.25041485, 1.63026619, -10.0107698, -2.06523491e-05, 0.17363593, 0.98481226, 1.552701e-05, -0.984811604, 0.173635691, 0.999999702, 1.89055645e-05, 1.76306457e-05)
o179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o179.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o179.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o179.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o179.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o179.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o179.Position = Vector3.new(-7.25041485, 1.63026619, -10.0107698)
o179.Velocity = Vector3.new(-2.8393952e-21, 0.103487223, -4.12952311e-21)
o180.Parent = o179
o180.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o180.MeshType = Enum.MeshType.Brick
o181.Name = "part_Weld"
o181.Parent = o179
o181.C0 = CFrame.new(-14.9239779, 3.40832949, 12.0952158, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o181.C1 = CFrame.new(-14.923974, 9.47493267, 8.04478168, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o181.Part0 = o179
o181.Part1 = o182
o182.Name = "part"
o182.Parent = o1
o182.Material = Enum.Material.Metal
o182.Position = Vector3.new(-7.13541603, 1.38526404, -10.0107679)
o182.Rotation = Vector3.new(-90, 45, -90)
o182.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o182.Velocity = Vector3.new(-3.30043307e-21, 0.103487223, -4.77849921e-21)
o182.CanCollide = false
o182.Locked = true
o182.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o182.CFrame = CFrame.new(-7.13541603, 1.38526404, -10.0107679, -2.06523491e-05, 0.707101107, 0.70711565, 1.552701e-05, -0.707115233, 0.707100511, 0.999999702, 2.55990617e-05, 3.59832757e-06)
o182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o182.Position = Vector3.new(-7.13541603, 1.38526404, -10.0107679)
o182.Velocity = Vector3.new(-3.30043307e-21, 0.103487223, -4.77849921e-21)
o183.Parent = o182
o183.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o183.MeshType = Enum.MeshType.Brick
o184.Name = "part_Weld"
o184.Parent = o182
o184.C0 = CFrame.new(-14.923974, 9.47493267, 8.04478168, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o184.C1 = CFrame.new(-14.923974, 7.16470861, 10.2317486, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o184.Part0 = o182
o184.Part1 = o185
o185.Name = "part"
o185.Parent = o1
o185.Material = Enum.Material.Metal
o185.Position = Vector3.new(-7.19041348, 1.46294463, -10.0107698)
o185.Rotation = Vector3.new(-90, 60, -90)
o185.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o185.Velocity = Vector3.new(-3.15425596e-21, 0.103487223, -4.57317424e-21)
o185.CanCollide = false
o185.Locked = true
o185.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o185.CFrame = CFrame.new(-7.19041348, 1.46294463, -10.0107698, -2.06523491e-05, 0.499991924, 0.8660326, 1.552701e-05, -0.866032064, 0.499991477, 0.999999702, 2.37954737e-05, 1.01012483e-05)
o185.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o185.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o185.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o185.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o185.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o185.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o185.Position = Vector3.new(-7.19041348, 1.46294463, -10.0107698)
o185.Velocity = Vector3.new(-3.15425596e-21, 0.103487223, -4.57317424e-21)
o186.Parent = o185
o186.Scale = Vector3.new(0.0250000022, 0.699999988, 0.774999976)
o186.MeshType = Enum.MeshType.Brick
o187.Name = "part_Weld"
o187.Parent = o185
o187.C0 = CFrame.new(-14.923974, 7.16470861, 10.2317486, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o187.C1 = CFrame.new(-14.9239836, 11.9266863, 4.17670155, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o187.Part0 = o185
o187.Part1 = o188
o188.Name = "part"
o188.Parent = o1
o188.Material = Enum.Material.Metal
o188.Position = Vector3.new(-7.32150173, 1.62906897, -10.010766)
o188.Rotation = Vector3.new(-90, 25, -90)
o188.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o188.Velocity = Vector3.new(-2.84164813e-21, 0.103487223, -4.13439532e-21)
o188.CanCollide = false
o188.Locked = true
o188.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o188.CFrame = CFrame.new(-7.32150173, 1.62906897, -10.010766, -2.06523491e-05, 0.906304955, 0.422629476, 1.552701e-05, -0.422629297, 0.9063043, 0.999999702, 2.52859536e-05, -5.37404503e-06)
o188.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o188.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o188.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o188.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o188.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o188.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o188.Position = Vector3.new(-7.32150173, 1.62906897, -10.010766)
o188.Velocity = Vector3.new(-2.84164813e-21, 0.103487223, -4.13439532e-21)
o189.Parent = o188
o189.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o189.MeshType = Enum.MeshType.Wedge
o190.Name = "part_Weld"
o190.Parent = o188
o190.C0 = CFrame.new(-14.9239836, 11.9266863, 4.17670155, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o190.C1 = CFrame.new(-14.9239779, 9.80968094, 7.91943741, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o190.Part0 = o188
o190.Part1 = o191
o191.Name = "part"
o191.Parent = o1
o191.Material = Enum.Material.Metal
o191.Position = Vector3.new(-7.28347826, 1.71063662, -10.0107727)
o191.Rotation = Vector3.new(-90, 45, -90)
o191.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o191.Velocity = Vector3.new(-2.68815645e-21, 0.103487223, -3.91652249e-21)
o191.CanCollide = false
o191.Locked = true
o191.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o191.CFrame = CFrame.new(-7.28347826, 1.71063662, -10.0107727, -2.06523491e-05, 0.70709902, 0.707117617, 1.552701e-05, -0.7071172, 0.707098484, 0.999999702, 2.5599049e-05, 3.59839987e-06)
o191.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o191.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o191.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o191.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o191.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o191.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o191.Position = Vector3.new(-7.28347826, 1.71063662, -10.0107727)
o191.Velocity = Vector3.new(-2.68815645e-21, 0.103487223, -3.91652249e-21)
o192.Parent = o191
o192.MeshId = "rbxassetid://9756362"
o192.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o192.MeshType = Enum.MeshType.FileMesh
o193.Name = "part_Weld"
o193.Parent = o191
o193.C0 = CFrame.new(-14.9239779, 9.80968094, 7.91943741, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o193.C1 = CFrame.new(-14.923974, -2.37625527, 12.39503, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o193.Part0 = o191
o193.Part1 = o194
o194.Name = "part"
o194.Parent = o1
o194.Material = Enum.Material.Metal
o194.Position = Vector3.new(-7.20733833, 2.38039947, -10.0107851)
o194.Rotation = Vector3.new(90, 70, 90)
o194.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o194.Velocity = Vector3.new(-1.42781602e-21, 0.103487223, -2.1331435e-21)
o194.CanCollide = false
o194.Locked = true
o194.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o194.CFrame = CFrame.new(-7.20733833, 2.38039947, -10.0107851, -2.06523491e-05, -0.342030704, 0.939690948, 1.552701e-05, -0.939690351, -0.342030525, 0.999999702, 7.55743395e-06, 2.47213447e-05)
o194.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o194.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o194.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o194.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o194.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o194.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o194.Position = Vector3.new(-7.20733833, 2.38039947, -10.0107851)
o194.Velocity = Vector3.new(-1.42781602e-21, 0.103487223, -2.1331435e-21)
o195.Parent = o194
o195.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o195.MeshType = Enum.MeshType.Brick
o196.Name = "part_Weld"
o196.Parent = o194
o196.C0 = CFrame.new(-14.923974, -2.37625527, 12.39503, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o196.C1 = CFrame.new(-14.9239759, -5.39621353, 11.37535, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o196.Part0 = o194
o196.Part1 = o197
o197.Name = "part"
o197.Parent = o1
o197.Material = Enum.Material.Metal
o197.Position = Vector3.new(-7.16037798, 2.47828889, -10.0107841)
o197.Rotation = Vector3.new(90, 55, 90)
o197.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o197.Velocity = Vector3.new(-1.24361062e-21, 0.103487223, -1.87164235e-21)
o197.CanCollide = false
o197.Locked = true
o197.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o197.CFrame = CFrame.new(-7.16037798, 2.47828889, -10.0107841, -2.06523491e-05, -0.573584557, 0.819148719, 1.552701e-05, -0.819148183, -0.573584259, 0.999999702, 9.01615749e-07, 2.58349901e-05)
o197.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o197.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o197.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o197.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o197.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o197.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o197.Position = Vector3.new(-7.16037798, 2.47828889, -10.0107841)
o197.Velocity = Vector3.new(-1.24361062e-21, 0.103487223, -1.87164235e-21)
o198.Parent = o197
o198.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o198.MeshType = Enum.MeshType.Brick
o199.Name = "part_Weld"
o199.Parent = o197
o199.C0 = CFrame.new(-14.9239759, -5.39621353, 11.37535, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o199.C1 = CFrame.new(-14.9239721, 1.54138505, 12.5252533, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o199.Part0 = o197
o199.Part1 = o200
o200.Name = "part"
o200.Parent = o1
o200.Material = Enum.Material.Metal
o200.Position = Vector3.new(-7.27234888, 1.91539979, -10.0107813)
o200.Rotation = Vector3.new(180, 90, 0)
o200.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o200.Velocity = Vector3.new(-2.30283892e-21, 0.103487223, -3.37158757e-21)
o200.CanCollide = false
o200.Locked = true
o200.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o200.CFrame = CFrame.new(-7.27234888, 1.91539979, -10.0107813, -2.06523491e-05, -1.16825104e-05, 1.00000191, 1.552701e-05, -1.00000131, -1.1742115e-05, 0.999999702, 1.55568359e-05, 2.06456862e-05)
o200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o200.Position = Vector3.new(-7.27234888, 1.91539979, -10.0107813)
o200.Velocity = Vector3.new(-2.30283892e-21, 0.103487223, -3.37158757e-21)
o201.Parent = o200
o201.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o201.MeshType = Enum.MeshType.Brick
o202.Name = "part_Weld"
o202.Parent = o200
o202.C0 = CFrame.new(-14.9239721, 1.54138505, 12.5252533, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o202.C1 = CFrame.new(-14.923974, 4.3719182, 11.7522163, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o202.Part0 = o200
o202.Part1 = o203
o203.Name = "part"
o203.Parent = o1
o203.Material = Enum.Material.Metal
o203.Position = Vector3.new(-7.23040485, 1.55526567, -10.0107727)
o203.Rotation = Vector3.new(-90, 75, -90)
o203.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o203.Velocity = Vector3.new(-2.98052885e-21, 0.103487223, -4.32854971e-21)
o203.CanCollide = false
o203.Locked = true
o203.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o203.CFrame = CFrame.new(-7.23040485, 1.55526567, -10.0107727, -2.06523491e-05, 0.258808166, 0.9659307, 1.552701e-05, -0.965930104, 0.258807957, 0.999999702, 2.03702457e-05, 1.59157971e-05)
o203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o203.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o203.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o203.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o203.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o203.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o203.Position = Vector3.new(-7.23040485, 1.55526567, -10.0107727)
o203.Velocity = Vector3.new(-2.98052885e-21, 0.103487223, -4.32854971e-21)
o204.Parent = o203
o204.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o204.MeshType = Enum.MeshType.Brick
o205.Name = "part_Weld"
o205.Parent = o203
o205.C0 = CFrame.new(-14.923974, 4.3719182, 11.7522163, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o205.C1 = CFrame.new(-14.9239759, -11.3810329, -5.27908039, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o205.Part0 = o203
o205.Part1 = o206
o206.Name = "part"
o206.Parent = o1
o206.Material = Enum.Material.Metal
o206.Position = Vector3.new(-7.09784222, 2.57751417, -10.0107841)
o206.Rotation = Vector3.new(90, -35, 90)
o206.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o206.Velocity = Vector3.new(-1.05689135e-21, 0.103487223, -1.60621784e-21)
o206.CanCollide = false
o206.Locked = true
o206.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o206.CFrame = CFrame.new(-7.09784222, 2.57751417, -10.0107841, -2.06523491e-05, -0.819147706, -0.57358557, 1.552701e-05, 0.573585272, -0.81914717, 0.999999702, -2.58349846e-05, 9.01580279e-07)
o206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o206.Position = Vector3.new(-7.09784222, 2.57751417, -10.0107841)
o206.Velocity = Vector3.new(-1.05689135e-21, 0.103487223, -1.60621784e-21)
o207.Parent = o206
o207.Scale = Vector3.new(0.0250000022, 0.825000048, 0.825000048)
o207.MeshType = Enum.MeshType.Wedge
o208.Name = "part_Weld"
o208.Parent = o206
o208.C0 = CFrame.new(-14.9239759, -11.3810329, -5.27908039, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o208.C1 = CFrame.new(-14.9239759, -0.341733932, 12.6295233, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o208.Part0 = o206
o208.Part1 = o209
o209.Name = "part"
o209.Parent = o1
o209.Material = Enum.Material.Metal
o209.Position = Vector3.new(-7.24408531, 2.23055029, -10.0107822)
o209.Rotation = Vector3.new(89.9899979, 80, 90.0099945)
o209.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o209.Velocity = Vector3.new(-1.70979788e-21, 0.103487223, -2.53261499e-21)
o209.CanCollide = false
o209.Locked = true
o209.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o209.CFrame = CFrame.new(-7.24408531, 2.23055029, -10.0107822, -2.06523491e-05, -0.173658788, 0.984807491, 1.552701e-05, -0.984806895, -0.173658818, 0.999999702, 1.17354311e-05, 2.30334281e-05)
o209.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o209.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o209.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o209.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o209.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o209.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o209.Position = Vector3.new(-7.24408531, 2.23055029, -10.0107822)
o209.Velocity = Vector3.new(-1.70979788e-21, 0.103487223, -2.53261499e-21)
o210.Parent = o209
o210.Scale = Vector3.new(0.0250000022, 0.949999988, 0.774999976)
o210.MeshType = Enum.MeshType.Brick
o211.Name = "part_Weld"
o211.Parent = o209
o211.C0 = CFrame.new(-14.9239759, -0.341733932, 12.6295233, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o211.C1 = CFrame.new(14.9239798, 9.23743725, -8.0447855, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o211.Part0 = o209
o211.Part1 = o212
o212.Name = "part"
o212.Parent = o1
o212.Material = Enum.Material.Metal
o212.Position = Vector3.new(-6.96747684, 1.2173245, -10.0107565)
o212.Rotation = Vector3.new(90, -45, -90)
o212.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o212.Velocity = Vector3.new(-3.61645706e-21, 0.103487223, -5.22123148e-21)
o212.CanCollide = false
o212.Locked = true
o212.Size = Vector3.new(0.200000003, 0.38499999, 0.200000003)
o212.CFrame = CFrame.new(-6.96747684, 1.2173245, -10.0107565, 2.06523491e-05, 0.70710057, -0.707115114, -1.552701e-05, -0.707114756, -0.707100093, -0.999999702, 2.55990453e-05, -3.59832302e-06)
o212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o212.Position = Vector3.new(-6.96747684, 1.2173245, -10.0107565)
o212.Velocity = Vector3.new(-3.61645706e-21, 0.103487223, -5.22123148e-21)
o213.Parent = o212
o213.Scale = Vector3.new(0.0250000022, 1, 0.774999976)
o213.MeshType = Enum.MeshType.Wedge
o214.Name = "part_Weld"
o214.Parent = o212
o214.C0 = CFrame.new(14.9239798, 9.23743725, -8.0447855, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o214.C1 = CFrame.new(-14.9239798, 12.5127945, 1.0852313, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o214.Part0 = o212
o214.Part1 = o215
o215.Name = "part"
o215.Parent = o1
o215.Material = Enum.Material.Metal
o215.Position = Vector3.new(-7.25824022, 1.47809064, -10.010767)
o215.Rotation = Vector3.new(-90, 10, -90)
o215.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o215.Velocity = Vector3.new(-3.12575458e-21, 0.103487223, -4.53449587e-21)
o215.CanCollide = false
o215.Locked = true
o215.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o215.CFrame = CFrame.new(-7.25824022, 1.47809064, -10.010767, -2.06523491e-05, 0.984807134, 0.173659742, 1.552701e-05, -0.173659742, 0.984806538, 0.999999702, 2.30334354e-05, -1.17354057e-05)
o215.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o215.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o215.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o215.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o215.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o215.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o215.Position = Vector3.new(-7.25824022, 1.47809064, -10.010767)
o215.Velocity = Vector3.new(-3.12575458e-21, 0.103487223, -4.53449587e-21)
o216.Parent = o215
o216.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o216.MeshType = Enum.MeshType.Wedge
o217.Name = "part_Weld"
o217.Parent = o215
o217.C0 = CFrame.new(-14.9239798, 12.5127945, 1.0852313, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o217.C1 = CFrame.new(-14.9239817, 10.541173, 7.02121878, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o217.Part0 = o215
o217.Part1 = o218
o218.Name = "part"
o218.Parent = o1
o218.Material = Enum.Material.Metal
o218.Position = Vector3.new(-7.33524895, 1.77119112, -10.0107708)
o218.Rotation = Vector3.new(-90, 40, -90)
o218.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o218.Velocity = Vector3.new(-2.57420667e-21, 0.103487223, -3.75667589e-21)
o218.CanCollide = false
o218.Locked = true
o218.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o218.CFrame = CFrame.new(-7.33524895, 1.77119112, -10.0107708, -2.06523491e-05, 0.766037583, 0.642797887, 1.552701e-05, -0.642797589, 0.766037107, 0.999999702, 2.58152395e-05, 1.35357732e-06)
o218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o218.Position = Vector3.new(-7.33524895, 1.77119112, -10.0107708)
o218.Velocity = Vector3.new(-2.57420667e-21, 0.103487223, -3.75667589e-21)
o219.Parent = o218
o219.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o219.MeshType = Enum.MeshType.Wedge
o220.Name = "part_Weld"
o220.Parent = o218
o220.C0 = CFrame.new(-14.9239817, 10.541173, 7.02121878, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o220.C1 = CFrame.new(-14.9239759, 7.534863, 10.1184931, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o220.Part0 = o218
o220.Part1 = o221
o221.Name = "part"
o221.Parent = o1
o221.Material = Enum.Material.Metal
o221.Position = Vector3.new(-7.27739334, 1.84013617, -10.0107765)
o221.Rotation = Vector3.new(-90, 60, -90)
o221.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o221.Velocity = Vector3.new(-2.44446775e-21, 0.103487223, -3.57190806e-21)
o221.CanCollide = false
o221.Locked = true
o221.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o221.CFrame = CFrame.new(-7.27739334, 1.84013617, -10.0107765, -2.06523491e-05, 0.499991447, 0.866031885, 1.552701e-05, -0.866031408, 0.499991119, 0.999999702, 2.37954555e-05, 1.01012392e-05)
o221.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o221.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o221.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o221.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o221.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o221.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o221.Position = Vector3.new(-7.27739334, 1.84013617, -10.0107765)
o221.Velocity = Vector3.new(-2.44446775e-21, 0.103487223, -3.57190806e-21)
o222.Parent = o221
o222.MeshId = "rbxassetid://9756362"
o222.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o222.MeshType = Enum.MeshType.FileMesh
o223.Name = "part_Weld"
o223.Parent = o221
o223.C0 = CFrame.new(-14.9239759, 7.534863, 10.1184931, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o223.C1 = CFrame.new(-14.9239779, 6.85642242, 10.6288795, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o223.Part0 = o221
o223.Part1 = o224
o224.Name = "part"
o224.Parent = o1
o224.Material = Enum.Material.Metal
o224.Position = Vector3.new(-7.27777147, 2.09608793, -10.0107784)
o224.Rotation = Vector3.new(-90, 65, -90)
o224.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o224.Velocity = Vector3.new(-1.96282507e-21, 0.103487223, -2.89108449e-21)
o224.CanCollide = false
o224.Locked = true
o224.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o224.CFrame = CFrame.new(-7.27777147, 2.09608793, -10.0107784, -2.06523491e-05, 0.422607899, 0.906314135, 1.552701e-05, -0.906313658, 0.422607601, 0.999999702, 2.28245099e-05, 1.21367448e-05)
o224.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o224.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o224.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o224.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o224.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o224.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o224.Position = Vector3.new(-7.27777147, 2.09608793, -10.0107784)
o224.Velocity = Vector3.new(-1.96282507e-21, 0.103487223, -2.89108449e-21)
o225.Parent = o224
o225.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o225.MeshType = Enum.MeshType.Wedge
o226.Name = "part_Weld"
o226.Parent = o224
o226.C0 = CFrame.new(-14.9239779, 6.85642242, 10.6288795, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o226.C1 = CFrame.new(-14.9239759, 9.27238274, 8.61450481, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o226.Part0 = o224
o226.Part1 = o227
o227.Name = "part"
o227.Parent = o1
o227.Material = Enum.Material.Metal
o227.Position = Vector3.new(-7.30635548, 1.93976712, -10.0107784)
o227.Rotation = Vector3.new(-90, 50, -90)
o227.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o227.Velocity = Vector3.new(-2.25698492e-21, 0.103487223, -3.307577e-21)
o227.CanCollide = false
o227.Locked = true
o227.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o227.CFrame = CFrame.new(-7.30635548, 1.93976712, -10.0107784, -2.06523491e-05, 0.642779887, 0.766052723, 1.552701e-05, -0.766052246, 0.642779469, 0.999999702, 2.51880083e-05, 5.81575569e-06)
o227.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o227.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o227.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o227.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o227.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o227.Position = Vector3.new(-7.30635548, 1.93976712, -10.0107784)
o227.Velocity = Vector3.new(-2.25698492e-21, 0.103487223, -3.307577e-21)
o228.Parent = o227
o228.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o228.MeshType = Enum.MeshType.Wedge
o229.Name = "part_Weld"
o229.Parent = o227
o229.C0 = CFrame.new(-14.9239759, 9.27238274, 8.61450481, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o229.C1 = CFrame.new(-14.9239779, -11.7327061, 4.41294289, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o229.Part0 = o227
o229.Part1 = o230
o230.Name = "part"
o230.Parent = o1
o230.Material = Enum.Material.Metal
o230.Position = Vector3.new(-7.06784439, 2.68251252, -10.0107832)
o230.Rotation = Vector3.new(90, 10, 90)
o230.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o230.Velocity = Vector3.new(-8.5930838e-22, 0.103487223, -1.32620902e-21)
o230.CanCollide = false
o230.Locked = true
o230.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o230.CFrame = CFrame.new(-7.06784439, 2.68251252, -10.0107832, -2.06523491e-05, -0.984810591, 0.173639715, 1.552701e-05, -0.173639596, -0.984809995, 0.999999702, -1.76305512e-05, 1.89056191e-05)
o230.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o230.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o230.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o230.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o230.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o230.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o230.Position = Vector3.new(-7.06784439, 2.68251252, -10.0107832)
o230.Velocity = Vector3.new(-8.5930838e-22, 0.103487223, -1.32620902e-21)
o231.Parent = o230
o231.Scale = Vector3.new(0.0250000022, 1.5, 1)
o231.MeshType = Enum.MeshType.Wedge
o232.Name = "part_Weld"
o232.Parent = o230
o232.C0 = CFrame.new(-14.9239779, -11.7327061, 4.41294289, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o232.C1 = CFrame.new(-14.9239798, 2.46731997, 12.3522339, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o232.Part0 = o230
o232.Part1 = o8
o233.Name = "part"
o233.Parent = o1
o233.Material = Enum.Material.Metal
o233.Position = Vector3.new(-7.2623806, 2.07540607, -9.7607708)
o233.Rotation = Vector3.new(89.9899979, 85, 90.0099945)
o233.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o233.Velocity = Vector3.new(-2.00767963e-21, 0.103487223, -2.94573354e-21)
o233.CanCollide = false
o233.Locked = true
o233.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o233.CFrame = CFrame.new(-7.2623806, 2.07540607, -9.7607708, -2.06523491e-05, -0.0871618688, 0.996198058, 1.552701e-05, -0.996197283, -0.087161988, 0.999999702, 1.36984008e-05, 2.19229551e-05)
o233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o233.Position = Vector3.new(-7.2623806, 2.07540607, -9.7607708)
o233.Velocity = Vector3.new(-2.00767963e-21, 0.103487223, -2.94573354e-21)
o234.Parent = o233
o234.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o234.MeshType = Enum.MeshType.Brick
o235.Name = "part_Weld"
o235.Parent = o233
o235.C0 = CFrame.new(-15.1739845, 0.604206681, 12.6159172, 0, 0, 1, -0.0871500224, -0.996195257, 0, 0.996195257, -0.0871500224, 0)
o235.C1 = CFrame.new(-15.1739864, 3.40832806, 12.0952063, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o235.Part0 = o233
o235.Part1 = o245
o236.Name = "part"
o236.Parent = o1
o236.Material = Enum.Material.Metal
o236.Position = Vector3.new(-7.24263906, 1.56672812, -9.76076412)
o236.Rotation = Vector3.new(-90, 30, -90)
o236.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o236.Velocity = Vector3.new(-2.96489481e-21, 0.103487223, -4.29834995e-21)
o236.CanCollide = false
o236.Locked = true
o236.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o236.CFrame = CFrame.new(-7.24263906, 1.56672812, -9.76076412, -2.06523491e-05, 0.866021693, 0.500011563, 1.552701e-05, -0.500011325, 0.866021037, 0.999999702, 2.56581261e-05, -3.14976842e-06)
o236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o236.Position = Vector3.new(-7.24263906, 1.56672812, -9.76076412)
o236.Velocity = Vector3.new(-2.96489481e-21, 0.103487223, -4.29834995e-21)
o237.Parent = o236
o237.MeshId = "rbxassetid://9756362"
o237.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o237.MeshType = Enum.MeshType.FileMesh
o238.Name = "part_Weld"
o238.Parent = o236
o238.C0 = CFrame.new(-15.1739826, 11.4177961, 5.21484804, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o238.C1 = CFrame.new(-14.9239836, 0.604206085, 12.6159229, 0, 0, 1, -0.0871500224, -0.996195257, 0, 0.996195257, -0.0871500224, 0)
o238.Part0 = o236
o238.Part1 = o158
o239.Name = "part"
o239.Parent = o1
o239.Material = Enum.Material.Metal
o239.Position = Vector3.new(-7.17202854, 1.42039013, -9.76076221)
o239.Rotation = Vector3.new(-90, 20, -90)
o239.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o239.Velocity = Vector3.new(-3.24026942e-21, 0.103487223, -4.68593293e-21)
o239.CanCollide = false
o239.Locked = true
o239.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o239.CFrame = CFrame.new(-7.17202854, 1.42039013, -9.76076221, -2.06523491e-05, 0.939691305, 0.342031717, 1.552701e-05, -0.342031628, 0.93969059, 0.999999702, 2.47213684e-05, -7.55741712e-06)
o239.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o239.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o239.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o239.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o239.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o239.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o239.Position = Vector3.new(-7.17202854, 1.42039013, -9.76076221)
o239.Velocity = Vector3.new(-3.24026942e-21, 0.103487223, -4.68593293e-21)
o240.Parent = o239
o240.MeshId = "rbxassetid://9756362"
o240.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o240.MeshType = Enum.MeshType.FileMesh
o241.Name = "part_Weld"
o241.Parent = o239
o241.C0 = CFrame.new(-15.1739807, 12.0334797, 3.26629829, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o241.C1 = CFrame.new(-15.1739826, 11.4177961, 5.21484804, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o241.Part0 = o239
o241.Part1 = o236
o242.Name = "part"
o242.Parent = o1
o242.Material = Enum.Material.Metal
o242.Position = Vector3.new(-7.1720295, 1.33039021, -9.76076698)
o242.Rotation = Vector3.new(-90, 0, -90)
o242.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o242.Velocity = Vector3.new(-3.40962839e-21, 0.103487223, -4.92533306e-21)
o242.CanCollide = false
o242.Locked = true
o242.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o242.CFrame = CFrame.new(-7.1720295, 1.33039021, -9.76076698, -2.06523491e-05, 1.00000274, 1.15931034e-05, 1.552701e-05, -1.17719173e-05, 1.00000203, 0.999999702, 2.06457025e-05, -1.55568505e-05)
o242.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o242.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o242.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o242.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o242.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o242.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o242.Position = Vector3.new(-7.1720295, 1.33039021, -9.76076698)
o242.Velocity = Vector3.new(-3.40962839e-21, 0.103487223, -4.92533306e-21)
o243.Parent = o242
o243.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o243.MeshType = Enum.MeshType.Wedge
o244.Name = "part_Weld"
o244.Parent = o242
o244.C0 = CFrame.new(-15.173975, 12.4249115, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o244.C1 = CFrame.new(-15.1739807, 12.0334797, 3.26629829, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o244.Part0 = o242
o244.Part1 = o239
o245.Name = "part"
o245.Parent = o1
o245.Material = Enum.Material.Metal
o245.Position = Vector3.new(-7.25042629, 1.63027143, -9.76076126)
o245.Rotation = Vector3.new(-89.9899979, 80, -90.0099945)
o245.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o245.Velocity = Vector3.new(-2.84532117e-21, 0.103487223, -4.12950938e-21)
o245.CanCollide = false
o245.Locked = true
o245.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o245.CFrame = CFrame.new(-7.25042629, 1.63027143, -9.76076126, -2.06523491e-05, 0.173636258, 0.98481369, 1.552701e-05, -0.984812975, 0.17363596, 0.999999702, 1.89055936e-05, 1.76306712e-05)
o245.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o245.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o245.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o245.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o245.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o245.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o245.Position = Vector3.new(-7.25042629, 1.63027143, -9.76076126)
o245.Velocity = Vector3.new(-2.84532117e-21, 0.103487223, -4.12950938e-21)
o246.Parent = o245
o246.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o246.MeshType = Enum.MeshType.Brick
o247.Name = "part_Weld"
o247.Parent = o245
o247.C0 = CFrame.new(-15.1739864, 3.40832806, 12.0952063, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o247.C1 = CFrame.new(-15.1739845, 9.47493839, 8.04478741, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o247.Part0 = o245
o247.Part1 = o248
o248.Name = "part"
o248.Parent = o1
o248.Material = Enum.Material.Metal
o248.Position = Vector3.new(-7.13544559, 1.38526952, -9.76075745)
o248.Rotation = Vector3.new(-90, 45, -90)
o248.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o248.Velocity = Vector3.new(-3.30635864e-21, 0.103487223, -4.77848548e-21)
o248.CanCollide = false
o248.Locked = true
o248.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o248.CFrame = CFrame.new(-7.13544559, 1.38526952, -9.76075745, -2.06523491e-05, 0.70710218, 0.707116604, 1.552701e-05, -0.707116187, 0.707101583, 0.999999702, 2.55990999e-05, 3.5983303e-06)
o248.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o248.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o248.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o248.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o248.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o248.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o248.Position = Vector3.new(-7.13544559, 1.38526952, -9.76075745)
o248.Velocity = Vector3.new(-3.30635864e-21, 0.103487223, -4.77848548e-21)
o249.Parent = o248
o249.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o249.MeshType = Enum.MeshType.Brick
o250.Name = "part_Weld"
o250.Parent = o248
o250.C0 = CFrame.new(-15.1739845, 9.47493839, 8.04478741, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o250.C1 = CFrame.new(-15.1739864, 7.16470861, 10.2317486, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o250.Part0 = o248
o250.Part1 = o251
o251.Name = "part"
o251.Parent = o1
o251.Material = Enum.Material.Metal
o251.Position = Vector3.new(-7.19043541, 1.46295023, -9.76075745)
o251.Rotation = Vector3.new(-90, 60, -90)
o251.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o251.Velocity = Vector3.new(-3.16018133e-21, 0.103487223, -4.5731601e-21)
o251.CanCollide = false
o251.Locked = true
o251.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o251.CFrame = CFrame.new(-7.19043541, 1.46295023, -9.76075745, -2.06523491e-05, 0.499992728, 0.866033792, 1.552701e-05, -0.866033196, 0.499992251, 0.999999702, 2.37955119e-05, 1.01012611e-05)
o251.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o251.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o251.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o251.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o251.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o251.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o251.Position = Vector3.new(-7.19043541, 1.46295023, -9.76075745)
o251.Velocity = Vector3.new(-3.16018133e-21, 0.103487223, -4.5731601e-21)
o252.Parent = o251
o252.Scale = Vector3.new(0.0250000022, 0.699999988, 0.774999976)
o252.MeshType = Enum.MeshType.Brick
o253.Name = "part_Weld"
o253.Parent = o251
o253.C0 = CFrame.new(-15.1739864, 7.16470861, 10.2317486, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o253.C1 = CFrame.new(-15.1739864, 11.926692, 4.17670345, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o253.Part0 = o251
o253.Part1 = o254
o254.Name = "part"
o254.Parent = o1
o254.Material = Enum.Material.Metal
o254.Position = Vector3.new(-7.32153034, 1.62907553, -9.76076317)
o254.Rotation = Vector3.new(-90, 25, -90)
o254.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o254.Velocity = Vector3.new(-2.84757148e-21, 0.103487223, -4.13437876e-21)
o254.CanCollide = false
o254.Locked = true
o254.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o254.CFrame = CFrame.new(-7.32153034, 1.62907553, -9.76076317, -2.06523491e-05, 0.906306386, 0.422630012, 1.552701e-05, -0.422629863, 0.906305611, 0.999999702, 2.52859936e-05, -5.37405685e-06)
o254.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o254.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o254.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o254.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o254.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o254.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o254.Position = Vector3.new(-7.32153034, 1.62907553, -9.76076317)
o254.Velocity = Vector3.new(-2.84757148e-21, 0.103487223, -4.13437876e-21)
o255.Parent = o254
o255.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o255.MeshType = Enum.MeshType.Wedge
o256.Name = "part_Weld"
o256.Parent = o254
o256.C0 = CFrame.new(-15.1739864, 11.926692, 4.17670345, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o256.C1 = CFrame.new(-15.1739864, 9.80967999, 7.9194355, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o256.Part0 = o254
o256.Part1 = o257
o257.Name = "part"
o257.Parent = o1
o257.Material = Enum.Material.Metal
o257.Position = Vector3.new(-7.28349972, 1.71064317, -9.76076412)
o257.Rotation = Vector3.new(-90, 45, -90)
o257.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o257.Velocity = Vector3.new(-2.6940798e-21, 0.103487223, -3.91650552e-21)
o257.CanCollide = false
o257.Locked = true
o257.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o257.CFrame = CFrame.new(-7.28349972, 1.71064317, -9.76076412, -2.06523491e-05, 0.707100213, 0.70711863, 1.552701e-05, -0.707118154, 0.707099497, 0.999999702, 2.55990908e-05, 3.5984026e-06)
o257.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o257.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o257.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o257.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o257.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o257.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o257.Position = Vector3.new(-7.28349972, 1.71064317, -9.76076412)
o257.Velocity = Vector3.new(-2.6940798e-21, 0.103487223, -3.91650552e-21)
o258.Parent = o257
o258.MeshId = "rbxassetid://9756362"
o258.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o258.MeshType = Enum.MeshType.FileMesh
o259.Name = "part_Weld"
o259.Parent = o257
o259.C0 = CFrame.new(-15.1739864, 9.80967999, 7.9194355, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o259.C1 = CFrame.new(-15.1739807, -2.37625861, 12.3950396, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o259.Part0 = o257
o259.Part1 = o260
o260.Name = "part"
o260.Parent = o1
o260.Material = Enum.Material.Metal
o260.Position = Vector3.new(-7.20737219, 2.38040638, -9.76077843)
o260.Rotation = Vector3.new(90, 70, 90)
o260.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o260.Velocity = Vector3.new(-1.43373877e-21, 0.103487223, -2.13312593e-21)
o260.CanCollide = false
o260.Locked = true
o260.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o260.CFrame = CFrame.new(-7.20737219, 2.38040638, -9.76077843, -2.06523491e-05, -0.342031121, 0.939692497, 1.552701e-05, -0.939691663, -0.342030942, 0.999999702, 7.55744895e-06, 2.47213829e-05)
o260.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o260.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o260.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o260.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o260.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o260.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o260.Position = Vector3.new(-7.20737219, 2.38040638, -9.76077843)
o260.Velocity = Vector3.new(-1.43373877e-21, 0.103487223, -2.13312593e-21)
o261.Parent = o260
o261.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o261.MeshType = Enum.MeshType.Brick
o262.Name = "part_Weld"
o262.Parent = o260
o262.C0 = CFrame.new(-15.1739807, -2.37625861, 12.3950396, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o262.C1 = CFrame.new(-15.1739845, -5.39620972, 11.3753452, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o262.Part0 = o260
o262.Part1 = o263
o263.Name = "part"
o263.Parent = o1
o263.Material = Enum.Material.Metal
o263.Position = Vector3.new(-7.16039371, 2.47829628, -9.76077557)
o263.Rotation = Vector3.new(90, 55, 90)
o263.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o263.Velocity = Vector3.new(-1.24953245e-21, 0.103487223, -1.87162316e-21)
o263.CanCollide = false
o263.Locked = true
o263.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o263.CFrame = CFrame.new(-7.16039371, 2.47829628, -9.76077557, -2.06523491e-05, -0.573585391, 0.81915009, 1.552701e-05, -0.819149375, -0.573585033, 0.999999702, 9.01620297e-07, 2.58350301e-05)
o263.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o263.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o263.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o263.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o263.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o263.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o263.Position = Vector3.new(-7.16039371, 2.47829628, -9.76077557)
o263.Velocity = Vector3.new(-1.24953245e-21, 0.103487223, -1.87162316e-21)
o264.Parent = o263
o264.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o264.MeshType = Enum.MeshType.Brick
o265.Name = "part_Weld"
o265.Parent = o263
o265.C0 = CFrame.new(-15.1739845, -5.39620972, 11.3753452, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o265.C1 = CFrame.new(-15.1739845, 1.54138505, 12.5252552, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o265.Part0 = o263
o265.Part1 = o266
o266.Name = "part"
o266.Parent = o1
o266.Material = Enum.Material.Metal
o266.Position = Vector3.new(-7.27237272, 1.91540599, -9.76076889)
o266.Rotation = Vector3.new(180, 90, 0)
o266.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o266.Velocity = Vector3.new(-2.30876307e-21, 0.103487223, -3.37157182e-21)
o266.CanCollide = false
o266.Locked = true
o266.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o266.CFrame = CFrame.new(-7.27237272, 1.91540599, -9.76076889, -2.06523491e-05, -1.15931034e-05, 1.00000358, 1.552701e-05, -1.00000274, -1.16974115e-05, 0.999999702, 1.55568632e-05, 2.06457171e-05)
o266.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o266.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o266.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o266.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o266.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o266.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o266.Position = Vector3.new(-7.27237272, 1.91540599, -9.76076889)
o266.Velocity = Vector3.new(-2.30876307e-21, 0.103487223, -3.37157182e-21)
o267.Parent = o266
o267.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o267.MeshType = Enum.MeshType.Brick
o268.Name = "part_Weld"
o268.Parent = o266
o268.C0 = CFrame.new(-15.1739845, 1.54138505, 12.5252552, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o268.C1 = CFrame.new(-15.1739807, 4.37191916, 11.7522202, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o268.Part0 = o266
o268.Part1 = o269
o269.Name = "part"
o269.Parent = o1
o269.Material = Enum.Material.Metal
o269.Position = Vector3.new(-7.2304306, 1.55527139, -9.76076603)
o269.Rotation = Vector3.new(-90, 75, -90)
o269.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o269.Velocity = Vector3.new(-2.98645381e-21, 0.103487223, -4.32853517e-21)
o269.CanCollide = false
o269.Locked = true
o269.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o269.CFrame = CFrame.new(-7.2304306, 1.55527139, -9.76076603, -2.06523491e-05, 0.258808702, 0.96593225, 1.552701e-05, -0.965931535, 0.258808404, 0.999999702, 2.03702784e-05, 1.59158189e-05)
o269.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o269.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o269.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o269.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o269.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o269.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o269.Position = Vector3.new(-7.2304306, 1.55527139, -9.76076603)
o269.Velocity = Vector3.new(-2.98645381e-21, 0.103487223, -4.32853517e-21)
o270.Parent = o269
o270.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o270.MeshType = Enum.MeshType.Brick
o271.Name = "part_Weld"
o271.Parent = o269
o271.C0 = CFrame.new(-15.1739807, 4.37191916, 11.7522202, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o271.C1 = CFrame.new(-15.1739788, -11.3810368, -5.27908278, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o271.Part0 = o269
o271.Part1 = o272
o272.Name = "part"
o272.Parent = o1
o272.Material = Enum.Material.Metal
o272.Position = Vector3.new(-7.09786892, 2.57752156, -9.76078129)
o272.Rotation = Vector3.new(90, -35, 90)
o272.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o272.Velocity = Vector3.new(-1.06281299e-21, 0.103487223, -1.60619876e-21)
o272.CanCollide = false
o272.Locked = true
o272.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o272.CFrame = CFrame.new(-7.09786892, 2.57752156, -9.76078129, -2.06523491e-05, -0.819149137, -0.573586404, 1.552701e-05, 0.573586047, -0.819148421, 0.999999702, -2.58350228e-05, 9.01583007e-07)
o272.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o272.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o272.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o272.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o272.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o272.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o272.Position = Vector3.new(-7.09786892, 2.57752156, -9.76078129)
o272.Velocity = Vector3.new(-1.06281299e-21, 0.103487223, -1.60619876e-21)
o273.Parent = o272
o273.Scale = Vector3.new(0.0250000022, 0.825000048, 0.825000048)
o273.MeshType = Enum.MeshType.Wedge
o274.Name = "part_Weld"
o274.Parent = o272
o274.C0 = CFrame.new(-15.1739788, -11.3810368, -5.27908278, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o274.C1 = CFrame.new(-15.1739807, -0.341732502, 12.6295156, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o274.Part0 = o272
o274.Part1 = o275
o275.Name = "part"
o275.Parent = o1
o275.Material = Enum.Material.Metal
o275.Position = Vector3.new(-7.24410009, 2.23055696, -9.76077747)
o275.Rotation = Vector3.new(89.9899979, 80, 90.0099945)
o275.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o275.Velocity = Vector3.new(-1.71572082e-21, 0.103487223, -2.53259762e-21)
o275.CanCollide = false
o275.Locked = true
o275.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o275.CFrame = CFrame.new(-7.24410009, 2.23055696, -9.76077747, -2.06523491e-05, -0.173658967, 0.98480916, 1.552701e-05, -0.984808326, -0.173658997, 0.999999702, 1.17354502e-05, 2.30334626e-05)
o275.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o275.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o275.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o275.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o275.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o275.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o275.Position = Vector3.new(-7.24410009, 2.23055696, -9.76077747)
o275.Velocity = Vector3.new(-1.71572082e-21, 0.103487223, -2.53259762e-21)
o276.Parent = o275
o276.Scale = Vector3.new(0.0250000022, 0.949999988, 0.774999976)
o276.MeshType = Enum.MeshType.Brick
o277.Name = "part_Weld"
o277.Parent = o275
o277.C0 = CFrame.new(-15.1739807, -0.341732502, 12.6295156, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o277.C1 = CFrame.new(15.1739864, 9.2374382, -8.04478645, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o277.Part0 = o275
o277.Part1 = o278
o278.Name = "part"
o278.Parent = o1
o278.Material = Enum.Material.Metal
o278.Position = Vector3.new(-6.96750164, 1.21732867, -9.76074982)
o278.Rotation = Vector3.new(90, -45, -90)
o278.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o278.Velocity = Vector3.new(-3.62238465e-21, 0.103487223, -5.22122098e-21)
o278.CanCollide = false
o278.Locked = true
o278.Size = Vector3.new(0.200000003, 0.38499999, 0.200000003)
o278.CFrame = CFrame.new(-6.96750164, 1.21732867, -9.76074982, 2.06523491e-05, 0.707101822, -0.707116187, -1.552701e-05, -0.70711571, -0.707101166, -0.999999702, 2.55990853e-05, -3.59832666e-06)
o278.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o278.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o278.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o278.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o278.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o278.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o278.Position = Vector3.new(-6.96750164, 1.21732867, -9.76074982)
o278.Velocity = Vector3.new(-3.62238465e-21, 0.103487223, -5.22122098e-21)
o279.Parent = o278
o279.Scale = Vector3.new(0.0250000022, 1, 0.774999976)
o279.MeshType = Enum.MeshType.Wedge
o280.Name = "part_Weld"
o280.Parent = o278
o280.C0 = CFrame.new(15.1739864, 9.2374382, -8.04478645, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o280.C1 = CFrame.new(-15.1739864, 12.5127907, 1.08523083, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o280.Part0 = o278
o280.Part1 = o281
o281.Name = "part"
o281.Parent = o1
o281.Material = Enum.Material.Metal
o281.Position = Vector3.new(-7.25825977, 1.47809505, -9.76076031)
o281.Rotation = Vector3.new(-90, 10, -90)
o281.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o281.Velocity = Vector3.new(-3.13168197e-21, 0.103487223, -4.53448497e-21)
o281.CanCollide = false
o281.Locked = true
o281.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o281.CFrame = CFrame.new(-7.25825977, 1.47809505, -9.76076031, -2.06523491e-05, 0.984808743, 0.173659921, 1.552701e-05, -0.173659891, 0.984807968, 0.999999702, 2.30334717e-05, -1.17354266e-05)
o281.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o281.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o281.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o281.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o281.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o281.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o281.Position = Vector3.new(-7.25825977, 1.47809505, -9.76076031)
o281.Velocity = Vector3.new(-3.13168197e-21, 0.103487223, -4.53448497e-21)
o282.Parent = o281
o282.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o282.MeshType = Enum.MeshType.Wedge
o283.Name = "part_Weld"
o283.Parent = o281
o283.C0 = CFrame.new(-15.1739864, 12.5127907, 1.08523083, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o283.C1 = CFrame.new(-15.1739845, 10.5411682, 7.02121496, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o283.Part0 = o281
o283.Part1 = o284
o284.Name = "part"
o284.Parent = o1
o284.Material = Enum.Material.Metal
o284.Position = Vector3.new(-7.33526611, 1.77119625, -9.76076794)
o284.Rotation = Vector3.new(-90, 40, -90)
o284.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o284.Velocity = Vector3.new(-2.58013244e-21, 0.103487223, -3.75666297e-21)
o284.CanCollide = false
o284.Locked = true
o284.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o284.CFrame = CFrame.new(-7.33526611, 1.77119625, -9.76076794, -2.06523491e-05, 0.766038895, 0.642798841, 1.552701e-05, -0.642798424, 0.766038239, 0.999999702, 2.58152813e-05, 1.35357823e-06)
o284.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o284.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o284.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o284.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o284.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o284.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o284.Position = Vector3.new(-7.33526611, 1.77119625, -9.76076794)
o284.Velocity = Vector3.new(-2.58013244e-21, 0.103487223, -3.75666297e-21)
o285.Parent = o284
o285.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o285.MeshType = Enum.MeshType.Wedge
o286.Name = "part_Weld"
o286.Parent = o284
o286.C0 = CFrame.new(-15.1739845, 10.5411682, 7.02121496, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o286.C1 = CFrame.new(-15.1739769, 7.534863, 10.1184931, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o286.Part0 = o284
o286.Part1 = o287
o287.Name = "part"
o287.Parent = o1
o287.Material = Enum.Material.Metal
o287.Position = Vector3.new(-7.27741718, 1.84014189, -9.76077557)
o287.Rotation = Vector3.new(-90, 60, -90)
o287.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o287.Velocity = Vector3.new(-2.45039231e-21, 0.103487223, -3.57189392e-21)
o287.CanCollide = false
o287.Locked = true
o287.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o287.CFrame = CFrame.new(-7.27741718, 1.84014189, -9.76077557, -2.06523491e-05, 0.499992281, 0.866033196, 1.552701e-05, -0.8660326, 0.499991864, 0.999999702, 2.37954937e-05, 1.01012547e-05)
o287.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o287.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o287.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o287.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o287.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o287.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o287.Position = Vector3.new(-7.27741718, 1.84014189, -9.76077557)
o287.Velocity = Vector3.new(-2.45039231e-21, 0.103487223, -3.57189392e-21)
o288.Parent = o287
o288.MeshId = "rbxassetid://9756362"
o288.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o288.MeshType = Enum.MeshType.FileMesh
o289.Name = "part_Weld"
o289.Parent = o287
o289.C0 = CFrame.new(-15.1739769, 7.534863, 10.1184931, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o289.C1 = CFrame.new(-15.1739864, 6.85641956, 10.6288748, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o289.Part0 = o287
o289.Part1 = o290
o290.Name = "part"
o290.Parent = o1
o290.Material = Enum.Material.Metal
o290.Position = Vector3.new(-7.27778959, 2.09609342, -9.76076984)
o290.Rotation = Vector3.new(-90, 65, -90)
o290.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o290.Velocity = Vector3.new(-1.96875044e-21, 0.103487223, -2.89107096e-21)
o290.CanCollide = false
o290.Locked = true
o290.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o290.CFrame = CFrame.new(-7.27778959, 2.09609342, -9.76076984, -2.06523491e-05, 0.422608614, 0.906315506, 1.552701e-05, -0.906314909, 0.422608256, 0.999999702, 2.28245462e-05, 1.2136763e-05)
o290.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o290.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o290.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o290.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o290.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o290.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o290.Position = Vector3.new(-7.27778959, 2.09609342, -9.76076984)
o290.Velocity = Vector3.new(-1.96875044e-21, 0.103487223, -2.89107096e-21)
o291.Parent = o290
o291.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o291.MeshType = Enum.MeshType.Wedge
o292.Name = "part_Weld"
o292.Parent = o290
o292.C0 = CFrame.new(-15.1739864, 6.85641956, 10.6288748, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o292.C1 = CFrame.new(-15.1739845, 9.27238464, 8.61450672, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o292.Part0 = o290
o292.Part1 = o293
o293.Name = "part"
o293.Parent = o1
o293.Material = Enum.Material.Metal
o293.Position = Vector3.new(-7.30638218, 1.9397738, -9.76076984)
o293.Rotation = Vector3.new(-90, 50, -90)
o293.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o293.Velocity = Vector3.new(-2.26290807e-21, 0.103487223, -3.30756044e-21)
o293.CanCollide = false
o293.Locked = true
o293.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o293.CFrame = CFrame.new(-7.30638218, 1.9397738, -9.76076984, -2.06523491e-05, 0.64278096, 0.766053796, 1.552701e-05, -0.766053319, 0.642780423, 0.999999702, 2.51880483e-05, 5.81576387e-06)
o293.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o293.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o293.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o293.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o293.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o293.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o293.Position = Vector3.new(-7.30638218, 1.9397738, -9.76076984)
o293.Velocity = Vector3.new(-2.26290807e-21, 0.103487223, -3.30756044e-21)
o294.Parent = o293
o294.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o294.MeshType = Enum.MeshType.Wedge
o295.Name = "part_Weld"
o295.Parent = o293
o295.C0 = CFrame.new(-15.1739845, 9.27238464, 8.61450672, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o295.C1 = CFrame.new(-15.1739883, -11.7327003, 4.41294193, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o295.Part0 = o293
o295.Part1 = o296
o296.Name = "part"
o296.Parent = o1
o296.Material = Enum.Material.Metal
o296.Position = Vector3.new(-7.06786251, 2.68252039, -9.76077271)
o296.Rotation = Vector3.new(90, 10, 90)
o296.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o296.Velocity = Vector3.new(-8.65229305e-22, 0.103487223, -1.32618903e-21)
o296.CanCollide = false
o296.Locked = true
o296.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o296.CFrame = CFrame.new(-7.06786251, 2.68252039, -9.76077271, -2.06523491e-05, -0.984812081, 0.173640102, 1.552701e-05, -0.173639834, -0.984811425, 0.999999702, -1.76305766e-05, 1.890565e-05)
o296.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o296.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o296.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o296.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o296.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o296.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o296.Position = Vector3.new(-7.06786251, 2.68252039, -9.76077271)
o296.Velocity = Vector3.new(-8.65229305e-22, 0.103487223, -1.32618903e-21)
o297.Parent = o296
o297.Scale = Vector3.new(0.0250000022, 1.5, 1)
o297.MeshType = Enum.MeshType.Wedge
o298.Name = "part_Weld"
o298.Parent = o296
o298.C0 = CFrame.new(-15.1739883, -11.7327003, 4.41294193, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o298.C1 = CFrame.new(-15.1739807, 2.46731949, 12.3522282, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o298.Part0 = o296
o298.Part1 = o5
o299.Name = "part"
o299.Parent = o1
o299.Material = Enum.Material.Metal
o299.Position = Vector3.new(-7.26241064, 2.07541251, -9.51076794)
o299.Rotation = Vector3.new(89.9899979, 85, 90.0099945)
o299.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o299.Velocity = Vector3.new(-2.01360298e-21, 0.103487223, -2.94571739e-21)
o299.CanCollide = false
o299.Locked = true
o299.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o299.CFrame = CFrame.new(-7.26241064, 2.07541251, -9.51076794, -2.06523491e-05, -0.0871620625, 0.996199727, 1.552701e-05, -0.996198595, -0.0871621668, 0.999999702, 1.36984245e-05, 2.19229914e-05)
o299.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o299.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o299.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o299.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o299.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o299.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o299.Position = Vector3.new(-7.26241064, 2.07541251, -9.51076794)
o299.Velocity = Vector3.new(-2.01360298e-21, 0.103487223, -2.94571739e-21)
o300.Parent = o299
o300.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o300.MeshType = Enum.MeshType.Brick
o301.Name = "part_Weld"
o301.Parent = o299
o301.C0 = CFrame.new(-15.4239874, 0.604206324, 12.615921, 0, 0, 1, -0.0871500224, -0.996195257, 0, 0.996195257, -0.0871500224, 0)
o301.C1 = CFrame.new(-15.4239874, 3.40832901, 12.095212, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o301.Part0 = o299
o301.Part1 = o311
o302.Name = "part"
o302.Parent = o1
o302.Material = Enum.Material.Metal
o302.Position = Vector3.new(-7.24264145, 1.56673288, -9.51075935)
o302.Rotation = Vector3.new(-90, 30, -90)
o302.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o302.Velocity = Vector3.new(-2.9708218e-21, 0.103487223, -4.29833742e-21)
o302.CanCollide = false
o302.Locked = true
o302.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o302.CFrame = CFrame.new(-7.24264145, 1.56673288, -9.51075935, -2.06523491e-05, 0.866023004, 0.500012219, 1.552701e-05, -0.500011981, 0.866022289, 0.999999702, 2.56581625e-05, -3.14977387e-06)
o302.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o302.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o302.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o302.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o302.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o302.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o302.Position = Vector3.new(-7.24264145, 1.56673288, -9.51075935)
o302.Velocity = Vector3.new(-2.9708218e-21, 0.103487223, -4.29833742e-21)
o303.Parent = o302
o303.MeshId = "rbxassetid://9756362"
o303.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o303.MeshType = Enum.MeshType.FileMesh
o304.Name = "part_Weld"
o304.Parent = o302
o304.C0 = CFrame.new(-15.4239874, 11.4177809, 5.21483946, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o304.C1 = CFrame.new(-15.1739845, 0.604206681, 12.6159172, 0, 0, 1, -0.0871500224, -0.996195257, 0, 0.996195257, -0.0871500224, 0)
o304.Part0 = o302
o304.Part1 = o233
o305.Name = "part"
o305.Parent = o1
o305.Material = Enum.Material.Metal
o305.Position = Vector3.new(-7.17205048, 1.42039502, -9.51075554)
o305.Rotation = Vector3.new(-90, 20, -90)
o305.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o305.Velocity = Vector3.new(-3.2461962e-21, 0.103487223, -4.68592082e-21)
o305.CanCollide = false
o305.Locked = true
o305.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o305.CFrame = CFrame.new(-7.17205048, 1.42039502, -9.51075554, -2.06523491e-05, 0.939692616, 0.342032135, 1.552701e-05, -0.342032075, 0.939691961, 0.999999702, 2.47214048e-05, -7.55742894e-06)
o305.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o305.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o305.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o305.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o305.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o305.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o305.Position = Vector3.new(-7.17205048, 1.42039502, -9.51075554)
o305.Velocity = Vector3.new(-3.2461962e-21, 0.103487223, -4.68592082e-21)
o306.Parent = o305
o306.MeshId = "rbxassetid://9756362"
o306.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o306.MeshType = Enum.MeshType.FileMesh
o307.Name = "part_Weld"
o307.Parent = o305
o307.C0 = CFrame.new(-15.4239874, 12.0334816, 3.26629877, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o307.C1 = CFrame.new(-15.4239874, 11.4177809, 5.21483946, 0, 0, 1, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0)
o307.Part0 = o305
o307.Part1 = o302
o308.Name = "part"
o308.Parent = o1
o308.Material = Enum.Material.Metal
o308.Position = Vector3.new(-7.17205143, 1.33039498, -9.51075459)
o308.Rotation = Vector3.new(-90, 0, -90)
o308.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o308.Velocity = Vector3.new(-3.41555557e-21, 0.103487223, -4.92532135e-21)
o308.CanCollide = false
o308.Locked = true
o308.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o308.CFrame = CFrame.new(-7.17205143, 1.33039498, -9.51075459, -2.06523491e-05, 1.00000405, 1.15334988e-05, 1.552701e-05, -1.17123127e-05, 1.00000346, 0.999999702, 2.06457335e-05, -1.55568741e-05)
o308.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o308.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o308.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o308.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o308.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o308.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o308.Position = Vector3.new(-7.17205143, 1.33039498, -9.51075459)
o308.Velocity = Vector3.new(-3.41555557e-21, 0.103487223, -4.92532135e-21)
o309.Parent = o308
o309.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o309.MeshType = Enum.MeshType.Wedge
o310.Name = "part_Weld"
o310.Parent = o308
o310.C0 = CFrame.new(-15.4239874, 12.4249134, -0.956372976, 0, 0, 1, 1, 0, 0, 0, 1, 0)
o310.C1 = CFrame.new(-15.4239874, 12.0334816, 3.26629877, 0, 0, 1, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736, 0)
o310.Part0 = o308
o310.Part1 = o305
o311.Name = "part"
o311.Parent = o1
o311.Material = Enum.Material.Metal
o311.Position = Vector3.new(-7.25045824, 1.6302774, -9.51076031)
o311.Rotation = Vector3.new(-89.9899979, 80, -90.0099945)
o311.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o311.Velocity = Vector3.new(-2.85124533e-21, 0.103487223, -4.12949443e-21)
o311.CanCollide = false
o311.Locked = true
o311.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o311.CFrame = CFrame.new(-7.25045824, 1.6302774, -9.51076031, -2.06523491e-05, 0.173636526, 0.984815359, 1.552701e-05, -0.984814286, 0.173636138, 0.999999702, 1.89056245e-05, 1.76307003e-05)
o311.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o311.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o311.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o311.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o311.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o311.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o311.Position = Vector3.new(-7.25045824, 1.6302774, -9.51076031)
o311.Velocity = Vector3.new(-2.85124533e-21, 0.103487223, -4.12949443e-21)
o312.Parent = o311
o312.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o312.MeshType = Enum.MeshType.Brick
o313.Name = "part_Weld"
o313.Parent = o311
o313.C0 = CFrame.new(-15.4239874, 3.40832901, 12.095212, 0, 0, 1, 0.173647001, -0.984807968, 0, 0.984807968, 0.173647001, 0)
o313.C1 = CFrame.new(-15.4239874, 9.47494125, 8.04478931, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o313.Part0 = o311
o313.Part1 = o314
o314.Name = "part"
o314.Parent = o1
o314.Material = Enum.Material.Metal
o314.Position = Vector3.new(-7.13547325, 1.38527513, -9.51075459)
o314.Rotation = Vector3.new(-90, 45, -90)
o314.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o314.Velocity = Vector3.new(-3.31228361e-21, 0.103487223, -4.77847134e-21)
o314.CanCollide = false
o314.Locked = true
o314.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o314.CFrame = CFrame.new(-7.13547325, 1.38527513, -9.51075459, -2.06523491e-05, 0.707103372, 0.707117796, 1.552701e-05, -0.70711714, 0.707102418, 0.999999702, 2.55991436e-05, 3.59833757e-06)
o314.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o314.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o314.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o314.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o314.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o314.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o314.Position = Vector3.new(-7.13547325, 1.38527513, -9.51075459)
o314.Velocity = Vector3.new(-3.31228361e-21, 0.103487223, -4.77847134e-21)
o315.Parent = o314
o315.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o315.MeshType = Enum.MeshType.Brick
o316.Name = "part_Weld"
o316.Parent = o314
o316.C0 = CFrame.new(-15.4239874, 9.47494125, 8.04478931, 0, 0, 1, 0.707107842, -0.707105815, 0, 0.707105815, 0.707107842, 0)
o316.C1 = CFrame.new(-15.4239874, 7.16470575, 10.2317438, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o316.Part0 = o314
o316.Part1 = o317
o317.Name = "part"
o317.Parent = o1
o317.Material = Enum.Material.Metal
o317.Position = Vector3.new(-7.19045305, 1.46295571, -9.51075649)
o317.Rotation = Vector3.new(-90, 60, -90)
o317.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o317.Velocity = Vector3.new(-3.1661065e-21, 0.103487223, -4.57314597e-21)
o317.CanCollide = false
o317.Locked = true
o317.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o317.CFrame = CFrame.new(-7.19045305, 1.46295571, -9.51075649, -2.06523491e-05, 0.499993563, 0.866035223, 1.552701e-05, -0.866034389, 0.499992847, 0.999999702, 2.37955519e-05, 1.01012793e-05)
o317.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o317.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o317.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o317.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o317.Position = Vector3.new(-7.19045305, 1.46295571, -9.51075649)
o317.Velocity = Vector3.new(-3.1661065e-21, 0.103487223, -4.57314597e-21)
o318.Parent = o317
o318.Scale = Vector3.new(0.0250000022, 0.699999988, 0.774999976)
o318.MeshType = Enum.MeshType.Brick
o319.Name = "part_Weld"
o319.Parent = o317
o319.C0 = CFrame.new(-15.4239874, 7.16470575, 10.2317438, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o319.C1 = CFrame.new(-15.4239855, 11.9266882, 4.1767025, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o319.Part0 = o317
o319.Part1 = o320
o320.Name = "part"
o320.Parent = o1
o320.Material = Enum.Material.Metal
o320.Position = Vector3.new(-7.32154942, 1.6290803, -9.51076412)
o320.Rotation = Vector3.new(-90, 25, -90)
o320.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o320.Velocity = Vector3.new(-2.85349806e-21, 0.103487223, -4.13436664e-21)
o320.CanCollide = false
o320.Locked = true
o320.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o320.CFrame = CFrame.new(-7.32154942, 1.6290803, -9.51076412, -2.06523491e-05, 0.906307817, 0.422630668, 1.552701e-05, -0.422630429, 0.906306803, 0.999999702, 2.52860355e-05, -5.37406504e-06)
o320.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o320.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o320.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o320.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o320.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o320.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o320.Position = Vector3.new(-7.32154942, 1.6290803, -9.51076412)
o320.Velocity = Vector3.new(-2.85349806e-21, 0.103487223, -4.13436664e-21)
o321.Parent = o320
o321.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o321.MeshType = Enum.MeshType.Wedge
o322.Name = "part_Weld"
o322.Parent = o320
o322.C0 = CFrame.new(-15.4239855, 11.9266882, 4.1767025, 0, 0, 1, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876, 0)
o322.C1 = CFrame.new(-15.4239855, 9.80967808, 7.91943455, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o322.Part0 = o320
o322.Part1 = o323
o323.Name = "part"
o323.Parent = o1
o323.Material = Enum.Material.Metal
o323.Position = Vector3.new(-7.28352022, 1.71064818, -9.51076508)
o323.Rotation = Vector3.new(-90, 45, -90)
o323.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o323.Velocity = Vector3.new(-2.70000597e-21, 0.103487223, -3.916493e-21)
o323.CanCollide = false
o323.Locked = true
o323.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o323.CFrame = CFrame.new(-7.28352022, 1.71064818, -9.51076508, -2.06523491e-05, 0.707101345, 0.707119703, 1.552701e-05, -0.707119107, 0.707100451, 0.999999702, 2.55991345e-05, 3.59840942e-06)
o323.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o323.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o323.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o323.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o323.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o323.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o323.Position = Vector3.new(-7.28352022, 1.71064818, -9.51076508)
o323.Velocity = Vector3.new(-2.70000597e-21, 0.103487223, -3.916493e-21)
o324.Parent = o323
o324.MeshId = "rbxassetid://9756362"
o324.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o324.MeshType = Enum.MeshType.FileMesh
o325.Name = "part_Weld"
o325.Parent = o323
o325.C0 = CFrame.new(-15.4239855, 9.80967808, 7.91943455, 0, 0, 1, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815, 0)
o325.C1 = CFrame.new(-15.4239931, -2.37625909, 12.3950405, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o325.Part0 = o323
o325.Part1 = o326
o326.Name = "part"
o326.Parent = o1
o326.Material = Enum.Material.Metal
o326.Position = Vector3.new(-7.20739508, 2.38041329, -9.51076603)
o326.Rotation = Vector3.new(90, 70, 90)
o326.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o326.Velocity = Vector3.new(-1.43966161e-21, 0.103487223, -2.13310816e-21)
o326.CanCollide = false
o326.Locked = true
o326.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o326.CFrame = CFrame.new(-7.20739508, 2.38041329, -9.51076603, -2.06523491e-05, -0.342031598, 0.939693928, 1.552701e-05, -0.939692974, -0.342031479, 0.999999702, 7.55746032e-06, 2.47214248e-05)
o326.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o326.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o326.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o326.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o326.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o326.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o326.Position = Vector3.new(-7.20739508, 2.38041329, -9.51076603)
o326.Velocity = Vector3.new(-1.43966161e-21, 0.103487223, -2.13310816e-21)
o327.Parent = o326
o327.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o327.MeshType = Enum.MeshType.Brick
o328.Name = "part_Weld"
o328.Parent = o326
o328.C0 = CFrame.new(-15.4239931, -2.37625909, 12.3950405, 0, 0, 1, -0.342019022, -0.939693093, 0, 0.939693093, -0.342018992, 0)
o328.C1 = CFrame.new(-15.4239836, -5.39621258, 11.3753481, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o328.Part0 = o326
o328.Part1 = o329
o329.Name = "part"
o329.Parent = o1
o329.Material = Enum.Material.Metal
o329.Position = Vector3.new(-7.16041946, 2.47830248, -9.51077652)
o329.Rotation = Vector3.new(90, 55, 90)
o329.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o329.Velocity = Vector3.new(-1.2554564e-21, 0.103487223, -1.87160721e-21)
o329.CanCollide = false
o329.Locked = true
o329.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o329.CFrame = CFrame.new(-7.16041946, 2.47830248, -9.51077652, -2.06523491e-05, -0.573586166, 0.819151342, 1.552701e-05, -0.819150507, -0.573585868, 0.999999702, 9.01620297e-07, 2.58350738e-05)
o329.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o329.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o329.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o329.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o329.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o329.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o329.Position = Vector3.new(-7.16041946, 2.47830248, -9.51077652)
o329.Velocity = Vector3.new(-1.2554564e-21, 0.103487223, -1.87160721e-21)
o330.Parent = o329
o330.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o330.MeshType = Enum.MeshType.Brick
o331.Name = "part_Weld"
o331.Parent = o329
o331.C0 = CFrame.new(-15.4239836, -5.39621258, 11.3753481, 0, 0, 1, -0.573573887, -0.819153845, 0, 0.819153845, -0.573573887, 0)
o331.C1 = CFrame.new(-15.4239855, 1.54138505, 12.5252533, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o331.Part0 = o329
o331.Part1 = o332
o332.Name = "part"
o332.Parent = o1
o332.Material = Enum.Material.Metal
o332.Position = Vector3.new(-7.2723937, 1.91541219, -9.51076794)
o332.Rotation = Vector3.new(180, 90, 0)
o332.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o332.Velocity = Vector3.new(-2.31468703e-21, 0.103487223, -3.37155587e-21)
o332.CanCollide = false
o332.Locked = true
o332.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o332.CFrame = CFrame.new(-7.2723937, 1.91541219, -9.51076794, -2.06523491e-05, -1.14887953e-05, 1.00000501, 1.552701e-05, -1.00000417, -1.17123127e-05, 0.999999702, 1.55568887e-05, 2.06457535e-05)
o332.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o332.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o332.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o332.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o332.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o332.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o332.Position = Vector3.new(-7.2723937, 1.91541219, -9.51076794)
o332.Velocity = Vector3.new(-2.31468703e-21, 0.103487223, -3.37155587e-21)
o333.Parent = o332
o333.Scale = Vector3.new(0.0250000022, 0.850000024, 0.774999976)
o333.MeshType = Enum.MeshType.Brick
o334.Name = "part_Weld"
o334.Parent = o332
o334.C0 = CFrame.new(-15.4239855, 1.54138505, 12.5252533, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o334.C1 = CFrame.new(-15.4239855, 4.37191868, 11.7522182, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o334.Part0 = o332
o334.Part1 = o335
o335.Name = "part"
o335.Parent = o1
o335.Material = Enum.Material.Metal
o335.Position = Vector3.new(-7.23045158, 1.55527711, -9.51076126)
o335.Rotation = Vector3.new(-90, 75, -90)
o335.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o335.Velocity = Vector3.new(-2.99237878e-21, 0.103487223, -4.32852063e-21)
o335.CanCollide = false
o335.Locked = true
o335.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o335.CFrame = CFrame.new(-7.23045158, 1.55527711, -9.51076126, -2.06523491e-05, 0.258809149, 0.965933561, 1.552701e-05, -0.965932906, 0.258808762, 0.999999702, 2.0370313e-05, 1.59158481e-05)
o335.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o335.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o335.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o335.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o335.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o335.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o335.Position = Vector3.new(-7.23045158, 1.55527711, -9.51076126)
o335.Velocity = Vector3.new(-2.99237878e-21, 0.103487223, -4.32852063e-21)
o336.Parent = o335
o336.Scale = Vector3.new(0.0250000022, 0.5, 0.774999976)
o336.MeshType = Enum.MeshType.Brick
o337.Name = "part_Weld"
o337.Parent = o335
o337.C0 = CFrame.new(-15.4239855, 4.37191868, 11.7522182, 0, 0, 1, 0.258818984, -0.965925872, 0, 0.965925872, 0.258818984, 0)
o337.C1 = CFrame.new(-15.4239798, -11.3810387, -5.27908373, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o337.Part0 = o335
o337.Part1 = o338
o338.Name = "part"
o338.Parent = o1
o338.Material = Enum.Material.Metal
o338.Position = Vector3.new(-7.09789419, 2.57752943, -9.51078033)
o338.Rotation = Vector3.new(90, -35, 90)
o338.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o338.Velocity = Vector3.new(-1.06873391e-21, 0.103487223, -1.60617876e-21)
o338.CanCollide = false
o338.Locked = true
o338.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o338.CFrame = CFrame.new(-7.09789419, 2.57752943, -9.51078033, -2.06523491e-05, -0.819150269, -0.57358712, 1.552701e-05, 0.573586881, -0.819149613, 0.999999702, -2.58350683e-05, 9.01583917e-07)
o338.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o338.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o338.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o338.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o338.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o338.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o338.Position = Vector3.new(-7.09789419, 2.57752943, -9.51078033)
o338.Velocity = Vector3.new(-1.06873391e-21, 0.103487223, -1.60617876e-21)
o339.Parent = o338
o339.Scale = Vector3.new(0.0250000022, 0.825000048, 0.825000048)
o339.MeshType = Enum.MeshType.Wedge
o340.Name = "part_Weld"
o340.Parent = o338
o340.C0 = CFrame.new(-15.4239798, -11.3810387, -5.27908373, 0, 0, 1, -0.81915313, 0.573575079, 0, -0.573575079, -0.81915313, 0)
o340.C1 = CFrame.new(-15.4239893, -0.341733694, 12.6295214, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o340.Part0 = o338
o340.Part1 = o341
o341.Name = "part"
o341.Parent = o1
o341.Material = Enum.Material.Metal
o341.Position = Vector3.new(-7.24413013, 2.23056412, -9.51076889)
o341.Rotation = Vector3.new(89.9899979, 80, 90.0099945)
o341.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o341.Velocity = Vector3.new(-1.72164336e-21, 0.103487223, -2.53257965e-21)
o341.CanCollide = false
o341.Locked = true
o341.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o341.CFrame = CFrame.new(-7.24413013, 2.23056412, -9.51076889, -2.06523491e-05, -0.173659146, 0.984810472, 1.552701e-05, -0.984809756, -0.173659205, 0.999999702, 1.17354703e-05, 2.30335027e-05)
o341.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o341.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o341.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o341.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o341.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o341.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o341.Position = Vector3.new(-7.24413013, 2.23056412, -9.51076889)
o341.Velocity = Vector3.new(-1.72164336e-21, 0.103487223, -2.53257965e-21)
o342.Parent = o341
o342.Scale = Vector3.new(0.0250000022, 0.949999988, 0.774999976)
o342.MeshType = Enum.MeshType.Brick
o343.Name = "part_Weld"
o343.Parent = o341
o343.C0 = CFrame.new(-15.4239893, -0.341733694, 12.6295214, 0, 0, 1, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 0)
o343.C1 = CFrame.new(15.4239855, 9.23743916, -8.04478836, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o343.Part0 = o341
o343.Part1 = o344
o344.Name = "part"
o344.Parent = o1
o344.Material = Enum.Material.Metal
o344.Position = Vector3.new(-6.96752596, 1.21733391, -9.51075077)
o344.Rotation = Vector3.new(90, -45, -90)
o344.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o344.Velocity = Vector3.new(-3.62831063e-21, 0.103487223, -5.22120805e-21)
o344.CanCollide = false
o344.Locked = true
o344.Size = Vector3.new(0.200000003, 0.38499999, 0.200000003)
o344.CFrame = CFrame.new(-6.96752596, 1.21733391, -9.51075077, 2.06523491e-05, 0.707102835, -0.70711714, -1.552701e-05, -0.707116723, -0.707102239, -0.999999702, 2.5599129e-05, -3.59833211e-06)
o344.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o344.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o344.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o344.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o344.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o344.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o344.Position = Vector3.new(-6.96752596, 1.21733391, -9.51075077)
o344.Velocity = Vector3.new(-3.62831063e-21, 0.103487223, -5.22120805e-21)
o345.Parent = o344
o345.Scale = Vector3.new(0.0250000022, 1, 0.774999976)
o345.MeshType = Enum.MeshType.Wedge
o346.Name = "part_Weld"
o346.Parent = o344
o346.C0 = CFrame.new(15.4239855, 9.23743916, -8.04478836, 0, 0, -1, 0.707107842, -0.707105815, 0, -0.707105815, -0.707107842, 0)
o346.C1 = CFrame.new(-15.4239893, 12.5127926, 1.08523107, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o346.Part0 = o344
o346.Part1 = o347
o347.Name = "part"
o347.Parent = o1
o347.Material = Enum.Material.Metal
o347.Position = Vector3.new(-7.25828457, 1.47810113, -9.51075745)
o347.Rotation = Vector3.new(-90, 10, -90)
o347.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o347.Velocity = Vector3.new(-3.13760633e-21, 0.103487223, -4.53446962e-21)
o347.CanCollide = false
o347.Locked = true
o347.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o347.CFrame = CFrame.new(-7.25828457, 1.47810113, -9.51075745, -2.06523491e-05, 0.984810114, 0.1736601, 1.552701e-05, -0.1736601, 0.984809399, 0.999999702, 2.30335081e-05, -1.17354457e-05)
o347.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o347.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o347.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o347.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o347.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o347.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o347.Position = Vector3.new(-7.25828457, 1.47810113, -9.51075745)
o347.Velocity = Vector3.new(-3.13760633e-21, 0.103487223, -4.53446962e-21)
o348.Parent = o347
o348.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o348.MeshType = Enum.MeshType.Wedge
o349.Name = "part_Weld"
o349.Parent = o347
o349.C0 = CFrame.new(-15.4239893, 12.5127926, 1.08523107, 0, 0, 1, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849, 0)
o349.C1 = CFrame.new(-15.423995, 10.541173, 7.02121878, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o349.Part0 = o347
o349.Part1 = o350
o350.Name = "part"
o350.Parent = o1
o350.Material = Enum.Material.Metal
o350.Position = Vector3.new(-7.3352952, 1.77120233, -9.51075745)
o350.Rotation = Vector3.new(-90, 40, -90)
o350.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o350.Velocity = Vector3.new(-2.5860572e-21, 0.103487223, -3.75664802e-21)
o350.CanCollide = false
o350.Locked = true
o350.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o350.CFrame = CFrame.new(-7.3352952, 1.77120233, -9.51075745, -2.06523491e-05, 0.766039968, 0.642799675, 1.552701e-05, -0.642799318, 0.766039371, 0.999999702, 2.58153232e-05, 1.35358005e-06)
o350.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o350.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o350.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o350.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o350.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o350.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o350.Position = Vector3.new(-7.3352952, 1.77120233, -9.51075745)
o350.Velocity = Vector3.new(-2.5860572e-21, 0.103487223, -3.75664802e-21)
o351.Parent = o350
o351.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o351.MeshType = Enum.MeshType.Wedge
o352.Name = "part_Weld"
o352.Parent = o350
o352.C0 = CFrame.new(-15.423995, 10.541173, 7.02121878, 0, 0, 1, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0)
o352.C1 = CFrame.new(-15.4239855, 7.53486109, 10.1184902, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o352.Part0 = o350
o352.Part1 = o353
o353.Name = "part"
o353.Parent = o1
o353.Material = Enum.Material.Metal
o353.Position = Vector3.new(-7.27743578, 1.84014738, -9.51076698)
o353.Rotation = Vector3.new(-90, 60, -90)
o353.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o353.Velocity = Vector3.new(-2.45631828e-21, 0.103487223, -3.57188019e-21)
o353.CanCollide = false
o353.Locked = true
o353.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o353.CFrame = CFrame.new(-7.27743578, 1.84014738, -9.51076698, -2.06523491e-05, 0.499993026, 0.866034329, 1.552701e-05, -0.866033852, 0.499992579, 0.999999702, 2.37955319e-05, 1.01012702e-05)
o353.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o353.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o353.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o353.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o353.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o353.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o353.Position = Vector3.new(-7.27743578, 1.84014738, -9.51076698)
o353.Velocity = Vector3.new(-2.45631828e-21, 0.103487223, -3.57188019e-21)
o354.Parent = o353
o354.MeshId = "rbxassetid://9756362"
o354.Scale = Vector3.new(0.0250000004, 0.0500000007, 0.100000001)
o354.MeshType = Enum.MeshType.FileMesh
o355.Name = "part_Weld"
o355.Parent = o353
o355.C0 = CFrame.new(-15.4239855, 7.53486109, 10.1184902, 0, 0, 1, 0.500000954, -0.866024852, 0, 0.866024852, 0.500000954, 0)
o355.C1 = CFrame.new(-15.4239817, 6.85642242, 10.6288795, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o355.Part0 = o353
o355.Part1 = o356
o356.Name = "part"
o356.Parent = o1
o356.Material = Enum.Material.Metal
o356.Position = Vector3.new(-7.2778163, 2.09610081, -9.51077461)
o356.Rotation = Vector3.new(-90, 65, -90)
o356.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o356.Velocity = Vector3.new(-1.97467238e-21, 0.103487223, -2.89105238e-21)
o356.CanCollide = false
o356.Locked = true
o356.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o356.CFrame = CFrame.new(-7.2778163, 2.09610081, -9.51077461, -2.06523491e-05, 0.42260927, 0.906316698, 1.552701e-05, -0.906316221, 0.422608852, 0.999999702, 2.28245826e-05, 1.21367821e-05)
o356.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o356.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o356.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o356.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o356.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o356.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o356.Position = Vector3.new(-7.2778163, 2.09610081, -9.51077461)
o356.Velocity = Vector3.new(-1.97467238e-21, 0.103487223, -2.89105238e-21)
o357.Parent = o356
o357.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o357.MeshType = Enum.MeshType.Wedge
o358.Name = "part_Weld"
o358.Parent = o356
o358.C0 = CFrame.new(-15.4239817, 6.85642242, 10.6288795, 0, 0, 1, 0.422617942, -0.906307876, 0, 0.906307876, 0.422617942, 0)
o358.C1 = CFrame.new(-15.4239798, 9.27239037, 8.61451435, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o358.Part0 = o356
o358.Part1 = o359
o359.Name = "part"
o359.Parent = o1
o359.Material = Enum.Material.Metal
o359.Position = Vector3.new(-7.3064127, 1.9397794, -9.51077461)
o359.Rotation = Vector3.new(-90, 50, -90)
o359.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o359.Velocity = Vector3.new(-2.26883343e-21, 0.103487223, -3.30754671e-21)
o359.CanCollide = false
o359.Locked = true
o359.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o359.CFrame = CFrame.new(-7.3064127, 1.9397794, -9.51077461, -2.06523491e-05, 0.642781854, 0.766054809, 1.552701e-05, -0.766054451, 0.642781377, 0.999999702, 2.51880883e-05, 5.81577297e-06)
o359.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o359.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o359.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o359.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o359.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o359.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o359.Position = Vector3.new(-7.3064127, 1.9397794, -9.51077461)
o359.Velocity = Vector3.new(-2.26883343e-21, 0.103487223, -3.30754671e-21)
o360.Parent = o359
o360.Scale = Vector3.new(0.0250000022, 0.5, 0.925000012)
o360.MeshType = Enum.MeshType.Wedge
o361.Name = "part_Weld"
o361.Parent = o359
o361.C0 = CFrame.new(-15.4239798, 9.27239037, 8.61451435, 0, 0, 1, 0.642788053, -0.76604414, 0, 0.76604414, 0.642788053, 0)
o361.C1 = CFrame.new(-15.4239779, -11.7326965, 4.41294098, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o361.Part0 = o359
o361.Part1 = o362
o362.Name = "part"
o362.Parent = o1
o362.Material = Enum.Material.Metal
o362.Position = Vector3.new(-7.0678792, 2.68252707, -9.5107832)
o362.Rotation = Vector3.new(90, 10, 90)
o362.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o362.Velocity = Vector3.new(-8.71152451e-22, 0.103487223, -1.32617227e-21)
o362.CanCollide = false
o362.Locked = true
o362.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o362.CFrame = CFrame.new(-7.0678792, 2.68252707, -9.5107832, -2.06523491e-05, -0.984813392, 0.1736404, 1.552701e-05, -0.173640132, -0.984812856, 0.999999702, -1.76306039e-05, 1.89056791e-05)
o362.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o362.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o362.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o362.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o362.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o362.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o362.Position = Vector3.new(-7.0678792, 2.68252707, -9.5107832)
o362.Velocity = Vector3.new(-8.71152451e-22, 0.103487223, -1.32617227e-21)
o363.Parent = o362
o363.Scale = Vector3.new(0.0250000022, 1.5, 1)
o363.MeshType = Enum.MeshType.Wedge
o364.Name = "part_Weld"
o364.Parent = o362
o364.C0 = CFrame.new(-15.4239779, -11.7326965, 4.41294098, 0, 0, 1, -0.984807253, -0.17365104, 0, 0.17365104, -0.984807253, 0)
o364.C1 = CFrame.new(-15.4239855, 2.46731901, 12.3522243, 0, 0, 1, 0.0871539935, -0.996194899, 0, 0.996194899, 0.087154001, 0)
o364.Part0 = o362
o364.Part1 = o2
o365.Name = "Hitbox"
o365.Parent = o1
o365.BrickColor = BrickColor.new("Bright orange")
o365.Transparency = 1
o365.Position = Vector3.new(-6.72532797, 1.95401204, -9.75976563)
o365.CanCollide = false
o365.Size = Vector3.new(1.53999972, 2.09999967, 1)
o365.CFrame = CFrame.new(-6.72532797, 1.95401204, -9.75976563, 1.00000024, 1.17700811e-05, -2.06523491e-05, -1.17798645e-05, 0.99999994, 1.552701e-05, 2.06456625e-05, -1.55568123e-05, 0.999999702)
o365.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o365.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o365.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o365.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o365.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o365.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o365.Color = Color3.new(0.854902, 0.521569, 0.254902)
o365.Position = Vector3.new(-6.72532797, 1.95401204, -9.75976563)	


--Right--

o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Weld")
o5 = Instance.new("Part")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("SpecialMesh")
o10 = Instance.new("Part")
o11 = Instance.new("SpecialMesh")
o12 = Instance.new("Weld")
o13 = Instance.new("Part")
o14 = Instance.new("SpecialMesh")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Weld")
o18 = Instance.new("Part")
o19 = Instance.new("SpecialMesh")
o20 = Instance.new("Weld")
o21 = Instance.new("Part")
o22 = Instance.new("SpecialMesh")
o23 = Instance.new("Weld")
o24 = Instance.new("Part")
o25 = Instance.new("Weld")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Weld")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Weld")
o32 = Instance.new("Part")
o33 = Instance.new("CylinderMesh")
o34 = Instance.new("Weld")
o35 = Instance.new("Part")
o36 = Instance.new("CylinderMesh")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("CylinderMesh")
o40 = Instance.new("Weld")
o41 = Instance.new("Part")
o42 = Instance.new("SpecialMesh")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Weld")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Weld")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Weld")
o56 = Instance.new("Part")
o57 = Instance.new("BlockMesh")
o58 = Instance.new("Weld")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Weld")
o62 = Instance.new("Part")
o63 = Instance.new("SpecialMesh")
o64 = Instance.new("Weld")
o65 = Instance.new("Part")
o66 = Instance.new("CylinderMesh")
o67 = Instance.new("Weld")
o68 = Instance.new("Part")
o69 = Instance.new("SpecialMesh")
o70 = Instance.new("Weld")
o71 = Instance.new("Part")
o72 = Instance.new("SpecialMesh")
o73 = Instance.new("Weld")
o74 = Instance.new("Part")
o75 = Instance.new("SpecialMesh")
o76 = Instance.new("Weld")
o77 = Instance.new("Part")
o78 = Instance.new("CylinderMesh")
o79 = Instance.new("Weld")
o80 = Instance.new("Part")
o81 = Instance.new("SpecialMesh")
o82 = Instance.new("Weld")
o83 = Instance.new("Part")
o84 = Instance.new("SpecialMesh")
o85 = Instance.new("Weld")
o86 = Instance.new("Part")
o87 = Instance.new("SpecialMesh")
o88 = Instance.new("Weld")
o89 = Instance.new("Part")
o90 = Instance.new("Weld")
o91 = Instance.new("Part")
o92 = Instance.new("SpecialMesh")
o93 = Instance.new("Weld")
o94 = Instance.new("Part")
o95 = Instance.new("Weld")
o96 = Instance.new("Part")
o97 = Instance.new("CylinderMesh")
o98 = Instance.new("Weld")
o99 = Instance.new("Part")
o100 = Instance.new("BlockMesh")
o101 = Instance.new("Weld")
o102 = Instance.new("Part")
o103 = Instance.new("SpecialMesh")
o104 = Instance.new("Part")
o105 = Instance.new("SpecialMesh")
o106 = Instance.new("Weld")
o107 = Instance.new("Part")
o108 = Instance.new("SpecialMesh")
o109 = Instance.new("Weld")
o110 = Instance.new("Part")
o111 = Instance.new("SpecialMesh")
o112 = Instance.new("Weld")
o113 = Instance.new("Part")
o114 = Instance.new("SpecialMesh")
o115 = Instance.new("Weld")
o116 = Instance.new("Part")
o117 = Instance.new("SpecialMesh")
o118 = Instance.new("Weld")
o119 = Instance.new("Part")
o120 = Instance.new("SpecialMesh")
o121 = Instance.new("Weld")
o122 = Instance.new("Part")
o123 = Instance.new("SpecialMesh")
o124 = Instance.new("Weld")
o125 = Instance.new("Part")
o126 = Instance.new("SpecialMesh")
o127 = Instance.new("Weld")
o128 = Instance.new("Part")
o129 = Instance.new("SpecialMesh")
o130 = Instance.new("Weld")
o131 = Instance.new("Part")
o132 = Instance.new("SpecialMesh")
o133 = Instance.new("Weld")
o134 = Instance.new("Part")
o135 = Instance.new("BlockMesh")
o136 = Instance.new("Weld")
o137 = Instance.new("Part")
o138 = Instance.new("BlockMesh")
o139 = Instance.new("Weld")
o140 = Instance.new("Part")
o141 = Instance.new("SpecialMesh")
o142 = Instance.new("Weld")
o143 = Instance.new("Part")
o144 = Instance.new("BlockMesh")
o145 = Instance.new("Weld")
o146 = Instance.new("Part")
o147 = Instance.new("BlockMesh")
o148 = Instance.new("Weld")
o149 = Instance.new("Part")
o150 = Instance.new("SpecialMesh")
o151 = Instance.new("Weld")
o152 = Instance.new("Part")
o153 = Instance.new("BlockMesh")
o154 = Instance.new("Weld")
o155 = Instance.new("Part")
o156 = Instance.new("SpecialMesh")
o157 = Instance.new("Weld")
o158 = Instance.new("Part")
o159 = Instance.new("Weld")
o160 = Instance.new("Part")
o161 = Instance.new("BlockMesh")
o162 = Instance.new("Weld")
o163 = Instance.new("Part")
o164 = Instance.new("BlockMesh")
o165 = Instance.new("Weld")
o166 = Instance.new("Part")
o167 = Instance.new("BlockMesh")
o168 = Instance.new("Weld")
o169 = Instance.new("Part")
o170 = Instance.new("BlockMesh")
o171 = Instance.new("Weld")
o172 = Instance.new("Part")
o173 = Instance.new("BlockMesh")
o174 = Instance.new("Weld")
o175 = Instance.new("Part")
o176 = Instance.new("BlockMesh")
o177 = Instance.new("Weld")
o178 = Instance.new("Part")
o179 = Instance.new("SpecialMesh")
o180 = Instance.new("Weld")
o181 = Instance.new("Part")
o182 = Instance.new("SpecialMesh")
o183 = Instance.new("Weld")
o184 = Instance.new("Part")
o185 = Instance.new("SpecialMesh")
o186 = Instance.new("Weld")
o1.Name = "Right"
o1.Parent = game.ReplicatedStorage
o2.Name = "part"
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Institutional white")
o2.Position = Vector3.new(-5.50483513, 3.97847772, -10.3093672)
o2.Rotation = Vector3.new(-90, -90, 0)
o2.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o2.Velocity = Vector3.new(3.16409953e-21, 0.103487223, 4.5781139e-21)
o2.CanCollide = false
o2.Locked = true
o2.Shape = Enum.PartType.Ball
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(-5.50483513, 3.97847772, -10.3093672, -7.9870224e-06, 6.85437442e-07, -1.00000095, 1.00000119, 4.88512751e-06, -8.16583633e-06, 5.06196193e-06, -1.00000131, -7.15279839e-07)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.972549, 0.972549, 0.972549)
o2.Position = Vector3.new(-5.50483513, 3.97847772, -10.3093672)
o2.Velocity = Vector3.new(3.16409953e-21, 0.103487223, 4.5781139e-21)
o3.Parent = o2
o3.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o3.MeshType = Enum.MeshType.Sphere
o4.Name = "part_Weld"
o4.Parent = o2
o4.C0 = CFrame.new(-3.6050005, 14.6050053, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o4.C1 = CFrame.new(-9.01119041, 14.6050024, -5.13074589, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o4.Part0 = o2
o4.Part1 = o44
o5.Parent = o1
o5.Material = Enum.Material.Neon
o5.BrickColor = BrickColor.new("Alder")
o5.Position = Vector3.new(-5.23741627, 4.01984501, -10.2693815)
o5.Rotation = Vector3.new(-180, 0, 180)
o5.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o5.Velocity = Vector3.new(3.24099583e-21, 0.103487223, 4.69450241e-21)
o5.CanCollide = false
o5.Locked = true
o5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o5.CFrame = CFrame.new(-5.23741627, 4.01984501, -10.2693815, -1.00000072, -3.59863043e-05, 6.42132477e-07, -3.63737345e-05, 1.00000095, 5.07036202e-06, -5.16633463e-07, 5.15975307e-06, -1.00000107)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.705882, 0.501961, 1)
o5.Position = Vector3.new(-5.23741627, 4.01984501, -10.2693815)
o5.Velocity = Vector3.new(3.24099583e-21, 0.103487223, 4.69450241e-21)
o6.Parent = o5
o6.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o6.MeshType = Enum.MeshType.Brick
o7.Name = "Part_Weld"
o7.Parent = o5
o7.C0 = CFrame.new(-10.0801458, -3.6466527, 14.6449938, -1, -2.80459699e-05, 1.01303236e-07, -2.80459699e-05, 1, 1.50998645e-07, -1.01307471e-07, 1.50995803e-07, -1)
o7.C1 = CFrame.new(-4.57674551, -9.71762657, 14.6449928, -0.70708704, -0.707126498, 3.04639869e-08, -0.707126498, 0.70708704, 2.44011972e-07, -1.94088017e-07, 1.50995803e-07, -1)
o7.Part0 = o5
o7.Part1 = o131
o8.Name = "Handle"
o8.Parent = o1
o8.BrickColor = BrickColor.new("Bright orange")
o8.Transparency = 1
o8.Position = Vector3.new(-5.20482397, 3.37347794, -9.76437378)
o8.CanCollide = false
o8.Size = Vector3.new(1, 2, 1)
o8.CFrame = CFrame.new(-5.20482397, 3.37347794, -9.76437378, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.854902, 0.521569, 0.254902)
o8.Position = Vector3.new(-5.20482397, 3.37347794, -9.76437378)
o9.Parent = o8
o9.MeshId = "rbxasset://fonts/rightarm.mesh"
o9.MeshType = Enum.MeshType.FileMesh
o10.Name = "part"
o10.Parent = o1
o10.BrickColor = BrickColor.new("Institutional white")
o10.Position = Vector3.new(-5.19982624, 2.7934761, -9.76437569)
o10.Rotation = Vector3.new(-180, 0, 180)
o10.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o10.Velocity = Vector3.new(9.21258877e-22, 0.103487223, 1.43324722e-21)
o10.CanCollide = false
o10.Locked = true
o10.Size = Vector3.new(0.5, 0.349999934, 1)
o10.CFrame = CFrame.new(-5.19982624, 2.7934761, -9.76437569, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.972549, 0.972549, 0.972549)
o10.Position = Vector3.new(-5.19982624, 2.7934761, -9.76437569)
o10.Velocity = Vector3.new(9.21258877e-22, 0.103487223, 1.43324722e-21)
o11.Parent = o10
o11.MeshId = "rbxasset://fonts/rightarm.mesh"
o11.Scale = Vector3.new(1.10000002, 0.0500000007, 1.10000002)
o11.MeshType = Enum.MeshType.FileMesh
o12.Name = "part_Weld"
o12.Parent = o10
o12.C0 = CFrame.new(-10.0426617, -2.42000055, 15.1500034, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o12.C1 = CFrame.new(15.1500034, 9.57265949, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o12.Part0 = o10
o12.Part1 = o47
o13.Name = "part"
o13.Parent = o1
o13.BrickColor = BrickColor.new("Institutional white")
o13.Position = Vector3.new(-5.20483971, 4.14297819, -9.76436901)
o13.Rotation = Vector3.new(-180, 0, 180)
o13.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o13.Velocity = Vector3.new(3.46071204e-21, 0.103487223, 5.02280749e-21)
o13.CanCollide = false
o13.Locked = true
o13.Size = Vector3.new(0.5, 0.349999934, 1)
o13.CFrame = CFrame.new(-5.20483971, 4.14297819, -9.76436901, -1.00000095, -8.07642937e-06, 6.85438181e-07, -8.22544098e-06, 1.00000119, 4.79770461e-06, -7.15280294e-07, 4.97453993e-06, -1.00000131)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.972549, 0.972549, 0.972549)
o13.Position = Vector3.new(-5.20483971, 4.14297819, -9.76436901)
o13.Velocity = Vector3.new(3.46071204e-21, 0.103487223, 5.02280749e-21)
o14.Parent = o13
o14.MeshId = "rbxasset://fonts/rightarm.mesh"
o14.Scale = Vector3.new(1.10000002, 0.075000003, 1.10000002)
o14.MeshType = Enum.MeshType.FileMesh
o15.Name = "part"
o15.Parent = o1
o15.Material = Enum.Material.SmoothPlastic
o15.BrickColor = BrickColor.new("Institutional white")
o15.Position = Vector3.new(-5.50483847, 3.97847366, -9.21436501)
o15.Rotation = Vector3.new(90, -20, -180)
o15.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o15.Velocity = Vector3.new(3.13809403e-21, 0.103487223, 4.57810219e-21)
o15.CanCollide = false
o15.Locked = true
o15.Shape = Enum.PartType.Ball
o15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o15.CFrame = CFrame.new(-5.50483847, 3.97847366, -9.21436501, -0.939696372, 6.85437442e-07, -0.342012733, 0.342012674, 4.88512751e-06, -0.93969667, 1.05914864e-06, -1.00000131, -5.00132955e-06)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
o15.Position = Vector3.new(-5.50483847, 3.97847366, -9.21436501)
o15.Velocity = Vector3.new(3.13809403e-21, 0.103487223, 4.57810219e-21)
o16.Parent = o15
o16.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o16.MeshType = Enum.MeshType.Sphere
o17.Name = "part_Weld"
o17.Parent = o15
o17.C0 = CFrame.new(-10.9566031, 15.7000055, -0.151512623, -0.939692736, 0.342019916, 0, 0, 0, -1, -0.342019886, -0.939692736, 0)
o17.C1 = CFrame.new(-10.0476608, -3.7694993, 15.1500015, -1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, 1, -8.74227766e-08, 0, -8.74227766e-08, -1)
o17.Part0 = o15
o17.Part1 = o13
o18.Name = "part"
o18.Parent = o1
o18.Material = Enum.Material.SmoothPlastic
o18.BrickColor = BrickColor.new("Really black")
o18.Position = Vector3.new(-5.50483751, 3.97847319, -9.21436501)
o18.Rotation = Vector3.new(90, -20, -180)
o18.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o18.Velocity = Vector3.new(3.13809322e-21, 0.103487223, 4.57810097e-21)
o18.CanCollide = false
o18.Locked = true
o18.Shape = Enum.PartType.Ball
o18.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o18.CFrame = CFrame.new(-5.50483751, 3.97847319, -9.21436501, -0.939696372, 6.85437442e-07, -0.342012763, 0.342012644, 4.88512751e-06, -0.93969667, 1.05914853e-06, -1.00000131, -5.00132955e-06)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o18.Position = Vector3.new(-5.50483751, 3.97847319, -9.21436501)
o18.Velocity = Vector3.new(3.13809322e-21, 0.103487223, 4.57810097e-21)
o19.Parent = o18
o19.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o19.MeshType = Enum.MeshType.Cylinder
o20.Name = "part_Weld"
o20.Parent = o18
o20.C0 = CFrame.new(-10.9566031, 15.7000055, -0.151512623, -0.939692736, 0.342019916, 0, 0, 0, -1, -0.342019886, -0.939692736, 0)
o20.C1 = CFrame.new(-10.9566031, 15.7000055, -0.151512623, -0.939692736, 0.342019916, 0, 0, 0, -1, -0.342019886, -0.939692736, 0)
o20.Part0 = o18
o20.Part1 = o15
o21.Name = "part"
o21.Parent = o1
o21.Material = Enum.Material.SmoothPlastic
o21.BrickColor = BrickColor.new("Institutional white")
o21.Position = Vector3.new(-4.87983847, 3.97847795, -9.21436882)
o21.Rotation = Vector3.new(-90, -10, 0)
o21.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o21.Velocity = Vector3.new(3.13810231e-21, 0.103487223, 4.59295266e-21)
o21.CanCollide = false
o21.Locked = true
o21.Shape = Enum.PartType.Ball
o21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o21.CFrame = CFrame.new(-4.87983847, 3.97847795, -9.21436882, 0.984807551, 6.85437442e-07, -0.173655033, 0.173655286, 4.88512751e-06, 0.98480773, 1.58340799e-06, -1.00000131, 4.86085492e-06)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.972549, 0.972549, 0.972549)
o21.Position = Vector3.new(-4.87983847, 3.97847795, -9.21436882)
o21.Velocity = Vector3.new(3.13810231e-21, 0.103487223, 4.59295266e-21)
o22.Parent = o21
o22.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o22.MeshType = Enum.MeshType.Sphere
o23.Name = "part_Weld"
o23.Parent = o21
o23.C0 = CFrame.new(8.9489584, 15.7000017, -5.23854446, 0.984807968, 0.173647001, 0, 0, 0, -1, -0.173647001, 0.984807968, 0)
o23.C1 = CFrame.new(-10.9566031, 15.7000055, -0.151512623, -0.939692736, 0.342019916, 0, 0, 0, -1, -0.342019886, -0.939692736, 0)
o23.Part0 = o21
o23.Part1 = o18
o24.Name = "part"
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Institutional white")
o24.Position = Vector3.new(-5.20483923, 3.97847795, -9.76436996)
o24.Rotation = Vector3.new(0, -90, 0)
o24.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o24.Velocity = Vector3.new(3.1511605e-21, 0.103487223, 4.58523662e-21)
o24.CanCollide = false
o24.Locked = true
o24.Shape = Enum.PartType.Cylinder
o24.Size = Vector3.new(1.11000001, 0.349999934, 1)
o24.CFrame = CFrame.new(-5.20483923, 3.97847795, -9.76436996, -6.85437442e-07, -7.9870224e-06, -1.00000095, -4.88512751e-06, 1.00000119, -8.19563866e-06, 1.00000131, 5.06196238e-06, -7.15279896e-07)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
o24.Position = Vector3.new(-5.20483923, 3.97847795, -9.76436996)
o24.Velocity = Vector3.new(3.1511605e-21, 0.103487223, 4.58523662e-21)
o25.Name = "part_Weld"
o25.Parent = o24
o25.C0 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o25.C1 = CFrame.new(8.9489584, 15.7000017, -5.23854446, 0.984807968, 0.173647001, 0, 0, 0, -1, -0.173647001, 0.984807968, 0)
o25.Part0 = o24
o25.Part1 = o21
o26.Name = "part"
o26.Parent = o1
o26.BrickColor = BrickColor.new("Institutional white")
o26.Position = Vector3.new(-5.20483637, 3.97847795, -9.76436996)
o26.Rotation = Vector3.new(-180, 0, 180)
o26.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o26.Velocity = Vector3.new(3.1511605e-21, 0.103487223, 4.58523662e-21)
o26.CanCollide = false
o26.Locked = true
o26.Size = Vector3.new(0.5, 0.349999934, 1)
o26.CFrame = CFrame.new(-5.20483637, 3.97847795, -9.76436996, -1.00000095, -7.9870224e-06, 6.85437442e-07, -8.19563866e-06, 1.00000119, 4.88512751e-06, -7.15279896e-07, 5.06196238e-06, -1.00000131)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
o26.Position = Vector3.new(-5.20483637, 3.97847795, -9.76436996)
o26.Velocity = Vector3.new(3.1511605e-21, 0.103487223, 4.58523662e-21)
o27.Parent = o26
o27.MeshId = "rbxasset://fonts/rightarm.mesh"
o27.Scale = Vector3.new(1.10000002, 0.00999999978, 1.10000002)
o27.MeshType = Enum.MeshType.FileMesh
o28.Name = "part_Weld"
o28.Parent = o26
o28.C0 = CFrame.new(-10.0476608, -3.6050005, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o28.C1 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o28.Part0 = o26
o28.Part1 = o24
o29.Name = "part"
o29.Parent = o1
o29.Material = Enum.Material.SmoothPlastic
o29.BrickColor = BrickColor.new("Really black")
o29.Position = Vector3.new(-5.50483656, 3.97847819, -10.3093672)
o29.Rotation = Vector3.new(-90, -90, 0)
o29.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o29.Velocity = Vector3.new(3.16410034e-21, 0.103487223, 4.57811471e-21)
o29.CanCollide = false
o29.Locked = true
o29.Shape = Enum.PartType.Ball
o29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o29.CFrame = CFrame.new(-5.50483656, 3.97847819, -10.3093672, -7.9870224e-06, 6.85437442e-07, -1.00000095, 1.00000119, 4.88512751e-06, -8.19563866e-06, 5.06196238e-06, -1.00000131, -7.15279896e-07)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Position = Vector3.new(-5.50483656, 3.97847819, -10.3093672)
o29.Velocity = Vector3.new(3.16410034e-21, 0.103487223, 4.57811471e-21)
o30.Parent = o29
o30.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o30.MeshType = Enum.MeshType.Cylinder
o31.Name = "part_Weld"
o31.Parent = o29
o31.C0 = CFrame.new(-3.6050005, 14.6050053, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o31.C1 = CFrame.new(-10.0476608, -3.6050005, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o31.Part0 = o29
o31.Part1 = o26
o32.Name = "part"
o32.Parent = o1
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Institutional white")
o32.Position = Vector3.new(-4.87983513, 3.97848082, -9.76436806)
o32.Rotation = Vector3.new(90, -50, -180)
o32.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o32.Velocity = Vector3.new(3.15116575e-21, 0.103487223, 4.59296074e-21)
o32.CanCollide = false
o32.Locked = true
o32.Shape = Enum.PartType.Cylinder
o32.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o32.CFrame = CFrame.new(-4.87983513, 3.97848082, -9.76436806, -0.642793715, 6.85437442e-07, -0.766040564, 0.766040623, 4.88512751e-06, -0.642794013, 3.41791815e-06, -1.00000131, -3.80170013e-06)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.972549, 0.972549, 0.972549)
o32.Position = Vector3.new(-4.87983513, 3.97848082, -9.76436806)
o32.Velocity = Vector3.new(3.15116575e-21, 0.103487223, 4.59296074e-21)
o33.Parent = o32
o33.Scale = Vector3.new(0.224999994, 0.736000001, 0.224999994)
o34.Name = "part_Weld"
o34.Parent = o32
o34.C0 = CFrame.new(-9.01119232, 15.1500034, -5.13074732, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o34.C1 = CFrame.new(-3.6050005, 14.6050053, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o34.Part0 = o32
o34.Part1 = o29
o35.Name = "part"
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Dark stone grey")
o35.Position = Vector3.new(-5.50483608, 3.97847533, -9.76437092)
o35.Rotation = Vector3.new(-90, -90, 0)
o35.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o35.Velocity = Vector3.new(3.15115545e-21, 0.103487223, 4.57810744e-21)
o35.CanCollide = false
o35.Locked = true
o35.Shape = Enum.PartType.Cylinder
o35.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o35.CFrame = CFrame.new(-5.50483608, 3.97847533, -9.76437092, -7.9870224e-06, 6.85437442e-07, -1.00000095, 1.00000119, 4.88512751e-06, -8.16583633e-06, 5.06196238e-06, -1.00000131, -7.15279839e-07)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.388235, 0.372549, 0.384314)
o35.Position = Vector3.new(-5.50483608, 3.97847533, -9.76437092)
o35.Velocity = Vector3.new(3.15115545e-21, 0.103487223, 4.57810744e-21)
o36.Parent = o35
o36.Scale = Vector3.new(0.300000012, 0.734999955, 0.300000012)
o37.Name = "part_Weld"
o37.Parent = o35
o37.C0 = CFrame.new(-3.6050005, 15.1500006, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o37.C1 = CFrame.new(-9.01119232, 15.1500034, -5.13074732, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o37.Part0 = o35
o37.Part1 = o32
o38.Name = "part"
o38.Parent = o1
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Dark stone grey")
o38.Position = Vector3.new(-4.87983465, 3.97848058, -9.76436806)
o38.Rotation = Vector3.new(90, -50, -180)
o38.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o38.Velocity = Vector3.new(3.15116534e-21, 0.103487223, 4.59296034e-21)
o38.CanCollide = false
o38.Locked = true
o38.Shape = Enum.PartType.Cylinder
o38.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o38.CFrame = CFrame.new(-4.87983465, 3.97848058, -9.76436806, -0.642793715, 6.85437442e-07, -0.766040564, 0.766040623, 4.88512751e-06, -0.642794013, 3.41791815e-06, -1.00000131, -3.8016999e-06)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.388235, 0.372549, 0.384314)
o38.Position = Vector3.new(-4.87983465, 3.97848058, -9.76436806)
o38.Velocity = Vector3.new(3.15116534e-21, 0.103487223, 4.59296034e-21)
o39.Parent = o38
o39.Scale = Vector3.new(0.300000012, 0.734999955, 0.300000012)
o40.Name = "part_Weld"
o40.Parent = o38
o40.C0 = CFrame.new(-9.01119232, 15.1500034, -5.13074732, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o40.C1 = CFrame.new(-3.6050005, 15.1500006, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o40.Part0 = o38
o40.Part1 = o35
o41.Name = "part"
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Institutional white")
o41.Position = Vector3.new(-4.87983179, 3.97848272, -10.30937)
o41.Rotation = Vector3.new(90, -50, -180)
o41.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o41.Velocity = Vector3.new(3.16410902e-21, 0.103487223, 4.59296599e-21)
o41.CanCollide = false
o41.Locked = true
o41.Shape = Enum.PartType.Ball
o41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o41.CFrame = CFrame.new(-4.87983179, 3.97848272, -10.30937, -0.642793715, 6.85437442e-07, -0.766040564, 0.766040623, 4.88512751e-06, -0.642794013, 3.41791815e-06, -1.00000131, -3.8016999e-06)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o41.Position = Vector3.new(-4.87983179, 3.97848272, -10.30937)
o41.Velocity = Vector3.new(3.16410902e-21, 0.103487223, 4.59296599e-21)
o42.Parent = o41
o42.Scale = Vector3.new(0.100000009, 0.100000009, 0.100000009)
o42.MeshType = Enum.MeshType.Sphere
o43.Name = "part_Weld"
o43.Parent = o41
o43.C0 = CFrame.new(-9.01119041, 14.6050024, -5.13074589, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o43.C1 = CFrame.new(-9.01119232, 15.1500034, -5.13074732, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o43.Part0 = o41
o43.Part1 = o38
o44.Name = "part"
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Really black")
o44.Position = Vector3.new(-4.87983179, 3.97848272, -10.30937)
o44.Rotation = Vector3.new(90, -50, -180)
o44.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o44.Velocity = Vector3.new(3.16410902e-21, 0.103487223, 4.59296599e-21)
o44.CanCollide = false
o44.Locked = true
o44.Shape = Enum.PartType.Ball
o44.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o44.CFrame = CFrame.new(-4.87983179, 3.97848272, -10.30937, -0.642793715, 6.85437442e-07, -0.766040564, 0.766040623, 4.88512751e-06, -0.642794013, 3.41791815e-06, -1.00000131, -3.8016999e-06)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Position = Vector3.new(-4.87983179, 3.97848272, -10.30937)
o44.Velocity = Vector3.new(3.16410902e-21, 0.103487223, 4.59296599e-21)
o45.Parent = o44
o45.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o45.MeshType = Enum.MeshType.Cylinder
o46.Name = "part_Weld"
o46.Parent = o44
o46.C0 = CFrame.new(-9.01119041, 14.6050024, -5.13074589, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o46.C1 = CFrame.new(-9.01119041, 14.6050024, -5.13074589, -0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, -0.64278698, 0)
o46.Part0 = o44
o46.Part1 = o41
o47.Name = "part"
o47.Parent = o1
o47.Position = Vector3.new(-4.72982311, 2.69848537, -9.76437569)
o47.Rotation = Vector3.new(90, 0, -90)
o47.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o47.Velocity = Vector3.new(7.42508095e-22, 0.103487223, 1.19173048e-21)
o47.CanCollide = false
o47.Locked = true
o47.Size = Vector3.new(0.200000003, 0.349999934, 1)
o47.CFrame = CFrame.new(-4.72982311, 2.69848537, -9.76437569, 6.85437442e-07, 1.00000095, 7.97212124e-06, 4.88512751e-06, 8.16583633e-06, -1.00000119, -1.00000131, 7.15279725e-07, -5.06196193e-06)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Position = Vector3.new(-4.72982311, 2.69848537, -9.76437569)
o47.Velocity = Vector3.new(7.42508095e-22, 0.103487223, 1.19173048e-21)
o48.Parent = o47
o48.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o48.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o48.MeshType = Enum.MeshType.FileMesh
o49.Name = "part_Weld"
o49.Parent = o47
o49.C0 = CFrame.new(15.1500034, 9.57265949, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o49.C1 = CFrame.new(-9.74765873, -2.1250031, 15.1500006, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o49.Part0 = o47
o49.Part1 = o50
o50.Name = "part"
o50.Parent = o1
o50.BrickColor = BrickColor.new("Institutional white")
o50.Position = Vector3.new(-4.90482092, 2.4984808, -9.7643795)
o50.Rotation = Vector3.new(-180, 0, 180)
o50.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o50.Velocity = Vector3.new(3.6614546e-22, 0.103487223, 6.55562799e-22)
o50.CanCollide = false
o50.Locked = true
o50.Size = Vector3.new(0.5, 0.349999934, 1)
o50.CFrame = CFrame.new(-4.90482092, 2.4984808, -9.7643795, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.972549, 0.972549, 0.972549)
o50.Position = Vector3.new(-4.90482092, 2.4984808, -9.7643795)
o50.Velocity = Vector3.new(3.6614546e-22, 0.103487223, 6.55562799e-22)
o51.Parent = o50
o51.MeshId = "rbxasset://fonts/rightarm.mesh"
o51.Scale = Vector3.new(0.5, 0.174999997, 1.10000002)
o51.MeshType = Enum.MeshType.FileMesh
o52.Name = "part_Weld"
o52.Parent = o50
o52.C0 = CFrame.new(-9.74765873, -2.1250031, 15.1500006, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o52.C1 = CFrame.new(-9.92265701, -2.325001, 15.1500034, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o52.Part0 = o50
o52.Part1 = o53
o53.Name = "part"
o53.Parent = o1
o53.BrickColor = BrickColor.new("Institutional white")
o53.Position = Vector3.new(-5.07982111, 2.69847751, -9.76437569)
o53.Rotation = Vector3.new(-180, 0, 180)
o53.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o53.Velocity = Vector3.new(7.42493302e-22, 0.103487223, 1.1833998e-21)
o53.CanCollide = false
o53.Locked = true
o53.Size = Vector3.new(0.5, 0.349999934, 1)
o53.CFrame = CFrame.new(-5.07982111, 2.69847751, -9.76437569, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.972549, 0.972549, 0.972549)
o53.Position = Vector3.new(-5.07982111, 2.69847751, -9.76437569)
o53.Velocity = Vector3.new(7.42493302e-22, 0.103487223, 1.1833998e-21)
o54.Parent = o53
o54.MeshId = "rbxasset://fonts/rightarm.mesh"
o54.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o54.MeshType = Enum.MeshType.FileMesh
o55.Name = "part_Weld"
o55.Parent = o53
o55.C0 = CFrame.new(-9.92265701, -2.325001, 15.1500034, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o55.C1 = CFrame.new(-9.78266144, -2.325001, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o55.Part0 = o53
o55.Part1 = o56
o56.Name = "part"
o56.Parent = o1
o56.Material = Enum.Material.Granite
o56.BrickColor = BrickColor.new("Alder")
o56.Position = Vector3.new(-4.93982553, 2.6984787, -9.76437759)
o56.Rotation = Vector3.new(-180, 0, 180)
o56.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o56.Velocity = Vector3.new(7.42495574e-22, 0.103487223, 1.1867268e-21)
o56.CanCollide = false
o56.Locked = true
o56.Size = Vector3.new(0.5, 0.349999934, 1)
o56.CFrame = CFrame.new(-4.93982553, 2.6984787, -9.76437759, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.705882, 0.501961, 1)
o56.Position = Vector3.new(-4.93982553, 2.6984787, -9.76437759)
o56.Velocity = Vector3.new(7.42495574e-22, 0.103487223, 1.1867268e-21)
o57.Parent = o56
o57.Scale = Vector3.new(0.529999971, 0.400000006, 1.09899998)
o58.Name = "part_Weld"
o58.Parent = o56
o58.C0 = CFrame.new(-9.78266144, -2.325001, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o58.C1 = CFrame.new(15.4000063, 9.57265472, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o58.Part0 = o56
o58.Part1 = o59
o59.Name = "part"
o59.Parent = o1
o59.Position = Vector3.new(-4.72981882, 2.69848418, -9.51437187)
o59.Rotation = Vector3.new(90, 0, -90)
o59.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o59.Velocity = Vector3.new(7.36570206e-22, 0.103487223, 1.19172745e-21)
o59.CanCollide = false
o59.Locked = true
o59.Size = Vector3.new(0.200000003, 0.349999934, 1)
o59.CFrame = CFrame.new(-4.72981882, 2.69848418, -9.51437187, 6.85437442e-07, 1.00000095, 7.97212124e-06, 4.88512751e-06, 8.16583633e-06, -1.00000119, -1.00000131, 7.15279725e-07, -5.06196193e-06)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Position = Vector3.new(-4.72981882, 2.69848418, -9.51437187)
o59.Velocity = Vector3.new(7.36570206e-22, 0.103487223, 1.19172745e-21)
o60.Parent = o59
o60.MeshId = "rbxassetid://9756362"
o60.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o60.MeshType = Enum.MeshType.FileMesh
o61.Name = "part_Weld"
o61.Parent = o59
o61.C0 = CFrame.new(15.4000063, 9.57265472, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o61.C1 = CFrame.new(-9.64765739, -2.325001, 15.1500044, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o61.Part0 = o59
o61.Part1 = o62
o62.Name = "part"
o62.Parent = o1
o62.BrickColor = BrickColor.new("Institutional white")
o62.Position = Vector3.new(-4.80482149, 2.69847989, -9.76437378)
o62.Rotation = Vector3.new(-180, 0, 180)
o62.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o62.Velocity = Vector3.new(7.42497745e-22, 0.103487223, 1.18993526e-21)
o62.CanCollide = false
o62.Locked = true
o62.Size = Vector3.new(0.5, 0.349999934, 1)
o62.CFrame = CFrame.new(-4.80482149, 2.69847989, -9.76437378, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.972549, 0.972549, 0.972549)
o62.Position = Vector3.new(-4.80482149, 2.69847989, -9.76437378)
o62.Velocity = Vector3.new(7.42497745e-22, 0.103487223, 1.18993526e-21)
o63.Parent = o62
o63.MeshId = "rbxasset://fonts/rightarm.mesh"
o63.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o63.MeshType = Enum.MeshType.FileMesh
o64.Name = "part_Weld"
o64.Parent = o62
o64.C0 = CFrame.new(-9.64765739, -2.325001, 15.1500044, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o64.C1 = CFrame.new(-9.56266499, -2.325001, 15.6450043, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o64.Part0 = o62
o64.Part1 = o65
o65.Name = "part"
o65.Parent = o1
o65.Material = Enum.Material.Granite
o65.BrickColor = BrickColor.new("Alder")
o65.Position = Vector3.new(-4.71982956, 2.69847822, -9.26937294)
o65.Rotation = Vector3.new(-180, 0, 180)
o65.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o65.Velocity = Vector3.new(7.30742178e-22, 0.103487223, 1.19194868e-21)
o65.CanCollide = false
o65.Locked = true
o65.Size = Vector3.new(0.200000003, 0.349999934, 0.200000003)
o65.CFrame = CFrame.new(-4.71982956, 2.69847822, -9.26937294, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Color = Color3.new(0.705882, 0.501961, 1)
o65.Position = Vector3.new(-4.71982956, 2.69847822, -9.26937294)
o65.Velocity = Vector3.new(7.30742178e-22, 0.103487223, 1.19194868e-21)
o66.Parent = o65
o66.Scale = Vector3.new(0.5, 0.5, 0.5)
o67.Name = "part_Weld"
o67.Parent = o65
o67.C0 = CFrame.new(-9.56266499, -2.325001, 15.6450043, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o67.C1 = CFrame.new(-10.0476608, -3.00500154, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o67.Part0 = o65
o67.Part1 = o68
o68.Name = "part"
o68.Parent = o1
o68.BrickColor = BrickColor.new("Institutional white")
o68.Position = Vector3.new(-5.20483112, 3.37847805, -9.76437283)
o68.Rotation = Vector3.new(-180, 0, 180)
o68.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o68.Velocity = Vector3.new(2.02209834e-21, 0.103487223, 2.98923525e-21)
o68.CanCollide = false
o68.Locked = true
o68.Size = Vector3.new(0.5, 0.349999934, 1)
o68.CFrame = CFrame.new(-5.20483112, 3.37847805, -9.76437283, -1.00000095, -7.97212124e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279725e-07, 5.06196193e-06, -1.00000131)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.972549, 0.972549, 0.972549)
o68.Position = Vector3.new(-5.20483112, 3.37847805, -9.76437283)
o68.Velocity = Vector3.new(2.02209834e-21, 0.103487223, 2.98923525e-21)
o69.Parent = o68
o69.MeshId = "rbxasset://fonts/rightarm.mesh"
o69.Scale = Vector3.new(0.100000001, 0.649999976, 1.10000002)
o69.MeshType = Enum.MeshType.FileMesh
o70.Name = "part_Weld"
o70.Parent = o68
o70.C0 = CFrame.new(-10.0476608, -3.00500154, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o70.C1 = CFrame.new(8.9489584, 15.7000017, -5.23854446, 0.984807968, 0.173647001, 0, 0, 0, -1, -0.173647001, 0.984807968, 0)
o70.Part0 = o68
o70.Part1 = o71
o71.Name = "part"
o71.Parent = o1
o71.Material = Enum.Material.SmoothPlastic
o71.BrickColor = BrickColor.new("Really black")
o71.Position = Vector3.new(-4.87983799, 3.97847748, -9.21436882)
o71.Rotation = Vector3.new(-90, -10, 0)
o71.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o71.Velocity = Vector3.new(3.1381015e-21, 0.103487223, 4.59295186e-21)
o71.CanCollide = false
o71.Locked = true
o71.Shape = Enum.PartType.Ball
o71.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o71.CFrame = CFrame.new(-4.87983799, 3.97847748, -9.21436882, 0.984807551, 6.85437442e-07, -0.173655033, 0.173655257, 4.88512751e-06, 0.98480773, 1.58340777e-06, -1.00000131, 4.86085446e-06)
o71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Position = Vector3.new(-4.87983799, 3.97847748, -9.21436882)
o71.Velocity = Vector3.new(3.1381015e-21, 0.103487223, 4.59295186e-21)
o72.Parent = o71
o72.Scale = Vector3.new(0.00500000035, 0.100500003, 0.100500003)
o72.MeshType = Enum.MeshType.Cylinder
o73.Name = "part_Weld"
o73.Parent = o71
o73.C0 = CFrame.new(8.9489584, 15.7000017, -5.23854446, 0.984807968, 0.173647001, 0, 0, 0, -1, -0.173647001, 0.984807968, 0)
o73.C1 = CFrame.new(15.1500015, 9.69765949, 2.77500439, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o73.Part0 = o71
o73.Part1 = o74
o74.Name = "part"
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Institutional white")
o74.Position = Vector3.new(-4.8548274, 3.14848328, -9.76437378)
o74.Rotation = Vector3.new(90, 0, -90)
o74.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o74.Velocity = Vector3.new(1.58930103e-21, 0.103487223, 2.38575852e-21)
o74.CanCollide = false
o74.Locked = true
o74.Size = Vector3.new(0.799999952, 0.349999934, 1)
o74.CFrame = CFrame.new(-4.8548274, 3.14848328, -9.76437378, 6.85437442e-07, 1.00000095, 7.9870224e-06, 4.88512751e-06, 8.16583633e-06, -1.00000119, -1.00000131, 7.15279839e-07, -5.06196193e-06)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.972549, 0.972549, 0.972549)
o74.Position = Vector3.new(-4.8548274, 3.14848328, -9.76437378)
o74.Velocity = Vector3.new(1.58930103e-21, 0.103487223, 2.38575852e-21)
o75.Parent = o74
o75.Scale = Vector3.new(1.10000002, 1.125, 1)
o75.MeshType = Enum.MeshType.Wedge
o76.Name = "part_Weld"
o76.Parent = o74
o76.C0 = CFrame.new(15.1500015, 9.69765949, 2.77500439, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o76.C1 = CFrame.new(-9.56266499, -2.325001, 14.6550045, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o76.Part0 = o74
o76.Part1 = o77
o77.Name = "part"
o77.Parent = o1
o77.Material = Enum.Material.Granite
o77.BrickColor = BrickColor.new("Alder")
o77.Position = Vector3.new(-4.71982861, 2.69848275, -10.2593737)
o77.Rotation = Vector3.new(-180, 0, 180)
o77.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o77.Velocity = Vector3.new(7.54255635e-22, 0.103487223, 1.1919607e-21)
o77.CanCollide = false
o77.Locked = true
o77.Size = Vector3.new(0.200000003, 0.349999934, 0.200000003)
o77.CFrame = CFrame.new(-4.71982861, 2.69848275, -10.2593737, -1.00000095, -7.9870224e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279839e-07, 5.06196193e-06, -1.00000131)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.705882, 0.501961, 1)
o77.Position = Vector3.new(-4.71982861, 2.69848275, -10.2593737)
o77.Velocity = Vector3.new(7.54255635e-22, 0.103487223, 1.1919607e-21)
o78.Parent = o77
o78.Scale = Vector3.new(0.5, 0.5, 0.5)
o79.Name = "part_Weld"
o79.Parent = o77
o79.C0 = CFrame.new(-9.56266499, -2.325001, 14.6550045, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o79.C1 = CFrame.new(-9.78266144, -2.325001, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o79.Part0 = o77
o79.Part1 = o80
o80.Name = "part"
o80.Parent = o1
o80.BrickColor = BrickColor.new("Institutional white")
o80.Position = Vector3.new(-4.93982553, 2.69847846, -9.76437569)
o80.Rotation = Vector3.new(-180, 0, 180)
o80.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o80.Velocity = Vector3.new(7.42495221e-22, 0.103487223, 1.1867261e-21)
o80.CanCollide = false
o80.Locked = true
o80.Size = Vector3.new(0.5, 0.349999934, 1)
o80.CFrame = CFrame.new(-4.93982553, 2.69847846, -9.76437569, -1.00000095, -7.9870224e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279839e-07, 5.06196193e-06, -1.00000131)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.972549, 0.972549, 0.972549)
o80.Position = Vector3.new(-4.93982553, 2.69847846, -9.76437569)
o80.Velocity = Vector3.new(7.42495221e-22, 0.103487223, 1.1867261e-21)
o81.Parent = o80
o81.MeshId = "rbxasset://fonts/rightarm.mesh"
o81.Scale = Vector3.new(0.0500000007, 0.100000001, 1.10000002)
o81.MeshType = Enum.MeshType.FileMesh
o82.Name = "part_Weld"
o82.Parent = o80
o82.C0 = CFrame.new(-9.78266144, -2.325001, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o82.C1 = CFrame.new(14.9000063, 9.57265663, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o82.Part0 = o80
o82.Part1 = o83
o83.Name = "part"
o83.Parent = o1
o83.Position = Vector3.new(-4.72982025, 2.69848633, -10.0143709)
o83.Rotation = Vector3.new(90, 0, -90)
o83.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o83.Velocity = Vector3.new(7.48445478e-22, 0.103487223, 1.191733e-21)
o83.CanCollide = false
o83.Locked = true
o83.Size = Vector3.new(0.200000003, 0.349999934, 1)
o83.CFrame = CFrame.new(-4.72982025, 2.69848633, -10.0143709, 6.85437442e-07, 1.00000095, 7.9870224e-06, 4.88512751e-06, 8.16583633e-06, -1.00000119, -1.00000131, 7.15279839e-07, -5.06196193e-06)
o83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o83.Position = Vector3.new(-4.72982025, 2.69848633, -10.0143709)
o83.Velocity = Vector3.new(7.48445478e-22, 0.103487223, 1.191733e-21)
o84.Parent = o83
o84.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o84.Scale = Vector3.new(0.125, 0.200000003, 0.25)
o84.MeshType = Enum.MeshType.FileMesh
o85.Name = "part_Weld"
o85.Parent = o83
o85.C0 = CFrame.new(14.9000063, 9.57265663, 2.32500601, 0, 0, -1, 1, 0, 0, 0, -1, 0)
o85.C1 = CFrame.new(-10.3526583, -3.00500154, 15.1500006, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o85.Part0 = o83
o85.Part1 = o86
o86.Name = "part"
o86.Parent = o1
o86.BrickColor = BrickColor.new("Institutional white")
o86.Position = Vector3.new(-5.50982809, 3.37847519, -9.76437378)
o86.Rotation = Vector3.new(-180, 0, 180)
o86.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o86.Velocity = Vector3.new(2.02209309e-21, 0.103487223, 2.98198651e-21)
o86.CanCollide = false
o86.Locked = true
o86.Size = Vector3.new(0.5, 0.349999934, 1)
o86.CFrame = CFrame.new(-5.50982809, 3.37847519, -9.76437378, -1.00000095, -7.9870224e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279839e-07, 5.06196193e-06, -1.00000131)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.972549, 0.972549, 0.972549)
o86.Position = Vector3.new(-5.50982809, 3.37847519, -9.76437378)
o86.Velocity = Vector3.new(2.02209309e-21, 0.103487223, 2.98198651e-21)
o87.Parent = o86
o87.MeshId = "rbxasset://fonts/rightarm.mesh"
o87.Scale = Vector3.new(0.100000001, 0.649999976, 1.10000002)
o87.MeshType = Enum.MeshType.FileMesh
o88.Name = "part_Weld"
o88.Parent = o86
o88.C0 = CFrame.new(-10.3526583, -3.00500154, 15.1500006, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o88.C1 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o88.Part0 = o86
o88.Part1 = o89
o89.Name = "part"
o89.Parent = o1
o89.Material = Enum.Material.Granite
o89.BrickColor = BrickColor.new("Alder")
o89.Position = Vector3.new(-5.2048378, 3.97847748, -9.76436996)
o89.Rotation = Vector3.new(0, -90, 0)
o89.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o89.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o89.CanCollide = false
o89.Locked = true
o89.Shape = Enum.PartType.Cylinder
o89.Size = Vector3.new(1.12, 0.300000012, 0.949999988)
o89.CFrame = CFrame.new(-5.2048378, 3.97847748, -9.76436996, -6.85437442e-07, -7.9870224e-06, -1.00000095, -4.88512751e-06, 1.00000119, -8.16583633e-06, 1.00000131, 5.06196193e-06, -7.15279839e-07)
o89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o89.Color = Color3.new(0.705882, 0.501961, 1)
o89.Position = Vector3.new(-5.2048378, 3.97847748, -9.76436996)
o89.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o90.Name = "part_Weld"
o90.Parent = o89
o90.C0 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o90.C1 = CFrame.new(-10.0476608, -3.6050005, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o90.Part0 = o89
o90.Part1 = o91
o91.Name = "part"
o91.Parent = o1
o91.BrickColor = BrickColor.new("Institutional white")
o91.Position = Vector3.new(-5.20483494, 3.97847748, -9.76436996)
o91.Rotation = Vector3.new(-180, 0, 180)
o91.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o91.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o91.CanCollide = false
o91.Locked = true
o91.Size = Vector3.new(0.5, 0.349999934, 1)
o91.CFrame = CFrame.new(-5.20483494, 3.97847748, -9.76436996, -1.00000095, -7.9870224e-06, 6.85437442e-07, -8.16583633e-06, 1.00000119, 4.88512751e-06, -7.15279839e-07, 5.06196193e-06, -1.00000131)
o91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o91.Color = Color3.new(0.972549, 0.972549, 0.972549)
o91.Position = Vector3.new(-5.20483494, 3.97847748, -9.76436996)
o91.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o92.Parent = o91
o92.MeshId = "rbxasset://fonts/rightarm.mesh"
o92.Scale = Vector3.new(0.800000012, 0.0500000007, 1.10000002)
o92.MeshType = Enum.MeshType.FileMesh
o93.Name = "part_Weld"
o93.Parent = o91
o93.C0 = CFrame.new(-10.0476608, -3.6050005, 15.1500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o93.C1 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o93.Part0 = o91
o93.Part1 = o94
o94.Name = "part"
o94.Parent = o1
o94.Material = Enum.Material.Neon
o94.BrickColor = BrickColor.new("Alder")
o94.Position = Vector3.new(-5.2048378, 3.97847748, -9.76436996)
o94.Rotation = Vector3.new(0, -90, 0)
o94.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o94.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o94.CanCollide = false
o94.Locked = true
o94.Shape = Enum.PartType.Cylinder
o94.Size = Vector3.new(1.11500001, 0.307500005, 0.957499981)
o94.CFrame = CFrame.new(-5.2048378, 3.97847748, -9.76436996, -6.85437442e-07, -7.9870224e-06, -1.00000095, -4.88512751e-06, 1.00000119, -8.16583633e-06, 1.00000131, 5.06196193e-06, -7.15279839e-07)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.705882, 0.501961, 1)
o94.Position = Vector3.new(-5.2048378, 3.97847748, -9.76436996)
o94.Velocity = Vector3.new(3.15115969e-21, 0.103487223, 4.58523581e-21)
o95.Name = "part_Weld"
o95.Parent = o94
o95.C0 = CFrame.new(-15.1500015, -3.6050005, -10.0476637, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o95.C1 = CFrame.new(-3.6050005, 15.1500006, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o95.Part0 = o94
o95.Part1 = o96
o96.Name = "part"
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Institutional white")
o96.Position = Vector3.new(-5.50483561, 3.97847509, -9.76437092)
o96.Rotation = Vector3.new(-90, -90, 0)
o96.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o96.Velocity = Vector3.new(3.15115525e-21, 0.103487223, 4.57810703e-21)
o96.CanCollide = false
o96.Locked = true
o96.Shape = Enum.PartType.Cylinder
o96.Size = Vector3.new(0.200000003, 1.5, 0.200000003)
o96.CFrame = CFrame.new(-5.50483561, 3.97847509, -9.76437092, -7.9870224e-06, 6.85437442e-07, -1.00000095, 1.00000119, 4.88512751e-06, -8.16583633e-06, 5.06196193e-06, -1.00000131, -7.15279839e-07)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.972549, 0.972549, 0.972549)
o96.Position = Vector3.new(-5.50483561, 3.97847509, -9.76437092)
o96.Velocity = Vector3.new(3.15115525e-21, 0.103487223, 4.57810703e-21)
o97.Parent = o96
o97.Scale = Vector3.new(0.224999994, 0.736000001, 0.224999994)
o98.Name = "part_Weld"
o98.Parent = o96
o98.C0 = CFrame.new(-3.6050005, 15.1500006, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o98.C1 = CFrame.new(-3.6050005, 14.6050053, -10.347661, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o98.Part0 = o96
o98.Part1 = o2
o99.Parent = o1
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Institutional white")
o99.Position = Vector3.new(-5.39680243, 4.27047253, -9.74921799)
o99.Rotation = Vector3.new(90, 60, -90)
o99.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o99.Velocity = Vector3.new(3.70026969e-21, 0.103487223, 5.35738831e-21)
o99.CanCollide = false
o99.Locked = true
o99.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o99.CFrame = CFrame.new(-5.39680243, 4.27047253, -9.74921799, 6.09625204e-07, 0.499993622, 0.866030216, 4.64916138e-06, 0.866030395, -0.499993443, -1.00000095, 4.45763089e-06, -1.97251347e-06)
o99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o99.Color = Color3.new(0.972549, 0.972549, 0.972549)
o99.Position = Vector3.new(-5.39680243, 4.27047253, -9.74921799)
o99.Velocity = Vector3.new(3.70026969e-21, 0.103487223, 5.35738831e-21)
o100.Parent = o99
o100.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o101.Name = "Part_Weld"
o101.Parent = o99
o101.C0 = CFrame.new(15.1651592, 1.74491942, 10.8162794, -1.41065001e-07, -2.0062032e-07, -1, 0.50000006, 0.866025388, -2.44274815e-07, 0.866025388, -0.50000006, -2.18556959e-08)
o101.C1 = CFrame.new(10.5048914, -11.0150871, 10.0121317, -4.37113883e-08, 0.500000119, -0.866025329, 0, 0.866025329, 0.500000119, 1, 2.18556995e-08, -3.78551697e-08)
o101.Part0 = o99
o101.Part1 = o134
o102.Parent = o1
o102.Material = Enum.Material.Neon
o102.BrickColor = BrickColor.new("Alder")
o102.Position = Vector3.new(-5.22433519, 3.95214248, -9.26237965)
o102.Rotation = Vector3.new(0, 0, 90)
o102.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o102.Velocity = Vector3.new(3.089687e-21, 0.103487223, 4.51472391e-21)
o102.CanCollide = false
o102.Locked = true
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.CFrame = CFrame.new(-5.22433519, 3.95214248, -9.26237965, -7.95722008e-06, -1.00000072, -5.96412463e-07, 1.00000119, -8.404254e-06, -5.07036157e-06, 5.15976762e-06, -4.70768953e-07, 1.00000107)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.705882, 0.501961, 1)
o102.Position = Vector3.new(-5.22433519, 3.95214248, -9.26237965)
o102.Velocity = Vector3.new(3.089687e-21, 0.103487223, 4.51472391e-21)
o103.Parent = o102
o103.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o103.MeshType = Enum.MeshType.Brick
o104.Parent = o1
o104.Material = Enum.Material.Neon
o104.BrickColor = BrickColor.new("Alder")
o104.Position = Vector3.new(-5.14973497, 4.00834274, -9.26238155)
o104.Rotation = Vector3.new(0, 0, -45)
o104.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o104.Velocity = Vector3.new(3.19544313e-21, 0.103487223, 4.66598811e-21)
o104.CanCollide = false
o104.Locked = true
o104.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o104.CFrame = CFrame.new(-5.14973497, 4.00834274, -9.26238155, 0.707093179, 0.707121491, -4.61931393e-07, -0.707121432, 0.707093775, -4.7683684e-06, -3.19727906e-06, 3.67266625e-06, 1.00000107)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.705882, 0.501961, 1)
o104.Position = Vector3.new(-5.14973497, 4.00834274, -9.26238155)
o104.Velocity = Vector3.new(3.19544313e-21, 0.103487223, 4.66598811e-21)
o105.Parent = o104
o105.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o105.MeshType = Enum.MeshType.Brick
o106.Name = "Part_Weld"
o106.Parent = o104
o106.C0 = CFrame.new(9.63592529, 4.49584293, -15.6519928, 0.70708704, -0.707126498, -9.22794854e-08, 0.707126498, 0.70708704, -3.05830895e-07, 2.81510779e-07, 1.50995803e-07, 1)
o106.C1 = CFrame.new(-3.57867122, -10.0671654, -15.6519947, -4.37113883e-08, 1, 1.50995803e-07, -1, -4.37114096e-08, 1.47027421e-07, 1.47027421e-07, -1.50995803e-07, 1)
o106.Part0 = o104
o106.Part1 = o102
o107.Parent = o1
o107.Material = Enum.Material.Neon
o107.BrickColor = BrickColor.new("Alder")
o107.Position = Vector3.new(-5.2697382, 4.02784061, -9.26237965)
o107.Rotation = Vector3.new(0, 0, 30)
o107.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o107.Velocity = Vector3.new(3.23213352e-21, 0.103487223, 4.7150034e-21)
o107.CanCollide = false
o107.Locked = true
o107.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o107.CFrame = CFrame.new(-5.2697382, 4.02784061, -9.26237965, 0.866036117, -0.499982923, -6.26217172e-07, 0.499983519, 0.866036236, -4.76836976e-06, 2.86228374e-06, 3.9567517e-06, 1.00000107)
o107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o107.Color = Color3.new(0.705882, 0.501961, 1)
o107.Position = Vector3.new(-5.2697382, 4.02784061, -9.26237965)
o107.Velocity = Vector3.new(3.23213352e-21, 0.103487223, 4.7150034e-21)
o108.Parent = o107
o108.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o108.MeshType = Enum.MeshType.Brick
o109.Name = "Part_Weld"
o109.Parent = o107
o109.C0 = CFrame.new(6.93078899, -8.22086239, -15.6519957, 0.866039455, 0.499975711, -1.77015792e-07, -0.499975711, 0.866039455, -7.21586275e-08, 1.17225099e-07, 1.50995803e-07, 1)
o109.C1 = CFrame.new(9.63592529, 4.49584293, -15.6519928, 0.70708704, -0.707126498, -9.22794854e-08, 0.707126498, 0.70708704, -3.05830895e-07, 2.81510779e-07, 1.50995803e-07, 1)
o109.Part0 = o107
o109.Part1 = o104
o110.Parent = o1
o110.Material = Enum.Material.Neon
o110.BrickColor = BrickColor.new("Alder")
o110.Position = Vector3.new(-5.1772356, 4.01984167, -9.26238155)
o110.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o110.Velocity = Vector3.new(3.2170813e-21, 0.103487223, 4.69592251e-21)
o110.CanCollide = false
o110.Locked = true
o110.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o110.CFrame = CFrame.new(-5.1772356, 4.01984167, -9.26238155, 1.00000072, 2.01165676e-05, -5.5471196e-07, -1.96397305e-05, 1.00000107, -4.76836931e-06, 4.28929297e-07, 4.85778719e-06, 1.00000107)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.705882, 0.501961, 1)
o110.Position = Vector3.new(-5.1772356, 4.01984167, -9.26238155)
o110.Velocity = Vector3.new(3.2170813e-21, 0.103487223, 4.69592251e-21)
o111.Parent = o110
o111.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o111.MeshType = Enum.MeshType.Brick
o112.Name = "Part_Weld"
o112.Parent = o110
o112.C0 = CFrame.new(10.0201683, -3.64608431, -15.6519938, 1, -2.80459699e-05, -1.88726005e-07, 2.80459699e-05, 1, -1.51001089e-07, 1.8873024e-07, 1.50995803e-07, 1)
o112.C1 = CFrame.new(6.93078899, -8.22086239, -15.6519957, 0.866039455, 0.499975711, -1.77015792e-07, -0.499975711, 0.866039455, -7.21586275e-08, 1.17225099e-07, 1.50995803e-07, 1)
o112.Part0 = o110
o112.Part1 = o107
o113.Parent = o1
o113.Material = Enum.Material.Neon
o113.BrickColor = BrickColor.new("Alder")
o113.Position = Vector3.new(-5.17823505, 3.98884153, -9.26238155)
o113.Rotation = Vector3.new(0, 0, 15)
o113.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o113.Velocity = Vector3.new(3.15874608e-21, 0.103487223, 4.61343831e-21)
o113.CanCollide = false
o113.Locked = true
o113.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o113.CFrame = CFrame.new(-5.17823505, 3.98884153, -9.26238155, 0.965931714, -0.258799791, -5.88152034e-07, 0.258800358, 0.965931952, -4.76836976e-06, 1.70390251e-06, 4.57259284e-06, 1.00000107)
o113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o113.Color = Color3.new(0.705882, 0.501961, 1)
o113.Position = Vector3.new(-5.17823505, 3.98884153, -9.26238155)
o113.Velocity = Vector3.new(3.15874608e-21, 0.103487223, 4.61343831e-21)
o114.Parent = o113
o114.Scale = Vector3.new(0.100000001, 0.104347944, 0.606715083)
o114.MeshType = Enum.MeshType.Brick
o115.Name = "Part_Weld"
o115.Parent = o113
o115.C0 = CFrame.new(8.74405193, -6.08557272, -15.6519938, 0.965933084, 0.258791953, -1.89076431e-07, -0.258791953, 0.965933084, -1.05663986e-07, 1.55290195e-07, 1.50995803e-07, 1)
o115.C1 = CFrame.new(10.0201683, -3.64608431, -15.6519938, 1, -2.80459699e-05, -1.88726005e-07, 2.80459699e-05, 1, -1.51001089e-07, 1.8873024e-07, 1.50995803e-07, 1)
o115.Part0 = o113
o115.Part1 = o110
o116.Parent = o1
o116.Material = Enum.Material.Neon
o116.BrickColor = BrickColor.new("Alder")
o116.Position = Vector3.new(-5.20673466, 4.01134062, -9.26238155)
o116.Rotation = Vector3.new(0, 0, 30)
o116.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o116.Velocity = Vector3.new(3.20108416e-21, 0.103487223, 4.67260919e-21)
o116.CanCollide = false
o116.Locked = true
o116.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o116.CFrame = CFrame.new(-5.20673466, 4.01134062, -9.26238155, 0.866036057, -0.499982893, -6.26217172e-07, 0.49998349, 0.866036117, -4.76837022e-06, 2.86228351e-06, 3.9567517e-06, 1.00000107)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.705882, 0.501961, 1)
o116.Position = Vector3.new(-5.20673466, 4.01134062, -9.26238155)
o116.Velocity = Vector3.new(3.20108416e-21, 0.103487223, 4.67260919e-21)
o117.Parent = o116
o117.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o117.MeshType = Enum.MeshType.Brick
o118.Name = "Part_Weld"
o118.Parent = o116
o118.C0 = CFrame.new(6.88447571, -8.17507362, -15.6519938, 0.866039455, 0.499975711, -1.77015792e-07, -0.499975711, 0.866039455, -7.21586275e-08, 1.17225099e-07, 1.50995803e-07, 1)
o118.C1 = CFrame.new(8.74405193, -6.08557272, -15.6519938, 0.965933084, 0.258791953, -1.89076431e-07, -0.258791953, 0.965933084, -1.05663986e-07, 1.55290195e-07, 1.50995803e-07, 1)
o118.Part0 = o116
o118.Part1 = o113
o119.Parent = o1
o119.Material = Enum.Material.Neon
o119.BrickColor = BrickColor.new("Alder")
o119.Position = Vector3.new(-5.1449132, 4.02784538, -10.2693834)
o119.Rotation = Vector3.new(-180, 0, -150)
o119.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o119.Velocity = Vector3.new(3.25605088e-21, 0.103487223, 4.71797972e-21)
o119.CanCollide = false
o119.Locked = true
o119.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o119.CFrame = CFrame.new(-5.1449132, 4.02784538, -10.2693834, -0.866043985, 0.499969125, 7.13637633e-07, 0.499968916, 0.866044521, 5.07036293e-06, 2.07053245e-06, 4.76254445e-06, -1.00000107)
o119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o119.Color = Color3.new(0.705882, 0.501961, 1)
o119.Position = Vector3.new(-5.1449132, 4.02784538, -10.2693834)
o119.Velocity = Vector3.new(3.25605088e-21, 0.103487223, 4.71797972e-21)
o120.Parent = o119
o120.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o120.MeshType = Enum.MeshType.Brick
o121.Name = "Part_Weld"
o121.Parent = o119
o121.C0 = CFrame.new(-10.4768772, 1.82880092, 14.6449928, -0.866039455, 0.499975681, 1.01304217e-07, 0.499975681, 0.866039455, 1.15867891e-07, -2.98023224e-08, 1.50995803e-07, -1)
o121.C1 = CFrame.new(6.88447571, -8.17507362, -15.6519938, 0.866039455, 0.499975711, -1.77015792e-07, -0.499975711, 0.866039455, -7.21586275e-08, 1.17225099e-07, 1.50995803e-07, 1)
o121.Part0 = o119
o121.Part1 = o116
o122.Parent = o1
o122.Material = Enum.Material.Neon
o122.BrickColor = BrickColor.new("Alder")
o122.Position = Vector3.new(-5.19031334, 3.95214534, -10.2693834)
o122.Rotation = Vector3.new(-180, 0, -90)
o122.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o122.Velocity = Vector3.new(3.11360072e-21, 0.103487223, 4.51553938e-21)
o122.CanCollide = false
o122.Locked = true
o122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o122.CFrame = CFrame.new(-5.19031334, 3.95214534, -10.2693834, -7.84991971e-06, 1.0000006, 6.83837698e-07, 1.00000095, 8.29694363e-06, 4.76837067e-06, 4.85777537e-06, 5.58190891e-07, -1.00000107)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.705882, 0.501961, 1)
o122.Position = Vector3.new(-5.19031334, 3.95214534, -10.2693834)
o122.Velocity = Vector3.new(3.11360072e-21, 0.103487223, 4.51553938e-21)
o123.Parent = o122
o123.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o123.MeshType = Enum.MeshType.Brick
o124.Name = "Part_Weld"
o124.Parent = o122
o124.C0 = CFrame.new(-3.57866549, 10.0331469, 14.6449938, 7.54979013e-08, 1, -1.50995803e-07, 1, -7.54979084e-08, -5.96046341e-08, -5.96046448e-08, -1.50995803e-07, -1)
o124.C1 = CFrame.new(-10.4768772, 1.82880092, 14.6449928, -0.866039455, 0.499975681, 1.01304217e-07, 0.499975681, 0.866039455, 1.15867891e-07, -2.98023224e-08, 1.50995803e-07, -1)
o124.Part0 = o122
o124.Part1 = o119
o125.Parent = o1
o125.Material = Enum.Material.Neon
o125.BrickColor = BrickColor.new("Alder")
o125.Position = Vector3.new(-5.23741388, 4.01984453, -10.2693815)
o125.Rotation = Vector3.new(-180, 0, 180)
o125.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o125.Velocity = Vector3.new(3.24099502e-21, 0.103487223, 4.6945012e-21)
o125.CanCollide = false
o125.Locked = true
o125.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o125.CFrame = CFrame.new(-5.23741388, 4.01984453, -10.2693815, -1.0000006, -3.59714031e-05, 6.42132477e-07, -3.6418438e-05, 1.00000095, 5.07036202e-06, -5.16633122e-07, 5.15975262e-06, -1.00000107)
o125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o125.Color = Color3.new(0.705882, 0.501961, 1)
o125.Position = Vector3.new(-5.23741388, 4.01984453, -10.2693815)
o125.Velocity = Vector3.new(3.24099502e-21, 0.103487223, 4.6945012e-21)
o126.Parent = o125
o126.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o126.MeshType = Enum.MeshType.Brick
o127.Name = "Part_Weld"
o127.Parent = o125
o127.C0 = CFrame.new(-10.0801458, -3.6466527, 14.6449938, -1, -2.80459699e-05, 1.01303236e-07, -2.80459699e-05, 1, 1.50998645e-07, -1.01307471e-07, 1.50995803e-07, -1)
o127.C1 = CFrame.new(-3.57866549, 10.0331469, 14.6449938, 7.54979013e-08, 1, -1.50995803e-07, 1, -7.54979084e-08, -5.96046341e-08, -5.96046448e-08, -1.50995803e-07, -1)
o127.Part0 = o125
o127.Part1 = o122
o128.Parent = o1
o128.Material = Enum.Material.Neon
o128.BrickColor = BrickColor.new("Alder")
o128.Position = Vector3.new(-5.26491404, 4.0083437, -10.2693815)
o128.Rotation = Vector3.new(-180, 0, 135)
o128.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o128.Velocity = Vector3.new(3.21935302e-21, 0.103487223, 4.66325615e-21)
o128.CanCollide = false
o128.Locked = true
o128.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o128.CFrame = CFrame.new(-5.26491404, 4.0083437, -10.2693815, -0.707081914, -0.707132578, 5.49351853e-07, -0.707133055, 0.707081795, 5.07036111e-06, -3.94820654e-06, 3.34878973e-06, -1.00000107)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.705882, 0.501961, 1)
o128.Position = Vector3.new(-5.26491404, 4.0083437, -10.2693815)
o128.Velocity = Vector3.new(3.21935302e-21, 0.103487223, 4.66325615e-21)
o129.Parent = o128
o129.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o129.MeshType = Enum.MeshType.Brick
o130.Name = "Part_Weld"
o130.Parent = o128
o130.C0 = CFrame.new(-4.57674551, -9.71762657, 14.6449928, -0.70708704, -0.707126498, 3.04639869e-08, -0.707126498, 0.70708704, 2.44011972e-07, -1.94088017e-07, 1.50995803e-07, -1)
o130.C1 = CFrame.new(-10.0801458, -3.6466527, 14.6449938, -1, -2.80459699e-05, 1.01303236e-07, -2.80459699e-05, 1, 1.50998645e-07, -1.01307471e-07, 1.50995803e-07, -1)
o130.Part0 = o128
o130.Part1 = o125
o131.Parent = o1
o131.Material = Enum.Material.Neon
o131.BrickColor = BrickColor.new("Alder")
o131.Position = Vector3.new(-5.26491499, 4.00834417, -10.2693815)
o131.Rotation = Vector3.new(-180, 0, 135)
o131.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o131.Velocity = Vector3.new(3.21935382e-21, 0.103487223, 4.66325736e-21)
o131.CanCollide = false
o131.Locked = true
o131.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o131.CFrame = CFrame.new(-5.26491499, 4.00834417, -10.2693815, -0.707081914, -0.707132578, 5.49351853e-07, -0.707133055, 0.707081795, 5.07036111e-06, -3.94820654e-06, 3.34878973e-06, -1.00000107)
o131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o131.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o131.Color = Color3.new(0.705882, 0.501961, 1)
o131.Position = Vector3.new(-5.26491499, 4.00834417, -10.2693815)
o131.Velocity = Vector3.new(3.21935382e-21, 0.103487223, 4.66325736e-21)
o132.Parent = o131
o132.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o132.MeshType = Enum.MeshType.Brick
o133.Name = "Part_Weld"
o133.Parent = o131
o133.C0 = CFrame.new(-4.57674551, -9.71762657, 14.6449928, -0.70708704, -0.707126498, 3.04639869e-08, -0.707126498, 0.70708704, 2.44011972e-07, -1.94088017e-07, 1.50995803e-07, -1)
o133.C1 = CFrame.new(-4.57674551, -9.71762657, 14.6449928, -0.70708704, -0.707126498, 3.04639869e-08, -0.707126498, 0.70708704, 2.44011972e-07, -1.94088017e-07, 1.50995803e-07, -1)
o133.Part0 = o131
o133.Part1 = o128
o134.Parent = o1
o134.Material = Enum.Material.SmoothPlastic
o134.BrickColor = BrickColor.new("Institutional white")
o134.Position = Vector3.new(-5.1693058, 4.66037607, -10.3093281)
o134.Rotation = Vector3.new(30, 90, 0)
o134.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o134.Velocity = Vector3.new(4.44727679e-21, 0.103487223, 6.39993437e-21)
o134.CanCollide = false
o134.Locked = true
o134.Size = Vector3.new(0.200000003, 0.494449973, 0.200000003)
o134.CFrame = CFrame.new(-5.1693058, 4.66037607, -10.3093281, -3.3740148e-06, -7.26962935e-06, 1.00000095, 0.500004888, 0.866023839, 8.27409349e-06, -0.86602366, 0.500004947, 6.30215709e-07)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.972549, 0.972549, 0.972549)
o134.Position = Vector3.new(-5.1693058, 4.66037607, -10.3093281)
o134.Velocity = Vector3.new(4.44727679e-21, 0.103487223, 6.39993437e-21)
o135.Parent = o134
o135.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o136.Name = "Part_Weld"
o136.Parent = o134
o136.C0 = CFrame.new(10.5048914, -11.0150871, 10.0121317, -4.37113883e-08, 0.500000119, -0.866025329, 0, 0.866025329, 0.500000119, 1, 2.18556995e-08, -3.78551697e-08)
o136.C1 = CFrame.new(15.1651602, -3.78999591, 10.2126322, -4.37113883e-08, -2.08616257e-07, -1, 0, 1, -2.08616257e-07, 1, -9.11890599e-15, -4.37113883e-08)
o136.Part0 = o134
o136.Part1 = o137
o137.Parent = o1
o137.Material = Enum.Material.SmoothPlastic
o137.BrickColor = BrickColor.new("Institutional white")
o137.Position = Vector3.new(-5.369802, 4.16347218, -9.74921703)
o137.Rotation = Vector3.new(0, 90, 0)
o137.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o137.Velocity = Vector3.new(3.49891947e-21, 0.103487223, 5.07340808e-21)
o137.CanCollide = false
o137.Locked = true
o137.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o137.CFrame = CFrame.new(-5.369802, 4.16347218, -9.74921703, 7.0697871e-07, -7.96083532e-06, 1.00000095, 4.66604752e-06, 1.00000107, 8.25223742e-06, -1.00000095, 4.81505913e-06, 6.24359359e-07)
o137.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o137.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o137.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o137.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o137.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o137.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o137.Color = Color3.new(0.972549, 0.972549, 0.972549)
o137.Position = Vector3.new(-5.369802, 4.16347218, -9.74921703)
o137.Velocity = Vector3.new(3.49891947e-21, 0.103487223, 5.07340808e-21)
o138.Parent = o137
o138.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o139.Name = "part_Weld"
o139.Parent = o137
o139.C0 = CFrame.new(15.1651602, -3.78999591, 10.2126322, -4.37113883e-08, -2.08616257e-07, -1, 0, 1, -2.08616257e-07, 1, -9.11890599e-15, -4.37113883e-08)
o139.C1 = CFrame.new(-10.0476599, -3.95599866, 15.1500025, -1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, 1, -1.50995803e-07, 0, -1.50995803e-07, -1)
o139.Part0 = o137
o139.Part1 = o140
o140.Name = "part"
o140.Parent = o1
o140.BrickColor = BrickColor.new("Institutional white")
o140.Position = Vector3.new(-5.20483255, 4.32947445, -9.76437378)
o140.Rotation = Vector3.new(-180, 0, 180)
o140.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o140.Velocity = Vector3.new(3.81165755e-21, 0.103487223, 5.51889129e-21)
o140.CanCollide = false
o140.Locked = true
o140.Size = Vector3.new(0.5, 0.349999934, 1)
o140.CFrame = CFrame.new(-5.20483255, 4.32947445, -9.76437378, -1.00000095, -8.11183145e-06, 7.50689708e-07, -8.40323355e-06, 1.00000107, 4.72366855e-06, -6.6807155e-07, 4.87267971e-06, -1.00000095)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.972549, 0.972549, 0.972549)
o140.Position = Vector3.new(-5.20483255, 4.32947445, -9.76437378)
o140.Velocity = Vector3.new(3.81165755e-21, 0.103487223, 5.51889129e-21)
o141.Parent = o140
o141.MeshId = "rbxasset://fonts/rightarm.mesh"
o141.Scale = Vector3.new(1.10000002, 0.0500000007, 1.10000002)
o141.MeshType = Enum.MeshType.FileMesh
o142.Name = "Part_Weld"
o142.Parent = o140
o142.C0 = CFrame.new(-10.0476599, -3.95599866, 15.1500025, -1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, 1, -1.50995803e-07, 0, -1.50995803e-07, -1)
o142.C1 = CFrame.new(15.262166, -0.187239647, 10.0121317, -4.37113883e-08, -0.258819044, -0.965925813, 0, 0.965925813, -0.258819044, 1, -1.13133396e-08, -4.22219593e-08)
o142.Part0 = o140
o142.Part1 = o143
o143.Parent = o1
o143.Material = Enum.Material.SmoothPlastic
o143.BrickColor = BrickColor.new("Institutional white")
o143.Position = Vector3.new(-5.16930342, 4.50447655, -10.2207155)
o143.Rotation = Vector3.new(-15, 90, 0)
o143.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o143.Velocity = Vector3.new(4.15180609e-21, 0.103487223, 5.98524102e-21)
o143.CanCollide = false
o143.Locked = true
o143.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o143.CFrame = CFrame.new(-5.16930342, 4.50447655, -10.2207155, 2.74181366e-06, -7.49528408e-06, 1.00000095, -0.258814603, 0.965928137, 8.24092422e-06, -0.965928078, -0.258814454, 6.2584877e-07)
o143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o143.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o143.Color = Color3.new(0.972549, 0.972549, 0.972549)
o143.Position = Vector3.new(-5.16930342, 4.50447655, -10.2207155)
o143.Velocity = Vector3.new(4.15180609e-21, 0.103487223, 5.98524102e-21)
o144.Parent = o143
o144.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o145.Name = "Part_Weld"
o145.Parent = o143
o145.C0 = CFrame.new(15.262166, -0.187239647, 10.0121317, -4.37113883e-08, -0.258819044, -0.965925813, 0, 0.965925813, -0.258819044, 1, -1.13133396e-08, -4.22219593e-08)
o145.C1 = CFrame.new(16.2419701, 0.0502983332, -7.94692659, 0.836516261, -0.258819044, -0.482962906, 0.224143863, 0.965925813, -0.129409522, 0.5, 0, 0.866025388)
o145.Part0 = o143
o145.Part1 = o146
o146.Parent = o1
o146.Material = Enum.Material.SmoothPlastic
o146.BrickColor = BrickColor.new("Institutional white")
o146.Position = Vector3.new(-4.78165674, 4.5286274, -10.1813545)
o146.Rotation = Vector3.new(0, 30, -15)
o146.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o146.Velocity = Vector3.new(4.19631794e-21, 0.103487223, 6.05868601e-21)
o146.CanCollide = false
o146.Locked = true
o146.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o146.CFrame = CFrame.new(-4.78165674, 4.5286274, -10.1813545, 0.836519599, 0.224136516, 0.499999851, -0.258810073, 0.965929449, -1.18044682e-07, -0.482964188, -0.129404649, 0.86602664)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.972549, 0.972549, 0.972549)
o146.Position = Vector3.new(-4.78165674, 4.5286274, -10.1813545)
o146.Velocity = Vector3.new(4.19631794e-21, 0.103487223, 6.05868601e-21)
o147.Parent = o146
o147.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o148.Name = "Part_Weld"
o148.Parent = o146
o148.C0 = CFrame.new(16.2419701, 0.0502983332, -7.94692659, 0.836516261, -0.258819044, -0.482962906, 0.224143863, 0.965925813, -0.129409522, 0.5, 0, 0.866025388)
o148.C1 = CFrame.new(10.0673161, -3.5782373, -15.6519909, 1, -4.30663385e-05, -1.172316e-07, 4.30663385e-05, 1, 1.50990758e-07, 1.17225099e-07, -1.50995803e-07, 1)
o148.Part0 = o146
o148.Part1 = o149
o149.Parent = o1
o149.Material = Enum.Material.Neon
o149.BrickColor = BrickColor.new("Alder")
o149.Position = Vector3.new(-5.22432995, 3.95214033, -9.26238251)
o149.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o149.Velocity = Vector3.new(3.08968317e-21, 0.103487223, 4.51471866e-21)
o149.CanCollide = false
o149.Locked = true
o149.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o149.CFrame = CFrame.new(-5.22432995, 3.95214033, -9.26238251, 1.00000107, 3.51038834e-05, -6.55651093e-07, -3.48247704e-05, 1.00000119, -5.04560194e-06, 5.06639481e-07, 5.18911293e-06, 1.00000107)
o149.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o149.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o149.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o149.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o149.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o149.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o149.Color = Color3.new(0.705882, 0.501961, 1)
o149.Position = Vector3.new(-5.22432995, 3.95214033, -9.26238251)
o149.Velocity = Vector3.new(3.08968317e-21, 0.103487223, 4.51471866e-21)
o150.Parent = o149
o150.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o150.MeshType = Enum.MeshType.Brick
o151.Name = "Part_Weld"
o151.Parent = o149
o151.C0 = CFrame.new(10.0673161, -3.5782373, -15.6519909, 1, -4.30663385e-05, -1.172316e-07, 4.30663385e-05, 1, 1.50990758e-07, 1.17225099e-07, -1.50995803e-07, 1)
o151.C1 = CFrame.new(11.3833618, -11.522274, -7.94691992, 0.749999881, 0.500000119, -0.433012873, -0.433012575, 0.866025388, 0.250000417, 0.500000358, -2.72390196e-07, 0.866025209)
o151.Part0 = o149
o151.Part1 = o152
o152.Parent = o1
o152.Material = Enum.Material.SmoothPlastic
o152.BrickColor = BrickColor.new("Institutional white")
o152.Position = Vector3.new(-4.71052122, 4.66037846, -10.2224236)
o152.Rotation = Vector3.new(0, 30, 30)
o152.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o152.Velocity = Vector3.new(4.44521853e-21, 0.103487223, 6.41083312e-21)
o152.CanCollide = false
o152.Locked = true
o152.Size = Vector3.new(0.200000003, 0.494449973, 0.200000003)
o152.CFrame = CFrame.new(-4.71052122, 4.66037846, -10.2224236, 0.749996901, -0.433020055, 0.500000179, 0.500008941, 0.866021574, -3.8894359e-07, -0.43301031, 0.250004768, 0.866026461)
o152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o152.Color = Color3.new(0.972549, 0.972549, 0.972549)
o152.Position = Vector3.new(-4.71052122, 4.66037846, -10.2224236)
o152.Velocity = Vector3.new(4.44521853e-21, 0.103487223, 6.41083312e-21)
o153.Parent = o152
o153.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o154.Name = "part_Weld"
o154.Parent = o152
o154.C0 = CFrame.new(11.3833618, -11.522274, -7.94691992, 0.749999881, 0.500000119, -0.433012873, -0.433012575, 0.866025388, 0.250000417, 0.500000358, -2.72390196e-07, 0.866025209)
o154.C1 = CFrame.new(-9.74265862, -3.00500059, 15.1500006, -1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, 1, -1.50995803e-07, 0, -1.50995803e-07, -1)
o154.Part0 = o152
o154.Part1 = o155
o155.Name = "part"
o155.Parent = o1
o155.BrickColor = BrickColor.new("Institutional white")
o155.Position = Vector3.new(-4.89982414, 3.37847805, -9.76437759)
o155.Rotation = Vector3.new(-180, 0, 180)
o155.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o155.Velocity = Vector3.new(2.02210076e-21, 0.103487223, 2.99647914e-21)
o155.CanCollide = false
o155.Locked = true
o155.Size = Vector3.new(0.5, 0.349999934, 1)
o155.CFrame = CFrame.new(-4.89982414, 3.37847805, -9.76437759, -1.00000095, -8.07733795e-06, 7.4505806e-07, -8.3697114e-06, 1.00000119, 4.72867032e-06, -6.55651093e-07, 4.92008849e-06, -1.00000107)
o155.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o155.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o155.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o155.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o155.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o155.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o155.Color = Color3.new(0.972549, 0.972549, 0.972549)
o155.Position = Vector3.new(-4.89982414, 3.37847805, -9.76437759)
o155.Velocity = Vector3.new(2.02210076e-21, 0.103487223, 2.99647914e-21)
o156.Parent = o155
o156.MeshId = "rbxasset://fonts/rightarm.mesh"
o156.Scale = Vector3.new(0.100000001, 0.649999976, 1.10000002)
o156.MeshType = Enum.MeshType.FileMesh
o157.Name = "Part_Weld"
o157.Parent = o155
o157.C0 = CFrame.new(-9.74265862, -3.00500059, 15.1500006, -1, -1.50995803e-07, 2.27997332e-14, -1.50995803e-07, 1, -1.50995803e-07, 0, -1.50995803e-07, -1)
o157.C1 = CFrame.new(9.96975994, -4.31484985, -15.1752768, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o157.Part0 = o155
o157.Part1 = o158
o158.Parent = o1
o158.Material = Enum.Material.Neon
o158.BrickColor = BrickColor.new("Alder")
o158.Position = Vector3.new(-5.12693548, 4.68832588, -9.73909378)
o158.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o158.Velocity = Vector3.new(4.48633361e-21, 0.103487223, 6.47528656e-21)
o158.Locked = true
o158.Shape = Enum.PartType.Ball
o158.Size = Vector3.new(0.5, 0.5, 0.5)
o158.CFrame = CFrame.new(-5.12693548, 4.68832588, -9.73909378, 1.00000095, -7.92634182e-06, -7.45056866e-07, 8.21871527e-06, 1.00000119, -4.87966645e-06, 6.55650354e-07, 5.07108462e-06, 1.00000107)
o158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o158.Color = Color3.new(0.705882, 0.501961, 1)
o158.Position = Vector3.new(-5.12693548, 4.68832588, -9.73909378)
o158.Velocity = Vector3.new(4.48633361e-21, 0.103487223, 6.47528656e-21)
o159.Name = "Part_Weld"
o159.Parent = o158
o159.C0 = CFrame.new(9.96975994, -4.31484985, -15.1752768, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o159.C1 = CFrame.new(10.3135281, -1.51322389, -15.1661596, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1)
o159.Part0 = o158
o159.Part1 = o160
o160.Parent = o1
o160.Material = Enum.Material.SmoothPlastic
o160.BrickColor = BrickColor.new("Institutional white")
o160.Position = Vector3.new(-4.72762537, 4.50447845, -9.74821186)
o160.Rotation = Vector3.new(0, 0, -15)
o160.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o160.Velocity = Vector3.new(4.1405915e-21, 0.103487223, 5.99573224e-21)
o160.CanCollide = false
o160.Locked = true
o160.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o160.CFrame = CFrame.new(-4.72762537, 4.50447845, -9.74821186, 0.965928733, 0.258811623, -7.45056866e-07, -0.258811414, 0.965929091, -4.87966645e-06, -6.791837e-07, 5.06798642e-06, 1.00000107)
o160.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o160.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o160.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o160.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o160.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o160.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o160.Color = Color3.new(0.972549, 0.972549, 0.972549)
o160.Position = Vector3.new(-4.72762537, 4.50447845, -9.74821186)
o160.Velocity = Vector3.new(4.1405915e-21, 0.103487223, 5.99573224e-21)
o161.Parent = o160
o161.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o162.Name = "Part_Weld"
o162.Parent = o160
o162.C0 = CFrame.new(10.3135281, -1.51322389, -15.1661596, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1)
o162.C1 = CFrame.new(6.06806517, -8.45348072, -15.1661596, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1)
o162.Part0 = o160
o162.Part1 = o163
o163.Parent = o1
o163.Material = Enum.Material.SmoothPlastic
o163.BrickColor = BrickColor.new("Institutional white")
o163.Position = Vector3.new(-4.63901281, 4.66037655, -9.74821091)
o163.Rotation = Vector3.new(0, 0, 30)
o163.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o163.Velocity = Vector3.new(4.43395587e-21, 0.103487223, 6.41252544e-21)
o163.CanCollide = false
o163.Locked = true
o163.Size = Vector3.new(0.200000003, 0.494449973, 0.200000003)
o163.CFrame = CFrame.new(-4.63901281, 4.66037655, -9.74821091, 0.86602211, -0.500007331, -7.45056866e-07, 0.500007689, 0.866022229, -4.87966645e-06, 3.10335213e-06, 4.06386243e-06, 1.00000107)
o163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o163.Color = Color3.new(0.972549, 0.972549, 0.972549)
o163.Position = Vector3.new(-4.63901281, 4.66037655, -9.74821091)
o163.Velocity = Vector3.new(4.43395587e-21, 0.103487223, 6.41252544e-21)
o164.Parent = o163
o164.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o165.Name = "Part_Weld"
o165.Parent = o163
o165.C0 = CFrame.new(6.06806517, -8.45348072, -15.1661596, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1)
o165.C1 = CFrame.new(-1.77061176, -3.92781997, -18.3610363, 0.750000238, 0.49999997, 0.433012396, -0.433012784, 0.866025448, -0.249999791, -0.499999613, 0, 0.866025627)
o165.Part0 = o163
o165.Part1 = o166
o166.Parent = o1
o166.Material = Enum.Material.SmoothPlastic
o166.BrickColor = BrickColor.new("Institutional white")
o166.Position = Vector3.new(-4.71052265, 4.66037512, -9.22850037)
o166.Rotation = Vector3.new(0, -30, 30)
o166.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o166.Velocity = Vector3.new(4.42161399e-21, 0.103487223, 6.41082383e-21)
o166.CanCollide = false
o166.Locked = true
o166.Size = Vector3.new(0.200000003, 0.494449973, 0.200000003)
o166.CFrame = CFrame.new(-4.71052265, 4.66037512, -9.22850037, 0.749996543, -0.433019847, -0.500000656, 0.50000459, 0.866023958, -8.33863669e-06, 0.433015913, -0.249995947, 0.866026282)
o166.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o166.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o166.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o166.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o166.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o166.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o166.Color = Color3.new(0.972549, 0.972549, 0.972549)
o166.Position = Vector3.new(-4.71052265, 4.66037512, -9.22850037)
o166.Velocity = Vector3.new(4.42161399e-21, 0.103487223, 6.41082383e-21)
o167.Parent = o166
o167.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o168.Name = "Part_Weld"
o168.Parent = o166
o168.C0 = CFrame.new(-1.77061176, -3.92781997, -18.3610363, 0.750000238, 0.49999997, 0.433012396, -0.433012784, 0.866025448, -0.249999791, -0.499999613, 0, 0.866025627)
o168.C1 = CFrame.new(1.57062054, -3.88087869, -18.3610344, 0.8365165, -0.258819014, 0.482962519, 0.224143893, 0.965925813, 0.129409403, -0.499999613, 0, 0.866025627)
o168.Part0 = o166
o168.Part1 = o169
o169.Parent = o1
o169.Material = Enum.Material.SmoothPlastic
o169.BrickColor = BrickColor.new("Institutional white")
o169.Position = Vector3.new(-4.78165913, 4.52862406, -9.26957417)
o169.Rotation = Vector3.new(0, -30, -15)
o169.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o169.Velocity = Vector3.new(4.17466383e-21, 0.103487223, 6.05867672e-21)
o169.CanCollide = false
o169.Locked = true
o169.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o169.CFrame = CFrame.new(-4.78165913, 4.52862406, -9.26957417, 0.836518884, 0.224136263, -0.500000656, -0.258814663, 0.965928078, -8.33863669e-06, 0.48296231, 0.129414618, 0.866026282)
o169.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o169.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o169.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o169.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o169.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o169.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o169.Color = Color3.new(0.972549, 0.972549, 0.972549)
o169.Position = Vector3.new(-4.78165913, 4.52862406, -9.26957417)
o169.Velocity = Vector3.new(4.17466383e-21, 0.103487223, 6.05867672e-21)
o170.Parent = o169
o170.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o171.Name = "Part_Weld"
o171.Parent = o169
o171.C0 = CFrame.new(1.57062054, -3.88087869, -18.3610344, 0.8365165, -0.258819014, 0.482962519, 0.224143893, 0.965925813, 0.129409403, -0.499999613, 0, 0.866025627)
o171.C1 = CFrame.new(-15.7826138, 4.16201735, -10.0121298, -4.37113883e-08, 0.500000119, 0.866025329, 0, 0.866025329, -0.500000119, -1, -2.18556995e-08, -3.78551697e-08)
o171.Part0 = o169
o171.Part1 = o172
o172.Parent = o1
o172.Material = Enum.Material.SmoothPlastic
o172.BrickColor = BrickColor.new("Institutional white")
o172.Position = Vector3.new(-5.16930723, 4.6603694, -9.16521931)
o172.Rotation = Vector3.new(-30, -90, 0)
o172.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o172.Velocity = Vector3.new(4.42010059e-21, 0.103487223, 6.39991619e-21)
o172.CanCollide = false
o172.Locked = true
o172.Size = Vector3.new(0.200000003, 0.494449973, 0.200000003)
o172.CFrame = CFrame.new(-5.16930723, 4.6603694, -9.16521931, -4.67896461e-06, -6.54160976e-06, -1.00000072, 0.499996424, 0.866028666, -8.32673868e-06, 0.866028786, -0.499996275, -6.55651093e-07)
o172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o172.Color = Color3.new(0.972549, 0.972549, 0.972549)
o172.Position = Vector3.new(-5.16930723, 4.6603694, -9.16521931)
o172.Velocity = Vector3.new(4.42010059e-21, 0.103487223, 6.39991619e-21)
o173.Parent = o172
o173.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o174.Name = "Part_Weld"
o174.Parent = o172
o174.C0 = CFrame.new(-15.7826138, 4.16201735, -10.0121298, -4.37113883e-08, 0.500000119, 0.866025329, 0, 0.866025329, -0.500000119, -1, -2.18556995e-08, -3.78551697e-08)
o174.C1 = CFrame.new(-14.0577393, -8.04348469, -10.0121298, -4.37113883e-08, -0.258819044, 0.965925813, 0, 0.965925813, 0.258819044, -1, 1.13133396e-08, -4.22219593e-08)
o174.Part0 = o172
o174.Part1 = o175
o175.Parent = o1
o175.Material = Enum.Material.SmoothPlastic
o175.BrickColor = BrickColor.new("Institutional white")
o175.Position = Vector3.new(-5.1693058, 4.50447226, -9.25383186)
o175.Rotation = Vector3.new(15, -90, 0)
o175.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o175.Velocity = Vector3.new(4.12884174e-21, 0.103487223, 5.9852293e-21)
o175.CanCollide = false
o175.Locked = true
o175.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o175.CFrame = CFrame.new(-5.1693058, 4.50447226, -9.25383186, 1.30428748e-06, -7.90323611e-06, -1.00000072, -0.25882405, 0.965925515, -8.29356941e-06, 0.965925574, 0.258824199, -6.60017747e-07)
o175.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o175.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o175.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o175.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o175.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o175.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o175.Color = Color3.new(0.972549, 0.972549, 0.972549)
o175.Position = Vector3.new(-5.1693058, 4.50447226, -9.25383186)
o175.Velocity = Vector3.new(4.12884174e-21, 0.103487223, 5.9852293e-21)
o176.Parent = o175
o176.Scale = Vector3.new(0.790749788, 1, 0.763249993)
o177.Name = "Part_Weld"
o177.Parent = o175
o177.C0 = CFrame.new(-14.0577393, -8.04348469, -10.0121298, -4.37113883e-08, -0.258819044, 0.965925813, 0, 0.965925813, 0.258819044, -1, 1.13133396e-08, -4.22219593e-08)
o177.C1 = CFrame.new(-10.0329962, -3.57909822, 14.6449976, -1, -4.30663385e-05, 2.98088239e-08, -4.30663385e-05, 1, -1.50994524e-07, -2.98023224e-08, -1.50995803e-07, -1)
o177.Part0 = o175
o177.Part1 = o178
o178.Parent = o1
o178.Material = Enum.Material.Neon
o178.BrickColor = BrickColor.new("Alder")
o178.Position = Vector3.new(-5.19032049, 3.95214605, -10.2693796)
o178.Rotation = Vector3.new(-180, 0, 180)
o178.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o178.Velocity = Vector3.new(3.11360193e-21, 0.103487223, 4.515541e-21)
o178.CanCollide = false
o178.Locked = true
o178.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o178.CFrame = CFrame.new(-5.19032049, 3.95214605, -10.2693796, -1.00000072, -5.10491955e-05, 7.13640077e-07, -5.13712621e-05, 1.00000095, 4.76837113e-06, -5.88203136e-07, 4.8577499e-06, -1.00000107)
o178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o178.Color = Color3.new(0.705882, 0.501961, 1)
o178.Position = Vector3.new(-5.19032049, 3.95214605, -10.2693796)
o178.Velocity = Vector3.new(3.11360193e-21, 0.103487223, 4.515541e-21)
o179.Parent = o178
o179.Scale = Vector3.new(0.523875356, 0.104347944, 0.606715083)
o179.MeshType = Enum.MeshType.Brick
o180.Name = "Part_Weld"
o180.Parent = o178
o180.C0 = CFrame.new(-10.0329962, -3.57909822, 14.6449976, -1, -4.30663385e-05, 2.98088239e-08, -4.30663385e-05, 1, -1.50994524e-07, -2.98023224e-08, -1.50995803e-07, -1)
o180.C1 = CFrame.new(-10.5231905, 1.87458968, 14.6449947, -0.866039455, 0.499975681, 1.01304217e-07, 0.499975681, 0.866039455, 1.15867891e-07, -2.98023224e-08, 1.50995803e-07, -1)
o180.Part0 = o178
o180.Part1 = o181
o181.Parent = o1
o181.Material = Enum.Material.Neon
o181.BrickColor = BrickColor.new("Alder")
o181.Position = Vector3.new(-5.20791769, 4.01134586, -10.2693815)
o181.Rotation = Vector3.new(-180, 0, -150)
o181.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o181.Velocity = Vector3.new(3.22500252e-21, 0.103487223, 4.67259505e-21)
o181.CanCollide = false
o181.Locked = true
o181.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o181.CFrame = CFrame.new(-5.20791769, 4.01134586, -10.2693815, -0.866044044, 0.499969155, 7.13637689e-07, 0.499968976, 0.866044462, 5.07036293e-06, 2.07053222e-06, 4.7625449e-06, -1.00000107)
o181.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o181.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o181.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o181.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o181.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o181.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o181.Color = Color3.new(0.705882, 0.501961, 1)
o181.Position = Vector3.new(-5.20791769, 4.01134586, -10.2693815)
o181.Velocity = Vector3.new(3.22500252e-21, 0.103487223, 4.67259505e-21)
o182.Parent = o181
o182.Scale = Vector3.new(0.200000003, 0.104347944, 0.606715083)
o182.MeshType = Enum.MeshType.Brick
o183.Name = "Part_Weld"
o183.Parent = o181
o183.C0 = CFrame.new(-10.5231905, 1.87458968, 14.6449947, -0.866039455, 0.499975681, 1.01304217e-07, 0.499975681, 0.866039455, 1.15867891e-07, -2.98023224e-08, 1.50995803e-07, -1)
o183.C1 = CFrame.new(-10.6715069, -0.88377738, 14.6449947, -0.965933084, 0.258791953, 1.0463188e-07, 0.258791953, 0.965933084, 1.28288306e-07, -6.78674184e-08, 1.50995803e-07, -1)
o183.Part0 = o181
o183.Part1 = o184
o184.Parent = o1
o184.Material = Enum.Material.Neon
o184.BrickColor = BrickColor.new("Alder")
o184.Position = Vector3.new(-5.23641634, 3.98884511, -10.2693815)
o184.Rotation = Vector3.new(-180, 0, -165)
o184.RotVelocity = Vector3.new(2.66000323e-21, -2.37422315e-23, -1.88177066e-21)
o184.Velocity = Vector3.new(3.18266122e-21, 0.103487223, 4.61206627e-21)
o184.CanCollide = false
o184.Locked = true
o184.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o184.CFrame = CFrame.new(-5.23641634, 3.98884511, -10.2693815, -0.965935826, 0.258784473, 6.75572551e-07, 0.258784175, 0.965936184, 5.07036248e-06, 8.04111892e-07, 5.12630731e-06, -1.00000107)
o184.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o184.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o184.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o184.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o184.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o184.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o184.Color = Color3.new(0.705882, 0.501961, 1)
o184.Position = Vector3.new(-5.23641634, 3.98884511, -10.2693815)
o184.Velocity = Vector3.new(3.18266122e-21, 0.103487223, 4.61206627e-21)
o185.Parent = o184
o185.Scale = Vector3.new(0.100000001, 0.104347944, 0.606715083)
o185.MeshType = Enum.MeshType.Brick
o186.Name = "Part_Weld"
o186.Parent = o184
o186.C0 = CFrame.new(-10.6715069, -0.88377738, 14.6449947, -0.965933084, 0.258791953, 1.0463188e-07, 0.258791953, 0.965933084, 1.28288306e-07, -6.78674184e-08, 1.50995803e-07, -1)
o186.C1 = CFrame.new(-10.0801458, -3.6466527, 14.6449938, -1, -2.80459699e-05, 1.01303236e-07, -2.80459699e-05, 1, 1.50998645e-07, -1.01307471e-07, 1.50995803e-07, -1)
o186.Part0 = o184
o186.Part1 = o5



--Melee

o1 = Instance.new("Model")
o2 = Instance.new("UnionOperation")
o3 = Instance.new("UnionOperation")
o4 = Instance.new("UnionOperation")
o5 = Instance.new("Part")
o6 = Instance.new("Model")
o7 = Instance.new("UnionOperation")
o8 = Instance.new("UnionOperation")
o9 = Instance.new("UnionOperation")
o10 = Instance.new("UnionOperation")
o11 = Instance.new("UnionOperation")
o12 = Instance.new("UnionOperation")
o13 = Instance.new("UnionOperation")
o14 = Instance.new("UnionOperation")
o15 = Instance.new("UnionOperation")
o16 = Instance.new("UnionOperation")
o17 = Instance.new("UnionOperation")
o18 = Instance.new("UnionOperation")
o1.Name = "Melee"
o1.Parent = game.ReplicatedStorage
o2.Parent = o1
o2.BrickColor = BrickColor.new("Really black")
o2.Material = "SmoothPlastic"
o2.Name = "Base"
o2.Position = Vector3.new(-5.77,5.32,-9.664)
o2.Orientation = Vector3.new(85.02,-89.81,-179.81)
o2.Anchored = true
o2.CanCollide = true
o2.Size = Vector3.new(0.41,0.099,9.001)
o3.Parent = o1
o3.BrickColor = BrickColor.new("Institutional white")
o3.Name = "Hitbox"
o3.Orientation = Vector3.new(90,-179.99,0)
o3.Position = Vector3.new(-5.54,7.912,-10.468)
o3.Anchored = true
o3.CanCollide = true
o3.Size = Vector3.new(0.247,4.837,1.603)
o4.Name = "Segments"
o4.Parent = o1
o4.BrickColor = BrickColor.new("Institutional white")
o4.Transparency = 0.05
o4.Orientation = Vector3.new(-4.99,-90,0.02)
o4.Position = Vector3.new(-5.827,4.664,-9.751)
o4.Anchored = true
o4.CanCollide = true
o4.Size = Vector3.new(0.25,7.949,0.105)
o5.Name = "Handle"
o5.Parent = o1
o5.BrickColor = BrickColor.new("Really black")
o5.Reflectance = 0.40000000596046
o5.Transparency = 1
o5.Position = Vector3.new(-5.89046288, 3.09279108, -9.7504921)
o5.Rotation = Vector3.new(-90.0299988, -85.0299988, 89.9899979)
o5.Anchored = true
o5.FormFactor = Enum.FormFactor.Custom
o5.Size = Vector3.new(0.500100017, 2.05800009, 0.776000023)
o5.CFrame = CFrame.new(-5.89046288, 3.09279108, -9.7504921, 1.5790607e-05, -0.0867413133, -0.996234536, -0.000304654473, -0.996230841, 0.08674106, -1, 0.000302136614, -4.21571312e-05)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Position = Vector3.new(-5.89046288, 3.09279108, -9.7504921)
o6.Name = "Rune"
o6.Parent = o1
o7.Parent = o6
o7.BrickColor = BrickColor.new("Alder")
o7.Material = "Neon"
o7.Transparency = 0.5
o7.Name = "Union"
o7.Orientation = Vector3.new(-48,179.87,-89.94)
o7.Position = Vector3.new(-5.536,8.062,-10.307)
o7.Anchored = true
o7.CanCollide = true
o7.Size = Vector3.new(0.0036,0.194,0.121)
o8.Parent = o6
o8.BrickColor = BrickColor.new("Alder")
o8.Material = "Granite"
o8.Transparency = 0.5
o8.Name = "Union"
o8.Orientation = Vector3.new(-48,179.87,-89.94)
o8.Position = Vector3.new(-5.536,8.062,-10.307)
o8.Anchored = true
o8.CanCollide = true
o8.Size = Vector3.new(0.0036,0.194,0.121)
o9.Parent = o6
o9.BrickColor = BrickColor.new("Alder")
o9.Material = "Neon"
o9.Transparency = 0.5
o9.Name = "Union"
o9.Orientation = Vector3.new(-34,0.08,89.74)
o9.Position = Vector3.new(-5.536,7.885,-10.305)
o9.Anchored = true
o9.CanCollide = true
o9.Size = Vector3.new(0.0036,0.194,0.121)
o10.Parent = o6
o10.BrickColor = BrickColor.new("Alder")
o10.Material = "Neon"
o10.Transparency = 0.5
o10.Name = "Union"
o10.Orientation = Vector3.new(0,180,-90)
o10.Position = Vector3.new(-5.536,8.104,-10.397)
o10.Anchored = true
o10.CanCollide = true
o10.Size = Vector3.new(0.0036,0.194,0.121)
o11.Parent = o6
o11.BrickColor = BrickColor.new("Alder")
o11.Material = "Neon"
o11.Transparency = 0.5
o11.Name = "Union"
o11.Orientation = Vector3.new(-68,0.3,89.56)
o11.Position = Vector3.new(-5.536,7.801,-10.376)
o11.Anchored = true
o11.CanCollide = false
o11.Size = Vector3.new(0.0036,0.194,0.121)
o12.Parent = o6
o12.BrickColor = BrickColor.new("Alder")
o12.Material = "Granite"
o12.Transparency = 0.5
o12.Name = "Union"
o12.Orientation = Vector3.new(-83,179.03,-89.14)
o12.Position = Vector3.new(-5.536,7.967,-10.265)
o12.Anchored = true
o12.CanCollide = true
o12.Size = Vector3.new(0.0036,0.194,0.121)
o13.Parent = o6
o13.BrickColor = BrickColor.new("Alder")
o13.Material = "Granite"
o13.Transparency = 0.5
o13.Name = "Union"
o13.Orientation = Vector3.new(-68,0.3,89.56)
o13.Position = Vector3.new(-5.536,7.801,-10.376)
o13.Anchored = true
o13.CanCollide = true
o13.Size = Vector3.new(0.0036,0.194,0.121)
o14.Parent = o6
o14.BrickColor = BrickColor.new("Alder")
o14.Material = "Neon"
o14.Transparency = 0.5
o14.Name = "Union"
o14.Orientation = Vector3.new(-83,179.03,-89.14)
o14.Position = Vector3.new(-5.536,7.967,-10.265)
o14.Anchored = true
o14.CanCollide = false
o14.Size = Vector3.new(0.0036,0.194,0.121)
o15.Parent = o6
o15.BrickColor = BrickColor.new("Alder")
o15.Material = "Neon"
o15.Transparency = 0.5
o15.Name = "Union"
o15.Orientation = Vector3.new(0,180,-90)
o15.Position = Vector3.new(-5.536,8.014,-10.346)
o15.Anchored = true
o15.CanCollide = false
o15.Size = Vector3.new(0.0036,0.194,0.121)
o16.Parent = o6
o16.BrickColor = BrickColor.new("Alder")
o16.Material = "Granite"
o16.Transparency = 0.5
o16.Name = "Union"
o16.Orientation = Vector3.new(0,180,-90)
o16.Position = Vector3.new(-5.536,8.014,-10.346)
o16.Anchored = true
o16.CanCollide = true
o16.Size = Vector3.new(0.0036,0.194,0.121)
o17.Parent = o6
o17.BrickColor = BrickColor.new("Alder")
o17.Material = "Granite"
o17.Transparency = 0.5
o17.Name = "Union"
o17.Orientation = Vector3.new(0,180,-90)
o17.Position = Vector3.new(-5.536,8.104,-10.397)
o17.Anchored = true
o17.CanCollide = true
o17.Size = Vector3.new(0.0036,0.194,0.121)
o18.Parent = o6
o18.BrickColor = BrickColor.new("Alder")
o18.Material = "Granite"
o18.Transparency = 0.5
o18.Name = "Union"
o18.Orientation = Vector3.new(-34,0.08,89.74)
o18.Position = Vector3.new(-5.536,7.885,-10.305)
o18.Anchored = true
o18.CanCollide = true
o18.Size = Vector3.new(0.0036,0.194,0.121)
--Effects--
Ef = Instance.new("Folder")
Ef.Parent = game.ReplicatedStorage
Ef.Name = "Effects"
Con = Instance.new("Part")
Conm = Instance.new("SpecialMesh")
Conm.MeshId = 'rbxassetid://703458158'
Conm.Parent = Con
Con.Size = Vector3.new(2,2,2)
Con.Name = "Cone"
Con.Parent = Ef
Crow = Instance.new("Part")
Cron = Instance.new("SpecialMesh")
Cron.MeshId = 'rbxassetid://1007757199'
CronSize = Vector3.new(1.866,0.71,2.155)
Cron.Parent = Crow
Crow.Name = "Crown"
Crow.Parent = Ef
Donu = Instance.new("Part")
Donn = Instance.new("SpecialMesh")
Donn.MeshId = 'rbxassetid://750104831'
Donn.Parent = Donu
Donu.Name = 'Donut'
Donu.Size = Vector3.new(1,0.25,1)
Donu.Parent = Ef
Rin = Instance.new("Part")
Rinm = Instance.new("SpecialMesh")
Rinm.MeshId = 'rbxassetid://471124075'
Rinm.Parent = Rin
Rin.Name = 'Ring'
Rin.Parent = Ef
Rin.Size = Vector3.new(1,0.25,1)
wait(2)
local Player = game.Players.LocalPlayer
repeat wait() until Player.Character
local Character = game.Workspace.non
local Mouse = Player:GetMouse()
local Landed = true
local Walking = true

--// Settings

local ComboResetTime = .125 --// Seconds it takes for the combo to reset if not clicked fast enough
local Max_Health = 150
local NotifyKeyPresses = false

--// Limbs and what not

local Torso = Character:WaitForChild'Torso'
local Head = Character:WaitForChild'Head'
local Left_Arm = Character:WaitForChild'Left Arm'
local Right_Arm = Character:WaitForChild'Right Arm'
local Left_Leg = Character:WaitForChild'Left Leg'
local Right_Leg = Character:WaitForChild'Right Leg'
local HumanoidRootPart = Character:WaitForChild'HumanoidRootPart'
local Humanoid = Character:WaitForChild'Humanoid'

--// Debounces

local trail=true
local DebounceHit = false
local DebounceKeyDown, DebounceState = false, false
local DebounceAFKAnimations = false

--// Other Things

local State, LastState, Mode = 'Idle', 'Normal'
Mode=LastState
local AFKAnimSequenceCount,MaxSequenceCount = 0, 200

--// Abbreiviations

local rbx = 'rbxassetid://'
local char,Char,plr,Plr = Character, Character, Player, Player
local mouse,ms = Mouse, Mouse
local cam,camera,Camera,Cam=workspace.CurrentCamera,workspace.CurrentCamera,workspace.CurrentCamera,workspace.CurrentCamera
local dkd, debkd = DebounceKeyDown, DebounceKeyDown
local dst, debst, ds, debs = DebounceState,DebounceState,DebounceState,DebounceState
local daa,dafk,debafk = DebounceAFKAnimations,DebounceAFKAnimations,DebounceAFKAnimations
local rs = game:service'RunService'
local lrs = rs.Stepped
local srs = rs.Stepped
local lleg,rleg = Left_Leg, Right_Leg
local larm,rarm = Left_Arm, Right_Arm
local hed,torr,torso = Head, Torso, Torso
local hum, root = Humanoid, HumanoidRootPart
local vec3,vec2 = Vector3.new, Vector2.new
local sin, cos, atan, rad, rand, rands = math.sin, math.cos, math.atan, math.rad, math.random, math.randomseed
local cf, ang, eu, v3 = CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ, Vector3.new
local bc,bcr,c3 = BrickColor.new,BrickColor.Random,Color3.new

--// Removals and error prevention

if Char:FindFirstChild'Animate' then
    local Anim = Char:WaitForChild'Animate'
    Anim.Disabled=true
end
local anims = Humanoid:GetPlayingAnimationTracks()   
for i, v in ipairs(anims) do v:Stop() end
print'Loading'
wait(2)

for Index, Object in next, Head:GetChildren() do
	if Object:IsA('Sound') then
		Object.Volume = 0
	end
end
if Char:FindFirstChild'Health' then
	ypcall(game.Destroy, Char.Health)
end

--// Base Functions

function Weld(to, from, c1)
    local New_Weld = Instance.new('Motor', to)
    New_Weld.Part0 = from
    New_Weld.Part1 = to
    New_Weld.C1 = c1
    return New_Weld
end

function clerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	 return cf(com1[1],com1[2],com1[3]) * ang(select(4,unpack(com1)))
end

function lerp(c1,c2,al)
    return c1:lerp(c2,al)
end

function snd(Id, Parent, PlayAsWell, OtherProperties)
	PlayAsWell=PlayAsWell or false
	OtherProperties=OtherProperties or {Volume=.5}
	local Sound = Instance.new('Sound')
	Sound.SoundId = rbx..Id
	for i,v in next, OtherProperties do
		pcall(function()
			Sound[i]=v
		end)
	end
	Sound.Parent=Parent
	Sound.Ended:connect(function()
		game.Debris:AddItem(Sound, 1)
	end)
	if PlayAsWell then
		Sound:Play()
	end
    return Sound
end

function FacePos(pos)
    local torso, torsoPos = torso, HumanoidRootPart.CFrame.p
    local torso = Char:FindFirstChild'Torso'
    if pos == 'mouse' or not pos then
        pos = CFrame.new(torsoPos, Vector3.new(mouse.Hit.X,torsoPos.Y,mouse.Hit.Z))
	else
		pos = CFrame.new(torsoPos, pos.p)
    end
    if torso then
        HumanoidRootPart.CFrame = lerp(HumanoidRootPart.CFrame,pos,.3)
    end
end

local function lwait(i, output)
	--[[ 
	i, output = i or 0, output or false
	local lrs = game:service'RunService'.Stepped
	local ifps = 1 / (i / lrs:wait())
	local total = 0
	for asd = 0, (i - ifps) / i, ifps / 1.6 do
		if output then
			warn(asd)
		end
		total = asd * i
		lrs:wait()
	end
	return total, (i / ifps) / ifps, ifps
	==]]
	return wait(i)
end

local function Tween(Object, Time, Style, Direction, Properties)
	local S = type(Style) == 'string' and Enum.EasingStyle[Style] or Style
	local D = type(Direction) == 'string' and Enum.EasingDirection[Direction] or Direction
	local TweenService = game:GetService("TweenService")
	local TweenData = TweenInfo.new(Time, S, D, 0, false, 0)
	local Result = TweenService:Create(Object, TweenData, Properties)
	Result:Play()
end

local walkspd = 16
local sine, change = 0, 1

--// Model

local Welds = {};
local Parts = {};

local function Join(Main, Parent) --// AutoWeld
	for Index, Object in next, Parent:GetChildren() do
		if Object:IsA('BasePart') then
			for i = 0, 5 do
				if Object:FindFirstChildOfClass('Weld') then
					Object:FindFirstChildOfClass('Weld'):Destroy()
				end
			end
			if Object ~= Main then
				Parts[#Parts + 1] = Object
				Object.Anchored, Object.CanCollide, Object.Locked = false, false, true
				local w = Weld(Main, Object, Main.CFrame:toObjectSpace(Object.CFrame))
				w.Name = Object.Name..':'..Main.Name
				w.Parent = script
				Welds[#Welds + 1] = {w, Main}
			else
				Parts[#Parts + 1] = Main
				Main.Anchored, Main.CanCollide, Main.Locked = false, false, true
			end
		end
	end
end

--game:GetService('StarterGui'):SetCoreGuiEnabled(3, false)

local RStorage = game:GetService('ReplicatedStorage');
local LG = RStorage:WaitForChild('Left', 5)
local RG = RStorage:WaitForChild('Right', 5)
local Melee = RStorage:WaitForChild('Melee', 5)

if LG == nil or RG == nil or Melee == nil then
	Character:BreakJoints()
	return
end

LG = LG:Clone()
RG = RG:Clone()
Melee = Melee:Clone()

local LHA, LHI = LG.Handle, LG.Hitbox
local RHA = RG.Handle
local SHA, SHI = Melee.Handle, Melee.Hitbox

local trailTop = Instance.new('Part')
trailTop.CFrame=SHI.CFrame*CFrame.new(0,-SHI.Size.Y/2,0)
trailTop.Size=Vector3.new(1,1,1)
trailTop.Transparency=1
trailTop.Color=Color3.new(1,0,0)
trailTop.Anchored=true

local trailBottom = Instance.new('Part')
trailBottom.CFrame=SHI.CFrame*CFrame.new(0,(SHI.Size.Y/2),0)
trailBottom.Size=Vector3.new(1,1,1)
trailBottom.Transparency=1
trailBottom.Color=Color3.new(0,1,0)
trailBottom.Anchored=true

trailTop.Parent=Melee
trailBottom.Parent=Melee

local TrailSettings = {
	Lifetime = .1,
	Transparency = NumberSequence.new(.5,1),
	Texture = 'rbxassetid://31270182',
	Color1 = ColorSequence.new(BrickColor.new'Alder'.Color,Color3.new(1,1,1)),
}

local A0 = Instance.new('Attachment', trailTop)
local A1 = Instance.new('Attachment', trailBottom)

local Trail = Instance.new('Trail', Character)
Trail.Attachment0 = A0
Trail.Attachment1 = A1
Trail.FaceCamera=false
Trail.Transparency = TrailSettings.Transparency
Trail.Texture = TrailSettings.Texture
Trail.Color = TrailSettings.Color1
Trail.Lifetime = TrailSettings.Lifetime

Join(LHA, LG)
Join(RHA, RG)
Join(SHA, Melee)
Join(SHA, Melee.Rune)

local MeshEffects = RStorage:WaitForChild('Effects'):Clone()
MeshEffects.Parent = nil

for Index, Array in next, Welds do
	Array[1].Parent = Array[2]
end

local Set = {
	['Really black'] = {Color = Color3.new(0, 0, 0), Material = 'Grass'};
	Others = {}--Color = Color3.new(0, 0, 0), Material = 'SmoothPlastic'};
};

local Exceptions = {};

for Index, Object in next, Parts do
	local Pardoned = false
	for Index, Model in next, Exceptions do
		if Object.Parent == Model then
			Pardoned = true
		end
	end
	if Object:IsA('BasePart') and not Pardoned then
		Object.Anchored, Object.Locked, Object.CanCollide = false, true, false
		if Object.ClassName:find('UnionOperation') then
			Object.UsePartColor = true
		end
		local WasSet = false
		for Look, Data in next, Set do
			if tostring(Object.BrickColor) == Look then
				WasSet = true
				for Index, Value in next, Data do
					pcall(function()
						Object[Index] = Value
					end)
				end
			end
		end
		if not WasSet then
			for Index, Value in next, Set.Others do
				pcall(function()
					Object[Index] = Value
				end)
			end
		end
	end
end

--// Welds

local llw = Weld(Left_Leg, Torso, cf(.5,2,0))
local rlw = Weld(Right_Leg, Torso, cf(-.5,2,0))
local raw = Weld(Right_Arm, Torso, cf(-1.5,0,0))
local law = Weld(Left_Arm, Torso, cf(1.5,0,0))
local torw = Weld(Torso, HumanoidRootPart, cf(0,0,0))
local hedw = Weld(Head, Torso, cf(0,-1.5,0))
local lhw = Weld(Left_Arm, LHA, cf(0,0,0))
local rhw = Weld(Right_Arm, RHA, cf(0,0,0)*ang(0,0,0))
local shw = Weld(Right_Arm, SHA, cf(0,-1,0)*ang(0,-rad(90),-rad(90)))

LG.Parent, RG.Parent, Melee.Parent = script, script, script

--[[ State Example: Arms Out
	raw.C0 = clerp(raw.C0, cf(0,.5,-.5)*ang(rad(90),0,0),.1)
	law.C0 = clerp(law.C0, cf(0,.5,-.5)*ang(rad(90),0,0),.1)
--]]

local keyz={};
local Used = {
	Executed={};
	Failed={};
};

local BindKey = function(Name, Key, Function)
	local keydown
	keyz[Key:upper()]=Name
	keydown = mouse.KeyDown:connect(function(key)
		if Key:lower() == key:lower() then
			local detect=dkd
			if dkd then
				table.insert(Used.Failed, {Name, Key, Function})        
			elseif not dkd and Walking then
				if NotifyKeyPresses then
					warn('executed('..Name..', "'..tostring(Key:upper())..'")')
				end
				Function(Name, Key)
				if NotifyKeyPresses then
					warn('ended('..Name..')')
				end
				table.insert(Used.Executed, {Name, Key, Function})
			elseif Walking then
				warn('You must Walking enabled to use this key')
			end
		end
	end)        
end

local pitches = {}
for i = -.1,.1,.01 do table.insert(pitches,1.5+i) end

--[[

BindKey('Attack Name', 'Key{Not case sensative}', function(AttackName, Key)
	ds,dkd = true,true
	for i = 0,1,.05 do
		local animspd = .1
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)
		
		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)
		lrs:wait()
		lrs:wait()
	end
	for i = 0,1,.05 do
		local animspd = .1
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)
		
		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)
		lrs:wait()
	end
	ds,dkd = false,false
end)

--]]

function rainb(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return c3(1, 1 - cos(secondary), 1 - sin(secondary))
    elseif section < 2 then
		return c3(1 - sin(secondary), 1, 1 - cos(secondary))
    else
        return c3(1 - cos(secondary), 1 - sin(secondary), 1)
    end
end

function showDmg(To, From, Txt, Others)
	local bc,c3=BrickColor.new,Color3.new
	local vec3,cf=Vector3.new,CFrame.new
	local rand=math.random
	local n = 2
	local lrs=game:service'RunService'.Stepped
	local Color = 'Pearl'
	local Clr_Raw = Color
	if Clr == nil then Clr = 'Pearl' end
	Clr = bc(Color).Color
	local Pert = Instance.new('Part', Character)
	Pert.Size = vec3(.2,.2,.2)
	Pert.Transparency = 1
	Pert.CanCollide = false
	Pert.Anchored = true
	Pert.CFrame = To:FindFirstChild'Head'.CFrame * cf(rand(-n,n),n,rand(-n,n))
	Pert.BrickColor = bc('Black')
	local Rod = nil
	if (Others.Rod ~= nil and Others.Rod == true) then
		Rod = Instance.new('Part', Character)
		local to,from = Pert.CFrame.p, From:WaitForChild'HumanoidRootPart'.CFrame.p
		local dist = (to-from).magnitude
		Rod.Size = vec3(.2,.2,dist)
		Instance.new('BlockMesh',Rod).Scale=vec3(.1,.1,1)
		Rod.CFrame = cf(to,from)*cf(0,0,-dist/2)
		Rod.Transparency = .5 or Rod.RodTrans
		Rod.CanCollide = false
		Rod.Anchored = true
		Rod.BrickColor = bc(Clr_Raw)
	end
	local Gui = Instance.new('BillboardGui',Pert)
	Gui.Adornee = Pert
	local n2 = 10
	Gui.Size = UDim2.new(n2,0,n2,0)
	local TextL = Instance.new('TextLabel', Gui)
	local r,g,b = Clr.r,Clr.g,Clr.b
	local clr = c3(r,g,b)
	TextL.BackgroundTransparency = 1
	TextL.Font = 'SciFi'
	TextL.Size = UDim2.new(1,0,1,0)
	TextL.TextTransparency = .1
	TextL.TextStrokeTransparency = .2
	TextL.TextStrokeColor3 = clr
	TextL.Position = UDim2.new(0,0,0,0)
	Txt=tostring(Txt):upper()
	if string.find(Txt:lower(),'critical') or (Others.Crit ~= nil and Others.Crit == true)then
		Txt='(CRITICAL) // '..Txt
	end
	TextL.Text=Txt
	TextL.TextScaled = false
	TextL.FontSize = 'Size18'
	TextL.TextColor3 = Color3.new(1,1,1)
	local sp = Pert.CFrame*cf(rand(n,n*2),rand(n,n*2),rand(n,n*2)) --Pert.CFrame * cf(rand(-n,n),n,rand(-n,n))
	delay(.1,function()
		repeat lrs:wait()
			TextL.TextTransparency=TextL.TextTransparency+.005
			TextL.TextStrokeTransparency=TextL.TextStrokeTransparency+.005
			if Rod ~= nil then
				Rod.Transparency = Rod.Transparency + .0025
			end
			Pert.CFrame = Pert.CFrame:lerp(sp,.01)
			clr = c3(r,g,b)
			if Rod ~= nil then
				local to,from = Pert.CFrame.p, From:WaitForChild'HumanoidRootPart'.CFrame.p
				local dist = (to-from).magnitude
				Rod.Size = vec3(.2,.2,dist)
				Rod.CFrame = cf(to,from)*cf(0,0,-dist/2)
			end
			--TextL.TextColor3 = clr
		until TextL.TextTransparency>=1
		Pert:Destroy()
		if Rod ~= nil then
			Rod:Destroy()
		end
	end)
end

--// Example // showDmg(workspace.SavageMunkey, workspace.Base, 'Damage Dealt'..math.random(0,100), {Rod=false,RodTrans=0,Crit=false})

function CheckIfLanded()
	local Ray = Ray.new(root.Position,vec3(0,-1,0)*3.5)
	local Ignore = {Char}
	local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
	if Hit == nil then return false,nil end
	return true, Hit
end;

function FindNearestTorso(Position, Distance, SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= Char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

local function ExpellWithForce(Origin, Radius, Force, OnHit, Break, Ignore)
	Origin = Origin or Vector3.new()
	Origin = typeof(Origin) == 'Vector3' and Origin or Origin.p
	Ignore = Ignore or {};
	Ignore = typeof(Ignore) == 'table' and Ignore or {};
	Radius = Radius or 5
	Force = Force or 50
	if Break == nil then
		Break = true
	end
	OnHit = OnHit or function(Part, Distance) 
		--// oof
	end
	
	local SearchRegion = Region3.new(Origin - Vector3.new(Radius, Radius, Radius),Origin + Vector3.new(Radius, Radius, Radius))
	local Parts = workspace:FindPartsInRegion3WithIgnoreList(SearchRegion, Ignore, 100)
	
	for Index, Part in next, Parts do
		spawn(function()
			OnHit(Part, (Origin - Part.Position).magnitude)
		end)
		if not Part.Anchored then
			if Break then
				Part:BreakJoints()
			end
			local Direction = CFrame.new(Origin, Part.Position).lookVector * Force
			local Propell = Instance.new('BodyVelocity')
			Propell.Velocity = Direction
			Propell.Parent = Part
			spawn(function()
				game:GetService('RunService').Stepped:wait()
				Propell:Destroy()
			end)
		end
	end
end

function NewFXBox(name,prnt)
	if prnt == nil then
		prnt = Character
	end
	local FXBox = Instance.new('Model', prnt)
	FXBox.Name = 'FXBox'
	if name then
		FXBox.Name = name
	end
	local Count = 0
	local Check
	Check = FXBox.ChildAdded:connect(function(Object)
		if Object:IsA'BasePart' then
			FXBox.PrimaryPart = Object
			Check:disconnect()
		end
	end)
	return FXBox
end

function ReSurface(Part, Integer)
	if Part ~= nil and Part:IsA'BasePart' then
		Part.TopSurface = Integer
		Part.BottomSurface = Integer
		Part.LeftSurface = Integer
		Part.RightSurface = Integer
		Part.FrontSurface = Integer
		Part.BackSurface = Integer
	end
end

function ni(name,prnt)
	return Instance.new(tostring(name),prnt)
end

local FX = NewFXBox('FXBox', Character)
function NewObject(Type, prnt, others)
	if not prnt then prnt = workspace end
	local New = ni(Type)
	if New:IsA'BasePart' then
		ReSurface(New,10)
		New.Anchored = true
		New.Size = vec3(1,1,1)
		New.CanCollide = false
	end
	for i,v in next, others do
		local suc,err = pcall(function()
			New[i] = v
		end)
		if not suc then
			print(err)
		end
	end
	New.Parent = prnt
	return New
end

function NewPart(prnt)
	return NewObject('Part', prnt, {Anchored = true, Size = Vector3.new(1,1,1), CanCollide = false, CFrame = prnt:IsA'BasePart' and prnt.CFrame or CFrame.new(0,1,0)})
end

function OnHumanoidFind(Detector, Offset, Function, Range, Multi) --// R15 Support
    spawn(function()
        if not Multi then Multi = false end
        local PlayerModels={};
        local SearchAndStuff
        local First = true
        SearchAndStuff=function(Parent)
            for Index, Obj in next, Parent:children() do
                if Obj:IsA'Model' and Obj:FindFirstChild'Humanoid' then
                    if Obj:FindFirstChild'HumanoidRootPart' and (Obj.HumanoidRootPart.CFrame.p-(Detector.CFrame*Offset).p).magnitude <= Range and Obj~=char then
                        --print'derp'
                        table.insert(PlayerModels, Obj)
                        if First then
                            if not Multi then
                                First = false
                            end
                            pcall(function()
                                Obj.Health.Disabled = true
                            end)
                            spawn(function()
                                Function(Obj:WaitForChild'HumanoidRootPart', Obj:WaitForChild'Humanoid', Obj)
                            end)
                        end
                    end
                end
                SearchAndStuff(Obj)
            end
        end
        SearchAndStuff(workspace)
        return PlayerModels
    end)
end

function debri(item,time)
	return game:service'Debris':AddItem(item,time)
end

local effects={MagicCircles={};};
local trans={};
local grows={}

function effects:MagicCircle(waitt, id, Offset,clr,sz)
	sz=sz or 4.5
	local mcPart=NewObject('Part', FX,{Transparency=1,Size=vec3(sz,sz,.2)})
	debri(mcPart, 40)
	clr=clr or 'Pearl'
	local mesh=NewObject('BlockMesh',mcPart,{Scale=vec3(1,1,0)})
	local backDecal=NewObject('Decal',mcPart,{Color3=bc(clr).Color,Face='Back',Texture=rbx..id})
	local frontDecal=NewObject('Decal',mcPart,{Color3=bc(clr).Color,Face='Front',Texture=rbx..id})
	local r=rand()
	local dir=5
	if r>.5 then dir=-5 end
	spawn(function()
		repeat lwait() until frontDecal.Parent==nil mcPart:Destroy()
	end)
	table.insert(effects.MagicCircles, {mcPart,backDecal,frontDecal,dir})
	mcPart.CFrame = Offset
	delay(waitt,function() trans[backDecal]={.05,1} trans[frontDecal]={.05,1}end)
	return mcPart,frontDecal,backDecal
end

function effects:particle(waitt,mx,num, shape,Offset, clrz,cancollide)
	local sz={};
	if not clrz or #clrz < 1 then
		clrz={'Alder','Pearl'}
	end
	for i = .4,mx,.025 do table.insert(sz,i) end
	local tings={};
	for i = 1,num do
		local val = sz[rand(1,#sz)]
		local part=NewObject('Part', FX,{Material='Neon', CanCollide=cancollide,Shape=shape, Transparency=.6,Size=vec3(val,val,val),Color = bc(clrz[rand(1,#clrz)]).Color, CFrame = Offset*ang(rad(rand(-360,360)),rad(rand(-360,360)),rad(rand(-360,360)))})
		tings[i]=part
		delay(waitt,function() trans[part]={.05,1} end)
	end
	return tings
end

function effects:Debris(cancollide, radius, mx, num, pos, waitt,velocitymax)
	local Ray = Ray.new(pos+vec3(0,1,0),vec3(0,-1,0)*5)
	local Ignore = {FX,Character}
	local Hit, Pos, SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
	local tings={};
	if Hit then
		local sz={};
		for i = .2,mx,.025 do table.insert(sz,i) end
		for i = 1,num do
			local val = sz[rand(1,#sz)]
			local y = 45
			if not cancollide then y = 65 end
			local top,bottom=velocitymax[1],velocitymax[2]
			local x,z=rand(bottom,top),rand(bottom,top)
			local part=NewObject('Part', FX,{Anchored=false, Velocity = vec3(rand(-x,x),y,rand(-z,z)), Material=Hit.Material, CanCollide=cancollide, Transparency=Hit.Transparency,Size=vec3(val,val,val),Color = Hit.Color, CFrame = cf(pos)*cf(rand(-radius,radius),0,rand(-radius,radius))*ang(rad(rand(-360,360)),rad(rand(-360,360)),rad(rand(-360,360)))})
			tings[i]=part
			if cancollide then
				delay(waitt,function() trans[part]={.05,1} end)
			end
		end
		return tings
	else
		--// Derp
	end
end

function effects:Crown(waitt, origin, sz, height,clr, others,ut)
	local props={CanCollide=false,Anchored=true,Size=vec3(sz,height,sz),Color = bc(clr).Color, CFrame = origin*ang(0,rad(rand(-360,360)),0)}
	for i,v in next, others do
		props[i]=v
	end
	local cr=MeshEffects.Crown:Clone()
	for i,v in next, props do
		if tostring(i)~='Parent' then
			pcall(function() cr[i]=v end)
		end
	end
	cr.Parent=FX
	delay(waitt,function() trans[cr]={ut,1} end)
	return cr
end

function effects:Ring(waitt, origin, sz, height,clr, slim, others,ut)
	local props={CanCollide=false,Anchored=true,Size=vec3(sz,height,sz),Color = bc(clr).Color, CFrame = origin*ang(0,rad(rand(-360,360)),0)}
	slim = slim or false
	others = others or {};
	for i,v in next, others do
		props[i]=v
	end
	local cr=MeshEffects[slim and 'Ring' or 'Donut']:Clone()
	for i,v in next, props do
		if tostring(i)~='Parent' then
			pcall(function() cr[i]=v end)
		end
	end
	cr.Parent=FX
	delay(waitt,function() trans[cr]={ut,1} end)
	return cr
end

function effects:BlastRad(cancollide, radius, num, mx, pos, waitt)
	local Ray = Ray.new(pos+vec3(0,1,0),vec3(0,-1,0)*5)
	local Ignore = {FX,Character}
	local Hit, Pos, SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
	local tings={};
	local org=mx/4
	mx=mx
	if Hit then
		local sz={};
		for i = .2,num,.025 do table.insert(sz,i) end
		for i = 1,360,mx do
			local val = sz[rand(1,#sz)]
			local function rr()
				local vlz={}
				for i = .45,1,.025 do table.insert(vlz,i) end
				return vlz[rand(1,#vlz)]
			end
			local part=NewObject('Part', FX,{Material=Hit.Material, CanCollide=cancollide, Transparency=Hit.Transparency,Size=vec3(val/rr(),val/rr(),val/rr()),Color = Hit.Color, CFrame = cf(pos) * ang(0,rad(i),0)*cf(radius,(Hit.CFrame.Y+(Hit.Size.Y/2))-val,0)*ang(rad(rand(-360,360)),rad(rand(-360,360)),rad(rand(-360,360)))})
			tings[i]=part
			if cancollide then
				delay(waitt,function() trans[part]={.05,1} end)
			end
		end
		return tings
	else
		--// Derp
	end
end

--[[ examples
	effects:BlastRad(true, 15, 2, 18, pos, .5)
	
	effects:Debris(true, 2.5, 2, rand(10,20), pos, .5,{50,25})
	
	effects:MagicCircle(.15,124339738, cf(0,-1.5,0))
	
	effects:Particle(.5,1.2,rand(2,5),'Ball',cf(0,-1.5,0),{'Pearl','Pearl'})
--]]

function SetSwordTransparency(Transparency, Speed)
	Speed = Speed or .5
	for Index, Obj in next, Parts do
		if Obj:IsDescendantOf(Melee) and Obj ~= SHA and Obj ~= trailTop and Obj ~= trailBottom then
			Tween(Obj, Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {Transparency = Transparency})
		end
	end
	lwait(Speed)
end

function FadeSword(Type)
	if Type == 'Out' then
		snd(588738712,root,true)
		SetSwordTransparency(1, .5)
	elseif Type == 'In' then
		snd(588733880,root,true)
		SetSwordTransparency(0, .5)
	end
	if Type == 'In' or Type == 'Out' then
		--// asd
	else
		warn('Invalid Tween Type')
	end
end

local function CalculateArc(Smoothness, From, To)
	local PeakFactor = 5
	local Peak, To = (From - To).magnitude / PeakFactor, To - Vector3.new(0, From.Y, 0)
	local Algorithm = math.abs(2 * (Peak * 2 - From.Y + To.Y))
	local Fraction, Last, Return = (1 / (Peak * PeakFactor)) / Smoothness, From, {};
	for Integer = 0, 1, Fraction do
		local New = CFrame.new(From:lerp(To, Integer) + Vector3.new(0, -Algorithm * Integer ^ 2 + Algorithm * Integer + From.Y, 0))
		Return[#Return + 1] = New.p
	end
	return Return
end

local function DisplayArc(Arc)
	local Storage, Last = Instance.new('Folder', script), Arc[1]
	for Index, Point in next, Arc do
		if Index > 1 then
			local Part = Instance.new('Part')
			Part.Anchored = true
			Part.Material = 'Plastic'
			Part.BrickColor = BrickColor.new('Buttermilk')
			Part.TopSurface, Part.BottomSurface = 0, 0
			Part.CanCollide = false
			local Distance = (Last - Point).magnitude
			Part.Size = Vector3.new(.15, .15, Distance)
			Part.CFrame = CFrame.new(Point, Last) * CFrame.new(0, 0, -Distance / 2)
			Part.Parent = Storage
		end
		Last = Point
	end
	return Storage
end 

local function TweenC0(Obj, C0, Style, Direction, Time)
	local S = type(Style) == 'string' and Enum.EasingStyle[Style] or Style
	local D = type(Direction) == 'string' and Enum.EasingDirection[Direction] or Direction
	return Tween(Obj, Time, S, D, {C0 = C0})
end

local function TweenJoints(Array)
	local Style, Direction, Time = Array.Style, Array.Direction, Array.Time
	TweenC0(torw, CFrame.new(0,0,0) * Array.Torso_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	TweenC0(hedw, CFrame.new(0,0,0) * Array.Head_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	TweenC0(law, CFrame.new(0,0,0) * Array.Left_Arm_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	TweenC0(raw, CFrame.new(0,0,0) * Array.Right_Arm_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	TweenC0(rlw, CFrame.new(0,0,0) * Array.Right_Leg_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	TweenC0(llw, CFrame.new(0,0,0) * Array.Left_Leg_ * CFrame.Angles(0,0,0), Enum.EasingStyle[Style], Enum.EasingDirection[Direction], Time)
	lwait(Time)
end

BindKey('Shatter', 'g', function()
	local actual,floor = CheckIfLanded(5)
	if floor ~= nil then
		dkd,ds = true,true
		walkspd=0
		spawn(function()
			FadeSword'Out'
		end)
		spawn(function()
			TweenJoints{
				Style = 'Quad',
				Direction = 'InOut',
				Time = 2,
				Right_Arm_ = CFrame.new(0.465010166, -0.439316332, -0.871765137, 0.747874916, -0.654143095, 0.1130483, 0.493739158, 0.434284091, -0.753404915, 0.443739593, 0.619269013, 0.647766173),
				Left_Arm_ = CFrame.new(-0.170354724, -0.342900693, -0.237001896, 0.933956206, 0.284371793, 0.216468185, -0.290408731, 0.95689404, -0.00408667326, -0.208299309, -0.0590473711, 0.976281226),
				Right_Leg_ = CFrame.new(5.82933426e-05, -0.162627101, -0.864352643, 0.99999994, 5.28991222e-07, 8.41915607e-07, -7.22706318e-07, 0.963203788, 0.268772095, -6.85453415e-07, -0.268772036, 0.963203907),
				Left_Leg_ = CFrame.new(0.0951830149, 0.54995501, -0.323918521, 0.984639764, 0.100627825, 0.142683357, -0.0181532614, 0.871783793, -0.489554465, -0.173651829, 0.479444683, 0.860219717),
				Head_ = CFrame.new(-0.0422370695, 0.00290894508, -0.0818053484, 0.984639764, 0.0281961933, 0.172306329, -0.0181532614, 0.99805814, -0.0595857799, -0.173651829, 0.0555427074, 0.983239532),
				Torso_ = CFrame.new(0.0194549561, -0.49135685, -0.340732574, 0.984639764, -0.0181533415, -0.173651904, 0.131810531, 0.729528904, 0.671128631, 0.114500739, -0.683708429, 0.720715284),
			}
		end)
		local s2=snd(588697034,root)
		s2.Pitch=1
		s2:Play()
		for i = 1,3 do
			lwait(.4)
			local s = snd(588738949, root)
			s.Pitch=1+(i/3)
			s:Play()
			effects:MagicCircle(2, 124339738, Right_Arm.CFrame*cf(0,1.25+i,0)*ang(rad(90),0,0),'Alder',.4+(i*2))
		end
		lwait(1)
		local pe=effects:particle(.5,1.2,rand(2,5),'Cylinder',Right_Arm.CFrame*cf(0,1.25,0),{'Alder','Pearl'})
		for i,v in next, pe do
			v.Material='Neon'
			v.Transparency=.5
		end
		TweenJoints{
			Style = 'Bounce',
			Direction = 'Out',
			Time = .1,
			Right_Arm_ = CFrame.new(-0.0323668718, -0.33607614, -1.25630379, 0.91932112, -0.32731083, 0.218440875, 0.34712559, 0.413077384, -0.841944814, 0.185344651, 0.849843979, 0.493368685),
			Left_Arm_ = CFrame.new(-0.209303617, -0.521940768, 0.209407374, 0.936596692, 0.341231942, 0.0796716437, -0.350254416, 0.904899955, 0.24182263, 0.0104227364, -0.254395574, 0.967044115),
			Right_Leg_ = CFrame.new(-0.144759536, -0.00181019306, -0.561343014, 0.955083072, -0.217188269, -0.201608062, 0.221891105, 0.975071311, 0.000745773315, 0.196420282, -0.0454473495, 0.979466081),
			Left_Leg_ = CFrame.new(-0.314982504, 0.547448993, 0.130197883, 0.968778491, -0.198621765, 0.148383692, 0.246814638, 0.715970933, -0.653045356, 0.0234706104, 0.669279575, 0.742639899),
			Head_ = CFrame.new(0.181634739, 0.0164057016, -0.124970227, 0.991457701, -0.121056765, 0.0485501736, 0.124629587, 0.989057779, -0.0789446831, -0.0384620987, 0.0843212008, 0.995696187),
			Torso_ = CFrame.new(0.35552597, -0.773739338, -0.511285782, 0.919321179, 0.34712553, 0.185344562, -0.344054341, 0.480445355, 0.806721151, 0.190985352, -0.80540365, 0.561113119),
		}
		Tween(s2, .1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, {Volume=0,Pitch=0})
		lwait(.08)
		OnHumanoidFind(root, cf(0,0,0), function(proot,phum,body)
			local dmg = 0
			phum.Health = phum.Health - dmg
			showDmg(body, Character,  dmg, {Rod=true,RodTrans=0,Crit=math.random()>.85})
			phum.PlatformStand=proot:GetMass()<4 and true or false
			delay(1,function()
				phum.PlatformStand=false
			end)
		end, 15, true)
		ExpellWithForce(Right_Arm.CFrame*cf(0,-.5,0), 15, math.random(30,80), function(Part, Distance)
		end, false, {workspace:FindFirstChild'Base', Character})
		local cr=effects:Crown(.5, cf((Right_Arm.CFrame*cf(0,-.5,0)).p), 10, 1, tostring(floor.BrickColor),{Material=floor.Material},.2)
		local cr2=effects:Ring(0, cf((Right_Arm.CFrame*cf(0,-.5,0)).p), 10, 2, tostring(floor.BrickColor),false,{Material=floor.Material},.15)
		table.insert(grows,{{cr},vec3(4,0,4)*4,ang(0,rad(10),0)})
		table.insert(grows,{{cr2},vec3(2,0,2)*4,ang(0,0,0)})
		s2:Destroy()
		snd(610359590,root,true)
		snd(610359515,root,true)
		snd(471882019,root,true)
		snd(284228088,root,true)
		effects:Debris(true, 2.5, 2, rand(10,20), (Right_Arm.CFrame*CFrame.new(0,-1,0)).p, .5,{50,25})
		effects:BlastRad(true, 10, 4, 6, (Right_Arm.CFrame*cf(0,-1,0)).p, .5)
		lwait(.2)
		dkd,ds = false,false
		FadeSword'In'
	end
end)

local canmine=true
BindKey('Mine', 'x', function(an,key)
	if canmine then
		canmine=false
		ds,dkd = true,true
		walkspd=0
		TweenJoints{
			Style = 'Quint',
			Direction = 'In',
			Time = .1,
			Right_Arm_ = CFrame.new(0.206053138, -0.214844942, 4.48524952e-06, 0.950437307, -0.310916245, 3.57627869e-07, 0.310916275, 0.950437307, 4.52626892e-07, -4.47034836e-07, -3.27825546e-07, 0.99999994),
			Left_Arm_ = CFrame.new(-0.450706005, 0.440005541, -1.68257201, 0.674415231, 0.738352239, -3.22744e-08, 0, -4.37113883e-08, -1, -0.738352239, 0.674415231, -2.94796259e-08),
			Right_Leg_ = CFrame.new(4.7981739e-06, 1.08480453e-05, 3.81469727e-06, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994),
			Left_Leg_ = CFrame.new(-0.280058563, -0.0610874891, -0.665026188, 0.889047265, -0.112292051, 0.443835318, 4.33083471e-07, 0.969455719, 0.245275185, -0.457815409, -0.218061626, 0.861891985),
			Head_ = CFrame.new(0, -6.10351563e-05, 0, 0.560465097, 0, 0.828179061, 0, 1, 0, -0.828179061, 0, 0.560465097),
			Torso_ = CFrame.new(-1.1920929e-06, 0, 2.86102295e-06, 0.674415231, 0, -0.738352239, 0, 1, 0, 0.738352239, 0, 0.674415231),
		}

		for i=0,1,.1 do
			FacePos(old)
			lrs:wait()
		end

		lwait(.2)
		for i=0,1,.1 do
			FacePos(old)
		end

		local bl=NewPart(script)
		bl.Color=c3(0,0,0)
		bl.Size=Vector3.new(2,2,2)
		bl.CFrame=larm.CFrame*cf(0,-1.5,0)
		bl.Shape='Ball'
		bl.Material='Neon'
		bl.Transparency=.001
		local active=true
		spawn(function()
			game.Debris:AddItem(bl,25)
			delay(24,function()
				active=false
				local c=bl.CFrame
				bl.CanCollide=false
				Tween(bl,1,Enum.EasingStyle.Back,Enum.EasingDirection.In,{Size=Vector3.new(.05,.05,.05),CFrame=c,Transparency=1})
			end)
			local tic=0
			local ontouch
			ontouch=bl.Touched:connect(function(Hit)
				if not Hit:IsDescendantOf(Character) then
					bl.CanCollide=true
					OnHumanoidFind(bl, cf(0,0,0), function(proot,phum,body)
						local dmg = 0
						phum.Health = phum.Health - dmg
						hum.Health=hum.Health+15
						showDmg(body, Character,  'LIFE STEAL '..dmg, {Rod=true,RodTrans=0,Crit=false})
					end, 8, true)
					snd(144699494,root,true)
					snd(260433487,root,true)
					local neww=bl:Clone()
					neww.Color=c3(0,0,0)
					local c=bl.CFrame
					bl:Destroy()
					neww.Parent=script
					effects:particle(.5,7,rand(2,5),'Cylinder',c,{'Pearl','Alder'})
					for i = 0,8,.45 do
						neww.Transparency=neww.Transparency+.056274620146314
						neww.Size=neww.Size:lerp(Vector3.new(2+i,2+i,2+i),.2)
						neww.CFrame=c
						lrs:wait()
					end
					neww:Destroy()
					ontouch:disconnect()
					neww.CFrame=c
				end
			end)
			while lwait(.2) and bl and active do
				if bl.Parent~=nil then
					tic=tic+.1
					if tic > .65 then
						snd(171137312,bl,true)
						OnHumanoidFind(bl, cf(0,0,0), function(proot,phum,body)
							local took=0
							phum.Health = phum.Health - took
							--hum.Health=hum.Health+took
							showDmg(body, Character,  took, {Rod=true,RodTrans=0,Crit=false})
						end, 6, true)
						local cr=effects:Crown(.1, cf(bl.Position)*cf(0,-3,0), 1, .25, 'Pearl',{Material='Neon'},.05)
						local cr2=effects:Ring(.1, cf(bl.Position)*cf(0,-3.5,0), 2, .1, 'Pearl',true,{Material='Neon'},.05)
						table.insert(grows,{{cr,cr2},vec3(.05,.005,.05)*3,ang(0,rad(1),0)})
						tic=0
						local neww=bl:Clone()
						neww.Color=c3(1,1,1)
						neww.Parent=script
						local c=bl.CFrame
						spawn(function()
							for i = 0,3,.1 do
								neww.Transparency=neww.Transparency+.0333
								neww.Size=neww.Size:lerp(Vector3.new(2+i,2+i,2+i),.2)
								neww.CFrame=c
								lrs:wait()
							end
							neww:Destroy()
						end)
					end
				end
			end
			ontouch:disconnect()
		end)
		
		snd(171137312,root,true)
		snd(187747824,root,true)

		spawn(function()
			TweenJoints{
				Style = 'Back',
				Direction = 'Out',
				Time = .1,
				Right_Arm_ = CFrame.new(0.206047893, -0.21484524, 5.28991222e-06, 0.950437486, -0.310916156, 9.23871994e-07, 0.310916156, 0.950437367, 3.18055783e-07, -9.83476639e-07, -1.49011612e-08, 1.00000024), 
				Left_Arm_ = CFrame.new(0.333840013, 0.20000568, -0.701913893, 0.985808611, 0.140995234, 0.0911340564, -6.04101302e-08, 0.542838275, -0.839838743, -0.167884231, 0.827917576, 0.535135746),
				Right_Leg_ = CFrame.new(0.406761706, 0.198160172, -0.827177048, 0.861753821, 0.0901806355, -0.499247611, 0, 0.984074771, 0.177756459, 0.507326901, -0.153182313, 0.84803021),
				Left_Leg_ = CFrame.new(0.428323984, -0.535795689, -1.22677946, 0.797612667, 0.302806526, 0.521652818, -0.546524048, 0.728732705, 0.41263321, -0.255197555, -0.614223242, 0.74672997),
				Head_ = CFrame.new(0.106018938, 0.00909304619, 0.160875916, 0.97453934, -0.0714026541, -0.212544471, 0.0874781013, 0.993896961, 0.0672045946, 0.206448734, -0.0840865001, 0.97483778),
				Torso_ = CFrame.new(-0.0166940689, -0.179999828, -0.0304899216, 0.861753821, 0, 0.507326901, 0, 1, 0, -0.507326901, 0, 0.861753821),
			}
		end)
		local bv=Instance.new('BodyVelocity',root)
		bv.MaxForce=vec3(9e9,0,9e9)
		bv.Velocity=Head.CFrame.lookVector*-13
		game.Debris:AddItem(bv,.2)
		for i = 0,1,.2 do
			local ptc1 = effects:particle(.1,.5,3,'Block',Left_Leg.CFrame*cf(0,-1,0),{'Really black','Really black', 'Pearl'})
			local ptc2 = effects:particle(.1,.5,3,'Block',Right_Leg.CFrame*cf(0,-1,0),{'Really black','Really black', 'Pearl'})
			local ss=1.6
			table.insert(grows,{{ptc1},vec3(.2,0,.2),ang(rad(10),rad(10),rad(10))})
			table.insert(grows,{{ptc2},vec3(.2,.2,.2),ang(rad(10),rad(10),rad(10))})
			lrs:wait()
		end
		lwait()
		ds,dkd = false,false
		delay(0,function()
			canmine=true
		end)
	end
end)

local cangrab=true
local grabbed=false
BindKey('Ward (wip)', 'e', function(_,key)
	if not cangrab then return end
	ds,dkd = true,true
	walkspd = 7
	SetSwordTransparency(1,.1)
	local done=false
	local wld=nil
	spawn(function()
		repeat lrs:wait()
			local strt = Right_Arm.CFrame
			local rayray = Ray.new(strt.p, (strt.p - (strt * CFrame.new(0, 1, 0)).p).unit * 1)
			local hit, pp = workspace:FindPartOnRayWithIgnoreList(rayray, {Character})
			if hit then
				local first=true
				OnHumanoidFind(Right_Arm, cf(0,-1,0), function(proot,phum,body)
					if hit:IsDescendantOf(body) and first then
						first=false
						cangrab=false
						local olds={};
						spawn(function()
							local r
							r=function(p)
								for i,v in next, p:children() do
									if v:IsA'BasePart' then
										olds[v]=v.CustomPhysicalProperties
										v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
									end
									r(v)
								end
							end
							r(body)
						end)
						grabbed=true
						local dist=((Right_Arm.CFrame*cf(0,-1,0)).p-(Right_Arm.CFrame*Right_Arm.CFrame:toObjectSpace(hit.CFrame)).p).magnitude
						wld=Weld(Right_Arm,proot,cf(0,-1.25,0)*ang(-rad(90),rad(180),0))
						local ev
						ev=mouse.KeyDown:connect(function(k)
							if k==key then
								game.Debris:AddItem(wld,0)
								ev:disconnect()
							end
						end)
						spawn(function()
							while wld.Parent~= nil and lrs:wait() do
								phum.PlatformStand=true
							end
							grabbed=false
							cangrab=true
							for i,v in next, olds do
								pcall(function()
									i.CustomPhysicalProperties=v
								end)
							end
						end)
					end
				end, 10, true)
			end
		until done or grabbed
	end)
	TweenJoints{
		Style = 'Linear',
		Direction = 'Out',
		Time = .2,
		Right_Arm_ = CFrame.new(0.829519689, 0.381413698, -1.57987428, 0.374878913, -0.927073777, 4.05236804e-08, -0.00280904677, -0.00113593217, -0.99999547, 0.927069545, 0.374877214, -0.00303003029),
		Left_Arm_ = CFrame.new(-0.519713402, -0.873377562, -0.158320561, 0.739482224, 0.668240309, 0.0813785493, -0.665690601, 0.74387598, -0.0592175536, -0.100107282, -0.0103825331, 0.994922578),
		Right_Leg_ = CFrame.new(3.68356705e-05, -0.0779465437, -0.447928578, 1.00000942, -2.08616257e-07, 2.38418579e-07, -1.59139745e-07, 0.975493431, 0.220059082, -7.74860382e-07, -0.22006014, 0.97549367),
		Left_Leg_ = CFrame.new(0.246763051, -0.165307999, 5.43892384e-06, 0.97661984, 0.21497333, 1.34110451e-06, -0.21497333, 0.976619899, -5.21395123e-07, -1.43051147e-06, 2.16066837e-07, 1),
		Head_ = CFrame.new(-0.175744906, 0.0174450874, 0.14690578, 0.648833036, 0.1171887, -0.75185281, -0.00230547017, 0.988368213, 0.152063951, 0.76092732, -0.0969307423, 0.641555905),
		Torso_ = CFrame.new(-0.00162887573, -0.00289463997, 0.00579071045, 0.374878913, -0.0028091569, 0.927069545, 0.00280869659, 0.999994338, 0.00189410418, -0.92706871, 0.00189380953, 0.374884337),
	}
	lwait(.35)
	done=true
	SetSwordTransparency(0,.1)
	ds,dkd = false,false
end)

BindKey('Reap (Buggy, wip)', 'z', function()
	local actual,floor = CheckIfLanded(8)
	if actual then
		ds,dkd = true,true
		local og=root.CFrame.Y
		walkspd=0
		spawn(function()
			FadeSword'Out'
		end)
		TweenJoints{
			Style = 'Quint',
			Direction = 'InOut',
			Time = 1.35,
			Right_Arm_ = CFrame.new(-0.00888395309, 0.069206208, 0.582951427, 0.959281623, -0.28070721, 0.0313441679, 0.177029952, 0.683999717, 0.707676709, -0.220087633, -0.673311114, 0.705845058),
			Left_Arm_ = CFrame.new(-0.0156921148, 0.0312868953, 0.542969108, 0.965948522, 0.248420492, 0.0723837912, -0.223978251, 0.662671089, 0.714635015, 0.129563898, -0.706504285, 0.695749283),
			Right_Leg_ = CFrame.new(4.19616699e-05, 0.12218833, -0.250127792, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 0.999999881),
			Left_Leg_ = CFrame.new(4.19616699e-05, 0.867762089, 0.3243047, 1, 0, 0, 0, 0.664999247, -0.746844232, 0, 0.746844351, 0.664999068),
			Head_ = CFrame.new(-4.48642386e-05, 0.00383925438, 0.162792355, 0.999999106, 8.84015171e-05, -0.000454272929, -2.1958258e-06, 0.982483029, 0.186356097, 0.000462789234, -0.186356962, 0.982482672),
			Torso_ = CFrame.new(0, -0.9390347, -0.399072647, 1, -6.54393304e-08, -8.86936391e-08, -1.42846829e-07, 0.599315822, 0.800512612, -9.31322575e-10, -0.800511897, 0.599315286),
		}
		ExpellWithForce(root.CFrame*cf(0,-3,0), 15, -30, function(Part, Distance)
		end, false, {workspace:FindFirstChild'Base', Character})
		local cr2=effects:Ring(0, cf((Left_Leg.CFrame*cf(0,-.5,0)).p), 10, 2, tostring(floor.BrickColor),false,{Material=floor.Material},.15)
		table.insert(grows,{{cr2},vec3(2,0,2)*4,ang(0,0,0)})
		snd(875882348,root,true)
		snd(875881806,root,true)
		local bv=Instance.new('BodyVelocity',root)
		bv.MaxForce=vec3(0,9e9,0)
		bv.Velocity=vec3(0,300,0)
		game.Debris:AddItem(bv,.1)
		local pos=nil
		local can=false
		local elligable=false
		local done=false
		local failed=false
		local tem=0
		spawn(function()
			repeat lrs:wait()
				if root.CFrame.Y > og+15 then
					elligable=true
				end
				tem=tem+1
				if tem>300 then
					done=true
					print'rip'
					failed=true
				end
			until torso.Velocity.Y < 2 or tem>300
			done=true
			if root.CFrame.Y > og+30 then
				can=true
				pos=Instance.new('BodyPosition',root)
				pos.MaxForce=vec3(9e9,9e9,9e9)
				pos.Position=root.Position
			end
		end)
		TweenJoints{
			Style = 'Linear',
			Direction = 'InOut',
			Time = .05,
			Right_Arm_ = CFrame.new(0.0626385212, -0.413276285, -0.00104331132, 0.959853292, -0.280451715, -0.00532685313, 0.280474722, 0.959851921, 0.00428472133, 0.00391133083, -0.00560673419, 0.999975801),
			Left_Arm_ = CFrame.new(-0.0532609224, -0.383139998, 0.00133582728, 0.96501404, 0.26220125, 0.000218151894, -0.26220125, 0.96501267, 0.00172606739, 0.000242053007, -0.00172287039, 0.999997616),
			Right_Leg_ = CFrame.new(5.21838665e-05, 0.485050678, -1.44800735, 1, 3.20676759e-06, 6.05589264e-07, -3.39197777e-06, 0.894448161, 0.447186589, 8.90321246e-07, -0.447186172, 0.894447386),
 			Left_Leg_ = CFrame.new(4.14550304e-05, 0.00266909599, 3.84132045e-06, 1, -2.5306602e-07, -1.70181491e-09, -2.5306602e-07, 1, 1.3737008e-08, -1.70181491e-09, 1.3737008e-08, 0.999998212),
			Head_ = CFrame.new(0.000245878298, 0.0850384235, -0.496386617, 0.999999881, -0.000141030672, -0.000435515656, -1.17793134e-05, 0.943306148, -0.331931502, 0.000457633898, 0.33193022, 0.943304479),
			Torso_ = CFrame.new(0, -0.00287747383, 0, 1, -2.5306602e-07, -1.70181491e-09, -2.5306602e-07, 1, 1.3737008e-08, -1.70181491e-09, 1.3737008e-08, 0.999998212),
		}
		repeat lrs:wait() until elligable or failed
		if failed then
			print'oof1'
			FadeSword'In'
			ds,dkd = false,false
			game.Debris:AddItem(pos,.1)
			return
		end
		snd(610359515,root,true,{Pitch=.75,Volume=3})
		spawn(function()
			TweenJoints{
				Style = 'Quint',
				Direction = 'InOut',
				Time = 1,
				Right_Arm_ = CFrame.new(0.116997018, 1.7438519, -0.714151025, 0.0453877375, 0.961275458, -0.271829873, -0.988650799, 0.0042135613, -0.150176093, -0.143214807, 0.275561094, 0.950555861),
				Left_Arm_ = CFrame.new(-1.62301254, -1.07525158, 0.624707758, 0.00382485241, 0.935074449, 0.354432911, -0.999991775, 0.00296776183, 0.00296173617, 0.00171759352, -0.354441464, 0.935076714),
				Right_Leg_ = CFrame.new(4.78625298e-05, 0.171154499, -0.586177945, 1.00000024, -8.94069672e-08, -9.53674316e-07, 3.04044676e-07, 0.965367615, 0.260893703, 8.20373486e-07, -0.260893673, 0.965367556),
				Left_Leg_ = CFrame.new(0.432845116, -0.0829806328, -0.0325477421, 0.932780087, 0.35875231, 0.0347830057, -0.360428244, 0.928439498, 0.0900038332, -3.56324017e-06, -0.0964903384, 0.995342135),
				Head_ = CFrame.new(4.07677144e-05, 8.82148743e-06, -0.0030586943, 0.358160794, -2.70083547e-06, -0.933659971, -0.00284077972, 0.99999541, -0.00109264627, 0.933655679, 0.00304366648, 0.358159155),
				Torso_ = CFrame.new(0.0228919983, -0.487380266, -0.492824554, 0.390342087, 0.0503119566, 0.919294178, -0.920665801, 0.0243561249, 0.389591277, -0.00278935931, -0.998435676, 0.0558276772),
			}
		end)
		local ball = NewPart(script)
		ball.Parent=nil
		ball.CFrame=Left_Arm.CFrame*cf(0,-1,0)
		ball.Material='Neon'
		ball.Size=vec3(1,1,1)
		ball.BrickColor=bc'Alder'
		local msh=Instance.new('SpecialMesh',ball)
		msh.Scale=vec3(1,1,1)
		msh.MeshType='Sphere'
		ball.Parent=script
		local t=0
		snd(782199941,root,true)
		repeat lrs:wait() 
			t=t+1
			ball.CFrame=Left_Arm.CFrame*cf(0,-1,0)
			Tween(msh,.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Scale=msh.Scale+vec3(1,1,1)})
			if t>4 then
				local bl = NewPart(script)
				bl.Parent=nil
				bl.CFrame=Left_Arm.CFrame*cf(rand(-3,3),-1+rand(-3,3),rand(-3,3))
				bl.Material='Neon'
				bl.Size=vec3(2,2,2)
				bl.BrickColor=math.random()>.5 and bc'Alder' or bc'Pearl'
				local msh2=Instance.new('SpecialMesh',bl)
				msh2.MeshType='Sphere'
				msh2.Scale=vec3(1,1,1)
				bl.Parent=script
				Tween(bl,.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{CFrame=Left_Arm.CFrame*cf(0,-1,0)})
				Tween(msh2,.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Scale=vec3(0,0,0)})
				delay(.5, function()
					bl:Destroy()
				end)
			end
		until done
		if not can or failed then
			print'oof2'
			FadeSword'In'
			ds,dkd = false,false
			game.Debris:AddItem(pos,.1)
			game.Debris:AddItem(ball,.1)
			return
		end
		FadeSword'In'
		local beam = NewPart(script)
		beam.Parent=nil
		beam.Size=vec3(5,1,5)
		beam.CFrame=Left_Arm.CFrame*cf(0,-1,0)
		beam.Material='Neon'
		beam.BrickColor=bc'Alder'
		local cm = Instance.new('CylinderMesh',beam)
		beam.Parent=script
		local strt = root.CFrame
		local rayray = Ray.new(strt.p, (strt.p - (strt * CFrame.new(0, 1, 0)).p).unit * 9e9)
		local hit, pp = workspace:FindPartOnRayWithIgnoreList(rayray, {Character})
		pos.D=0
		pos.P=3e6
		snd(763717897,root,true)
		snd(395184130,root,true)
		snd(782353117,root,true)
		local tii=1
		Tween(cm,tii,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Scale=vec3(3,2048,3)})
		Tween(beam,tii,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{CFrame=Left_Arm.CFrame*cf(0,-1025,0)})
		Tween(pos,tii,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Position=pp+vec3(0,10,0)})
		lwait(tii)
		local ptc1 = effects:particle(.1,40,7,'Block',cf(pp+vec3(0,5,0)),{'Alder', 'Pearl'})
		local ptc2 = effects:particle(.1,40,15,'Cylinder',cf(pp+vec3(0,5,0)),{'Alder', 'Pearl'})
		for i,v in next, ptc1 do v.Material='Neon' end
		for i,v in next, ptc2 do v.Material='Neon' end
		table.insert(grows,{{ptc1},vec3(6,6,6),ang(rad(13),rad(13),rad(13))})
		table.insert(grows,{{ptc2},vec3(-4,4,-4),ang(rad(13),rad(13),rad(13))})
		lrs:wait()
		beam:Destroy()
		ball:Destroy()
		OnHumanoidFind(root, cf(0,0,0), function(proot,phum,body)
			local dmg = 0
			phum.Health = phum.Health - dmg
			pcall(function()
				showDmg(body, Character,  dmg, {Rod=false,RodTrans=0,Crit=math.random()>.9})
			end)
			phum.PlatformStand=proot:GetMass()<4 and true or false
			delay(1,function()
				phum.PlatformStand=false
			end)
		end, 30, true)
		ExpellWithForce(cf(pp), 25, 150, function(Part, Distance)
		end, false, {workspace:FindFirstChild'Base', Character})
		local cr=effects:Crown(2, cf(pp+vec3(0,5,0)), 5, 4, tostring(floor.BrickColor),{Material=floor.Material},.2)
		local cr2=effects:Ring(2, cf(pp+vec3(0,5,0)), 10, 5, tostring(floor.BrickColor),false,{Material=floor.Material},.15)
		table.insert(grows,{{cr},vec3(4,.1,4)*4,ang(0,rad(3),0)})
		table.insert(grows,{{cr2},vec3(2,0,2)*4,ang(0,0,0)})
		snd(875881806,root,true)
		snd(782353260,root,true)
		snd(284228088,root,true,{Volume=2})
		snd(782200047,root,true)
		snd(782202168,root,true)
		effects:Debris(false, 2.5, 7, rand(10,20), pp+vec3(0,2,0), .05,{50,25})
		effects:BlastRad(false, 15, 3, 6, pp+vec3(0,2,0), .05)
		ds,dkd = false,false
		hum.PlatformStand=false
		--[[TweenJoints{
			Style = 'Quint',
			Direction = 'Out',
			Time = .5,
			Right_Arm_ = cf(0,0,0),
			Left_Arm_ = cf(0,0,0),
			Right_Leg_ = cf(0,0,0),
			Left_Leg_ = cf(0,0,0),
			Head_ = cf(0,0,0),
			Torso_ = cf(0,0,0),
		}--]]
		game.Debris:AddItem(pos,.5)
	end
end)

local clsr=true
BindKey('Incinerate', 'q', function()
	if not clsr then return end
	clsr=false
	ds,dkd = true,true
	walkspd=0
	FadeSword'Out'
	spawn(function()
		TweenJoints{
			Style = 'Quint',
			Direction = 'Out',
			Time = .45,
			Right_Arm_ = CFrame.new(-0.231867522, 0.277298152, 0.793980241, 0.274041951, 0.959314048, -0.0679790825, 0.0029127209, -0.071512714, -0.997437716, -0.961713552, 0.273141831, -0.0223916993),
			Left_Arm_ = CFrame.new(-0.503219903, 0.412600666, -1.63814199, 0.586037755, 0.81028372, -3.54186263e-08, 0.00245406968, -0.00177494972, -0.99999547, -0.810280085, 0.586035132, -0.00302868057),
			Right_Leg_ = CFrame.new(-0.1793679, -0.194476008, -1.1458993e-05, 0.983692706, -0.17985943, 2.98023224e-08, 0.179859221, 0.983697474, -7.10133463e-09, -2.98023224e-08, -1.49011612e-08, 1.0000062),
			Left_Leg_ = CFrame.new(0.103276968, -0.0279527903, -0.087505281, 0.983025551, 0.0558601618, 0.174757063, -0.0549976081, 0.998438716, -0.00977835804, -0.17503038, 1.13807619e-06, 0.98456347),
			Head_ = CFrame.new(4.57763672e-05, 3.93390656e-06, -0.00303999148, 0.586037755, 0, 0.81028372, 0.00245406968, 0.99999547, -0.00177490606, -0.810280085, 0.00302865496, 0.586035132),
			Torso_ = CFrame.new(0.368801117, -0.00288367271, 0.00219345093, 0.586037755, 0.00245395955, -0.810280085, -0.00245499588, 0.999996245, 0.00125324936, 0.81027925, 0.00125479547, 0.586041093),
		}
	end)
	for i=0,1,.05 do
		FacePos'mouse'
		lrs:wait()
	end

	local beam = NewPart(script)
	beam.Parent=nil
	beam.CFrame=Right_Arm.CFrame*cf(0,-1,0)
	beam.Material='Neon'
	beam.BrickColor=bc'Alder'
	Instance.new('CylinderMesh',beam).Scale=Vector3.new(.05,1,.05)
	beam.Parent=script
	local canfrag=true
	spawn(function()
		while beam.Parent ~= nil and lwait(.25) do
			canfrag=true
		end
	end)
	snd(588734767,root,true,{Pitch=1.25})
	snd(588736245,root,true)
	local hums,bps = {},{};
	local ignore={Character};
	local replace
	for i=0, 2048, 50 do
		FacePos'mouse'
		local StartPos = Left_Arm.CFrame*cf(0,-1,0)
		local Ray = Ray.new(StartPos.p, (StartPos.p - (StartPos * CFrame.new(0, 1, 0)).p).unit * i)
		local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, ignore)
		local dist = Hit and not Hit:IsDescendantOf(Character) and (Pos-StartPos.p).magnitude or i
		beam.Size=vec3(.85,dist,1)
		beam.CFrame=StartPos*cf(0,-(dist/2),0)
		if Hit then
			local ptc2 = effects:particle(.1,2,1,'Block',cf(Pos),{'Really black',tostring(Hit.BrickColor), 'Pearl'})
			for i,v in next, ptc2 do v.Material='Neon' end
			table.insert(grows,{{ptc2},vec3(1,0,1),ang(rad(10),rad(10),rad(10))})
			if Hit and (Hit.Parent:FindFirstChildOfClass'Humanoid' or Hit.Parent.Parent:FindFirstChildOfClass'Humanoid') and #hums < 5 then
				if Hit:GetMass()<=4 then
					local bp = Instance.new('BodyPosition', Hit)
					game.Debris:AddItem(bp,10)
					local dist = (StartPos.p-Hit.Position).magnitude
					bp.Position=(StartPos*cf(0,-dist,1)).p
					spawn(function()
						while lwait() and bp.Parent ~= nil do
							local pos = ((replace or Left_Arm.CFrame)*cf(0,-1-dist,0)).p
							bp.Position=pos
						end
					end)
					table.insert(bps, bp)
				end
				local phum = Hit.Parent:FindFirstChildOfClass'Humanoid' or Hit.Parent.Parent:FindFirstChildOfClass'Humanoid' or Hit.Parent.Parent.Parent:FindFirstChildOfClass'Humanoid'
				table.insert(ignore,phum.Parent)
				hums[phum]=true
			end
		end
		lrs:wait()
	end
	local pos = Left_Arm.CFrame*cf(0,-1,0)
	ds,dkd = false,false
	replace=Left_Arm.CFrame
	FadeSword'In'
	
	local b2 = beam:Clone()
	b2.Mesh.Scale=vec3(2,1,2)
	b2.Transparency=.8
	local b3 = beam:Clone()
	b3.Mesh.Scale=vec3(.3,1,.3)
	b3.Transparency=1
	b2.Parent,b3.Parent=script,script
	
	Tween(b2.Mesh,.4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Scale=vec3(.45,1,.45)})
	Tween(b2,.4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Transparency=0})
	Tween(b3.Mesh,.4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Scale=vec3(3,1,3)})
	Tween(b3,.4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Transparency=.85})
	snd(763718573,root,true)
	lwait(.7)
	--b2:Destroy();b3:Destroy()
	snd(763717897, root, true)
	snd(782354294, root,true)
	
	for i = 1, 6, 1 do
		local effected={};
		for i,v in next, hums do
			local can=true
			for a,b in next, effected do
				if b==i then
					can=false
				end
			end
			if can then
				for a,b in next, bps do
					if b:IsDescendantOf(i.Parent) and (b.Position-i.Parent:WaitForChild'Head'.Position).magnitude < 6 then
						table.insert(effected,i)
						local dmgg = 0
						i:TakeDamage(dmgg)
						showDmg(i.Parent, Character,  dmgg, {Rod=false,RodTrans=0,Crit=rand()>.5})
						spawn(function()
							snd(588694531,i.Parent:WaitForChild'Head',true)
						end)
					end
				end
			end
		end
		local b4 = beam:Clone()
		b4.Mesh.Scale=vec3(2,1,2)
		b4.Transparency=.2
		b4.Parent=script

		local cone = MeshEffects.Cone:Clone()
		cone.CFrame = pos*cf(0,1.25,0)
		cone.Anchored=true
		cone.BrickColor=bc'Pearl'
		cone.CanCollide=false
		cone.Material='Neon'
		cone.Transparency=.2
		cone.Parent=script
		Tween(cone,.65,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Transparency = 1, Size=vec3(15,4,15)/2.5})

		local cone2 = MeshEffects.Cone:Clone()
		cone2.CFrame = pos*cf(0,1.5,0)
		cone2.Anchored=true
		cone2.BrickColor=bc'Alder'
		cone2.CanCollide=false
		cone2.Material='Neon'
		cone2.Transparency=.2
		cone2.Parent=script
		Tween(cone2,.65,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Transparency = 1, Size=vec3(15,4,15)/1.25})
		
		Tween(b4.Mesh,.65,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Scale=vec3(15,1,15)})
		Tween(b4,.65,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,{Transparency=1})
		delay(.65,function()
			b4:Destroy();cone:Destroy()
		end)
		lwait(.6)
	end
	b2:Destroy();b3:Destroy()
	for i,v in next, bps do
		v:Destroy()
	end
	delay(5,function()
		clsr=true
	end)
	beam:Destroy()
end)

BindKey('Buster', 'r', function(_,k)
	dkd,ds=true,true
	local fire=false
	local ev
	walkspd=0
	ev=mouse.KeyUp:connect(function(key)
		if k==key then
			fire=true
			ev:disconnect()
		end
	end)
	walkspd=0
	local tweened=false
	spawn(function()
		TweenC0(shw, cf(0,0,0)*ang(0,rad(45),rad(70)), 'Quint', 'Out', 1)
		TweenJoints{
			Style = 'Quint',
			Direction = 'Out',
			Time = 1,
			Right_Arm_ = CFrame.new(0.535389304, 0.15619868, -1.28274536, 0.680957854, -0.702149034, 0.208047509, 0.284585983, -0.00804074015, -0.958620548, 0.674766183, 0.711983562, 0.19434683),
			Left_Arm_ = CFrame.new(-1.80736709, 0.506341934, -1.62024987, 0.117187969, 0.993109763, -4.3410207e-08, 0, -4.37113883e-08, -1, -0.993109763, 0.117187969, -5.12244869e-09),
			Right_Leg_ = CFrame.new(-6.61611557e-06, -0.905116677, -1.40443158, 1, 7.5250864e-07, -5.30853868e-06, 4.43911813e-06, 0.440601975, 0.897702694, 3.02493572e-06, -0.897702754, 0.440601975),
			Left_Leg_ = CFrame.new(-0.244986176, 0.385205865, -0.7590608, 0.939282835, -0.0607775971, 0.337720811, -2.25848567e-07, 0.98419106, 0.177119762, -0.343143851, -0.166365743, 0.924440086),
			Head_ = CFrame.new(4.76837158e-07, 0, -2.86102295e-06, 0.117187969, 0, 0.993109763, 0, 1, 0, -0.993109763, 0, 0.117187969),
			Torso_ = CFrame.new(0.0551037788, -0.53477335, -1.43051147e-06, 0.117187969, 0, -0.993109763, 0, 1, 0, 0.993109763, 0, 0.117187969),
		}
		tweened=true
	end)
	repeat lrs:wait() FacePos'mouse' 
	until fire and tweened
	dkd,ds=false,false
	local to = mouse.Hit.p
	local from = (Left_Arm.CFrame*cf(0,-1.5,1.25)).p
	local Arc = CalculateArc(.5, from, to)
	--local Segment = DisplayArc(Arc)
	local Ball = NewObject('Part', script, {Size = vec3(2.5,2.5,2.5), Material='Neon', Color=bc'Alder'.Color, CFrame=cf(Arc[1]), Shape = 'Ball'})
	local msh=Instance.new('SpecialMesh',Ball)
	msh.MeshType='Sphere'
	msh.Scale=vec3(1,1,1)
	local loop=snd(228343433,Ball,true,{Pitch=2,Volume=3,Looped=true})
	snd(231917750,root,true,{Pitch=.9})
	local finished=false
	spawn(function()
		local t=0
		local lcf=Arc[1]
		repeat lrs:wait() 
			t=t+1
			Tween(msh,.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Scale=msh.Scale.Y < 5 and msh.Scale+vec3(1,1,1) or msh.Scale})
			if t > 10 then
				t=0
				local ri=effects:Ring(.5, cf(lcf,Ball.Position)*ang(rad(90),0,0), 1, .5, 'Alder', true,{Material='Neon'},.15)
				table.insert(grows,{{ri},vec3(.15,0,.15)*4,ang(0,0,0)})
			end
			lcf=Ball.Position
			spawn(function()
				local bl = NewPart(script)
				bl.Parent=nil
				local random = vec3(rand(-3,3),rand(-3,3),rand(-3,3))
				bl.CFrame=Ball.CFrame*cf(random*(msh.Scale.Y/2))
				bl.Material='Neon'
				bl.Size=vec3(1,1,1)
				bl.BrickColor=math.random()>.5 and bc'Alder' or bc'Pearl'
				local msh2=Instance.new('SpecialMesh',bl)
				msh2.MeshType='Sphere'
				msh2.Scale=msh.Scale/2
				bl.Parent=script
				Tween(bl,.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{CFrame=Ball.CFrame})
				Tween(msh2,.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,{Scale=vec3(0,0,0)})
				delay(.5, function()
					bl:Destroy()
				end)
			end)
		until finished
	end)
	for i,v in next, Arc do
		Tween(Ball, .025, 'Linear', 'InOut', {CFrame = cf(v)})
		lrs:wait()
	end
	finished=true
	Ball.Transparency=1
	loop:Stop()
	local strt = cf(to)*cf(0,3,0)
	local rayray = Ray.new(strt.p, (strt.p - (strt * CFrame.new(0, 1, 0)).p).unit * 10)
	local hit, pp = workspace:FindPartOnRayWithIgnoreList(rayray, {Character})
	game.Debris:AddItem(Ball,3)
	snd(610359515,Ball,true)
	local ptc1 = effects:particle(.1,.5,5,'Block', cf(to),{'Alder','Pearl'})
	local ptc2 = effects:particle(.1,.5,5,'Cylinder',cf(to),{'Alder', 'Pearl'})
	local ss=10
	for i,v in next, ptc1 do v.Material = 'Neon' Tween(v, .5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {Size=Vector3.new(ss,ss,ss)}) end
	for i,v in next, ptc2 do v.Material='Neon' Tween(v, .5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {Size=Vector3.new(ss,ss,ss)}) end
	OnHumanoidFind(Ball,cf(0,0,0), function(proot,phum,body)
		local dmg = math.random(0,0)
		phum.Health = phum.Health - dmg
		pcall(function()
			showDmg(body, Character,  dmg, {Rod=false,RodTrans=0,Crit=false})
		end)
		phum.PlatformStand=proot:GetMass()<4 and true or false
		delay(.25,function()
			phum.PlatformStand=false
		end)
	end, 20, true)
	ExpellWithForce(strt, 10, 15, function(Part, Distance)
	end, false, {workspace:FindFirstChild'Base', Character})
	local ri=effects:Ring(.5, cf(pp+vec3(0,0,0)), 3, 2, tostring(hit ~= nil and hit.BrickColor or 'Pearl'),false,{Material=hit ~= nil and hit.Material or 'Neon'},.15)
	local cr=effects:Crown(.5, cf(pp+vec3(0,0,0)), 7, 4, tostring(hit ~= nil and hit.BrickColor or 'Pearl'),{Material=hit ~= nil and hit.Material or 'Neon'},.15)
	table.insert(grows,{{ri},vec3(.5,0,.5)*4,ang(0,0,0)})
	table.insert(grows,{{cr},vec3(.5,0,.5)*4,ang(0,rad(3),0)})
	snd(782202168,Ball,true)
	snd(228343412,Ball,true)
	snd(231917742,Ball,true)
	effects:Debris(true, 2.5, 2, rand(5,10), to, .005,{50,25})
	--effects:BlastRad(true, 15, 3, 5, to, .05)
end)

function Attack4()
	dkd,ds = true,true
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	dkd,ds = false,false
end

function Attack2()
	dkd,ds = true,true
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	dkd,ds = false,false
end

function Attack3()
	dkd,ds = true,true
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .5,
		Right_Arm_ = cf(0,0,0),
		Left_Arm_ = cf(0,0,0),
		Right_Leg_ = cf(0,0,0),
		Left_Leg_ = cf(0,0,0),
		Head_ = cf(0,0,0),
		Torso_ = cf(0,0,0),
	}
	dkd,ds = false,false
end

function Attack1()
	dkd,ds = true,true
	TweenC0(shw, ang(0,-rad(180),rad(135)), 'Linear', 'Out', .05)
	TweenJoints{
		Style = 'Quint',
		Direction = 'Out',
		Time = .15,
		Right_Arm_ = CFrame.new(0.480937481, -0.623095155, 0.207057506, 0.829737663, -0.543632448, -0.126478553, 0.558150053, 0.808969557, 0.184476554, 0.00202971697, -0.223660082, 0.974669456),
		Left_Arm_ = CFrame.new(-0.223258257, -0.312400937, 0.592300892, 0.647217274, -0.554238617, -0.523383737, -0.253734976, 0.490803808, -0.833504915, 0.718839288, 0.672259688, 0.177026629),
		Right_Leg_ = CFrame.new(5.14984131e-05, -0.0270439386, -0.340497971, 1, 7.4505806e-09, -8.94069672e-08, -5.12227416e-09, 0.98540169, 0.170247093, -2.98023224e-08, -0.170247093, 0.985401392),
		Left_Leg_ = CFrame.new(-0.0214843154, 0.00267851353, -0.145123824, 0.956951261, -1.0477379e-09, 0.290260822, 1.86264515e-09, 1.00000489, -9.42964107e-09, -0.290262878, -9.54605639e-09, 0.956948757),
		Head_ = CFrame.new(3.81469727e-05, 4.17232513e-06, -0.00303199375, 0.584618986, 0, 0.811308026, 0.00245903619, 0.99999547, -0.00177195237, -0.811304271, 0.0030309523, 0.584616244),
		Torso_ = CFrame.new(0.00667190552, -0.00287604332, -0.000377655029, 0.584618986, 0.00245892606, -0.811304271, -0.00245809881, 0.999996245, 0.0012598458, 0.811303556, 0.00125774904, 0.584622204),
	}
	TweenC0(shw, ang(0,-rad(180),-rad(135)), 'Linear', 'Out', .4)
	snd(588693156,root,true)
	TweenJoints{
		Style = 'Linear',
		Direction = 'Out',
		Time = .15,
		Right_Arm_ = CFrame.new(1.22454464, -1.18362045, -0.306676567, 0.0752486736, -0.146807969, 0.98629868, 0.997097671, 0.02256638, -0.0727136135, -0.0115822516, 0.988907576, 0.148080021),
		Left_Arm_ = CFrame.new(-0.516955376, -0.73023963, -0.855697036, 0.655881882, 0.60047102, 0.457442462, -0.493600518, 0.799645245, -0.341944873, -0.571119547, -0.00151839852, 0.820865571),
		Right_Leg_ = CFrame.new(3.68356705e-05, -0.0779465437, -0.447924763, 1.00000942, -2.08616257e-07, 2.38418579e-07, -1.59139745e-07, 0.975493431, 0.220059082, -7.74860382e-07, -0.22006014, 0.97549367),
		Left_Leg_ = CFrame.new(0.246763051, -0.165307999, 7.34627247e-06, 0.97661984, 0.21497333, 1.34110451e-06, -0.21497333, 0.976619899, -5.21395123e-07, -1.43051147e-06, 2.16066837e-07, 1),
		Head_ = CFrame.new(-0.175744906, 0.017444849, 0.146904826, 0.648833036, 0.1171887, -0.75185281, -0.00230547017, 0.988368213, 0.152063951, 0.76092732, -0.0969307423, 0.641555905),
		Torso_ = CFrame.new(-0.00162887573, -0.00289463997, 0.00579071045, 0.374878913, -0.0028091569, 0.927069545, 0.00280869659, 0.999994338, 0.00189410418, -0.92706871, 0.00189380953, 0.374884337),
	}
	local poss = SHA.CFrame
	local offset = root.CFrame:toObjectSpace(SHA.CFrame)
	shw:Destroy()
	SHA.CFrame=poss
	SHA.Anchored=true
	local done=false
	local half=false
	OnHumanoidFind(SHA, cf(0,0,0), function(proot,phum,body)
		local dmg = 0
		phum.Health = phum.Health - dmg
		pcall(function()
			showDmg(body, Character,  dmg, {Rod=false,RodTrans=0,Crit=math.random()>.9})
		end)
	end, 7, true)
	spawn(function()
		while lwait(.5) and not done do
			OnHumanoidFind(SHA, cf(0,0,0), function(proot,phum,body)
				local dmg = 0
				phum.Health = phum.Health - dmg
				pcall(function()
					showDmg(body, Character,  dmg, {Rod=false,RodTrans=0,Crit=math.random()>.9})
				end)
			end, 7, true)
		end
	end)
	trail=true
	spawn(function()
		repeat lrs:wait();lrs:wait();lrs:wait()
			--local ptc1 = effects:particle(.1,.5,1,'Block', SHI.CFrame,{'Alder', 'Pearl'})
			local ptc2 = effects:particle(.1,.5,2,'Cylinder',SHI.CFrame,{'Alder', 'Pearl'})
			local ss=3.4
			--for i,v in next, ptc1 do Tween(v, 1, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, {Size=Vector3.new(ss,ss,ss)}) end
			for i,v in next, ptc2 do Tween(v, 1, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, {Size=Vector3.new(ss,ss,ss)}) end
		until done
	end)
	spawn(function()
		snd(233856097,root,true)
		local lp = snd(235097691,root,true,{Pitch=.45,Looped=true})
		for i = 0,360,10 do
			local set = (root.CFrame*cf(0,0,-1-(-1/(360/(360-i))))*ang(0,math.rad(i),0)*offset*ang(rad(i),0,rad(i*3))*cf(1.5,0,0))
			SHA.CFrame = set
			lrs:wait()
		end
		for i = 0,200,10 do
			local set = (root.CFrame*cf(0,0,-1/(360/(360-i)))*ang(0,math.rad(i),0)*offset*ang(rad(13),0,rad(i*3))*cf(6,0,0))
			SHA.CFrame = set
			lrs:wait()
		end
		half=true
		for i = 200,360,10 do
			local set = (root.CFrame*cf(0,0,-1/(360/(360-i)))*ang(0,math.rad(i),0)*offset*ang(rad(9),0,rad(i*3))*cf(6,0,0))
			SHA.CFrame = set
			lrs:wait()
		end
		lp:Destroy()
		done=true
		trail=false
	end)
	lwait(.3)
	TweenJoints{
		Style = 'Quint',
		Direction = 'In',
		Time = .3,
		Right_Arm_ = CFrame.new(0.998920679, 0.14364481, 1.68959856, 0.300145298, -0.618172228, 0.726481915, -0.0739984512, 0.74421227, 0.663831592, -0.951018989, -0.253004432, 0.177628011),
		Left_Arm_ = CFrame.new(-1.36803436, -0.0923654437, -1.48961067, 0.0884984732, 0.600464821, 0.794741571, -0.0683499575, 0.799651325, -0.596564591, -0.993728042, -0.00152620673, 0.111809149),
		Right_Leg_ = CFrame.new(0.10795176, 0.137223721, -0.322895944, 0.868303895, -0.172812983, -0.464955926, -0.00150111609, 0.936429739, -0.350851864, 0.496030331, 0.305344015, 0.812846243),
		Left_Leg_ = CFrame.new(0.24675554, -0.16530633, 1.2665987e-06, 0.976619899, 0.214973375, 3.57627869e-06, -0.21497333, 0.976620018, 1.66893005e-06, -3.1888485e-06, -2.38418579e-06, 1),
		Head_ = CFrame.new(0.0915586054, 0.0196099281, -0.111794382, 0.869667768, -0.0338301063, -0.492476821, 0.104621723, 0.987616539, 0.116908997, 0.482423246, -0.153195754, 0.862437844),
		Torso_ = CFrame.new(-0.315471649, -0.31086731, -0.393325806, 0.394115746, -0.218366832, 0.892742395, -0.170076683, 0.937257767, 0.304338545, -0.903187037, -0.271779239, 0.332248896),
	}
	snd(588693579,root,true)
	TweenJoints{
		Style = 'Linear',
		Direction = 'Out',
		Time = .2,
		Right_Arm_ = CFrame.new(0.0439815521, -0.135678574, -0.440430045, 0.806191146, 0.397307813, -0.438409001, -0.0213991497, 0.76008296, 0.649473667, 0.591268122, -0.514218271, 0.621274173),
		Left_Arm_ = CFrame.new(0.236092269, 0.785143495, 0.332070351, 0.558541417, -0.762449682, 0.326653212, 0.206355974, -0.253699929, -0.945015788, 0.803398728, 0.595236301, 0.0156343132),
		Right_Leg_ = CFrame.new(-0.351975918, -0.201288223, -0.3103953, 0.947356284, -0.32018137, 3.57627869e-06, 0.315506399, 0.93352598, 0.170250237, -0.0545143187, -0.161286473, 0.985400915),
		Left_Leg_ = CFrame.new(-0.178579241, 0.00266909599, -0.383025676, 0.642761528, -3.51574272e-08, 0.766066432, 7.49423634e-09, 1.00000024, 3.99304554e-08, -0.766066551, -1.94413587e-08, 0.64276135),
		Head_ = CFrame.new(3.9100647e-05, 3.93390656e-06, -0.00303199375, 0.584618986, 0, 0.811308026, 0.00245903619, 0.99999547, -0.00177195237, -0.811304271, 0.0030309523, 0.584616244),
		Torso_ = CFrame.new(0.00667190552, -0.00287604332, -0.000377655029, 0.584618986, 0.00245892606, -0.811304271, -0.00245809881, 0.999996245, 0.0012598458, 0.811303556, 0.00125774904, 0.584622204),
	}
	OnHumanoidFind(Left_Arm, cf(0,0,0), function(proot,phum,body)
		local dmg = 0
		phum.Health = phum.Health - dmg
		pcall(function()
			showDmg(body, Character,  dmg, {Rod=true,RodTrans=0,Crit=dmg>9})
		end)
	end, 10, true)
	repeat lrs:wait() until half
	TweenJoints{
		Style = 'Linear',
		Direction = 'Out',
		Time = .15,
		Right_Arm_ = CFrame.new(0.829519689, 0.381413698, -1.57987428, 0.374878913, -0.927073777, 4.05236804e-08, -0.00280904677, -0.00113593217, -0.99999547, 0.927069545, 0.374877214, -0.00303003029),
		Left_Arm_ = CFrame.new(-0.519713402, -0.873377562, -0.158320561, 0.739482224, 0.668240309, 0.0813785493, -0.665690601, 0.74387598, -0.0592175536, -0.100107282, -0.0103825331, 0.994922578),
		Right_Leg_ = CFrame.new(3.68356705e-05, -0.0779465437, -0.447928578, 1.00000942, -2.08616257e-07, 2.38418579e-07, -1.59139745e-07, 0.975493431, 0.220059082, -7.74860382e-07, -0.22006014, 0.97549367),
		Left_Leg_ = CFrame.new(0.246763051, -0.165307999, 5.43892384e-06, 0.97661984, 0.21497333, 1.34110451e-06, -0.21497333, 0.976619899, -5.21395123e-07, -1.43051147e-06, 2.16066837e-07, 1),
		Head_ = CFrame.new(-0.175744906, 0.0174450874, 0.14690578, 0.648833036, 0.1171887, -0.75185281, -0.00230547017, 0.988368213, 0.152063951, 0.76092732, -0.0969307423, 0.641555905),
		Torso_ = CFrame.new(-0.00162887573, -0.00289463997, 0.00579071045, 0.374878913, -0.0028091569, 0.927069545, 0.00280869659, 0.999994338, 0.00189410418, -0.92706871, 0.00189380953, 0.374884337),
	}
	snd(231917871,root,true)
	repeat lrs:wait() until done
	SHA.Anchored=false
	shw = Weld(Right_Arm, SHA, Right_Arm.CFrame:toObjectSpace(SHA.CFrame))
	Tween(shw,.25/2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,{C1=cf(0,-1,0)*ang(0,-rad(0),-rad(90))})
	lwait(.25/2)
	Tween(shw,.25/2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,{C1=cf(0,-1,0)*ang(0,-rad(90),-rad(90))})
	lwait(.25/2)
	dkd,ds = false,false
end


hum.MaxHealth = Max_Health
lwait(.1)
hum.Health = Max_Health
HumanoidRootPart.Transparency = 1

local debvals={};
debvals['CLEAN']=0
debvals['walkparticles']=0
local Handle = function()
	spawn(function()
		for i,v in next, effects.MagicCircles do
			if v[1].Parent ~= nil then
				v[1].CFrame = lerp(v[1].CFrame, v[1].CFrame * CFrame.Angles(0,0,rad(v[4])), .9)
			else
				--table.remove(effects.MagicCircles,i)
				effects.MagicCircles[i]=nil
			end
		end
	end)
	spawn(function()
		for ting,data in next, trans do
			if ting.Transparency~=nil and ting.Transparency < data[2] then
				--print(ting.Transparency,data[2])
				ting.Transparency=ting.Transparency+data[1]
			elseif ting.Transparency >= tonumber(data[2]) and ting.Parent ~= nil then
				--print'ded'
				trans[ting]=nil
				ting:Destroy()
			end
		end
	end)
	spawn(function()
		for a,b in next, grows do
			if a==grows[15] then
				grows={};
				for i,v in next, grows do
					grows[i]=v
				end
				print'ded'
			else
				if #b > 1 then
					for __,v in next, b[1] do
						if v.Parent ~= nil then
							if v.Transparency > 1 then
								v:Destroy()
							else
								local c=v.CFrame
								v.Size=v.Size+b[2] or vec3(b[2],b[2],b[2]) or vec3(0,0,0)
								v.CFrame=c*b[3] or cf(0,0,0)
							end
						else
							b[1][__]=nil
						end
					end
				else
					grows[a]=nil
				end
			end
		end
	end)
	local actual,floor = CheckIfLanded(5)
	if debvals['CLEAN'] > 40 then
		debvals['CLEAN']=0
		grows={};
		trans={};
		effects.MagicCircles={};
		for i,v in next, FX:children() do
			v:Destroy()
		end
	end
	for i,v in next,debvals do
		debvals[i]=v+.1
		--print(i,v)
	end
end

--_G.g=function(mdl)local t,s=0 function s(p)for i,v in next,p:children()do if v:IsA'Part'then t=t+v:GetMass()end;s(v)end;end s(mdl) return t end

Mouse.KeyDown:connect(function(Key)
	if Key:byte() == 48 then
		Walking = false
	elseif Key:byte() == 93 then
		table.foreach(keyz,print)
	end
end)

Mouse.KeyUp:connect(function(Key)
	if Key:byte() == 48 then
		Walking = true
	end
end)

local ComboResetTime,canatk = .1,true
local combo = 0
local output_clicks = false

function ComboUp()
	if dkd == true then return end
	if combo == 0 and canatk == true then
		canatk = false
		Attack1()
		combo = 1
		canatk = true
		spawn(function()
			ds = true
			lwait(ComboResetTime)
			if canatk == true then
				ds = false
			end
			if combo == 1 and not ds then
				combo = 0
			end
		end)
		return
	end
	if combo == 1 and canatk == true then
		canatk = false
		--print'2'
		Attack2()
		combo = 2
		canatk = true
		spawn(function()
			ds = true
			lwait(ComboResetTime)
			if canatk == true then
				ds = false
			end
			if combo == 2 and not ds then
				combo = 0
			end
		end)
		return
	end
	if combo == 2 and canatk == true then
		canatk = false
		Attack3()
		combo = 3
		canatk = true
		spawn(function()
			ds = true
			lwait(ComboResetTime)
			if canatk == true then
				ds = false
			end
			if combo == 3 and not ds then
				combo = 0
			end
		end)
		return
	end
	if combo == 3 and canatk == true then
		canatk = false
		Attack4()
		combo = 0
		lwait(ComboResetTime)
		canatk = true
		spawn(function()
			if canatk == true then
				ds = false
			end
			if combo == 0 and not ds then
				combo = 0
			end
		end)
		return
	end
end

mouse.Button1Down:connect(function()
	ComboUp()	
end)

local can=true
function FootStep()
	if root.CFrame.Y < -10 then
		root.CFrame = cf(rand(-10, 10), 5, rand(-10, 10))
	end
	if can then
		--// continue
	else
		return
	end
	can=false
	delay(.2,function()
		can=true
	end)
	local ping = Instance.new('Sound',Torso)
	local ov = .5
	local pitches={}
	for i = -.05,.05,.005 do table.insert(pitches,1+i) end
	ping.Volume = .25/ov
	game:service'RunService'.RenderStepped:wait()
	local ray = Ray.new(HumanoidRootPart.CFrame.p,(HumanoidRootPart.CFrame.p-(HumanoidRootPart.CFrame*cf(0,2.5,0)).p).unit*3.15)
	local Hit,Pos = workspace:FindPartOnRayWithIgnoreList(ray, {Char})
	if Hit and (Hit:IsDescendantOf(Character) == false) then
		local num=0
		if Hit.Material == Enum.Material.Plastic or Hit.Material == Enum.Material.SmoothPlastic then
			local ss={379483672, 379398649};
			ping.SoundId = rbx..ss[math.random(1,#ss)]
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end
		if Hit.Material == Enum.Material.Grass then
			ping.SoundId = rbx..379482039
			ping.Volume = .05/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end
		if Hit.Material == Enum.Material.Neon then
			ping.SoundId = rbx..236989198
			ping.Volume = 1/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			local ping2 = Instance.new('Sound',Torso)
			ping2.Volume = .075/ov
			ping2.SoundId = rbx..379482691
			ping2.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			ping2:Play()
			return
		end
		if Hit.Material == Enum.Material.Metal or Hit.Material == Enum.Material.DiamondPlate or Hit.Material == Enum.Material.CorrodedMetal then
			local ss={379482691,};
			ping.SoundId = rbx..ss[math.random(1,#ss)]			
			ping.Volume = .5/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end --510932495
		if Hit.Material == Enum.Material.WoodPlanks or Hit.Material == Enum.Material.Wood then
			local ss={ 379484117};
			ping.SoundId = rbx..ss[math.random(1,#ss)]
			ping.Volume = .15/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end 
		if Hit.Material == Enum.Material.Ice or Hit.Material == Enum.Material.Foil then
			local ss={ 510932495};
			ping.SoundId = rbx..ss[math.random(1,#ss)]
			ping.Volume = .5/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end 
		if Hit.Material == Enum.Material.Fabric or Hit.Material == Enum.Material.Sand or Hit.Name == 'Snow' then
			--warn'derp'
			local ss={145536125,145536149};
			ping.SoundId = rbx..ss[math.random(1,#ss)]
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end
		if Hit.Material == Enum.Material.Slate or Hit.Material == Enum.Material.Pebble or Hit.Material == Enum.Material.Marble or Hit.Material == Enum.Material.Brick or Hit.Material == Enum.Material.Cobblestone or Hit.Material == Enum.Material.Concrete or Hit.Material == Enum.Material.Granite  then
			local ss={379483672, 379398649};
			ping.SoundId = rbx..ss[math.random(1,#ss)]
			ping.Volume = .5/ov
			ping.Pitch = pitches[math.random(1,#pitches)]
			ping:Play()
			return
		end
	end
end

local upv=0

srs:connect(function()
	sine = tick() * (change * 25)
	Handle()
end)

local once=false
lrs:connect(function()
	Trail.Enabled=trail
	Landed = CheckIfLanded()
    hum.PlatformStand = false
	if ds then
		if Mode == 'Running' and  not once then
			once=true
			spawn(function()
				FadeSword'In'
			end)
		end
		return
	end
    hum.JumpPower = 0
    hum.Jump=false
	hum.WalkSpeed = hum.WalkSpeed + (walkspd - hum.WalkSpeed) * .1;
	walkspd=7
	if not Walking then
		walkspd = 25
	end
	local tmag_xz = (torso.Velocity*vec3(1, 0, 1)).magnitude
	local tmag_y = torso.Velocity.Y
	local trot = torso.RotVelocity.Y/50
	local speed = Vector3.new(Torso.Velocity.X,0,Torso.Velocity.Z)
	local TiltOnAxis = (root.CFrame-root.CFrame.p):inverse()*speed/200
	local Tilt = ang(TiltOnAxis.Z,-TiltOnAxis.X,-TiltOnAxis.X)
	if Landed == false then
		State, Mode = 'Falling', 'Normal'
	elseif tmag_xz < 3 then
			State, Mode = 'Idle', 'Normal'
	elseif tmag_xz >= 4 then
		State = 'Walking'
		if tmag_xz > 20 then
			Mode = 'Running'
		else
			Mode = 'Normal'
		end
	end
	local RestoreDefault = function(Current)
		Current = Current or State
		local Current2 = Mode
		if LastMode ~= Current2 then
			if Current2 == 'Running' then
				spawn(function()
					FadeSword'Out'
				end)
			elseif Current2 ~= 'Running' or once then
				spawn(function()
					FadeSword'In'
				end)
			end
			LastMode = Current2
		end
		if LastState ~= Current then
			LastState = Current
			sine = 0
		end
    end
    once=false
    local Default_Anims = function()
		local animspd = .1
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)
		
		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)
    end
    if State == 'Falling' and ds == false then
		local animspd = .3
		change = 1
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)
		
		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)       
    elseif State == 'Idle' and ds == false then
		RestoreDefault()
		if Mode == 'Normal' and ds == false then
			local animspd = .125
			change = .35
			local Right_Arm_ = CFrame.new(0.467620611, -0.552611947, -0.132565618, 0.842239499, -0.53289324, -0.0816002488, 0.520031989, 0.842986345, -0.137627944, 0.142128706, 0.0734807402, 0.987117887)
			local Left_Arm_ = CFrame.new(-0.781376958, 0.0332048535, -1.34890664, 0.59977144, 0.799722373, -0.0268236771, -0.304636121, 0.197214842, -0.931828678, -0.739913702, 0.567055464, 0.361907959)
			local Right_Leg_ = CFrame.new(-0.272229075, -0.24053812, 0.000354528427, 0.955758393, -0.294165701, -1.257658e-05, 0.294165134, 0.955759764, 6.22232903e-07, 1.13546848e-05, -4.07546759e-06, 1.00000012)
			local Left_Leg_ = CFrame.new(0.0260814428, 0.0450050831, -0.361847639, 0.775439262, 0.110567033, 0.621666431, -0.0906994343, 0.993843734, -0.0636264831, -0.624874234, -0.00704631209, 0.780693769)
			local Head_ = CFrame.new(0.270924807, 0.0874993801, 0.260071456, 0.390913397, -0.180617183, 0.90253222, -0.0901362225, 0.96833241, 0.23282595, -0.916003525, -0.172365636, 0.362253964)
			local Torso_ = CFrame.new(0.0059170723, -0.182877302, -0.00212669373, 0.392511159, 0, -0.919747353, 0, 1, 0, 0.919747353, 0, 0.392511159)
			
			torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
			hedw.C0 = lerp(hedw.C0, cf(0,0,-cos(sine/8)/16)*Head_*ang(cos(sine/8)/16,0,0),animspd)
			law.C0 = lerp(law.C0, cf(sin(sine/8)/20,cos(sine/8)/14,0)*Left_Arm_*ang(cos(sine/8)/14,0,sin(sine/8)/20),animspd)
			raw.C0 = lerp(raw.C0, cf(0,.5+sin(sine/8)/14,-.5)*Right_Arm_*ang(rad(70)+sin(sine/8)/14,0,0),animspd)
			rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
			llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)
			rhw.C0 = clerp(rhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			lhw.C0 = clerp(lhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			shw.C0 = clerp(shw.C0, cf(0,0,0)*ang(0,-rad(15),rad(70)), animspd)
		else
			Default_Anims()
			warn'Idle: Unknown Mode Used'
		end
    elseif State == 'Walking' and ds == false then
		RestoreDefault()
		if Mode == 'Normal' and ds == false then
			local up = sin(sine/6)
			if math.abs(up)>=.995 then
				local actual,floor = CheckIfLanded(7)
				local clrs={'Really black','Pearl'}
				local mtrl='Neon'
				local ss = 3
				if actual then
					clrs={tostring(floor.BrickColor)}
					mtrl=floor.Material
				end
				FootStep()
				if up > 0 then
					
				else
					
				end
			end
			local animspd = .25
			change = 1.4
			local Right_Arm_ = cf(0,0,0)
			local Left_Arm_ = cf(0,0,0)
			local Right_Leg_ = cf(0,0,0)
			local Left_Leg_ = cf(0,0,0)
			local Head_ = cf(0,0,0)
			local Torso_ = cf(0,0,0)
			
			torw.C0 = clerp(torw.C0, cf(0,-.2,0)*Torso_*ang(-rad(12)+sin(sine/3)/18,sin(sine/6)/13,0),animspd)
			hedw.C0 = clerp(hedw.C0, cf(0,0,-rad(4))*Head_*ang(rad(4),0,0),animspd)
			law.C0 = clerp(law.C0, cf(-.265,-.359/2,sin(sine/6)/4)*Left_Arm_*ang(-sin(sine/6)/4,0,-rad(20)),animspd)
			raw.C0 = clerp(raw.C0, cf(.265+cos(sine/6)/8,(-.359/2)+.65,-.85)*Right_Arm_*ang(rad(90),0,rad(20)+cos(sine/6)/8),animspd)
			rlw.C0 = clerp(rlw.C0, cf(-.034/2,.1-cos(sine/6)/4,-.4+cos(sine/6)/4+-sin(sine/6)/2)*ang(-rad(5)+-sin(sine/6)/2,-sin(sine/6)/13,rad(1)),animspd)
    		llw.C0 = clerp(llw.C0, cf(.034/2,.1+cos(sine/6)/4,-.4+-cos(sine/6)/4+sin(sine/6)/2)*ang(-rad(5)+sin(sine/6)/2,-sin(sine/6)/13,-rad(1)),animspd)
			
    		rhw.C0 = clerp(rhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			lhw.C0 = clerp(lhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			shw.C0 = clerp(shw.C0, cf(0,0,0)*ang(0,rad(15),rad(70)), .1)
		elseif Mode == 'Running' and ds == false then
			local up = sin(sine/6)
			if math.abs(up)>=.995 then
				local actual,floor = CheckIfLanded(7)
				local clrs={'Really black','Pearl'}
				local mtrl='Neon'
				local ss = 3
				if actual then
					clrs={tostring(floor.BrickColor)}
					mtrl=floor.Material
				end
				FootStep()
				if up > 0 then
					
				else
					
				end
			end
			local animspd = .25
			change = 1.4
			local Right_Arm_ = cf(0,0,0)
			local Left_Arm_ = cf(0,0,0)
			local Right_Leg_ = cf(0,0,0)
			local Left_Leg_ = cf(0,0,0)
			local Head_ = cf(0,0,0)
			local Torso_ = cf(0,0,0)
			
			torw.C0 = clerp(torw.C0, cf(0,-.2,0)*Torso_*ang(-rad(12)+sin(sine/3)/18,sin(sine/6)/13,0),animspd)
			hedw.C0 = clerp(hedw.C0, cf(0,0,-rad(4))*Head_*ang(rad(4),0,0),animspd)
			law.C0 = clerp(law.C0, cf(-.265,-.359/2,sin(sine/6)/4)*Left_Arm_*ang(-sin(sine/6)/4,0,-rad(20)),animspd)
			raw.C0 = clerp(raw.C0, cf(.265,-.359/2,-sin(sine/6)/4)*Right_Arm_*ang(sin(sine/6)/4,0,rad(20)),animspd)
			rlw.C0 = clerp(rlw.C0, cf(-.034/2,.1-cos(sine/6)/4,-.4+cos(sine/6)/4+-sin(sine/6)/2)*ang(-rad(5)+-sin(sine/6)/2,-sin(sine/6)/13,rad(1)),animspd)
    		llw.C0 = clerp(llw.C0, cf(.034/2,.1+cos(sine/6)/4,-.4+-cos(sine/6)/4+sin(sine/6)/2)*ang(-rad(5)+sin(sine/6)/2,-sin(sine/6)/13,-rad(1)),animspd)
			
    		rhw.C0 = clerp(rhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			lhw.C0 = clerp(lhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
			shw.C0 = clerp(shw.C0, cf(0,0,0)*ang(0,rad(15),rad(70)), .1)
		else --// 59426=74955
			Default_Anims()
			warn'Walking: Unknown Mode Used'
		end
    else --// New Animation Test Stage
		local animspd = .1
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)
		
		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		llw.C0 = clerp(llw.C0, cf(0,0,0)*Left_Leg_*ang(0,0,0),animspd)
    end
        
end)

--[[ Default Welds
		local animspd = .3
		change = 1
		
		local Right_Arm_ = cf(0,0,0)
		local Left_Arm_ = cf(0,0,0)
		local Right_Leg_ = cf(0,0,0)
		local Left_Leg_ = cf(0,0,0)
		local Head_ = cf(0,0,0)
		local Torso_ = cf(0,0,0)

		torw.C0 = clerp(torw.C0, cf(0,0,0)*Torso_*ang(0,0,0),animspd)
		hedw.C0 = clerp(hedw.C0, cf(0,0,0)*Head_*ang(0,0,0),animspd)
		law.C0 = clerp(law.C0, cf(0,0,0)*Left_Arm_*ang(0,0,0),animspd)
		raw.C0 = clerp(raw.C0, cf(0,0,0)*Right_Arm_*ang(0,0,0),animspd)
		rlw.C0 = clerp(rlw.C0, cf(0,0,0)*Right_Leg_*ang(0,0,0),animspd)
		rhw.C0 = clerp(rhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
		lhw.C0 = clerp(lhw.C0, cf(0,0,0)*ang(0,0,0),animspd)
		shw.C0 = clerp(shw.C0, cf(0,0,0)*ang(0,0,0),animspd)
		
--]]

Player.Chatted:connect(function(Message)
	if Message == '~debug' then
		ds,dkd=false,false
		for i,v in next, FX:children() do
			v:Destroy()
		end
		FadeSword'In'
	end
end)

script.Archivable = false
script:WaitForChild('Sound'):Play()

print("Press ']' to see all KeyBinds")
print('Say ~debug to... debug..............................')