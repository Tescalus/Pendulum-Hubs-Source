--ebolacancer666
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
_G.loop = true
local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }
    
    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')--This will get the first "SpecialMesh" it finds if it does not find any, then it will return nil
    if Mesh and m then --If Mesh is set to true and it finds a mesh it will destroy it
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true
    
    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}
        
end 
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
wait(math.randomseed(tick()))
local plr=game.Players.LocalPlayer;ch=game.Workspace.non;
local tor=ch.Torso;local head=ch.Head;local ra=ch['Right Arm'];local la=ch['Left Arm'];local rl=ch['Right Leg'];local ll=ch['Left Leg'];
local rj=ch.HumanoidRootPart.RootJoint;local neck=tor.Neck;
local rm=Instance.new("Weld",tor);rm.C1=CFrame.new(0,0.5,0);rm.C0=CFrame.new(1.5,0.5,0);rm.Part0=tor;rm.Part1=ra;
local lm=Instance.new("Weld",tor);lm.C1=CFrame.new(0,0.5,0);lm.C0=CFrame.new(-1.5,0.5,0);lm.Part0=tor;lm.Part1=la;
local rlm=Instance.new("Weld",tor);rlm.C1=CFrame.new(0,1,0);rlm.C0=CFrame.new(0.5,-1,0);rlm.Part0=tor;rlm.Part1=rl;
local llm=Instance.new("Weld",tor);llm.C1=CFrame.new(0,1,0);llm.C0=CFrame.new(-0.5,-1,0);llm.Part0=tor;llm.Part1=ll;
local hum=ch.Humanoid
for i,v in pairs(head:GetChildren()) do if v.ClassName=="Sound" then v:Destroy() end end
rj.C0=CFrame.new()
rj.C1=CFrame.new()
tor['Right Shoulder']:Destroy();tor['Left Shoulder']:Destroy();tor['Right Hip']:Destroy();tor['Left Hip']:Destroy();
neck.C0=CFrame.new(0,1,0);neck.C1=CFrame.new(0,-0.5,0);
rmC0=rm.C0;rmC1=rm.C1;lmC0=lm.C0;lmC1=lm.C1;nC0=neck.C0;nC1=neck.C1;rjC0=rj.C0;rjC1=rj.C1;rlmC0=rlm.C0;rlmC1=rlm.C1;llmC0=llm.C0;llmC1=llm.C1;
local defWS=16
local defJP=50
hum.WalkSpeed=defWS
hum.JumpPower=defJP
ch:WaitForChild("Animate"):Destroy()
hum:WaitForChild("Animator"):Destroy()
local mo=plr:GetMouse();local cam=workspace.CurrentCamera;

local godName="Pharoah"
local godTalkSFX="http://www.roblox.com/asset/?id=358280695"

local anim={
	idle={
		priority=1,
	},
	walk={
		priority=1,
	},
	jump={
		priority=3,
	},
	descend={
		priority=2,
	},
	enterflymode={
		priority=4,
	},
	fly={
		priority=1,
	},
	chestbeam={
		priority=4,
	},
	sword1={
		priority=4,
	},
	sword2={
		priority=4,
	},
	sword3={
		priority=4,
	},
	bladestorm={
		priority=4,
	}
}

local talkGui=Instance.new("BillboardGui",head)
local im=Instance.new("ImageLabel",talkGui)
local text=Instance.new("TextLabel",im)
talkGui.Name="BillBoardGui"
talkGui.Size=UDim2.new(15,0,5,0)
talkGui.Active=true
talkGui.ExtentsOffset=Vector3.new(0,3.25,0)

im.Position=UDim2.new(0.10000000149012,0,0,0)
im.Size=UDim2.new(0.80000001192093,0,0.80000001192093,0)
im.Position=UDim2.new(0.10000000149012,0,0,0)
im.Active=true
im.BackgroundColor3=Color3.new(0,0,0)
im.BackgroundTransparency=1
im.Image="http://www.roblox.com/asset/?id=0"

text.BackgroundTransparency=1
text.Size=UDim2.new(1,0,1,0)
text.BackgroundColor3=Color3.new(1,1,1)
text.Font=Enum.Font.SourceSans
text.FontSize=Enum.FontSize.Size14
text.TextScaled=true
text.TextWrapped=true
text.Text=""

local talkSound=Instance.new("Sound",head)
talkSound.SoundId=godTalkSFX
talkSound.Volume=0.85

function say(msg,col,strokeCol,font)
	coroutine.resume(coroutine.create(function()
		text.TextColor3=col
		text.TextStrokeColor3=strokeCol
		text.Font=font
		text.Text=""..godName..": "
		for i=1,msg:len() do
			local x=math.random(855,1155)
			talkSound.Pitch=x/1000
			talkSound:play()
			text.Text=""..text.Text..""..msg:sub(i,i)..""
			wait(.05)
		end
		wait(1.5)
		text.Text=""
	end))
end

plr.Chatted:connect(function(msg)
	say(msg,Color3.new(1,0.2,0.2),Color3.new(0.85,0,0),"ArialBold")
end)

local mainGui=Instance.new("ScreenGui",plr.PlayerGui)
mainGui.Name="OptionsGui"
local FlyOption1=Instance.new("TextLabel",mainGui)
FlyOption1.Name="fly1"
FlyOption1.BackgroundTransparency=0.45
FlyOption1.BackgroundColor3=Color3.new(0.3,0.3,0.3)
FlyOption1.BorderSizePixel=0
FlyOption1.Size=UDim2.new(0,125,0,40)
FlyOption1.Position=UDim2.new(0,-125+1,0.5,-40-1)
FlyOption1.Text="F - Air walk"
FlyOption1.Font=Enum.Font.SourceSansLight
FlyOption1.FontSize=Enum.FontSize.Size24
FlyOption1.TextColor3=Color3.new(1,1,1)
FlyOption1.TextStrokeTransparency=0

FlyOption1:TweenPosition(UDim2.new(0,1,0.5,-40-1),"Out","Bounce",1,false,nil)

function displayFlyOptions()
	local FlyOption2=Instance.new("TextLabel",mainGui)
	FlyOption2.BackgroundTransparency=0.45
	FlyOption2.BackgroundColor3=Color3.new(0.3,0.3,0.3)
	FlyOption2.BorderSizePixel=0
	FlyOption2.Size=UDim2.new(0,125,0,40)
	FlyOption2.Position=UDim2.new(0,-125+1,0.5,0)
	FlyOption2.Text="E - Light beam"
	FlyOption2.Font=Enum.Font.SourceSansLight
	FlyOption2.FontSize=Enum.FontSize.Size24
	FlyOption2.TextColor3=Color3.new(1,1,1)
	FlyOption2.TextStrokeTransparency=0
	
	FlyOption2:TweenPosition(UDim2.new(0,1,0.5,0),"Out","Bounce",1,false,nil)
end

function displayGroundOptions()
	local FlyOption3=Instance.new("TextLabel",mainGui)
	FlyOption3.Name="ground"
	FlyOption3.BackgroundTransparency=0.45
	FlyOption3.BackgroundColor3=Color3.new(0.3,0.3,0.3)
	FlyOption3.BorderSizePixel=0
	FlyOption3.Size=UDim2.new(0,125,0,40)
	FlyOption3.Position=UDim2.new(0,-125+1,0.5,0)
	FlyOption3.Text="R - Blade storm"
	FlyOption3.Font=Enum.Font.SourceSansLight
	FlyOption3.FontSize=Enum.FontSize.Size24
	FlyOption3.TextColor3=Color3.new(1,1,1)
	FlyOption3.TextStrokeTransparency=0
	
	FlyOption3:TweenPosition(UDim2.new(0,1,0.5,0),"Out","Bounce",1,false,nil)
end

function hideFlyOptions()
	for i,v in pairs(mainGui:GetChildren()) do
		if v.Name~="fly1" then
			v:Destroy()
		end
	end
end

function hideGroundOptions()
	for i,v in pairs(mainGui:GetChildren()) do
		if v.Name=="ground" then
			v:Destroy()
		end
	end
end

local lastPriority=0
local lastAnim=nil
local speed=0

local flyMode=false
local partBelowTorso

function swait(num)
	if num==0 or num==nil then
		game:service'RunService'.RenderStepped:wait()
	else
		for i=0,num do
			game:service'RunService'.RenderStepped:wait()
		end
	end
end

local callDebounce=false
local EP=Instance.new("Model",ch)

function sound(id,vol,pitch,parent)
local s=Instance.new("Sound",parent)
s.SoundId="http://www.roblox.com/asset/?id="..id..""
s.Volume=vol
s.Pitch=pitch
game.Debris:AddItem(s,10)
s:play()
return s
end

function doBrick(parent,pos,cf,size,colour,material,transparency,a,cc,bs,bts,fs,ls,rs,ts)
local p=Instance.new('Part',parent);p.BrickColor=colour;p.Material=material;p.Transparency=transparency;p.Anchored=a;p.CanCollide=cc;p.FormFactor="Custom";p.Size=size;p.BackSurface=bs;p.BottomSurface=bts;p.FrontSurface=fs;p.LeftSurface=ls;p.RightSurface=rs;p.TopSurface=ts;p.Position=pos;p.CFrame=p.CFrame*cf;
return p
end

function doMesh(parent,meshType,meshId,scale)
local m=Instance.new('SpecialMesh',parent);m.MeshType=meshType;m.MeshId=meshId;m.Scale=scale
return m
end

function magicBrick(pos,cf,size,colour,material,transparency,a,cc,bs,bts,fs,ls,rs,ts,meshType,meshId,scale,scaleAdd,loop,loopTransparency,repeatloop,repeatLoopWait,loopCFrame)
	local cw1=coroutine.wrap(function()
		for i=1,repeatloop do
			local x=doBrick(EP,pos,cf,size,colour,material,transparency,a,cc,bs,bts,fs,ls,rs,ts)
			local z=doMesh(x,meshType,meshId,scale)
			
			local cw2=coroutine.wrap(function()
				for i=1,loop do
					if loopTransparency then
						x.Transparency=i/loop
						z.Scale=z.Scale+scaleAdd
						x.CFrame=x.CFrame*loopCFrame
						wait()
					else
						z.Scale=z.Scale+scaleAdd
						x.CFrame=x.CFrame*loopCFrame
					end
				end
				x:Destroy()
			end)
			cw2()
			swait(repeatLoopWait)
		end
	end)
	cw1()
end

local swordModel=Instance.new("Model",ch);swordModel.Name="Sword";
local swordHandle

function makeStackGui(parent)
	local soulGui=Instance.new("BillboardGui",parent)
	soulGui.Adornee=parent
	soulGui.AlwaysOnTop=true
	soulGui.Size=UDim2.new(10,0,10,0)
	soulGui.ExtentsOffset=Vector3.new(0,1.5,0)
	local soulimg=Instance.new("ImageLabel",soulGui)
	soulimg.BackgroundTransparency=1
	soulimg.Position=UDim2.new(0.1,0,0,0)
	soulimg.Size=UDim2.new(0.8,0,0.8,0)
	local soulText=Instance.new("TextLabel",soulimg)
	soulText.BackgroundTransparency=1
	soulText.Position=UDim2.new(0,0,0.5,0)
	soulText.Size=UDim2.new(1,0,0.1,0)
	soulText.Font="ArialBold"
	soulText.FontSize="Size14"
	soulText.Text="0"
	soulText.TextColor3=Color3.new(1,1,1)
	soulText.TextScaled=true
	soulText.TextStrokeColor3=Color3.new(0,0,0)
	soulText.TextStrokeTransparency=0
	soulText.TextWrapped=true
	coroutine.resume(coroutine.create(function()
		while true do
			if parent.Parent:findFirstChild("DamageStacks")==nil then soulGui:Destroy() break end
			soulText.Text="+"..parent.Parent:WaitForChild("DamageStacks").Value.."%"
			wait()
		end
	end))
end

local o1 = swordModel
local o2 = Instance.new("Part")
local o3 = Instance.new("SpecialMesh")
local o4 = Instance.new("Part")
local o5 = Instance.new("SpecialMesh")
local o6 = Instance.new("Part")
local o7 = Instance.new("BlockMesh")
local o8 = Instance.new("Part")
local o9 = Instance.new("BlockMesh")
local o10 = Instance.new("Part")
local o11 = Instance.new("SpecialMesh")
local o12 = Instance.new("Part")
local o13 = Instance.new("SpecialMesh")
local o14 = Instance.new("Part")
local o15 = Instance.new("SpecialMesh")
local o16 = Instance.new("Part")
local o17 = Instance.new("SpecialMesh")
local o18 = Instance.new("Part")
local o19 = Instance.new("SpecialMesh")
local o20 = Instance.new("Part")
local o21 = Instance.new("SpecialMesh")
local o22 = Instance.new("Part")
local o23 = Instance.new("BlockMesh")
swordHandle = Instance.new("Part")
local o25 = Instance.new("Part")
local o26 = Instance.new("SpecialMesh")
local o27 = Instance.new("Part")
local o28 = Instance.new("SpecialMesh")
local o29 = Instance.new("Part")
local o30 = Instance.new("BlockMesh")
local o31 = Instance.new("Part")
local o32 = Instance.new("SpecialMesh")
local o33 = Instance.new("Part")
local o34 = Instance.new("SpecialMesh")
local o35 = Instance.new("Part")
local o36 = Instance.new("BlockMesh")
local o37 = Instance.new("Part")
local o38 = Instance.new("SpecialMesh")
local o39 = Instance.new("Part")
local o40 = Instance.new("SpecialMesh")
o2.Parent = o1
o2.Material = Enum.Material.Marble
o2.BrickColor = BrickColor.new("Institutional white")
o2.Position = Vector3.new(0.950002551, 8.03999901, 0.499998927)
o2.Rotation = Vector3.new(-4.78108996e-005, -90, 0)
o2.Anchored = true
o2.CanCollide = false
o2.Size = Vector3.new(0.200000003, 1.12000024, 0.700000226)
o2.CFrame = CFrame.new(0.950002551, 8.03999901, 0.499998927, -1.89244292e-006, 1.02659214e-010, -1, 8.34465027e-007, 1.00000894, 1.00094773e-010, 1.00000894, -8.34465027e-007, -1.89242382e-006)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.972549, 0.972549, 0.972549)
o2.Position = Vector3.new(0.950002551, 8.03999901, 0.499998927)
o3.Parent = o2
o3.Scale = Vector3.new(0.420000106, 1, 1)
o3.MeshType = Enum.MeshType.Wedge
o4.Parent = o1
o4.Material = Enum.Material.Marble
o4.BrickColor = BrickColor.new("Institutional white")
o4.Position = Vector3.new(0.250002593, 8.03999901, 0.499998957)
o4.Rotation = Vector3.new(-4.78111833e-005, 90, 0)
o4.Anchored = true
o4.CanCollide = false
o4.Size = Vector3.new(0.200000003, 1.12000024, 0.700000226)
o4.CFrame = CFrame.new(0.250002593, 8.03999901, 0.499998957, 4.58942031e-006, 1.08307793e-010, 1, -8.34462583e-007, 1, -1.04478093e-010, -1, -8.34462583e-007, 4.58942031e-006)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
o4.Position = Vector3.new(0.250002593, 8.03999901, 0.499998957)
o5.Parent = o4
o5.Scale = Vector3.new(0.420000106, 1, 1)
o5.MeshType = Enum.MeshType.Wedge
o6.Parent = o1
o6.Material = Enum.Material.Marble
o6.Position = Vector3.new(1.02000678, 3.76999998, 0.499997109)
o6.Anchored = true
o6.CanCollide = false
o6.Size = Vector3.new(0.840000093, 0.200000003, 0.280000091)
o6.CFrame = CFrame.new(1.02000678, 3.76999998, 0.499997109, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Position = Vector3.new(1.02000678, 3.76999998, 0.499997109)
o7.Parent = o6
o7.Scale = Vector3.new(1, 0.700000167, 1)
o8.Parent = o1
o8.Material = Enum.Material.Marble
o8.BrickColor = BrickColor.new("Smoky grey")
o8.Position = Vector3.new(0.6000067, 1.80999923, 0.499997109)
o8.Anchored = true
o8.CanCollide = false
o8.Size = Vector3.new(0.280000031, 0.200000003, 0.200000003)
o8.CFrame = CFrame.new(0.6000067, 1.80999923, 0.499997109, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.356863, 0.364706, 0.411765)
o8.Position = Vector3.new(0.6000067, 1.80999923, 0.499997109)
o9.Parent = o8
o9.Scale = Vector3.new(1, 0.700000167, 0.700000286)
o10.Parent = o1
o10.Material = Enum.Material.Marble
o10.BrickColor = BrickColor.new("Smoky grey")
o10.Position = Vector3.new(0.495006561, 1.80999899, 0.499997079)
o10.Rotation = Vector3.new(-0, 0, -89.9999008)
o10.Anchored = true
o10.CanCollide = false
o10.Size = Vector3.new(0.200000003, 0.210000053, 0.280000091)
o10.CFrame = CFrame.new(0.495006561, 1.80999899, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.356863, 0.364706, 0.411765)
o10.Position = Vector3.new(0.495006561, 1.80999899, 0.499997079)
o11.Parent = o10
o11.Scale = Vector3.new(0.700000167, 1, 1)
o11.MeshType = Enum.MeshType.Cylinder
o12.Parent = o1
o12.Material = Enum.Material.Marble
o12.BrickColor = BrickColor.new("Smoky grey")
o12.Position = Vector3.new(0.705006421, 1.80999899, 0.499997079)
o12.Rotation = Vector3.new(-0, 0, -89.9999008)
o12.Anchored = true
o12.CanCollide = false
o12.Size = Vector3.new(0.200000003, 0.210000038, 0.280000091)
o12.CFrame = CFrame.new(0.705006421, 1.80999899, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.356863, 0.364706, 0.411765)
o12.Position = Vector3.new(0.705006421, 1.80999899, 0.499997079)
o13.Parent = o12
o13.Scale = Vector3.new(0.700000167, 1, 1)
o13.MeshType = Enum.MeshType.Cylinder
o14.Parent = o1
o14.Material = Enum.Material.Marble
o14.BrickColor = BrickColor.new("Institutional white")
o14.Position = Vector3.new(1.16000259, 4.25999975, 0.499999255)
o14.Rotation = Vector3.new(-0, -90, 0)
o14.Anchored = true
o14.CanCollide = false
o14.Size = Vector3.new(0.200000003, 0.840000093, 0.280000091)
o14.CFrame = CFrame.new(1.16000259, 4.25999975, 0.499999255, -1.84774399e-006, 0, -1.00000405, 0, 1, 0, 1.00000405, 0, -1.84774399e-006)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.972549, 0.972549, 0.972549)
o14.Position = Vector3.new(1.16000259, 4.25999975, 0.499999255)
o15.Parent = o14
o15.Scale = Vector3.new(0.420000106, 1, 1)
o15.MeshType = Enum.MeshType.Wedge
o16.Parent = o1
o16.Material = Enum.Material.Marble
o16.BrickColor = BrickColor.new("Institutional white")
o16.Position = Vector3.new(0.040002346, 6.84999943, 0.499999255)
o16.Rotation = Vector3.new(-180, 90, 0)
o16.Anchored = true
o16.CanCollide = false
o16.Size = Vector3.new(0.200000003, 1.26000023, 0.280000091)
o16.CFrame = CFrame.new(0.040002346, 6.84999943, 0.499999255, -9.23861307e-007, 2.94160269e-012, 1, -1.49009367e-007, -1, 2.8039385e-012, 1, -1.49009367e-007, 9.23861307e-007)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.972549, 0.972549, 0.972549)
o16.Position = Vector3.new(0.040002346, 6.84999943, 0.499999255)
o17.Parent = o16
o17.Scale = Vector3.new(0.420000106, 1, 1)
o17.MeshType = Enum.MeshType.Wedge
o18.Parent = o1
o18.Material = Enum.Material.Marble
o18.BrickColor = BrickColor.new("Institutional white")
o18.Position = Vector3.new(0.040002346, 4.26000023, 0.499999255)
o18.Rotation = Vector3.new(0, 90, 0)
o18.Anchored = true
o18.CanCollide = false
o18.Size = Vector3.new(0.200000003, 0.840000093, 0.280000091)
o18.CFrame = CFrame.new(0.040002346, 4.26000023, 0.499999255, 9.23857442e-007, 0, 1, 0, 1, 0, -1, 0, 9.23857442e-007)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.972549, 0.972549, 0.972549)
o18.Position = Vector3.new(0.040002346, 4.26000023, 0.499999255)
o19.Parent = o18
o19.Scale = Vector3.new(0.420000106, 1, 1)
o19.MeshType = Enum.MeshType.Wedge
o20.Parent = o1
o20.Material = Enum.Material.Marble
o20.Position = Vector3.new(0.74000603, 2.78999996, 0.499997079)
o20.Rotation = Vector3.new(-0, 0, -89.9999008)
o20.Anchored = true
o20.Size = Vector3.new(1.82000017, 0.280000061, 0.280000091)
o20.CFrame = CFrame.new(0.74000603, 2.78999996, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Position = Vector3.new(0.74000603, 2.78999996, 0.499997079)
o21.Parent = o20
o21.MeshType = Enum.MeshType.Cylinder
o22.Parent = o1
o22.Material = Enum.Material.Marble
o22.BrickColor = BrickColor.new("Institutional white")
o22.Position = Vector3.new(0.6000067, 5.66000032, 0.499997109)
o22.Anchored = true
o22.Size = Vector3.new(0.840000093, 3.64000082, 0.280000091)
o22.CFrame = CFrame.new(0.6000067, 5.66000032, 0.499997109, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
o22.Position = Vector3.new(0.6000067, 5.66000032, 0.499997109)
o23.Parent = o22
o23.Scale = Vector3.new(1, 1, 0.300000012)
swordHandle.Name = "Handle"
swordHandle.Parent = o1
swordHandle.Material = Enum.Material.Marble
swordHandle.Position = Vector3.new(0.6000067, 2.78999996, 0.499997109)
swordHandle.Anchored = true
swordHandle.Size = Vector3.new(0.280000031, 1.82000041, 0.280000091)
swordHandle.CFrame = CFrame.new(0.6000067, 2.78999996, 0.499997109, 1, 0, 0, 0, 1, 0, 0, 0, 1)
swordHandle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
swordHandle.Position = Vector3.new(0.6000067, 2.78999996, 0.499997109)
o25.Parent = o1
o25.Material = Enum.Material.Marble
o25.Position = Vector3.new(0.460005969, 2.78999996, 0.499997079)
o25.Rotation = Vector3.new(-0, 0, -89.9999008)
o25.Anchored = true
o25.Size = Vector3.new(1.82000017, 0.280000061, 0.280000091)
o25.CFrame = CFrame.new(0.460005969, 2.78999996, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Position = Vector3.new(0.460005969, 2.78999996, 0.499997079)
o26.Parent = o25
o26.MeshType = Enum.MeshType.Cylinder
o27.Parent = o1
o27.Material = Enum.Material.Marble
o27.Position = Vector3.new(0.740006506, 1.66999888, 0.499997079)
o27.Rotation = Vector3.new(-0, 0, -89.9999008)
o27.Anchored = true
o27.CanCollide = false
o27.Size = Vector3.new(0.200000003, 0.280000061, 0.280000091)
o27.CFrame = CFrame.new(0.740006506, 1.66999888, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Position = Vector3.new(0.740006506, 1.66999888, 0.499997079)
o28.Parent = o27
o28.Scale = Vector3.new(0.700000167, 1, 1)
o28.MeshType = Enum.MeshType.Cylinder
o29.Parent = o1
o29.Material = Enum.Material.Marble
o29.Position = Vector3.new(0.6000067, 1.66999936, 0.499997109)
o29.Anchored = true
o29.CanCollide = false
o29.Size = Vector3.new(0.280000031, 0.200000003, 0.280000091)
o29.CFrame = CFrame.new(0.6000067, 1.66999936, 0.499997109, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Position = Vector3.new(0.6000067, 1.66999936, 0.499997109)
o30.Parent = o29
o30.Scale = Vector3.new(1, 0.700000167, 1)
o31.Parent = o1
o31.Material = Enum.Material.Marble
o31.Position = Vector3.new(0.460006475, 1.66999888, 0.499997079)
o31.Rotation = Vector3.new(-0, 0, -89.9999008)
o31.Anchored = true
o31.CanCollide = false
o31.Size = Vector3.new(0.200000003, 0.280000061, 0.280000091)
o31.CFrame = CFrame.new(0.460006475, 1.66999888, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o31.Position = Vector3.new(0.460006475, 1.66999888, 0.499997079)
o32.Parent = o31
o32.Scale = Vector3.new(0.700000167, 1, 1)
o32.MeshType = Enum.MeshType.Cylinder
o33.Parent = o1
o33.Material = Enum.Material.Marble
o33.Position = Vector3.new(1.44000769, 3.7699976, 0.499997079)
o33.Rotation = Vector3.new(-0, 0, -89.9999008)
o33.Anchored = true
o33.CanCollide = false
o33.Size = Vector3.new(0.200000003, 0.280000061, 0.280000091)
o33.CFrame = CFrame.new(1.44000769, 3.7699976, 0.499997079, 1.77323818e-006, 1.0000025, 0, -1.0000025, 1.77323818e-006, 0, 0, 0, 1)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Position = Vector3.new(1.44000769, 3.7699976, 0.499997079)
o34.Parent = o33
o34.Scale = Vector3.new(0.700000167, 1, 1)
o34.MeshType = Enum.MeshType.Cylinder
o35.Parent = o1
o35.Material = Enum.Material.Marble
o35.Position = Vector3.new(0.180005163, 3.76999998, 0.499997854)
o35.Rotation = Vector3.new(-180, 0, -180)
o35.Anchored = true
o35.CanCollide = false
o35.Size = Vector3.new(0.840000093, 0.200000003, 0.280000091)
o35.CFrame = CFrame.new(0.180005163, 3.76999998, 0.499997854, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Position = Vector3.new(0.180005163, 3.76999998, 0.499997854)
o36.Parent = o35
o36.Scale = Vector3.new(1, 0.700000167, 1)
o37.Parent = o1
o37.Material = Enum.Material.Marble
o37.Position = Vector3.new(-0.239992082, 3.7699976, 0.499997854)
o37.Rotation = Vector3.new(-180, 0, 90)
o37.Anchored = true
o37.CanCollide = false
o37.Size = Vector3.new(0.200000003, 0.280000061, 0.280000091)
o37.CFrame = CFrame.new(-0.239992082, 3.7699976, 0.499997854, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Position = Vector3.new(-0.239992082, 3.7699976, 0.499997854)
o38.Parent = o37
o38.Scale = Vector3.new(0.700000167, 1, 1)
o38.MeshType = Enum.MeshType.Cylinder
o39.Parent = o1
o39.Material = Enum.Material.Marble
o39.BrickColor = BrickColor.new("Institutional white")
o39.Position = Vector3.new(1.16000271, 6.84999943, 0.499999255)
o39.Rotation = Vector3.new(-180, -90, 0)
o39.Anchored = true
o39.CanCollide = false
o39.Size = Vector3.new(0.200000003, 1.26000023, 0.280000091)
o39.CFrame = CFrame.new(1.16000271, 6.84999943, 0.499999255, 1.89244747e-006, 4.44097623e-012, -1, 1.49011015e-007, -1, -4.16733315e-012, -1, -1.49010972e-007, -1.89244747e-006)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.972549, 0.972549, 0.972549)
o39.Position = Vector3.new(1.16000271, 6.84999943, 0.499999255)
o40.Parent = o39
o40.Scale = Vector3.new(0.420000106, 1, 1)
o40.MeshType = Enum.MeshType.Wedge

local swordWeld=Instance.new("Weld",swordModel)
swordWeld.Part0=tor
swordWeld.Part1=swordHandle
swordWeld.C0=swordWeld.C0*CFrame.Angles(0,0,math.rad(45))
swordWeld.C1=CFrame.new(0,2,-.6)

local SWC0
local SWC1

SWC0=swordWeld.C0
SWC1=swordWeld.C1

for i,v in pairs(swordModel:GetChildren()) do
	if v:IsA("BasePart") then
		local w=Instance.new("Weld",swordModel)
		w.Part0=swordHandle
		w.Part1=v
		w.C0=swordHandle.CFrame:inverse()
		w.C1=v.CFrame:inverse()
		v.Anchored=false
		v.CanCollide=false
	end
end

function weldSwordToRa()
	swordWeld.Part0=ra
	swordWeld.Part1=swordHandle
	swordWeld.C0=CFrame.new()
	swordWeld.C1=CFrame.new()
	swordWeld.C0=swordWeld.C0*CFrame.Angles(math.rad(-90),math.rad(90),0)
	swordWeld.C1=CFrame.new(-1,0.25,0)
	SWC0=swordWeld.C0
	SWC1=swordWeld.C1
end

function weldSwordToTorso()
	swordWeld.Part0=tor
	swordWeld.Part1=swordHandle
	swordWeld.C0=CFrame.new()
	swordWeld.C1=CFrame.new()
	swordWeld.C0=swordWeld.C0*CFrame.Angles(0,0,math.rad(45))
	swordWeld.C1=CFrame.new(0,2,-.6)
	SWC0=swordWeld.C0
	SWC1=swordWeld.C1
end

function castSwordFigure(col,dur,mat)
	for i,v in pairs(swordModel:GetChildren()) do
		if not v:IsA("BasePart") then return end
		local p=v:clone()
		p.Parent=EP
		p.Anchored=true
		p.Material=mat
		p.BrickColor=col
		coroutine.resume(coroutine.create(function()
			for i=1,dur do
				p.Transparency=i/dur
				swait()
			end
			p:Destroy()
		end))
	end
end

function randomKatanaSound()
	local x=math.random(855,1000)
	local t=math.random(1,3)
	if t==1 then
		sound(588693579,1,x/1000,ra)
	end
	if t==2 then
		sound(588693922,1,x/1000,ra)
	end
	if t==3 then
		sound(293847592,1,x/1000,ra)
	end
end

local swordAttacking=false
local bsAttack=false

function animate(x)
	local calledAnim=anim[x]
	if calledAnim==lastAnim then return end
	if calledAnim.priority>=lastPriority and calledAnim~=lastAnim then
		lastAnim=calledAnim
		lastPriority=lastAnim.priority
		if calledAnim==anim.idle then
			local thisAnim=calledAnim
			speed=0.25
			
			for i=0,0.15,0.1*speed do
				if lastAnim~=thisAnim then break end
					
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(1),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,0),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,0),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			while true do
				if lastAnim~=thisAnim then break end
				for i=0,0.87,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(5)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-5)),i*speed)
					rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,-0.15,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,-0.15,0),i*speed)	
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,0,0.1),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,0,0.1),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,-0.1,0),i*speed)		
					
					swait()
				end
				for i=0,0.87,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),i*speed)
					rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(1),math.rad(0),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,0),i*speed)	
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),i*speed)		
					
					swait()
				end
			end
		end
		if calledAnim==anim.walk then
			local thisAnim=calledAnim
			speed=0.45
			while true do
				
				if lastAnim~=thisAnim then break end
				for i=0,0.45,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude>=2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.07)
					end
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude<2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.07)
					end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(5)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(12),math.rad(0),math.rad(-5)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(15),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-15),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,-0.075,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,-0.075,0),i*speed)	
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0.02,-0.35,0.35),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(-0.02,0,0),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),i*speed)		
					
					swait()
				end
				for i=0,0.75,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude>=2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.07)
					end
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude<2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(5),math.rad(0)),0.07)
					end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-5)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(45),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-45),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0.16,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0.16,0),i*speed)		
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0.02,0.08,0),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(-0.02,0,0),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),i*speed)		
					
					swait()
				end
				for i=0,0.45,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude>=2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.07)
					end
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude<2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.07)
					end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(12),math.rad(0),math.rad(5)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(-5)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-15),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(15),math.rad(tor.RotVelocity.Y),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,-0.075,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,-0.075,0),i*speed)	
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0.02,0,0),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(-0.02,-0.35,0.35),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),i*speed)		
					
					swait()
				end
				for i=0,0.75,0.1*speed do
					if lastAnim~=thisAnim then break end
					
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude>=2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.07)
					end
					if Vector3.new(0,tor.RotVelocity.y,0).magnitude<2.5 then
						rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-5),math.rad(0)),0.07)
					end
					
					rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(5)),i*speed)
					lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5)),i*speed)
					rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(tor.RotVelocity.Y*3.6),math.rad(0)),i*speed)
					llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(45),math.rad(tor.RotVelocity.Y*3.6),math.rad(0)),i*speed)
					neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),i*speed)
					
					rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0.16,0),i*speed)
					lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0.16,0),i*speed)	
					rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0.02,0,0),i*speed)
					llm.C1=llm.C1:lerp(llmC1*CFrame.new(-0.02,0.08,0),i*speed)	
					rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),i*speed)	
					neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),i*speed)		
					
					swait()
				end
				swait()
			end
		end
		if calledAnim==anim.jump then
			local thisAnim=calledAnim
			speed=0.15
			for i=0,0.25,0.1*speed do
				if lastAnim~=thisAnim then break end
					
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			lastAnim=nil
			lastPriority=0
		end
		if calledAnim==anim.descend then
			local thisAnim=calledAnim
			speed=0.15
			for i=0,0.25,0.1*speed do
				if lastAnim~=thisAnim then break end
					
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(12),math.rad(0),math.rad(0)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(12),math.rad(0),math.rad(0)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0.1,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			lastAnim=nil
			lastPriority=0
		end
		if calledAnim==anim.enterflymode then
			local thisAnim=calledAnim
			speed=0.15
			magicBrick(Vector3.new(tor.Position.X,partBelowTorso.Position.Y+partBelowTorso.Size.Y/2,tor.Position.Z),CFrame.new(0,3,0)*CFrame.Angles(0,math.random(),0),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(15,15,15),Vector3.new(-2,-2,-2),5,true,1,0,CFrame.new(0,0,0)*CFrame.Angles(0,0.08,0))
			for i=0,0.25,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-75)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(75)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-24),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0.2,0),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0.2,0),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.35,0.35),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.35,0.35),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			sound(588695249,1,1,tor)
			coroutine.resume(coroutine.create(function()
				for i=1,50 do
					magicBrick(Vector3.new(0,0,0),tor.CFrame*CFrame.new(0,0,0)*CFrame.new(math.random(1,5),math.random(1,5),math.random(1,5))*CFrame.new(-5/2,-5/2,-5/2),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"Brick","",Vector3.new(1,1,1),Vector3.new(-0.2,-0.2,-0.2),15,true,1,0,CFrame.new(0,-1,0)*CFrame.Angles(math.random(),math.random(),math.random()))			
					swait()
				end
			end))
			
			for i=0,0.25,0.1*speed do
				if lastAnim~=thisAnim then break end
					
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(75)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-75)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-24),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,0),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,0),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.35,0.35),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.35,0.35),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			lastAnim=nil
			lastPriority=0
		end
		if calledAnim==anim.chestbeam then
			local thisAnim=calledAnim
			speed=0.15
			sound(438666277,2,1.5,tor)
			coroutine.resume(coroutine.create(function()
				for i=1,20 do
					magicBrick(Vector3.new(0,0,0),tor.CFrame*CFrame.Angles(math.random(1,50),math.random(1,50),math.random(1,50)),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(math.random(10,15),math.random(20,30),0.2),Vector3.new(-2,-2,0),16,true,1,0,CFrame.new(0,0,0)*CFrame.Angles(0.2,0,0))
					swait(3)
				end
			end))
			for i=0,1,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(115),math.rad(0),math.rad(-45)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(45)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-24),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0.2,0),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0.2,0),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.35,0.35),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.35,0.35),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			doingMove=true		
			
			coroutine.resume(coroutine.create(function()
				for i=1,200 do
					magicBrick(Vector3.new(0,0,0),tor.CFrame*CFrame.new(0,0,0)*CFrame.new(math.random(1,5),math.random(1,5),math.random(1,5))*CFrame.new(-5/2,-5/2,-5/2),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"Brick","",Vector3.new(1,1,1),Vector3.new(-0.2,-0.2,-0.2),15,true,1,0,CFrame.new(0,-1,0)*CFrame.Angles(math.random(),math.random(),math.random()))			
					swait()
				end
			end))
			
			local beam=Instance.new("Part",ch)
			beam.Anchored=true
			beam.CanCollide=false
			beam.BrickColor=BrickColor.new("Institutional white")
			beam.Material="Neon"
			beam.Transparency=0.5
			
			sound(415700134,1.75,0.85,tor)
			
			coroutine.resume(coroutine.create(function()
				while true do
					if not doingMove then break end
					local dis=(tor.Position-mo.Hit.p).magnitude
					beam.Size=Vector3.new(2,2,dis)
					beam.CFrame=CFrame.new(tor.CFrame.p,mo.Hit.p)*CFrame.new(0,0,-dis/2)
					swait()
				end
			end))
			
			coroutine.resume(coroutine.create(function()
				for i=1,20 do
					if not doingMove then break end
					magicBrick(Vector3.new(0,0,0),mo.Hit*CFrame.Angles(0,0,0),Vector3.new(1,1,1),BrickColor.new("Deep orange"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(3,3,3),Vector3.new(2,6,2),8,true,1,0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0))
					magicBrick(Vector3.new(0,0,0),mo.Hit*CFrame.Angles(0,0,0),Vector3.new(1,1,1),BrickColor.new("Really red"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(3,3,3),Vector3.new(3,3,3),8,true,1,0,CFrame.new(0,0,0)*CFrame.Angles(0,0,0))
					coroutine.resume(coroutine.create(function()
						for i=1,7 do
							magicBrick(Vector3.new(0,0,0),mo.Hit*CFrame.new(0,0,0)*CFrame.new(math.random(1,15),math.random(1,15),math.random(1,15))*CFrame.new(-15/2,-15/2,-15/2),Vector3.new(1,1,1),BrickColor.new("Really black"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(4,4,4),Vector3.new(1,1,1),12,true,1,0,CFrame.new(0,-1,0)*CFrame.Angles(math.random(),math.random(),math.random()))
						end
					end))
					for i,v in pairs(workspace:GetChildren()) do
						if v:findFirstChild("Humanoid")~=nil and v~=ch then
							if (v:WaitForChild("Torso").Position-mo.Hit.p).magnitude<=10 then
								v:WaitForChild("Humanoid"):TakeDamage(0)
							end
						end 
					end
					swait(10)
				end
			end))
			
			for i=0,2,0.1*speed do
				if lastAnim~=thisAnim then break end
					
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(75)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-75)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-24),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,0),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,0),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.35,0.35),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.35,0.35),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			beam:Destroy()
			lastAnim=nil
			lastPriority=0
			doingMove=false
		end
		if calledAnim==anim.sword1 then
			local thisAnim=calledAnim
			speed=0.4
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			weldSwordToRa()
			randomKatanaSound()
			
			local x=math.random(45,90)
			local x2=math.random(85,110)
			swordAttacking=true
			
			for i=0,0.2,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				castSwordFigure(BrickColor.new("Institutional white"),5,"Neon")
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(x),math.rad(0),math.rad(x2)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(x),math.rad(0),math.rad(x2)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(8)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(-8)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,2,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),speed)
					
				swait()
			end
			
			swordAttacking=false
			
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(45)),speed)
					
				swait()
			end
			
			weldSwordToTorso()
			lastAnim=nil
			lastPriority=0		
			
		end
		if calledAnim==anim.sword2 then
			local thisAnim=calledAnim
			speed=0.4
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			weldSwordToRa()		
			randomKatanaSound()
			
			local x=math.random(45,90)
			local x2=math.random(85,110)
			swordAttacking=true			
			
			for i=0,0.2,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				castSwordFigure(BrickColor.new("Institutional white"),5,"Neon")
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(x2),math.rad(0),math.rad(x)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(x2),math.rad(0),math.rad(x)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(8)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(-8)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,2,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-x2)),speed)
					
				swait()
			end
			
			swordAttacking=false
			
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45)),speed)
					
				swait()
			end
			
			weldSwordToTorso()
			lastAnim=nil
			lastPriority=0		
			
		end
		if calledAnim==anim.sword3 then
			local thisAnim=calledAnim
			speed=0.4
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			weldSwordToRa()		
			randomKatanaSound()
			
			local x=math.random(45,90)
			local x2=math.random(85,110)	
			swordAttacking=true		
			
			for i=0,0.2,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				castSwordFigure(BrickColor.new("Institutional white"),5,"Neon")
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(x2),math.rad(0),math.rad(x)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(x2),math.rad(0),math.rad(x)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(8)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(-8)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,2,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(x2)),speed)
					
				swait()
			end
			
			swordAttacking=false
			
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45)),speed)	
					
				swait()
			end
			
			weldSwordToTorso()
			lastAnim=nil
			lastPriority=0		
			
		end
		if calledAnim==anim.bladestorm then
			local thisAnim=calledAnim
			speed=0.15
			
			sound(588698460,1,0.85,ra)		
			
			coroutine.resume(coroutine.create(function()
				for i=1,30 do
					magicBrick(Vector3.new(0,0,0),ra.CFrame*CFrame.new(0,-0.35,0),Vector3.new(1,1,1),BrickColor.new("Really black"),"Neon",0,true,false,10,10,10,10,10,10,"Brick","",Vector3.new(1,1,1),Vector3.new(-0.15,-0.15,-0.15),15,true,1,0,CFrame.new(0,-1,0)*CFrame.Angles(math.random(),math.random(),math.random()))
					swait()
				end
			end))	
			
			for i=0,0.25,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(7)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-7)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0.2,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)		
					
				swait()
			end
			
			weldSwordToRa()		
			
			for i=0,0.11,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(35),math.rad(0),math.rad(0)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-45)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(75),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(-13),math.rad(-50),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),speed)
				swordWeld.C1=swordWeld.C1:lerp(SWC1*CFrame.Angles(0,0,0),speed)		
					
				swait()
			end
			
			sound(183763498,1,0.85,ra)
			bsAttack=true
			
			for i=0,0.3,0.1*speed do
				if lastAnim~=thisAnim then break end
				
				rm.C0=rm.C0:lerp(rmC0*CFrame.Angles(math.rad(90),math.rad(45),math.rad(110)),speed)
				lm.C0=lm.C0:lerp(lmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-45)),speed)
				rlm.C0=rlm.C0:lerp(rlmC0*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5)),speed)
				llm.C0=llm.C0:lerp(llmC0*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-5)),speed)
				rj.C0=rj.C0:lerp(rjC0*CFrame.Angles(math.rad(0),math.rad(-80),math.rad(0)),speed)
				neck.C0=neck.C0:lerp(nC0*CFrame.Angles(math.rad(13),math.rad(75),math.rad(0)),speed)
				
				rm.C1=rm.C1:lerp(rmC1*CFrame.new(0,0,-0.1),speed)
				lm.C1=lm.C1:lerp(lmC1*CFrame.new(0,0,-0.1),speed)	
				rlm.C1=rlm.C1:lerp(rlmC1*CFrame.new(0,-0.1,0.15),speed)
				llm.C1=llm.C1:lerp(llmC1*CFrame.new(0,-0.1,0.15),speed)	
				rj.C1=rj.C1:lerp(rjC1*CFrame.new(0,0,0),speed)	
				neck.C1=neck.C1:lerp(nC1*CFrame.new(0,0,0),speed)
				
				swordWeld.C0=swordWeld.C0:lerp(SWC0*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),speed)
				swordWeld.C1=swordWeld.C1:lerp(SWC1*CFrame.Angles(0,0,0),speed)		
					
				swait()
			end
			
			bsAttack=false
			weldSwordToTorso()
			lastAnim=nil
			lastPriority=0
		end
	end
end

local doingMove=false

displayGroundOptions()

function toggleFlyMode()
	if not flyMode then
		if doingMove then return end
		flyMode=true
		displayFlyOptions()
		hideGroundOptions()
		animate("enterflymode")
	elseif flyMode then
		hideFlyOptions()
		displayGroundOptions()
		flyMode=false
	end
end

function chestBeam()
	if flyMode then
		if doingMove then return end
		doingMove=true
		animate("chestbeam")
		doingMove=false
	end
end

function sword1()
	if doingMove then return end
	doingMove=true
	animate("sword1")
	doingMove=false
end

function sword2()
	if doingMove then return end
	doingMove=true
	animate("sword2")
	doingMove=false
end

function sword3()
	if doingMove then return end
	doingMove=true
	animate("sword3")
	doingMove=false
end

function bladestorm()
	if doingMove then return end
	doingMove=true
	animate("bladestorm")
	doingMove=false
end

local swordAttack=1

mo.Button1Down:connect(function()
	if swordAttack==1 then
		sword1()
		swordAttack=2
	elseif swordAttack==2 then
		sword2()
		swordAttack=3
	elseif swordAttack==3 then
		sword3()
		swordAttack=1
	end
end)

mo.KeyDown:connect(function(k)
	if k=="f" then
		toggleFlyMode()
	end
	if k=="e" then
		if not flyMode then return end
		chestBeam()
	end
	if k=="r" then
		if flyMode then return end
		bladestorm()
	end
end)

local flyPosition=Instance.new("BodyPosition",tor)
flyPosition.maxForce=Vector3.new(0,0,0)

coroutine.resume(coroutine.create(function()
	while true do
		if flyMode then
			magicBrick(Vector3.new(0,0,0),tor.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90),0,0),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"SmoothPlastic",0,true,false,10,10,10,10,10,10,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(2,2,0.45),Vector3.new(1,1,0),15,true,1,0,CFrame.new(0,0,0))
		end
		swait(20)
	end
end))

local dmgDebounce=false

coroutine.resume(coroutine.create(function()
	game:GetService("RunService").RenderStepped:connect(function()
		for i,v in pairs(workspace:GetChildren()) do
			if v:findFirstChild("Humanoid")~=nil and v~=ch and swordAttacking then
				if v:findFirstChild("Torso")==nil then return end
				if dmgDebounce then return end
				if (v.Torso.Position-ra.Position).magnitude<=7.5 then
					dmgDebounce=true
					local x=math.random(855,1165)
					sound(444667824,1,x/1000,v.Torso)
					v.Humanoid:TakeDamage(0)
					magicBrick(Vector3.new(0,0,0),v.Torso.CFrame*CFrame.Angles(math.random(),math.random(),math.random()),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(2,2,0.3),Vector3.new(-2/15,5,-0.3/15),5,true,1,0,CFrame.new(0,0,0))
					if v:findFirstChild("DamageStacks")==nil then
						local dmg=Instance.new("NumberValue",v)
						dmg.Name="DamageStacks"
						dmg.Value=1
						makeStackGui(v.Head)
					elseif v:findFirstChild("DamageStacks")~=nil then
						v.DamageStacks.Value=v.DamageStacks.Value+1
					end
					wait(.1)
					dmgDebounce=false
				end
			end
			if v:findFirstChild("Humanoid")~=nil and v~=ch and bsAttack then
				if v:findFirstChild("Torso")==nil then return end
				if dmgDebounce then return end
				if (v.Torso.Position-ra.Position).magnitude<=7.5 then
					dmgDebounce=true
					v.Humanoid:TakeDamage(0)
					magicBrick(Vector3.new(0,0,0),v.Torso.CFrame*CFrame.Angles(math.random(),math.random(),math.random()),Vector3.new(1,1,1),BrickColor.new("Institutional white"),"Neon",0,true,false,10,10,10,10,10,10,"Sphere","",Vector3.new(2,2,2),Vector3.new(2.5,2.5,2.5),5,true,1,0,CFrame.new(0,0,0))
					if v:findFirstChild("DamageStacks")==nil then
						local dmg=Instance.new("NumberValue",v)
						dmg.Name="DamageStacks"
						dmg.Value=1
						makeStackGui(v.Head)
					elseif v:findFirstChild("DamageStacks")~=nil then
						v.DamageStacks.Value=v.DamageStacks.Value+1
					end
					wait(.1)
					dmgDebounce=false
				end
			end
		end
		partBelowTorso=workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,tor.Position-Vector3.new(0,10000,0)),ch:GetChildren())
		if flyMode then
			flyPosition.maxForce=Vector3.new(0,math.huge,0)
			flyPosition.Position=Vector3.new(0,(partBelowTorso.Position.Y+partBelowTorso.Size.Y/2)+14.5,0)
			hum.WalkSpeed=16
			hum.JumpPower=0
		end
		if not flyMode then
			flyPosition.maxForce=Vector3.new(0,0,0)
			hum.WalkSpeed=defWS
			hum.JumpPower=defJP
		end
	
		if hum.Jump and not flyMode then
			animate("jump")
		end
		if Vector3.new(0,tor.Velocity.Y,0).magnitude>=5 and hum:GetState()==Enum.HumanoidStateType.Freefall and not flyMode then
			animate("descend")
		end
		if Vector3.new(tor.Velocity.X,0,tor.Velocity.Z).magnitude>=2.5 then
			animate("walk")
		end
		if Vector3.new(tor.Velocity.X,0,tor.Velocity.Z).magnitude<2.5 then
			animate("idle")
		end
	end)
end))