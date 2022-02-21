-- THIS WAS NOT MADE BY ME (The Pendulum Hub owner.) I couldn't find the original owner so just look up animation id player.
print("THIS WAS NOT MADE BY ME (The Pendulum Hub owner.) I couldn't find the original owner so just look up animation id player.")
local animation = Instance.new("ScreenGui")
local Shadow = Instance.new("Frame")
local Shadow_2 = Instance.new("Folder")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local mainFrame = Instance.new("ImageLabel")
local topbarFrame = Instance.new("ImageLabel")
local miniBtn = Instance.new("ImageButton")
local miniLabel = Instance.new("TextLabel")
local Minimize = Instance.new("TextButton")
local Hi = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local exitBtn = Instance.new("ImageButton")
local exitLabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local player = Instance.new("TextBox")
local under = Instance.new("Frame")
local r6 = Instance.new("TextButton")
local sep = Instance.new("Frame")
local play = Instance.new("TextButton")
local profile = Instance.new("TextButton")
local sep_2 = Instance.new("Frame")
local Message = Instance.new("TextLabel")
local profile_2 = Instance.new("Frame")
local Shadow_3 = Instance.new("Folder")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local mainFrame_2 = Instance.new("ImageLabel")
local topbarFrame_2 = Instance.new("ImageLabel")
local miniBtn_2 = Instance.new("ImageButton")
local miniLabel_2 = Instance.new("TextLabel")
local Minimize_2 = Instance.new("TextButton")
local Hi_2 = Instance.new("TextLabel")
local sunglasseslogo_2 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local exitBtn_2 = Instance.new("ImageButton")
local exitLabel_2 = Instance.new("TextLabel")
local Exit_2 = Instance.new("TextButton")
local pfp = Instance.new("ImageLabel")
local under_2 = Instance.new("ImageLabel")
local top = Instance.new("Frame")
local uaid = Instance.new("TextLabel")
local sep_3 = Instance.new("Frame")
local _1 = Instance.new("TextLabel")
local Message_2 = Instance.new("TextLabel")

--Properties:

animation.Name = "animation"
animation.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
animation.ResetOnSpawn = false

Shadow.Name = "Shadow"
Shadow.Parent = animation
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0.616363645, -294, 0.598280072, -149)
Shadow.Size = UDim2.new(0, 267, 0, 170)

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Shadow

Frame.Parent = Shadow_2
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, -4, 0, -4)
Frame.Size = UDim2.new(1, 8, 1, 8)
Frame.Style = Enum.FrameStyle.DropShadow

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, -4, 0, -4)
Frame_2.Size = UDim2.new(1, 8, 1, 8)

mainFrame.Name = "mainFrame"
mainFrame.Parent = Shadow
mainFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
mainFrame.BackgroundTransparency = 1.000
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Position = UDim2.new(-0.000796778651, 0, -0.00258674752, 0)
mainFrame.Size = UDim2.new(0, 264, 0, 168)
mainFrame.Image = "http://www.roblox.com/asset/?id=4530318781"
mainFrame.ImageColor3 = Color3.fromRGB(32, 32, 32)
mainFrame.ScaleType = Enum.ScaleType.Slice
mainFrame.SliceCenter = Rect.new(20, 20, 480, 480)

topbarFrame.Name = "topbarFrame"
topbarFrame.Parent = mainFrame
topbarFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
topbarFrame.BackgroundTransparency = 1.000
topbarFrame.BorderSizePixel = 0
topbarFrame.Size = UDim2.new(0, 587, 0, 33)
topbarFrame.Image = "http://www.roblox.com/asset/?id=4530319192"
topbarFrame.ImageColor3 = Color3.fromRGB(24, 24, 24)
topbarFrame.ScaleType = Enum.ScaleType.Slice
topbarFrame.SliceCenter = Rect.new(20, 20, 480, 480)

miniBtn.Name = "miniBtn"
miniBtn.Parent = topbarFrame
miniBtn.AnchorPoint = Vector2.new(0, 0.5)
miniBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miniBtn.BackgroundTransparency = 1.000
miniBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
miniBtn.BorderSizePixel = 0
miniBtn.Position = UDim2.new(0, 531, 0.5, 0)
miniBtn.Size = UDim2.new(0, 19, 0, 19)
miniBtn.Image = "http://www.roblox.com/asset/?id=4132450915"
miniBtn.ImageColor3 = Color3.fromRGB(140, 30, 49)
miniBtn.ImageTransparency = 1.000

miniLabel.Name = "miniLabel"
miniLabel.Parent = miniBtn
miniLabel.AnchorPoint = Vector2.new(0.5, 0.5)
miniLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miniLabel.BackgroundTransparency = 1.000
miniLabel.BorderSizePixel = 0
miniLabel.Position = UDim2.new(-16.5526314, 0, 0.5, 0)
miniLabel.Size = UDim2.new(0, 25, 0, 25)
miniLabel.Visible = false
miniLabel.Font = Enum.Font.SourceSansLight
miniLabel.Text = "—"
miniLabel.TextColor3 = Color3.fromRGB(181, 181, 181)
miniLabel.TextSize = 15.000
miniLabel.TextWrapped = true

Minimize.Name = "Minimize"
Minimize.Parent = miniBtn
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.Size = UDim2.new(0, 19, 0, 19)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = ""
Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimize.TextSize = 14.000

Hi.Name = "Hi"
Hi.Parent = miniBtn
Hi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hi.BackgroundTransparency = 1.000
Hi.Position = UDim2.new(-10.726819, 0, -0.00334408414, 0)
Hi.Size = UDim2.new(0, 193, 0, 22)
Hi.Visible = false
Hi.Font = Enum.Font.SourceSans
Hi.Text = "Credits to dangerxusIove for converting Sentinel SS."
Hi.TextColor3 = Color3.fromRGB(255, 255, 255)
Hi.TextScaled = true
Hi.TextSize = 14.000
Hi.TextStrokeTransparency = 0.000
Hi.TextWrapped = true




TextLabel.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.75, 0, 0.285714149, 0)
TextLabel.Size = UDim2.new(0, 121, 0, 16)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ID player | Pendulum Hub"
TextLabel.TextColor3 = Color3.fromRGB(189, 189, 189)
TextLabel.TextSize = 12.000

exitBtn.Name = "exitBtn"
exitBtn.Parent = topbarFrame
exitBtn.AnchorPoint = Vector2.new(0, 0.5)
exitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitBtn.BackgroundTransparency = 1.000
exitBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
exitBtn.BorderSizePixel = 0
exitBtn.Position = UDim2.new(0.0340715498, 541, 0.5, 0)
exitBtn.Size = UDim2.new(0, 19, 0, 19)
exitBtn.Image = "http://www.roblox.com/asset/?id=4132450915"
exitBtn.ImageColor3 = Color3.fromRGB(140, 30, 49)
exitBtn.ImageTransparency = 1.000

exitLabel.Name = "exitLabel"
exitLabel.Parent = exitBtn
exitLabel.AnchorPoint = Vector2.new(0.5, 0.5)
exitLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitLabel.BackgroundTransparency = 1.000
exitLabel.BorderSizePixel = 0
exitLabel.Position = UDim2.new(-16.4473686, 0, 0.5, 0)
exitLabel.Size = UDim2.new(0, 25, 0, 25)
exitLabel.Visible = false
exitLabel.Font = Enum.Font.SourceSansLight
exitLabel.Text = "×"
exitLabel.TextColor3 = Color3.fromRGB(181, 181, 181)
exitLabel.TextSize = 35.000
exitLabel.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = exitBtn
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Size = UDim2.new(0, 19, 0, 19)
Exit.Font = Enum.Font.SourceSans
Exit.Text = ""
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

player.Name = "player"
player.Parent = mainFrame
player.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.0606060624, 0, 0.351190478, 0)
player.Size = UDim2.new(0, 232, 0, 38)
player.Font = Enum.Font.SourceSans
player.PlaceholderText = "Put Animation ID in here"
player.Text = ""
player.TextColor3 = Color3.fromRGB(255, 255, 255)
player.TextSize = 14.000

under.Name = "under"
under.Parent = player
under.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
under.BorderSizePixel = 0
under.Position = UDim2.new(-0.068965517, 0, 1.94736838, 0)
under.Size = UDim2.new(0, 264, 0, 34)

r6.Name = "r6"
r6.Parent = under
r6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
r6.BackgroundTransparency = 1.000
r6.Position = UDim2.new(0.170454532, 0, 0.0513382182, 0)
r6.Size = UDim2.new(0, 34, 0, 30)
r6.Font = Enum.Font.SourceSans
r6.Text = "R6"
r6.TextColor3 = Color3.fromRGB(255, 255, 255)
r6.TextSize = 14.000

sep.Name = "sep"
sep.Parent = r6
sep.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
sep.BorderColor3 = Color3.fromRGB(153, 153, 153)
sep.BorderSizePixel = 0
sep.Position = UDim2.new(0, 0, 0.123142488, 0)
sep.Size = UDim2.new(0, 1, 0, 23)

play.Name = "play"
play.Parent = under
play.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play.BackgroundTransparency = 1.000
play.Position = UDim2.new(0.0416666605, 0, 0.0513382182, 0)
play.Size = UDim2.new(0, 34, 0, 30)
play.Font = Enum.Font.SourceSans
play.Text = "Play"
play.TextColor3 = Color3.fromRGB(255, 255, 255)
play.TextSize = 14.000

profile.Name = "profile"
profile.Parent = under
profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
profile.BackgroundTransparency = 1.000
profile.Position = UDim2.new(0.859848499, 0, 0.0513382182, 0)
profile.Size = UDim2.new(0, 34, 0, 30)
profile.Font = Enum.Font.SourceSans
profile.Text = ""
profile.TextColor3 = Color3.fromRGB(255, 255, 255)
profile.TextSize = 14.000

sep_2.Name = "sep"
sep_2.Parent = player
sep_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
sep_2.Position = UDim2.new(-0.0603448264, 0, 1.94736838, 0)
sep_2.Size = UDim2.new(0, 262, 0, 1)

Message.Name = "Message"
Message.Parent = Shadow
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.Position = UDim2.new(0.336734682, 0, -0.00334448158, 0)
Message.Size = UDim2.new(0, 200, 0, 28)
Message.Visible = false
Message.Font = Enum.Font.SourceSans
Message.Text = "Are you sure?"
Message.TextColor3 = Color3.fromRGB(143, 0, 0)
Message.TextSize = 14.000

profile_2.Name = "profile"
profile_2.Parent = animation
profile_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
profile_2.BackgroundTransparency = 1.000
profile_2.BorderSizePixel = 0
profile_2.Position = UDim2.new(0.840363622, -294, 0.597051561, -149)
profile_2.Size = UDim2.new(0, 267, 0, 170)
profile_2.Visible = false

Shadow_3.Name = "Shadow"
Shadow_3.Parent = profile_2

Frame_3.Parent = Shadow_3
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, -4, 0, -4)
Frame_3.Size = UDim2.new(1, 8, 1, 8)
Frame_3.Style = Enum.FrameStyle.DropShadow

Frame_4.Parent = Frame_3
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_4.BackgroundTransparency = 1.000
Frame_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0, -4, 0, -4)
Frame_4.Size = UDim2.new(1, 8, 1, 8)

mainFrame_2.Name = "mainFrame"
mainFrame_2.Parent = profile_2
mainFrame_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
mainFrame_2.BackgroundTransparency = 1.000
mainFrame_2.BorderSizePixel = 0
mainFrame_2.ClipsDescendants = true
mainFrame_2.Position = UDim2.new(-0.000796778651, 0, -0.00258674752, 0)
mainFrame_2.Size = UDim2.new(0, 264, 0, 168)
mainFrame_2.Image = "http://www.roblox.com/asset/?id=4530318781"
mainFrame_2.ImageColor3 = Color3.fromRGB(32, 32, 32)
mainFrame_2.ScaleType = Enum.ScaleType.Slice
mainFrame_2.SliceCenter = Rect.new(20, 20, 480, 480)

topbarFrame_2.Name = "topbarFrame"
topbarFrame_2.Parent = mainFrame_2
topbarFrame_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
topbarFrame_2.BackgroundTransparency = 1.000
topbarFrame_2.BorderSizePixel = 0
topbarFrame_2.Size = UDim2.new(0, 587, 0, 33)
topbarFrame_2.Image = "http://www.roblox.com/asset/?id=4530319192"
topbarFrame_2.ImageColor3 = Color3.fromRGB(24, 24, 24)
topbarFrame_2.ScaleType = Enum.ScaleType.Slice
topbarFrame_2.SliceCenter = Rect.new(20, 20, 480, 480)

miniBtn_2.Name = "miniBtn"
miniBtn_2.Parent = topbarFrame_2
miniBtn_2.AnchorPoint = Vector2.new(0, 0.5)
miniBtn_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miniBtn_2.BackgroundTransparency = 1.000
miniBtn_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
miniBtn_2.BorderSizePixel = 0
miniBtn_2.Position = UDim2.new(0, 531, 0.5, 0)
miniBtn_2.Size = UDim2.new(0, 19, 0, 19)
miniBtn_2.Image = "http://www.roblox.com/asset/?id=4132450915"
miniBtn_2.ImageColor3 = Color3.fromRGB(140, 30, 49)
miniBtn_2.ImageTransparency = 1.000

miniLabel_2.Name = "miniLabel"
miniLabel_2.Parent = miniBtn_2
miniLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
miniLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miniLabel_2.BackgroundTransparency = 1.000
miniLabel_2.BorderSizePixel = 0
miniLabel_2.Position = UDim2.new(-16.5526314, 0, 0.5, 0)
miniLabel_2.Size = UDim2.new(0, 25, 0, 25)
miniLabel_2.Visible = false
miniLabel_2.Font = Enum.Font.SourceSansLight
miniLabel_2.Text = "—"
miniLabel_2.TextColor3 = Color3.fromRGB(181, 181, 181)
miniLabel_2.TextSize = 15.000
miniLabel_2.TextWrapped = true

Minimize_2.Name = "Minimize"
Minimize_2.Parent = miniBtn_2
Minimize_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize_2.BackgroundTransparency = 1.000
Minimize_2.Size = UDim2.new(0, 19, 0, 19)
Minimize_2.Font = Enum.Font.SourceSans
Minimize_2.Text = ""
Minimize_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimize_2.TextSize = 14.000

Hi_2.Name = "Hi"
Hi_2.Parent = miniBtn_2
Hi_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hi_2.BackgroundTransparency = 1.000
Hi_2.Position = UDim2.new(-10.726819, 0, -0.00334408414, 0)
Hi_2.Size = UDim2.new(0, 193, 0, 22)
Hi_2.Visible = false
Hi_2.Font = Enum.Font.SourceSans
Hi_2.Text = "Credits to dangerxusIove for converting Sentinel SS."
Hi_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Hi_2.TextScaled = true
Hi_2.TextSize = 14.000
Hi_2.TextStrokeTransparency = 0.000
Hi_2.TextWrapped = true

sunglasseslogo_2.Name = "sunglasseslogo"
sunglasseslogo_2.Parent = topbarFrame_2
sunglasseslogo_2.AnchorPoint = Vector2.new(0, 0.5)
sunglasseslogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sunglasseslogo_2.BackgroundTransparency = 1.000
sunglasseslogo_2.BorderSizePixel = 0
sunglasseslogo_2.Position = UDim2.new(0, 2, 0.431818187, 0)
sunglasseslogo_2.Size = UDim2.new(0, 24, 0, 28)
sunglasseslogo_2.Image = "http://www.roblox.com/asset/?id=5084359542"
sunglasseslogo_2.ScaleType = Enum.ScaleType.Fit

TextLabel_2.Parent = sunglasseslogo_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(154, 154, 154)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.708333373, 0, 0.249999866, 0)
TextLabel_2.Size = UDim2.new(0, 121, 0, 16)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Profile"
TextLabel_2.TextColor3 = Color3.fromRGB(189, 189, 189)
TextLabel_2.TextSize = 12.000

exitBtn_2.Name = "exitBtn"
exitBtn_2.Parent = topbarFrame_2
exitBtn_2.AnchorPoint = Vector2.new(0, 0.5)
exitBtn_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitBtn_2.BackgroundTransparency = 1.000
exitBtn_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
exitBtn_2.BorderSizePixel = 0
exitBtn_2.Position = UDim2.new(0.0340715498, 541, 0.5, 0)
exitBtn_2.Size = UDim2.new(0, 19, 0, 19)
exitBtn_2.Image = "http://www.roblox.com/asset/?id=4132450915"
exitBtn_2.ImageColor3 = Color3.fromRGB(140, 30, 49)
exitBtn_2.ImageTransparency = 1.000

exitLabel_2.Name = "exitLabel"
exitLabel_2.Parent = exitBtn_2
exitLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
exitLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitLabel_2.BackgroundTransparency = 1.000
exitLabel_2.BorderSizePixel = 0
exitLabel_2.Position = UDim2.new(-16.4473686, 0, 0.5, 0)
exitLabel_2.Size = UDim2.new(0, 25, 0, 25)
exitLabel_2.Visible = false
exitLabel_2.Font = Enum.Font.SourceSansLight
exitLabel_2.Text = "×"
exitLabel_2.TextColor3 = Color3.fromRGB(181, 181, 181)
exitLabel_2.TextSize = 35.000
exitLabel_2.TextWrapped = true

Exit_2.Name = "Exit"
Exit_2.Parent = exitBtn_2
Exit_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit_2.BackgroundTransparency = 1.000
Exit_2.Size = UDim2.new(0, 19, 0, 19)
Exit_2.Font = Enum.Font.SourceSans
Exit_2.Text = ""
Exit_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit_2.TextSize = 14.000

pfp.Name = "pfp"
pfp.Parent = mainFrame_2
pfp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pfp.BackgroundTransparency = 1.000
pfp.Position = UDim2.new(0.314393967, 0, 0.178571418, 0)
pfp.Size = UDim2.new(0, 98, 0, 100)
pfp.Image = "http://www.roblox.com/asset/?id=5084359542"

under_2.Name = "under"
under_2.Parent = pfp
under_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
under_2.BackgroundTransparency = 1.000
under_2.BorderSizePixel = 0
under_2.Position = UDim2.new(-0.806122422, 0, 1.04999971, 0)
under_2.Size = UDim2.new(0, 264, 0, 33)
under_2.Image = "rbxassetid://3570695787"
under_2.ImageColor3 = Color3.fromRGB(29, 29, 29)
under_2.ScaleType = Enum.ScaleType.Slice
under_2.SliceCenter = Rect.new(100, 100, 100, 100)
under_2.SliceScale = 0.050

top.Name = "top"
top.Parent = under_2
top.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
top.BorderSizePixel = 0
top.Position = UDim2.new(-0.0151515156, 0, 0.134539977, 0)
top.Size = UDim2.new(0, 268, 0, 4)

uaid.Name = "uaid"
uaid.Parent = under_2
uaid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uaid.BackgroundTransparency = 1.000
uaid.Position = UDim2.new(0, 0, 0.0436308905, 0)
uaid.Size = UDim2.new(0, 49, 0, 28)
uaid.Font = Enum.Font.SourceSans
uaid.Text = "UAID  "
uaid.TextColor3 = Color3.fromRGB(255, 255, 255)
uaid.TextSize = 14.000

sep_3.Name = "sep"
sep_3.Parent = uaid
sep_3.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
sep_3.BorderSizePixel = 0
sep_3.Position = UDim2.new(0.817503631, 0, 0.25, 0)
sep_3.Size = UDim2.new(0, 1, 0, 15)

_1.Name = "1"
_1.Parent = sep_3
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BackgroundTransparency = 1.000
_1.Position = UDim2.new(-0.87121582, 0, -0.453338623, 0)
_1.Size = UDim2.new(0, 39, 0, 28)
_1.Font = Enum.Font.SourceSans
_1.Text = "1"
_1.TextColor3 = Color3.fromRGB(255, 255, 255)
_1.TextSize = 14.000

Message_2.Name = "Message"
Message_2.Parent = profile_2
Message_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message_2.BackgroundTransparency = 1.000
Message_2.Position = UDim2.new(0.336734682, 0, -0.00334448158, 0)
Message_2.Size = UDim2.new(0, 200, 0, 28)
Message_2.Visible = false
Message_2.Font = Enum.Font.SourceSans
Message_2.Text = "Are you sure?"
Message_2.TextColor3 = Color3.fromRGB(143, 0, 0)
Message_2.TextSize = 14.000

-- Scripts:

local function XHBPHPO_fake_script() -- miniBtn.LocalScript 
	local script = Instance.new('LocalScript', miniBtn)

	--[[local button = script.Parent
	local main = button.Parent.Parent.Parent.Parent.Shadow
	local minimizebtn = button.Minimize
	local openbtn = main.Parent.Open
	
	function entered()
		button.BackgroundColor3 = Color3.fromRGB(140, 30, 49)
		button.ImageTransparency = 0
		script.Parent.Hi.Visible = true
	end
	function left()
		button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		button.ImageTransparency = 1
		script.Parent.Hi.Visible = false
	end
	
	function clicked()
		openbtn.Visible = true
		openbtn.open.Active = true
		main.Visible = false
	end
	
	minimizebtn.MouseButton1Click:Connect(clicked)
	button.MouseEnter:Connect(entered)
	button.MouseLeave:Connect(left)--]]
end
coroutine.wrap(XHBPHPO_fake_script)()
local function IUPFXC_fake_script() -- exitBtn.LocalScript 
	local script = Instance.new('LocalScript', exitBtn)

	--[[local button = script.Parent
	local main = button.Parent.Parent.Parent.Parent
	local exitbtn = button.Exit
	local message = button.Parent.Parent.Parent.Message
	local confirm;
	
	
	function entered()
		button.BackgroundColor3 = Color3.fromRGB(140, 30, 49)
		button.ImageTransparency = 0
	end
	function left()
		button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		button.ImageTransparency = 1
	end
	
	function clicked()
		if not confirm then
			message.Visible = true
			wait(1)
			message.Visible = false
			confirm = true
			return
		end
		main.Enabled = false
		main:Destroy()
	end
	
	exitbtn.MouseButton1Click:Connect(clicked)
	button.MouseEnter:Connect(entered)
	button.MouseLeave:Connect(left)--]]
end
coroutine.wrap(IUPFXC_fake_script)()
local function YLELJ_fake_script() -- r6.LocalScript 
	local script = Instance.new('LocalScript', r6)

	script.Parent.MouseButton1Click:Connect(function()
	spawn(function()
	    while wait() do
	        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 1/0)
	        sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", 1/0)
	    end
	end)
	
	wait(.5)
	
HumanDied = false
local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
    end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider
function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied = true
    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()
    while true do
        game:GetService("RunService").RenderStepped:wait()
        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then
                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()
            end
            break
        end		
    end
end)()


SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end
		end)()]]
	elseif v:IsA("BasePart") and v.Name == "Head" then
		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
	end
end

if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end
	end)
end
coroutine.wrap(YLELJ_fake_script)()
local function VUDGGV_fake_script() -- play.LocalScript 
	local script = Instance.new('LocalScript', play)

	script.Parent.MouseButton1Click:Connect(function()
	animid="rbxassetid://"..script.Parent.Parent.Parent.Text
	plr=game.Players.LocalPlayer
	bruhmomentrighthahahahhahah=plr.Character
	cf=bruhmomentrighthahahahhahah.HumanoidRootPart.CFrame
	t=bruhmomentrighthahahahhahah.Torso
	rs=t["Right Shoulder"]
	ls=t["Left Shoulder"]
	rh=t["Right Hip"]
	lh=t["Left Hip"]
	n=t["Neck"]
	rj=bruhmomentrighthahahahhahah.HumanoidRootPart["RootJoint"]
	rsc0=rs.C0
	lsc0=ls.C0
	rhc0=rh.C0
	lhc0=lh.C0
	rjc0=rj.C0
	nc0=n.C0
	gc0=CFrame.new()
	orsc0=rs.C0
	olsc0=ls.C0
	orhc0=rh.C0
	olhc0=lh.C0
	orjc0=rj.C0
	onc0=n.C0
	count2 = 100
	maxcount2=100
	game["Run Service"].Heartbeat:Connect(function()
		count2 = count2+1
		if count2<=maxcount2 then
			rs.Transform=rs.Transform:Lerp(rsc0,count2/maxcount2)
			ls.Transform=ls.Transform:Lerp(lsc0,count2/maxcount2)
			rh.Transform=rh.Transform:Lerp(rhc0,count2/maxcount2)
			lh.Transform=lh.Transform:Lerp(lhc0,count2/maxcount2)
			n.Transform=n.Transform:Lerp(nc0,count2/maxcount2)
			rj.Transform=rj.Transform:Lerp(rjc0,count2/maxcount2)
		end
	end)
	animid=game:GetObjects(animid)[1]
	function wait2(tim)
	    if tim<0.1 then
	        game.RunService.Heartbeat:Wait()
	    else
	    for i=1,tim*40 do
	        game.RunService.Heartbeat:Wait()
	    end
	    end
	end
	anim={}
	function kftotbl(kf)
		tbl3 = {}
		for i,v in pairs(kf:GetDescendants()) do
			if v:IsA("Pose") then
			tbl3[string.sub(v.Name,1,1)..string.sub(v.Name,#v.Name,#v.Name)] = v.CFrame
			end
		end
		return(tbl3)
	end
	for i,v in pairs(animid:GetChildren()) do
	    if v:IsA("Keyframe") then
	    anim[v.Time]=kftotbl(v)
	    end
	end
	
	function getnext(tbl,number)
	c=100
	rtrnv=0
	for i,v in pairs(tbl) do
	    if i>number and i-number<c then
	        c=i-number
	        rtrnv=i
	    end
	end
	return(rtrnv)
	end
	count = 0
	char=game.Players.LocalPlayer.Character
	hhhh=game.Players.LocalPlayer.Character.Humanoid.Animator
	hhhh.Parent = nil
	for _,v in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
	    v:Stop()
	end
	while wait() do
	for i,oasjdadlasdkadkldjkl in pairs(anim) do
	asdf=getnext(anim,count)
	v=anim[asdf]
	if v["Lg"] then
	    lhc0 = v["Lg"]
	end
	if v["Rg"] then
	    rhc0 = v["Rg"]
	end
	if v["Lm"] then
	    lsc0 = v["Lm"]
	end
	if v["Rm"] then
	    rsc0 = v["Rm"]
	end
	if v["To"] then
	    rjc0 = v["To"]
	end
	if v["Hd"] then
	    nc0 = v["Hd"]
	end
	count2=0
	print(asdf)
	maxcount2=asdf-count
	count=asdf
	wait2(asdf-count)
	count2=maxcount2
	if v["Lg"] then
	    char.Torso["Left Hip"].Transform = v["Lg"]
	end
	if v["Rg"] then
	    char.Torso["Right Hip"].Transform = v["Rg"]
	end
	if v["Lm"] then
	    char.Torso["Left Shoulder"].Transform = v["Lm"]
	end
	if v["Rm"] then
	    char.Torso["Right Shoulder"].Transform = v["Rm"]
	end
	if v["To"] then
	    char.HumanoidRootPart["RootJoint"].Transform = v["To"]
	end
	if v["Hd"] then
	    char.Torso["Neck"].Transform = v["Hd"]
	end
	end
	end
	end)
end
coroutine.wrap(VUDGGV_fake_script)()
local function QUAWSM_fake_script() -- profile.LocalScript 
	local script = Instance.new('LocalScript', profile)

	script.Parent.MouseButton1Click:Connect(function()
	if script.Parent.Parent.Parent.Parent.Parent.Parent.profile.Visible == true then script.Parent.Parent.Parent.Parent.Parent.Parent.profile.Visible = false else script.Parent.Parent.Parent.Parent.Parent.Parent.profile.Visible = true end
	end)
end
coroutine.wrap(QUAWSM_fake_script)()
local function VKQFRDV_fake_script() -- Shadow.Drag 
	local script = Instance.new('LocalScript', Shadow)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    dragInput = nil
	    dragStart = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			--Frame.Position = Position
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.09), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(VKQFRDV_fake_script)()
local function RVZEA_fake_script() -- miniBtn_2.LocalScript 
	local script = Instance.new('LocalScript', miniBtn_2)

	local button = script.Parent
	local main = button.Parent.Parent.Parent.Parent.Shadow
	local minimizebtn = button.Minimize
	local openbtn = main.Parent.Open
	
	function entered()
		button.BackgroundColor3 = Color3.fromRGB(140, 30, 49)
		button.ImageTransparency = 0
		script.Parent.Hi.Visible = true
	end
	function left()
		button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		button.ImageTransparency = 1
		script.Parent.Hi.Visible = false
	end
	
	function clicked()
		openbtn.Visible = true
		openbtn.open.Active = true
		main.Visible = false
	end
	
	minimizebtn.MouseButton1Click:Connect(clicked)
	button.MouseEnter:Connect(entered)
	button.MouseLeave:Connect(left)
end
coroutine.wrap(RVZEA_fake_script)()
local function JVWSQ_fake_script() -- exitBtn_2.LocalScript 
	local script = Instance.new('LocalScript', exitBtn_2)

	local button = script.Parent
	local main = button.Parent.Parent.Parent.Parent
	local exitbtn = button.Exit
	local message = button.Parent.Parent.Parent.Message
	local confirm;
	
	
	function entered()
		button.BackgroundColor3 = Color3.fromRGB(140, 30, 49)
		button.ImageTransparency = 0
	end
	function left()
		button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		button.ImageTransparency = 1
	end
	
	function clicked()
		if not confirm then
			message.Visible = true
			wait(1)
			message.Visible = false
			confirm = true
			return
		end
		main.Enabled = false
		main:Destroy()
	end
	
	exitbtn.MouseButton1Click:Connect(clicked)
	button.MouseEnter:Connect(entered)
	button.MouseLeave:Connect(left)
end
coroutine.wrap(JVWSQ_fake_script)()
local function FQQC_fake_script() -- _1.LocalScript 
	local script = Instance.new('LocalScript', _1)

	script.Parent.Text = math.random(1,30)
end
coroutine.wrap(FQQC_fake_script)()
local function GHALIFO_fake_script() -- profile_2.Drag 
	local script = Instance.new('LocalScript', profile_2)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    dragInput = nil
	    dragStart = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			--Frame.Position = Position
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.09), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(GHALIFO_fake_script)()
