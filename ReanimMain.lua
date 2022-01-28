getgenv().Fling = true
getgenv().TorsoFling = false
getgenv().ShowReal = true
getgenv().FakeGod = false
getgenv().GodMode = true
getgenv().Tools = false
getgenv().Velocity = 35
getgenv().Collisions = true
getgenv().Claim2 = false
getgenv().ExtremeNetless = true
getgenv().Notification = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua"))() --
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
