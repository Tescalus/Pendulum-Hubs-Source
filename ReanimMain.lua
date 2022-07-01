game:GetService("RunService").Heartbeat:Connect(function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)
if not getgenv()._reanimate then getgenv()._reanimate = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/bad/main/reanim.lua'))() end
return getgenv()._reanimate()
