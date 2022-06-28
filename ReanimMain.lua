workspace.FallenPartsDestroyHeight = -math.huge
if not getgenv()._reanimate then getgenv()._reanimate = loadstring(game:HttpGet('https://raw.githubusercontent.com/shidemuri/coffeeware/main/reanim.lua'))() end
return getgenv()._reanimate()
workspace:GetPropertyChangedSignal("FallenPartsDestroyHeight"):Connect(function() -- PADERO DO NOT DELETE THIS CONNECTION!
    workspace.FallenPartsDestroyHeight = -math.huge
end)

