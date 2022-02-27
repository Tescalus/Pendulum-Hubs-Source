
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
getgenv().TorsoFling = true
getgenv().ExtremeNetless = true
getgenv().Velocity = -50
getgenv().Fling = false
getgenv().Netless2 = false
else
getgenv().TorsoFling = false
getgenv().Fling = true
getgenv().Velocity = -25.05
getgenv().Netless2 = false
end
getgenv().ShowReal = true
getgenv().AutoAnimate = true
getgenv().DynamicVelocity = true
getgenv().AntiSleep = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
task.wait()
local Fling = getgenv().RealRig:FindFirstChild("LowerTorso") or getgenv().RealRig.HumanoidRootPart
Fling.Transparency = 1
Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(999999999999999999999999999999999999,999999999999999999999999999999999999,999999999999999999999999999999999999)

local mouse = game.Players.LocalPlayer:GetMouse()
--game["Run Service"].Heartbeat:Connect(function(delta)
--    Fling.CFrame = CFrame.new(mouse.hit.p)
--end)
local attackingwithhrp = false

mouse.Button1Down:Connect(function()
    attackingwithhrp = true    
end)


mouse.Button1Up:Connect(function()
    attackingwithhrp = false
end)

game["Run Service"].Heartbeat:Connect(function(delta)
    if attackingwithhrp then
        Fling.CFrame = CFrame.new(mouse.hit.p)
    else
        Fling.CFrame = getgenv().RealRig.Torso.CFrame
    end
end)
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
getgenv().TorsoFling = true
getgenv().ExtremeNetless = true
getgenv().Velocity = -50
getgenv().Fling = false
getgenv().Netless2 = false
else
getgenv().TorsoFling = false
getgenv().Fling = true
getgenv().Velocity = -25.05
getgenv().Netless2 = false
end
getgenv().ShowReal = true
getgenv().AutoAnimate = true
getgenv().DynamicVelocity = true
getgenv().AntiSleep = true
loadstring(game:HttpGet("https://github.com/Tescalus/Pendulum-Hubs-Source/blob/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
task.wait()
local Fling = getgenv().RealRig:FindFirstChild("LowerTorso") or getgenv().RealRig.HumanoidRootPart
Fling.Transparency = 1
Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(999999999999999999999999999999999999,999999999999999999999999999999999999,999999999999999999999999999999999999)

local mouse = game.Players.LocalPlayer:GetMouse()
--game["Run Service"].Heartbeat:Connect(function(delta)
--    Fling.CFrame = CFrame.new(mouse.hit.p)
--end)
local attackingwithhrp = false

mouse.Button1Down:Connect(function()
    attackingwithhrp = true    
end)


mouse.Button1Up:Connect(function()
    attackingwithhrp = false
end)

game["Run Service"].Heartbeat:Connect(function(delta)
    if attackingwithhrp then
        Fling.CFrame = CFrame.new(mouse.hit.p)
    else
        Fling.CFrame = getgenv().RealRig.Torso.CFrame
    end
end)
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
getgenv().TorsoFling = true
getgenv().ExtremeNetless = true
getgenv().Velocity = -50
getgenv().Fling = false
getgenv().Netless2 = false
else
getgenv().TorsoFling = false
getgenv().Fling = true
getgenv().Velocity = -25.05
getgenv().Netless2 = false
end
getgenv().ShowReal = true
getgenv().AutoAnimate = true
getgenv().DynamicVelocity = true
getgenv().AntiSleep = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
task.wait()
local Fling = getgenv().RealRig:FindFirstChild("LowerTorso") or getgenv().RealRig.HumanoidRootPart
Fling.Transparency = 1
Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(999999999999999999999999999999999999,999999999999999999999999999999999999,999999999999999999999999999999999999)

local mouse = game.Players.LocalPlayer:GetMouse()
--game["Run Service"].Heartbeat:Connect(function(delta)
--    Fling.CFrame = CFrame.new(mouse.hit.p)
--end)
local attackingwithhrp = false

mouse.Button1Down:Connect(function()
    attackingwithhrp = true    
end)


mouse.Button1Up:Connect(function()
    attackingwithhrp = false
end)

game["Run Service"].Heartbeat:Connect(function(delta)
    if attackingwithhrp then
        Fling.CFrame = CFrame.new(mouse.hit.p)
    else
        Fling.CFrame = getgenv().RealRig.Torso.CFrame
    end
end)
