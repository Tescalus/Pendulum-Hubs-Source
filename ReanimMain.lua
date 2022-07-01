workspace:GetPropertyChangedSignal("FallenPartsDestroyHeight"):Connect(function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)
if not getgenv()._reanimate then getgenv()._reanimate = loadstring(game:HttpGet('https://raw.githubusercontent.com/shidemuri/coffeeware/main/reanim.lua'))() end
return getgenv()._reanimate()
