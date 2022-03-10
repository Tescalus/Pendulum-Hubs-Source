-- Good luck with trying to expose me when I have my own align method!
-- If you're a aligner for Pendulum Hub I suggest you use the new align method.
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Workspace Hat Name"].Handle -- The hat you choose
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = Screen1 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0) -- Offset & Angles
print("Ran with no errors")
