local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Bacon MonitorAccessory"].Handle -- put the hat here
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- Don't bother changing this you already changed it on line 3
Weld.Part0 = Screen1 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0) -- CFrame.new is the orientation! CFrame.Angles propertys are the angles by XYZ Positions they aren't hard to use if u know what ur doing.
print("Ran with no errors")

-- Tips for Aligning:
-- YOU DONT HAVE TO BE REANIMATED TO RUN THIS MEANING YOU CAN DO A EASY REFRESH TO QUICKLY ALIGN HATS WITHOUT ANY BUGS
-- You dont have to change local hat to local hat2 anymore!
-- Angles act the same as last time meaning you can use your previous angles just replace the values!
