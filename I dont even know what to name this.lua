loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
local Player = game:GetService("Players").LocalPlayer
local Player_UI = Player.PlayerGui
local Character = game.Workspace.non
local Player_Backpack = Player.Backpack
local Cam = workspace.CurrentCamera
local Humanoid = Character.Humanoid
local HuRoot = Character.HumanoidRootPart
local TR = Character.Torso
local HE = Character.Head
local LA = Character["Left Arm"]
local RA = Character["Right Arm"]
local RL = Character["Right Leg"]
local LL = Character["Left Leg"]
local Mouse = Player:GetMouse()
HuRoot.Size = Vector3.new(4, 2, 2)
TR.Size = Vector3.new(4, 2, 2)
HE.Size = Vector3.new(0, 0, 0)
LA.Size = Vector3.new(4, 1, 2)
RA.Size = Vector3.new(4, 1, 2)
RL.Size = Vector3.new(4, 1, 2)
LL.Size = Vector3.new(4, 1, 2)
local newhed = Instance.new("Part", Character)
newhed.Position = Vector3.new(2, 555, 2)
newhed.Size = Vector3.new(3, 1, 2)
newhed.TopSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.RightSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.BackSurface = Enum.SurfaceType.SmoothNoOutlines
newhed.BrickColor = HE.BrickColor
HE.Transparency = 1
local RJ = Instance.new("Motor6D", HuRoot)
local NK = Instance.new("Motor6D", TR)
local LS = Instance.new("ManualWeld", TR)
local RS = Instance.new("ManualWeld", TR)
local RH = Instance.new("Motor6D", TR)
local LH = Instance.new("Motor6D", TR)
RJ.Part0 = HuRoot
RJ.Part1 = TR
NK.Part0 = TR
NK.Part1 = newhed
LS.Part0 = TR
LS.Part1 = LA
RS.Part0 = TR
RS.Part1 = RA
RH.Part0 = TR
RH.Part1 = RL
LH.Part0 = TR
LH.Part1 = LL
local savethehedlol = Instance.new("Motor6D", TR)
savethehedlol.Part0 = TR
savethehedlol.Part1 = HE
local seat = Instance.new("Seat", Character)
seat.Position = Vector3.new(2, 2222, 22)
seat.Size = Vector3.new(1, 1, 1)
local seatweld = Instance.new("Motor6D", Character)
seatweld.Part0 = TR
seatweld.Part1 = seat
seatweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
seatweld.C1 = CFrame.new(-0.0499801636, -0.489192486, 1.52587891E-5, -4.37113883E-8, 2.10107532E-6, -1, -2.08614324E-7, 0.99999994, 2.1010751E-6, 1, 2.08614424E-7, -4.37109513E-8)
RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, 0, -2.08616299E-7, 1, 2.10109511E-6, 1, 2.08616299E-7, -1, 2.10109511E-6, 4.38322691E-13), 1)
NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.9562583E-6, -0.900001168, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
LH.C1 = LH.C1:lerp(CFrame.new(-1.89999998, -3.91155481E-6, -0.900001168, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.9562583E-6, 0.899997354, 1, 0, 0, 0, 1, 0, 0, 0, 1), 1)
Humanoid.HipHeight = 2.6
Humanoid.WalkSpeed = 20
Walk = false
Idle = false
Jump = false
Fall = false
Swim = false
Stunned = false
CanClickAttack = false
CanAttack = false
CanClickDamageAttack = false
CanDamageAttack = false
attack1anim = false
attack2anim = false
local attackprog = 0
function HeadRoar()
  spawn(function()
    local soundeff = Instance.new("Sound", newhed)
    soundeff.Volume = 10
    soundeff.Pitch = 1
    soundeff.SoundId = "rbxassetid://11998770"
    soundeff.Looped = false
    soundeff:Play()
    soundeff.Ended:connect(function()
      soundeff:Destroy()
    end)
  end)
end
function Swoosh()
  spawn(function()
    local soundeff = Instance.new("Sound", newhed)
    soundeff.Volume = 1.2
    soundeff.Pitch = 1
    soundeff.SoundId = "rbxassetid://234365549"
    soundeff.Looped = false
    soundeff:Play()
    soundeff.Ended:connect(function()
      soundeff:Destroy()
    end)
  end)
end
game:GetService("RunService").RenderStepped:connect(function()
  if Walk then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, 0, -2.08616299E-7, 1, 2.10109511E-6, 1, 2.08616299E-7, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.9562583E-6, -0.900001168, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.89999998, -3.91155481E-6, -0.900001168, 0.998419344, 0, 0.0562028214, 0, 1, 0, -0.0562028214, 0, 0.998419344), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.9562583E-6, 0.899997354, 0.998049259, 0, -0.0624323189, 0, 1, 0, 0.0624323189, 0, 0.998049259), 0.1)
  end
  if Idle then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, 2.20373025E-7, 0.104884632, 0.994484365, 2.08950632E-6, 0.994484365, -0.104884632, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.96370888E-6, -0.900001168, 0.988732576, 0.149692476, 0, -0.149692476, 0.988732576, 0, 0, 0, 1), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 0.991158009, 0.132686943, 0, -0.132686943, 0.991158009, 0, 0, 0, 1), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.89999986, -3.87430191E-6, -0.900001168, 0.949941158, -0.312428832, 0, 0.312428832, 0.949941158, 0, 0, 0, 1), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.9935112E-6, 0.899997354, 0.928876162, -0.370390236, 0, 0.370390236, 0.928876162, 0, 0, 0, 1), 0.1)
  end
  if Jump then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, -3.8283045E-7, -0.182205409, 0.983260453, 2.06592381E-6, 0.983260453, 0.182205409, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 0.988958359, -0.148193866, 0, 0.148193866, 0.988958359, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, -0.900001168, 0.910904825, -0.412616551, 0, 0.412616551, 0.910904825, 0, 0, 0, 1), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 0.949260056, -0.314492255, 0, 0.314492255, 0.949260056, 0, 0, 0, 1), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.43983817, -3.90410423E-6, -0.900001168, 0.978067756, 0.208286911, 0, -0.208286911, 0.978067756, 0, 0, 0, 1), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.93390656E-6, 0.899997354, 0.866223693, -0.499656409, 0, 0.499656409, 0.866223693, 0, 0, 0, 1), 0.1)
  end
  if Fall then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0.25222981, 0.0235100985, -1.92181433E-5, 1.29316817E-7, 0.0615471303, 0.998104155, 2.09711175E-6, 0.998104155, -0.0615471303, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.50000012, -0.300000072, 0, 0.978680253, 0.205390021, 0, -0.205390021, 0.978680253, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, -0.900001168, 0.950293183, 0.311356664, 0, -0.311356664, 0.950293183, 0, 0, 0, 1), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000014, -3.93390656E-6, 0.899997354, 0.957487881, 0.288473636, 0, -0.288473636, 0.957487881, 0, 0, 0, 1), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.36659455, 0.721735358, -0.900001168, 0.944808245, -0.327623725, 0, 0.327623725, 0.944808245, 0, 0, 0, 1), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, 0.522157133, 0.899997354, 0.998676419, 0.0514329076, 0, -0.0514329076, 0.998676419, 0, 0, 0, 1), 0.1)
  end
  if Swim then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, 0, -2.08616299E-7, 1, 2.10109511E-6, 1, 2.08616299E-7, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 0.997048616, -0.0767725334, 0, 0.0767725334, 0.997048616, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.9562583E-6, -0.900001168, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.89999998, -3.91900539E-6, -0.900001287, 0.917724729, 0, -0.397217035, 0.0544946715, 0.990544617, 0.125903741, 0.393461198, -0.137191176, 0.909047306), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.96370888E-6, 0.899997354, 0.909526825, 0, 0.415645182, 0.0364658684, 0.996143997, -0.079795666, -0.414042443, 0.0877331644, 0.906019688), 0.1)
  end
  if Stunned then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.0107803345, 0.0892168954, -1.92181433E-5, 0, -2.08616299E-7, 1, 2.10109511E-6, 1, 2.08616299E-7, -1, 2.10109511E-6, 4.38322691E-13), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 0.800809741, 0.598918855, 0, -0.598918855, 0.800809741, 0, 0, 0, 1), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000014, -3.9935112E-6, -0.900001049, 0.74758172, -0.240051031, 0.619271398, 0.0498106331, 0.95003736, 0.308136195, -0.662299395, -0.199510679, 0.722187638), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(1.5999999, -3.97115946E-6, 0.899997354, 0.764060438, -0.176157549, -0.620628893, 0.136733249, 0.984362006, -0.111065298, 0.630488455, 0, 0.776198626), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.21040952, -3.91155481E-6, -0.375465035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(-0.92249918, -3.9562583E-6, 0.106937051, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
  end
  if attack1anim then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    RJ.C1 = RJ.C1:lerp(CFrame.new(-0.697819293, 0.110060155, -1.92181433E-5, 6.37133226E-8, 0.0303236544, 0.99954015, 2.100129E-6, 0.99954015, -0.0303236544, -1, 2.10109511E-6, 4.38322691E-13), 0.2)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000072, 0, 0.956970215, 0.290186107, 0, -0.290186107, 0.956970215, 0, 0, 0, 1), 0.2)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000002, -3.96370888E-6, -0.900001168, 0.95271945, 0.303851306, 0, -0.303851306, 0.95271945, 0, 0, 0, 1), 0.2)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997354, 0.98641181, 0.164291799, 0, -0.164291799, 0.98641181, 0, 0, 0, 1), 0.2)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.89999998, -3.90410423E-6, -0.900001168, 0.979591608, -0.200998351, 0, 0.200998351, 0.979591608, 0, 0, 0, 1), 0.2)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.9000001, -3.96370888E-6, 0.899997354, 0.993240833, -0.116071977, 0, 0.116071977, 0.993240833, 0, 0, 0, 1), 0.2)
  end
  if attack2anim then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, -3.70000005, -0.260758221, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    RJ.C1 = RJ.C1:lerp(CFrame.new(3.51115322, -0.0341197625, -1.92181433E-5, -3.7701335E-7, -0.179436803, 0.983769536, 2.06699337E-6, 0.983769536, 0.179436803, -1, 2.10109511E-6, 4.38322691E-13), 0.23)
    NK.C0 = NK.C0:lerp(CFrame.new(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    NK.C1 = NK.C1:lerp(CFrame.new(1.5, -0.300000101, 0, 0.995598793, 0.0937175155, 0, -0.0937175155, 0.995598793, 0, 0, 0, 1), 0.23)
    LS.C0 = LS.C0:lerp(CFrame.new(-1.39999998, -0.5, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    LS.C1 = LS.C1:lerp(CFrame.new(1.60000014, 0.204938829, -0.900001049, 0.650523841, -0.0244942419, 0.759090722, 0.0376264453, 0.999291837, 0, -0.758553147, 0.0285618864, 0.650984824), 0.23)
    RS.C0 = RS.C0:lerp(CFrame.new(-1.39999998, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    RS.C1 = RS.C1:lerp(CFrame.new(1.60000002, -3.93390656E-6, 0.899997473, 0.594302475, 0.0989840403, -0.798126996, -0.164291799, 0.98641181, 0, 0.787281871, 0.131125718, 0.602489233), 0.23)
    LH.C0 = LH.C0:lerp(CFrame.new(1.10000002, -0.49999997, 0.900000036, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    LH.C1 = LH.C1:lerp(CFrame.new(-1.89999998, -3.96370888E-6, -0.900001168, 0.980351269, 0.197259918, 0, -0.197259918, 0.980351269, 0, 0, 0, 1), 0.23)
    RH.C0 = RH.C0:lerp(CFrame.new(1.10000002, -0.5, -0.899999976, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.23)
    RH.C1 = RH.C1:lerp(CFrame.new(-1.90000021, -3.9935112E-6, 0.899997354, 0.973342538, -0.229356468, 0, 0.229356468, 0.973342538, 0, 0, 0, 1), 0.23)
  end
end)
function onWalk(spd)
  if spd >= 0.01 then
    Walk = true
    Idle = false
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
  else
    Walk = false
    Idle = true
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
  end
end
function onJump()
  Walk = false
  Idle = false
  Jump = true
  Fall = false
  Swim = false
  Stunned = false
  wait(0.25)
  Jump = false
  Fall = true
end
function onSwim()
  Walk = false
  Idle = false
  Jump = false
  Fall = false
  Swim = true
  Stunned = false
end
function onStunned()
  Walk = false
  Idle = false
  Jump = false
  Fall = false
  Swim = false
  Stunned = true
end
RA.Touched:connect(function(part)
  spawn(function()
    if CanClickDamageAttack == true then
      local plr = part.Parent
      local hum = plr:FindFirstChild("Humanoid")
      if hum then
        hum:TakeDamage(0)
      end
    end
  end)
end)
function ClickAttack1()
  if CanClickAttack == false then
    HeadRoar()
    CanClickAttack = true
    CanAttack = true
    CanClickDamageAttack = true
    CanDamageAttack = false
    Walk = false
    Idle = false
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
    wait(0.1)
    attack1anim = true
    attack2anim = false
    Swoosh()
    wait(0.3)
    attack1anim = false
    attack2anim = true
    Swoosh()
    wait(0.3)
    attack1anim = false
    attack2anim = false
    Idle = true
    CanClickAttack = false
    CanAttack = false
    CanClickDamageAttack = false
    CanDamageAttack = false
  end
end
Mouse.Button1Down:connect(function()
  if attackprog == 0 then
    attackprog = 0
    ClickAttack1()
  end
end)
Mouse.KeyDown:connect(function(key)
  if key == "f" then
    spawn(function()
      seat.Disabled = true
      wait(0.4)
      seat.Disabled = false
    end)
  end
end)
Humanoid.Running:connect(onWalk)
Humanoid.Jumping:connect(onJump)
Humanoid.Swimming:connect(onSwim)
Humanoid.PlatformStanding:connect(onStunned)