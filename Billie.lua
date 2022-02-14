--[[Billie Eilish Script!!!
Original by: mrfunnylaughs4.
Fixed by: gfw#8427            ]]--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
userinput = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local char = game.Workspace.non
if char:FindFirstChild("Animate") then
	char.Animate:Destroy()
end
local hum = char:FindFirstChildOfClass("Humanoid")
local tors = char.Torso
local head = char.Head
local rootpart = char.HumanoidRootPart
local RS = tors["Right Shoulder"]
local LS = tors["Left Shoulder"]
local RH = tors["Right Hip"]
local LH = tors["Left Hip"]
local neck = tors.Neck
local rootj = rootpart.RootJoint
local RSnor = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local LSnor = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHnor = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local LHnor = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local necknor = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local rootjnor = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local sine = 0
local music = Instance.new("Sound")
music.Parent = tors
local timepos = 0
local attack = false
local rooted = false
local playing = true
local speed = 16

local nokill = {
	"",
	""
}

local wig = Instance.new("Part")
wig.Size = Vector3.new(1.4, 1.99, 0.84)
wig.Parent = head
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://952995462"
mesh.Scale = Vector3.new(1.44, 1.4, 1.22)
mesh.TextureId = "rbxassetid://949743130"
mesh.VertexColor = Vector3.new(1, 0.839, 0.73)
mesh.Parent = wig
local weld = Instance.new("Weld")
weld.Part0 = wig
weld.Part1 = head
weld.C1 = CFrame.new(0, -0.8, 0.25)
weld.Parent = wig

userinput.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.T and attack == false then
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://145757437"
		sound.Volume = 10
		sound.Parent = head
		local effect = Instance.new("PitchShiftSoundEffect")
		effect.Octave = 1.75
		effect.Parent = sound
		sound:Play()
		for i = 1, 120 do
			game:GetService("RunService").Stepped:Wait()
			head.Size = Vector3.new(2 + 1 * math.sin(sine / 5), 1 + 1 * math.sin(sine / 5), 1 + 1 * math.sin(sine / 5)) 
			neck.C0 = necknor * CFrame.new(0, 0, math.sin(sine / 5))
		end
		head.Size = Vector3.new(2, 1, 1)
	end
	if key.KeyCode == Enum.KeyCode.R and attack == false then
		attack = true
		rooted = true
		playing = false
		local scream = Instance.new("Sound")
		scream.SoundId = "rbxassetid://6069962045"
		scream.Parent = head
		scream:Play()
		repeat
			game:GetService("RunService").Stepped:Wait()
			RS.C0 = RSnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
			LS.C0 = LSnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
			RH.C0 = RHnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
			LH.C0 = LHnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
			rootj.C0 = rootjnor * CFrame.new(0, 0, 3 * math.sin(sine / 2)) * CFrame.Angles(sine / 2, 0, 0)
			neck.C0 = necknor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
		until scream.Playing == false
		scream:Destroy()
		rooted = false
		if math.random(1, 3) == 1 then
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://2878822762"
			sound.Volume = 10
			sound.PlaybackSpeed = 2
			sound.Parent = head
			sound:Play()
			repeat
				game:GetService("RunService").Stepped:Wait()
				head.Size = Vector3.new(2 + 1 * math.sin(sine / 2), 1 + 1 * math.sin(sine / 2), 1 + 1 * math.sin(sine / 2)) 
				RS.C0 = RSnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
				LS.C0 = LSnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
				RH.C0 = RHnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
				LH.C0 = LHnor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
				rootj.C0 = rootjnor
				neck.C0 = necknor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
			until sound.Playing == false
			head.Size = Vector3.new(2, 1, 1)
		end
		playing = true
		attack = false
	end
	if key.KeyCode == Enum.KeyCode.Y and attack == false then
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://3475233802"
			sound.Volume = 10
			sound.Parent = head
			sound:Play()
			local thing = head.Touched:Connect(function(hit)
				local found = false
				for i,v in pairs(nokill) do
					if game:GetService("Players"):FindFirstChild(v) then
						if hit:IsDescendantOf(game:GetService("Players")[v].Character) then
							found = true
						end
					end
				end
				if found == false and hit.Size.Magnitude < 300 then
					local parent = hit.Parent
					hit.Parent = nil
					wait(math.random(20, 50) / 10)
					hit.Anchored = false
					hit.BrickColor = BrickColor.new("Bright green")
					hit.CFrame = head.CFrame
					hit.Velocity = head.CFrame.LookVector * 150
					hit.Parent = parent
					local sound = Instance.new("Sound")
					sound.SoundId = "rbxassetid://704088758"
					sound.Volume = 10
					sound.Parent = head
					sound:Play()
				end
			end)
			for i = 1, 180 do
				game:GetService("RunService").Stepped:Wait()
				head.Size = Vector3.new(20, 10, 10)
				neck.C0 = necknor * CFrame.new(0, -10, 0)
			end
			thing:Disconnect()
			head.Size = Vector3.new(2, 1, 1)
	end
	if key.KeyCode == Enum.KeyCode.P and attack == false then
		attack = true
		playing = false
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2533880583"
		sound.Volume = 3
		sound.TimePosition = 20.15
		sound.Parent = head
		sound:Play()
		wig.Parent = nil
		local hat = Instance.new("Part")
		hat.Name = "JevilHat"
		hat.CanCollide = false
		hat.Size = Vector3.new(1, 1, 1)
		hat.Parent = char
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = "rbxassetid://193760002"
		mesh.TextureId = "rbxassetid://193760041"
		mesh.VertexColor = Vector3.new(0.5, 0, 0.5)
		mesh.Parent = hat
		local weld = Instance.new("Weld")
		weld.Part0 = head
		weld.Part1 = hat
		weld.C0 = CFrame.new(0, 0.5, 0.31)
		weld.Parent = hat
		for i,v in pairs(head:GetChildren()) do
			if v:IsA("Decal") then
				local old = v.Texture
				v.Texture = "rbxassetid://241553801"
				coroutine.resume(coroutine.create(function()
					repeat game:GetService("RunService").Stepped:Wait() until sound.Playing == false or sound.TimePosition > 30.35
					v.Texture = old
				end))
			end
		end
		local anything = Instance.new("Sound")
		anything.SoundId = "rbxassetid://2544975373"
		anything.Volume = 10
		anything.Parent = head
		anything:Play()
		speed = 50
		repeat
			game:GetService("RunService").Stepped:Wait()
			RS.C0 = RSnor * CFrame.Angles(0, 0, math.pi / 2 - 1 * math.sin(sine / 3))
			LS.C0 = LSnor * CFrame.Angles(0, 0, -math.pi / 2 + 1 * math.sin(sine / 3))
			RH.C0 = RHnor
			LH.C0 = LHnor
			rootj.C0 = rootjnor
			neck.C0 = necknor
		until sound.Playing == false or sound.TimePosition > 30.35
		speed = 16
		hat:Destroy()
		wig.Parent = head
		sound:Destroy()
		playing = true
		attack = false
	end
	if key.KeyCode == Enum.KeyCode.F and attack == false then
		attack = true
		playing = false
		speed = 150
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2259766079"
		sound.Volume = 10
		sound.Parent = head
		sound:Play()
		local timepos = 0
		local thing = 1
		repeat
			game:GetService("RunService").Stepped:Wait()
			if sound.Parent ~= head then
				local sound = Instance.new("Sound")
				sound.TimePosition = timepos
				sound.Parent = head
			end
			sound.Volume = 10
			sound.PlaybackSpeed = 1
			sound.Playing = true
			timepos = sound.TimePosition
			RS.C0 = RSnor * CFrame.Angles(0, 0, math.pi / 2 - 1 * math.sin(sine / (15 / thing)))
			LS.C0 = LSnor * CFrame.Angles(0, 0, -math.pi / 2 + 1 * math.sin(sine / (15 / thing)))
			RH.C0 = RHnor
			LH.C0 = LHnor
			rootj.C0 = rootjnor
			neck.C0 = necknor
			thing = thing + 0.005
		until sound.Playing == false or sound.TimePosition > 10
		local old = head.BrickColor
		repeat
			game:GetService("RunService").Stepped:Wait()
			if sound.TimePosition > 20 then
				head.BrickColor = BrickColor.new("Sunrise")
			end
			sound.PlaybackSpeed = sound.PlaybackSpeed + 0.001
			head.Size = head.Size + Vector3.new(0.01, 0.01, 0.01)
			neck.C0 = necknor * CFrame.Angles(math.random(-100, 100) / 20, math.random(-100, 100) / 20, math.random(-100, 100) / 20)
		until sound.Playing == false
		for i = 1, 20 do
			local clone = head:Clone()
			clone.Parent = workspace
			clone.Velocity = Vector3.new(0, 200, 0)
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://2878822762"
			sound.Volume = 0.5
			sound.Parent = head
			sound:Play()
		end
		head.Size = Vector3.new(2, 1, 1)
		head.BrickColor = old
		speed = 16
		playing = true
		attack = false
	end
	if key.KeyCode == Enum.KeyCode.U and attack == false then
		local part = Instance.new("Part")
		part.CFrame = rootpart.CFrame * CFrame.new(0, 0, 5)
		part.Size = Vector3.new(3, 4, 3)
		part.Parent = workspace
		local click = Instance.new("ClickDetector")
		click.Parent = part
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = "rbxassetid://430897733"
		mesh.Scale = Vector3.new(4, 4, 4)
		mesh.TextureId = "rbxassetid://430897961"
		mesh.Parent = part
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://741801027"
		sound.Volume = 3
		sound.Parent = part
		sound:Play()
		click.MouseClick:Connect(function()
			local banana = Instance.new("Part")
			banana.Size = Vector3.new(1, 1, 1)
			banana.CFrame = part.CFrame * CFrame.new(0, 5, 0)
			banana.Velocity = Vector3.new(math.random(-25, 25), 200, math.random(-25, 25))
			banana.Parent = workspace
			local mesh = Instance.new("SpecialMesh")
			mesh.MeshType = Enum.MeshType.FileMesh
			mesh.MeshId = "rbxassetid://28937301"
			mesh.TextureId = "rbxassetid://28937670"
			mesh.Scale = Vector3.new(0.8, 0.8, 0.8)
			mesh.Parent = banana
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://28976727"
			sound.Volume = 2
			sound.Parent = banana
			sound:Play()
			local touched = false
			banana.Touched:Connect(function(hit)
				if hit.Parent and hit.Parent:FindFirstChild("Head") and not hit:IsDescendantOf(char) and touched == false then
					touched = true
					coroutine.resume(coroutine.create(function()
						for i = 1, 60 do
							game:GetService("RunService").Stepped:Wait()
							mesh.Scale = mesh.Scale + Vector3.new(0.3, 0.3, 0.3)
							banana.Size = banana.Size + Vector3.new(0.3, 0.3, 0.3)
						end
						banana:Destroy()
					end))
					local sound = Instance.new("Sound")
					sound.SoundId = "rbxassetid://168411776"
					sound.Volume = 10
					sound.Parent = hit.Parent.Head
					sound:Play()
				end
			end)
		end)
		repeat game:GetService("RunService").Stepped:Wait() until sound.Playing == false
		part:Destroy()
	end
end)

			
			
while game:GetService("RunService").Stepped:Wait() do
	sine = sine + 1
	if attack then 
		if rooted then
			hum.WalkSpeed = 0
			hum.JumpPower = 0
		else
			hum.WalkSpeed = speed
			hum.JumpPower = 50
		end
	else
		hum.WalkSpeed = 16
		hum.JumpPower = 50
	end
	if music.Parent ~= tors then
		music = Instance.new("Sound")
		music.Parent = tors
		music.TimePosition = timepos
	else
		timepos = music.TimePosition
	end
	music.PlaybackSpeed = 1
	music.Volume = 1
	music.SoundId = "rbxassetid://4710045505"
	music.Playing = playing
    music.Looped = true
	local torsvel = (tors.Velocity * Vector3.new(1, 0, 1)).Magnitude
	local hitfloor = workspace:FindPartOnRay(Ray.new(char.HumanoidRootPart.CFrame.Position, ((CFrame.new(char.HumanoidRootPart.Position, char.HumanoidRootPart.Position - Vector3.new(0, 1, 0))).LookVector).Unit * 4), char)
	if attack == false then
		if torsvel < 1 and hitfloor then
			RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, 0, math.pi / 2 + 0.3 * math.cos(sine / 7) + 0.5 * math.sin(sine / 14)), 0.15)
			LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, 0, 0.5 + 0.2 * math.sin(sine / 7) + 0.15 * math.cos(sine / 14)), 0.15)
			RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(0, 0, -0.5 + 1 * math.sin(sine / 14) - 0.5 * math.cos(sine / 28)), 0.15)
			LH.C0 = LH.C0:Lerp(LHnor * CFrame.new(0.1 * math.sin(sine / 3.5) + 0.2 * math.cos(sine / 14), 0, 0) * CFrame.Angles(0, 0.2 * math.cos(sine / 28) - 0.3 * math.sin(sine / 48) + 0.15 * math.cos(sine / 3.5) - 0.25 * math.sin(sine / 3.5), -0.1 * math.sin(sine / 3.5) - 0.2 * math.cos(sine / 14)), 0.15)
			rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.3 * math.cos(sine / 4.5)), 0.15)
			neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(math.sin(sine / 10), math.cos(sine / 10), 0), 0.15)
		end
		if torsvel > 1 and hitfloor then
			RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, sine / 5, -1 * math.sin(sine / 7)), 0.15)
			LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, sine / 5, -1 * math.sin(sine / 7)), 0.15)
			RH.C0 = RH.C0:Lerp(RHnor * CFrame.new(1 * math.cos(sine / 7), 0.15 + 0.5 * math.cos(sine / 7), 0) * CFrame.Angles(0, 0.3 * math.sin(sine / 7), -0.23 + 1 * math.sin(sine / 7)), 0.15)
			LH.C0 = LH.C0:Lerp(LHnor * CFrame.new(1 * math.cos(sine / 7), 0.15 - 0.5 * math.cos(sine / 7), 0) * CFrame.Angles(0, 0.3 * math.sin(sine / 7), 0.23 + 1 * math.sin(sine / 7)), 0.15)
			rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, -0.1 + 0.2 * math.cos(sine / 3.5)) * CFrame.Angles(0.2 - 0.4 * math.sin(sine / 3.5), rootpart.RotVelocity.Y / 50, -0.3 * math.sin(sine / 7)), 0.15)
			neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(0.4 * math.sin(sine / 3.5), 0, -head.RotVelocity.Y / 15 + 0.3 * math.sin(sine / 7)), 0.15)
		end
		if not hitfloor then
			RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(math.clamp(tors.Velocity.Y / 200 - 0.3, -hum.JumpPower / 200 - 0.3, hum.JumpPower / 200 - 0.3), 0, math.pi / 1.5), 0.15)
			LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(math.clamp(tors.Velocity.Y / 200 - 0.3, -hum.JumpPower / 200 - 0.3, hum.JumpPower / 200 - 0.3), 0, -math.pi / 1.5), 0.15)
			RH.C0 = RH.C0:Lerp(RHnor + Vector3.new(0, -0.6, 0.4), 0.15)
			LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, -0.3) + Vector3.new(0, -0.1, 0), 0.15)
			rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(-math.clamp(tors.Velocity.Y / 100, -hum.JumpPower / 100, hum.JumpPower / 100), 0, 0), 0.15)
			neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(math.random(-100, 100) / 1000, math.random(-100, 100) / 1000, math.random(-100, 100) / 1000), 0.15)
		end
	end
end
