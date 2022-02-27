if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
_G.TorsoFling = true
_G.ExtremeNetless = true
_G.Velocity = -50
else
_G.TorsoFling = false
_G.Fling = true
_G.Velocity = -17
_G.ExtremeNetless = false
end
_G.ShowReal = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
task.wait()
local Fling = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name]:FindFirstChild("LowerTorso") or game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name].HumanoidRootPart
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
        Fling.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
    end
end)
