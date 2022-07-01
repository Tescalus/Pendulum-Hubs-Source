game:GetService("RunService").Heartbeat:Connect(function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)
getgenv()._reanimate = loadstring(game:HttpGet('https://raw.githubusercontent.com/shidemuri/coffeeware/main/reanim.lua'))()
getgenv()._reanimate()
