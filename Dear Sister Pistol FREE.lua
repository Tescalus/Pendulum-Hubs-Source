loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20Align%20Method.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()


--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Script0 = Instance.new("Script")
ObjectValue1 = Instance.new("ObjectValue")
LocalScript2 = Instance.new("LocalScript")
LocalScript3 = Instance.new("LocalScript")
Script0.Name = "dearsister"
Script0.Parent = mas
table.insert(cors,sandbox(Script0,function()
--[[				
	
   -==// < Client-Replication By Chirunoo > \\ ==-		
					___________
							  /
		/			   \  X  /			   \
	-<					\   /				   >-
		\				 \ /			   /
						  V
--]]



script.Owner.Value = game.Players.LocalPlayer.Name

local Player = script:WaitForChild("Owner").Value
local IsEnded = false
local Character = Player.Character
local ScriptName = script.Name
local MainScript = script.Main:Clone()
local Faker = script.Faker:Clone()
script.Main:Destroy()
script.Faker:Destroy()
local prefix = "-<"

local enc = {}
local GUID = {}

do
    GUID.IDs = {};
    function GUID:new(len)
        local id;
        if(not len)then
            id = (tostring(function() end))
            id = id:gsub("function: ","")
        else
            local function genID(len)
                local newID = ""
                for i = 1,len do
                    newID = newID..string.char(math.random(48,90))
                end
                return newID
            end
            repeat id = genID(len) until not GUID.IDs[id]
			local oid = id;
			id = {Trash=function() GUID.IDs[oid]=nil; end;Get=function() return oid; end}
            GUID.IDs[oid]=true;
        end
        return id
    end
end



function Encrypt(str)
	local enced = ""
for Z = 1,str:len() do
for i,v in pairs(enc) do
	if i == str:sub(Z,Z) then
		enced = enced..v
	end
end
end
return enced
end

function Decrypt(str)
	local ENCED = str
	local deced = ""
	repeat wait()
	for i,v in pairs(enc) do
		if ENCED:sub(1,v:len()) == v then
			deced = deced..i
			ENCED = ENCED:sub(v:len()+1)
		end
	end
	until ENCED:len() == 0

	return deced
end

enc["a"] = "hfuaf9gea79dfhEA^(Fg9huafe68AFG8ayherAH"enc["b"] = "FEATG*faefbiyAFTve8193rbyt48fvebEAFyigvf83byfAE"enc["c"] = "<AFL:,]opewifunueirbyfgab7t192y83t12fgv7u"enc["d"] = "FBYAI8t6afFUBu;3rAENFfae"enc["e"] = "afUHeyfgawifgaweiw;efwafby;a"enc["f"] = "fyaifbAYFt8yPA*FGE^APfgat8fpb"enc["g"] = "AYF*wt6guob[23hprf860abyohWFAGYb'qijwo;aWK\op'"enc["h"] = "AFgw96129r3fuby8AEFg0byaniwjofuABWYWFtuwafegersh3$#$%"enc["i"] = "#%J!JHF&(HW80FHeuwbfya(IWFGA*^Wgbnbiuaweubyr:Febsiyg"enc["j"] = "FAga9fuo34iygf8a9fauoeha879fh6684fNAf;ioubfawpenogjeg"enc["k"] = "AFyg486bd38q26bf8q3gb43q87tgb4uWABDYUfvbiauefbhyaweguoeg"enc["l"] = "H&(FFG(^$B(duo(AFH^A(EFHuofhe9pfgberygw;abIFYAIEFbuwbnfiybawefAF"enc["m"] = "fUFAH(AFEYHbunawegrysegh0segrhgor;USGHpigBFYPAFYBpibPAIYFB"enc["n"] = "FA*Hef679HfA(HF&0)AH*FhA)&FG(AFGAUHFoUHAFuhAFHAG7AgupA''fnj;A\\"enc["o"] = "AFHbuejnipagrn,uipsyAI(FGb<A?><ifnefupgaby6g96g3y"enc["p"] = "AFUhb6380GFBPUWDbyg08yg80fybpipayfgba)FWg86AFBW*Y34#$"enc["q"] = "AGFQ(AGF&(F&GA&(GF(&#GQRUObhifbayiogbfy9w4b"enc["r"] = "AFH&(h79h479WHFEYAI9G9gfa9dGWA&(F^8yfoauWG&^gF&(agef79$678"enc["s"] = "gyv8as8bWUFAGF68aufYIG*)EF6179f0r86a37g0r4tg79g79fag7"enc["t"] = "fAUBFjowfunawby800nfugbeawgy08aug98byaw8gewa0be"enc["u"] = "fAUBYEFubAF^*y0-unrb^VWRBY*)n9uqefby0b80 NS*YBVFW"enc["v"] = "sBYCAIDGB*Ybyf-ABYFAFnwaFY*)0bAFAVwyfbaFBYAFY)B*"enc["w"] = "nFybf8a)FbA*F0bFY*0faBFyFIdihvzoveat97f59ypuOEKMFOK,:{>:?:?faFHy81n23"enc["x"] = "dAFY8AB)Wuby8rABRFBhincbcjvwyv9&A4618236454tBAHfstavubaindwag"enc["y"] = "FayftEV79RFNba(w)fgb^ay*)nfiau(TBRFY8GFAWIG0YBAWYG9EBWAG"enc["z"] = "febyiNJOwfmNybvefvyuanMUWFBTY*EVBFNJOWFUNYA*FGBwuoFPknjobv jDmWPi3u7842"enc["A"] = "fAMIWEFHenujoqk3MFINUaufnmi)awhf&UNqe0iGFBAUG(AUEBGNaEGenAUFmv0iaUBnwfAFh"enc["B"] = "GIonjANFAOUWFnPWFMAPIOWFNoufmPAIWHRN&(@#MN49tUSOFMkl,se;f'sz,mgkijuserhes"enc["C"] = "FNUEYHABUNbeugAGHNRJOUGYTBHIAJFONEbYAWOFjawFnABWFjokfmpwaIUbgawjkwage%#$@$#"enc["D"] = "SGKIUEGYH AJfwOeUgGHIEJNASU9YNIJEIGRJUghwigujieuraeyh9385794URIELPAWOKa<mk^#<lq$<l"enc["E"] = "A_R)+(I03r-tjniOEAGBFHinjAJVNMOKA<LPWD>{POFKJIUNGjwwg"enc["F"] = "GIEJFUANFMKOwipeghbyiAUNWifBAYwntIAMNFA<WR<L:AF>>t4ty863"enc["G"] = "Fabyfb*aijwdKfBUJi)fwubyqui#rn_u(fegbujnMiw)fesubyrhniJMFERGW35#$"enc["H"] = "FaufbYy*fwbafgjonufwayifbUON23974Grybamkwd<pl[,p[,P,[[].';"enc["I"] = "amuwyf,LafuygebFN23U99473T$h(umnasiwbrfy*eanaaiopfa{wfiuNJG IPg{a}f <>"enc["J"] = "Faf9BUnofPWafiuhEYG8234N3BY8#$^#@$uRNadm<wl:dAwmdnJ"enc["K"] = "FafwGY8B8AWGBFNaomcKa{wfiuhay*!u#$iop#o$%^&^][Pop"enc["L"] = "afFEY80ABFEY8BF0B08B32Q4*ty)b$nroamk<lpfkMYEHW4RTGRY"enc["M"] = "fauneyfvb98U9RIMPwr{>a:df{a<eIFUNGWMRP,3Oa}wrlpop!{i@j(&*#4465"enc["N"] = "fuebaf9nB3H0YF8brf3QTVB7Y8AH(dWB8T7QWFVWAFE"enc["O"] = "AFUYBwejniprgzyhnsejmkoE892u4utjmk<LP:"enc["P"] = "FYG*EABHHWIU(IRh278349ef0sGBFY8UBAYVbjhyUYNTGy*buuY*B)%N5718"enc["Q"] = "ADIUNY*VSB*AOCjuhyABWtkOKP<L>PLOI(A*U&^T351"enc["R"] = "wga7*dnAEIOFhq5AEFPLOAJEFHu7aFWUIgreshjsrt"enc["S"] = "fuyhUIWRH8y020fnOAF{NiwefunefjeAFUPnAF"enc["T"] = "FBiaWFoaOWfb912u34nrFG^B(U.P,[lokijuFYAETG@*$("enc["U"] = "gANEGUAIjnAwdmAFU0egF><eigo375233"enc["V"] = "fniueawf0n0u92enUVY8BBT8YnawfebeawufNGAW86YB0U93248T5<>r#$"enc["W"] = "gnuAFebA^*Wb074123849tg5ySBIOAFMKDKMADwd[]Afmk"enc["X"] = "fYA)*FWGbFUNaY*Fgn2y83je2975869 8ye0u9aWr7y8wfhniszf"enc["Y"] = "F<LPAO{EFMiu784t5b183en-WNU(FB*y0rn3u1r0b8tq27980r"enc["Z"] = "wAHFUNoaFGUn8y0n129348762159478309)W^A$(!*#&)$tBNIVDbzuoaineowfg>L{P"enc["1"] = "guegybAINFNJwaFBt7g9auh9gyb6awy8eu0bawgy08waeng0"enc["2"] = "AFUIbfnawefwaioeufbnaFUBYfanrgrsegbinsergnserg"enc["3"] = "AFeg6y8ui3r9&^GAFBYUIW(FBygfufnei0u0wa8ygfbaw8fawtfgb9awf"enc["4"] = "faH&FH*UIjfkaMNFU(Y08bwAFiWAOFfgbyAEF0A_NWFU(AUW&^%*1y3u92i4"enc["5"] = "FAUFUe09noNR*TYWEABtijfnbyef0hiEFAHFAF=FsfdAf"enc["6"] = "fAFBYwIAFnaOFGbgyijsfnbuytgbvawgisunfybtawuefhniewagybFAET4agzeg5y6ujyy"enc["7"] = "gETGsfuy8tg6yb8eu9HGentmEMatbaletagtt17935g6t6253^*A$&(#%#%"enc["8"] = "RAH&H(JrH936aRANBDImaiutyb3795G268#%f$&*^#$&q("enc["9"] = "fG68AW79fh&(aw^tq#$*hnfEIBYHinJMD,>?amfnb?{"enc["0"] = "Fagf*6Warfbyayf*gvBu_fhay(rgT6YUUwafhAfawr5TY5RTDT"enc["!"] = "fh&af9fanubefy*)brnb^y*)ifanbyvBafwby*)FBy)fFBY0"enc["@"] = "FYBaFUBUfYABFwaUFbAYF*)BFy*FBBAFATWYFBYAFAgesbynuabfy%^$@%t5y"enc["#"] = "fAUNFwfnAGFB57t8ynefufbsgB9fneubg6q23b9yn37fB9UNNFU9BSAFN"enc["$"] = "fAUNfbaawiffg7e9ubg9awbef9ywafbyeaw9fbeawfjdsFByiefhbawfawfbiawf"enc["%"] = "gAWF9ag&fwaBUFN9ufgebaw48gy0bnuuEu9GA83yT*^&#($*!$&%^"enc["^"] = "fuh9A(F_AWF=A)-0A(*F&^7AGRBYAWGf8dabuNfAFaw=="enc["&"] = "FUAH0F7a(wFHA(^FGBAUNEGNAER86TB28U934tb9nefUB(n"enc["*"] = "AFgA(FYwnaoJFuaHFWG9ybFNAI)Wfgb8ANIUGNUSEY*GB83g86r8rAU68a%9476W93754"enc["("] = "FABYV(hijawugh6eFBYAN)UFNWATFBQHJNFA)*BfjafNYFTvbAUFiaifbUBfb9A^%*$#"enc[")"] = "AGEUBYF0awefuynbBY8FBEafyb)*Bb)yf*BaFY0bfy08bya)F*Bygrea7865%#$@$"enc["~"] = "{}PAOFJIUHygwae76fwbysvawienfjouayhergbauhnie0waf8"enc["`"] = "F<DAfojuiaeyhf736$&I$!(:<>fgunabywe80*YBR$NGBiAf"enc["_"] = "AFBYt7yawigini9-AUH*YFGBuhnqJIO3RF9uhayrbuwfjioikjusegy,'<="enc["-"] = "fg680ye9u7G^DEAW(*F)YhwAFGTUOFBieuaHFg6t';2bu30r08efg697a"enc["+"] = "fuAH&068ef9uq-r3g6A*)YUF(_ENeah)&*FnaFNCkinthIYAPBe6y5"enc["="] = "&AFh803r978fgAY*)U_Wdh723gt467w9vbyfiunOV APIYW*GvfbtaIPDNow"enc["{"] = "fAUFYbaoIFJmnAWFUIBuHAFBY.0taFBwauyBFA"enc["["] = "FAH&9-qrufhG^Wydb/p[;'AIYWF*)B)fWNAUF_By"enc["}"] = "AIFuywbeghawinrh7f380*#^$^*)U$;,web680a"enc["]"] = "gAEF79gbyANGujo(UAGBew*YAFBANJMOWD*JAF(BYfweuinufuugau"enc["\\"] = "ugA(&FEbnaru9gn86aw4gyun9wefnOSDFNjgny9regb"enc["|"] = "fjaF)*hf7935hng9SBG^f8ynufm49herbg8aungre"enc["\""] = "D<L:AMK{F897th(_A*H%&h9Q#$#FUefybyt79awy0ipu3H9f86BUI"enc["'"] = "AGBYFeb809n0i3e4r';g6a*WY)U(_AJ)ET_(&^*)%YBnrfe9hgyFgr."enc[":"] = "F68gabyf0y0bf0v)W*F68gaWF)*^G6tg80tfprgy80680w6AFGAG&9"enc[";"] = "nfa709fhn082uFG^ABEF(YA*)N(WFUu9yb0AVTfybuhiwnuefybt9fA"enc["/"] = "ARfby9injoDWUAFEGY*B0ijnoRFBHIJEFY*GBWNJMIUYGF*YH9urtw"enc["."] = "d9aF^Gbyunowgh8ay9nwfu(BA*YBwnuoAFNY*BGjnoawgnu9y8aw4bhi jfIHbyevAjuhgy"enc[","] = "IAFHwyfg6AWIOwOFNUBGyiweha89wy3b[4u570g8^%$YBIPN"enc["?"] = "ufhY*)AFnou49hq30tb8YWAN_I{RMK:#MNK%Q<:>R:"enc[">"] = "AFUhBAFNiAUF09ugn5w3yn8a0euAW_*(&FH(_W$%JI<L'..,"enc["<"] = "afh7086ABWY8EGF6W908{inwdobhatyDGJIORFG6YABAfasfahu&(G^*)%:"enc[" "] = "af8ye7a9awybifeg6*)AFGayg680FEByp0g80YFBIEHAPF68B80QYPU&(^t%(r^"

local GID = GUID:new(#ScriptName)
local GeneratedUniqueID = GID:Get()
local GeneratedName = tostring(Encrypt(tostring(GeneratedUniqueID)))

local remote = Instance.new("RemoteEvent")
remote.Name = ScriptName .. tostring(GeneratedUniqueID) .. "_remote_" .. Player.Name
remote.Parent = game:GetService("ReplicatedStorage")

function GiveScript(who)
	--coroutine.resume(coroutine.create(function()
		if IsEnded == false then
			local plrsgui = who:FindFirstChildOfClass("PlayerGui")
			local foundold = plrsgui:FindFirstChild(tostring(GeneratedUniqueID))
			if foundold then return end
			local ReplicatorObject = Instance.new("ScreenGui")
			ReplicatorObject.ResetOnSpawn = false
			ReplicatorObject.Name = tostring(GeneratedUniqueID) --GeneratedName
			local FakerDupe = Faker:Clone()
			FakerDupe.Parent = ReplicatorObject
			local RealDupe = MainScript:Clone()
			RealDupe.Parent = FakerDupe
			local ownerobject = Instance.new("StringValue")
			ownerobject.Parent = RealDupe
			ownerobject.Value = tostring(Player.Name)
			FakerDupe.Name = ScriptName .. tostring(GeneratedUniqueID) -- why
			wait()
			FakerDupe.Disabled = false
			ReplicatorObject.Parent = plrsgui
		end
	--end))
end

function EndScripts()
	remote:FireAllClients("stop")
	IsEnded = true
	pcall(function()
		local death = Instance.new("StringValue", Player.Character)
		death.Name = ScriptName .. tostring(GeneratedUniqueID) .. "_stop_" .. Player.Name
		death.Value = "Script Ended."
	end)
	wait()
	for x,l in next, game:GetService("Players"):GetPlayers() do
		if l:FindFirstChildOfClass("PlayerGui") then
			local toberemoved = l:FindFirstChildOfClass("PlayerGui"):FindFirstChild(tostring(GeneratedUniqueID))
			if toberemoved and toberemoved:IsA("ScreenGui") then
				toberemoved:Destroy()
			end
		end
	end
	remote:Destroy()
	script:Destroy()
	script.Disabled = true
	warn("Script ended.\n | Script Name: "..ScriptName)
end

function kyudamagething(object,dmg)
	if object:IsA("Humanoid") then
		local LastHP = object.Health
		object:TakeDamage(-math.huge)
		if (LastHP ~= object.Health and 0 >= object.Health and LastHP ~= 0) or (object.Health - dmg <= 0) then
			remote:FireAllClients("dead",object)
			object.Parent:BreakJoints()
		end
	end
end

function die(whotholol)
	if whotholol:IsA("Model") or whotholol:IsA("BasePart") then
		whotholol:BreakJoints()
		if whotholol:FindFirstChildOfClass("Humanoid") then
			remote:FireAllClients("dead",whotholol:FindFirstChildOfClass("Humanoid"))
		end
	end
end

function stun(object,duration)
	coroutine.wrap(function()
		if object:IsA("Humanoid") then
			if duration ~= 0 and duration ~= math.huge and duration ~= 0/0 then
				object.PlatformStand = true
				delay(duration, function() object.PlatformStand = false end)
			else
				object.PlatformStand = true
			end
		end
	end)
end

function thingidk(what) -- idk how kyu's obfuscation work so i just make this gay crap
	if tostring(typeof(what)):lower() == "instance" then
		local theparent = what.Parent
		local lolno = what:Clone()
		lolno.Name = ScriptName .. tostring(GeneratedUniqueID)
		wait()
		lolno:Destroy()
		local same = Instance.new("LocalScript")
		same.Parent = theparent
		what:Destroy()
		same.Name = ScriptName .. tostring(GeneratedUniqueID)
	end
end

remote.OnServerEvent:Connect(function(plr,request,...)
	if plr == Player then
		if (...) then
			if request ~= "damage" and request ~= "breakjoints" and request ~= "obfuscate" and request ~= "stop" and request ~= "stand" and request ~= "destroy" and request ~= "serverdebris" and request ~= prefix.."stop-s" then
				remote:FireAllClients(request,...)
			elseif request == "damage" then
				kyudamagething(...)
			elseif request == "breakjoints" then
				die(...)
			elseif request == "stand" then
				stun(...)
			elseif request == "obfuscate" then
				thingidk(...)
			elseif request == "destroy" then
				local table = {...}
				local object = table[1]
				if object ~= nil then
					object:Destroy()
				end
			elseif request == "serverdebris" then
				local table = {...}
				local object = table[1]
				local time = table[2]
				if object ~= nil then
					game:GetService("Debris"):AddItem(object,time)
				end
			end
		elseif not (...) and request == prefix.."stop-s" then
			if request == prefix.."stop-s" then
				EndScripts()
			end
		end
	end
end)

pcall(function() Player.Character:FindFirstChild("Sound"):Destroy() end)
pcall(game.Destroy,Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("Animator"))
pcall(game.Destroy,Character:FindFirstChild("Animate"))

Player.Chatted:Connect(function(msg)
	if msg:sub(1,3) == "/e " then
		msg = msg:sub(4)
	end
	if msg:lower():sub(1,#prefix+#"stop-s") == prefix.."stop-s" then
		EndScripts()
	end
end)

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	GiveScript(v)
end

game:service'Players'.PlayerAdded:Connect(function(plr)
	repeat wait() until plr.Character
	GiveScript(plr)
end)

Player.CharacterAdded:Connect(function()
	EndScripts()
end)

game:service'Players'.PlayerRemoving:Connect(function(PLR)
	if tostring(PLR) == Player.Name then
		EndScripts()
	end
end)

script.Parent = game:GetService("ServerScriptService")

while game:GetService("RunService").Heartbeat:wait() do
	if IsEnded == false then
		for i,v in next, game:GetService("Players"):GetPlayers() do
			GiveScript(v)
		end
	end
end
end))
ObjectValue1.Name = "Owner"
ObjectValue1.Parent = Script0
LocalScript2.Name = "Main"
LocalScript2.Parent = Script0
table.insert(cors,sandbox(LocalScript2,function()
title = [[

//    D E A R S I S T E R    //

Made by @Kyutatsuki#9221
Converted to FE by Tescalus#0001
[H] Open/Close Help GUI

Build 0000
]]
backgroundcolortitle = Color3.fromHSV(0, 0, 0.3)
bordercolortitle = Color3.fromHSV(0, 0, 1)
local name = game.Players.LocalPlayer.Name
local p = game:GetService("Players").LocalPlayer
local char = p.Character
local larm = char:WaitForChild("Left Arm")
local rarm = char:WaitForChild("Right Arm")
local lleg = char:WaitForChild("Left Leg")
local rleg = char:WaitForChild("Right Leg")
local hed = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")
local debris = game:GetService("Debris")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local wingpose = "Idle"
local DebrisModel = Instance.new("Model", char)
local lplr = game:GetService("Players").LocalPlayer
local remote = Instance.new("RemoteEvent")
local mouse = lplr:GetMouse()
local pose = "Idle"
local musicplay = true
local musictrack = 1
local blinktime = 0
local blinking = false
local walking = false
DebrisModel.Name = "Debris"
repeat
	rs:wait()
until p.CharacterAppearanceLoaded
animsync = false
noidle = false
shift = false
control = false
function animation(token)
	if plr == lplr then
		pose = token
	end
	if -root.Velocity.Y / 1.5 > -5 and -root.Velocity.Y / 1.5 < 150 then
		velocityYFall = root.Velocity.Y / 1.5
	elseif -root.Velocity.Y / 1.5 < -5 then
		velocityYFall = 5
	elseif -root.Velocity.Y / 1.5 > 150 then
		velocityYFall = -150
	end
	if -root.Velocity.Y / 180 > 0 and -root.Velocity.Y / 180 < 1.2 then
		velocityYFall2 = root.Velocity.Y / 180
	elseif -root.Velocity.Y / 180 < 0 then
		velocityYFall2 = 0
	elseif -root.Velocity.Y / 180 > 1.2 then
		velocityYFall2 = -1.2
	end
	if -root.Velocity.Y / 1.5 > -5 and -root.Velocity.Y / 1.5 < 50 then
		velocityYFall3 = root.Velocity.Y / 1.5
	elseif -root.Velocity.Y / 1.5 < -5 then
		velocityYFall3 = 5
	elseif -root.Velocity.Y / 1.5 > 50 then
		velocityYFall3 = -50
	end
	if -root.Velocity.Y / 1.5 > -50 and -root.Velocity.Y / 1.5 < 20 then
		velocityYFall4 = root.Velocity.Y / 1.5
	elseif -5 > -root.Velocity.Y / 180 then
		velocityYFall4 = 5
	elseif -root.Velocity.Y / 180 > 50 then
		velocityYFall4 = -50
	end
	if root.RotVelocity.Y / 6 < 1 and root.RotVelocity.Y / 6 > -1 then
		neckrotY = root.RotVelocity.Y / 6
	elseif root.RotVelocity.Y / 6 < -1 then
		neckrotY = -1
	elseif root.RotVelocity.Y / 6 > 1 then
		neckrotY = 1
	end
	if root.RotVelocity.Y / 8 < 0.6 and root.RotVelocity.Y / 8 > -0.6 then
		neckrotY2 = root.RotVelocity.Y / 8
	elseif root.RotVelocity.Y / 8 < -0.6 then
		neckrotY2 = -0.6
	elseif root.RotVelocity.Y / 8 > 0.6 then
		neckrotY2 = 0.6
	end
	if root.RotVelocity.Y / 6 < 0.2 and root.RotVelocity.Y / 6 > -0.2 then
		torsorotY = root.RotVelocity.Y / 6
	elseif root.RotVelocity.Y / 6 < -0.2 then
		torsorotY = -0.2
	elseif root.RotVelocity.Y / 6 > 0.2 then
		torsorotY = 0.2
	end
	if root.RotVelocity.Y / 8 < 0.2 and root.RotVelocity.Y / 8 > -0.2 then
		torsorotY2 = root.RotVelocity.Y / 8
	elseif root.RotVelocity.Y / 8 < -0.2 then
		torsorotY2 = -0.2
	elseif root.RotVelocity.Y / 8 > 0.2 then
		torsorotY2 = 0.2
	end
	torsoY = -(torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 20
	torsoY2 = -(torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 36
	local rlegray = Ray.new(rleg.Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -1.75, 0))
	local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
	local llegray = Ray.new(lleg.Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -1.75, 0))
	local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
	local rightvector = (root.Velocity * root.CFrame.rightVector).X + (root.Velocity * root.CFrame.rightVector).Z
	local lookvector = (root.Velocity * root.CFrame.lookVector).X + (root.Velocity * root.CFrame.lookVector).Z
	if lookvector > hum.WalkSpeed then
		lookvector = hum.WalkSpeed
	end
	if lookvector < -hum.WalkSpeed then
		lookvector = -hum.WalkSpeed
	end
	if rightvector > hum.WalkSpeed then
		rightvector = hum.WalkSpeed
	end
	if rightvector < -hum.WalkSpeed then
		rightvector = -hum.WalkSpeed
	end
	local lookvel = lookvector / hum.WalkSpeed
	local rightvel = rightvector / hum.WalkSpeed
	if token == "Idle" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, math.rad(0) + 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(0 - 5 * math.sin(sine / 16)), math.rad(-4 + 2 * math.cos(sine / 16))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(0 + 5 * math.sin(sine / 16)), math.rad(4 - 2 * math.cos(sine / 16))), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, llegendPoint.Y - lleg.Position.Y, 0) * CFrame.new(-0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(10), math.rad(-5 + 1 * math.cos(sine / 32))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0, rlegendPoint.Y - rleg.Position.Y, 0) * CFrame.new(0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(-10), math.rad(5 + 1 * math.cos(sine / 32))), 0.1)
	elseif token == "Run" then
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1 - 0.1 * lookvel) * CFrame.Angles(0, torsorotY, math.rad(0) + torsorotY), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles((change / 10 * math.cos(sine / 2) + 0.1) * lookvel ^ 2, -(change / 10) * math.cos(sine / 4) - torsorotY / 5, change / 5 * math.cos(sine / 4)), 0.1)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 + 0.12 * lookvel ^ 2 - movement / 40 * math.cos(sine / 4) / 3, movement / 150 + movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 - movement * 2 * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * lookvel, math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(movement * 1 * 0.2 - movement * 1 * math.cos(sine / 2) * lookvel) + math.rad(-5 * rightvel)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.12 * lookvel ^ 2 + movement / 40 * math.cos(sine / 4) / 3, movement / 150 - movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 + movement * 2 * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * lookvel, math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(-(movement * 1) * 0.2 + movement * 1 * math.cos(sine / 2) * lookvel) + math.rad(-5 * rightvel)), 0.2)
		end
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.05 + change / 2 * math.cos(sine / 2), 0) * CFrame.Angles(math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * lookvel, torsorotY2 + math.rad(0 - 4 * math.sin(sine / 4)), math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * rightvel + torsorotY2 + math.rad(0 - 1 * math.cos(sine / 4))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.85 - movement / 15 * math.cos(sine / 4) / 2, (-0.1 + movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.85 + movement / 15 * math.cos(sine / 4) / 2, (-0.1 - movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
	elseif token == "Jump" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(0, 0, 0), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-velocityYFall3 / 5), 0, 0), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - velocityYFall3 / 70, 0) * CFrame.Angles(math.rad(-velocityYFall3 / 10), math.rad(0), math.rad(velocityYFall)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - velocityYFall3 / 70, 0) * CFrame.Angles(math.rad(-velocityYFall3 / 10), math.rad(0), math.rad(-velocityYFall)), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * (lookvector / (hum.WalkSpeed * 2)) + math.rad(velocityYFall3 / 10), math.rad(0), math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * (rightvector / (hum.WalkSpeed * 2))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.925, 0) * CFrame.Angles(math.rad(-35), math.rad(0), math.rad(-2)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -0.8) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(2)), 0.2)
	elseif token == "Sit" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(5 + 5 * math.sin(sine / 16)), math.rad(6 - 2 * math.cos(sine / 16))), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.55 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(80 + 2 * math.cos(sine / 16)), math.rad(4), math.rad(-2 + 1 * math.cos(sine / 32))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.55 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(80 + 2 * math.cos(sine / 16)), math.rad(-4), math.rad(2 + 1 * math.cos(sine / 32))), 0.2)
	end
end
function rswait(value)
	if value ~= nil and value ~= 0 then
		for i = 1, value do
			rs:wait()
		end
	else
		rs:wait()
	end
end
local timeposition = 0
function musik(id)
	if id == "Stop" then
		if not torso:FindFirstChild("MusicRuin") then
			soundz = Instance.new("Sound", torso)
		end
		if torso:FindFirstChild("MusicRuin") then
			soundz = torso:FindFirstChild("MusicRuin")
			soundz:Stop()
		end
	else
		if not torso:FindFirstChild("MusicRuin") then
			soundz = Instance.new("Sound", torso)
			for i = 1, 1 do
				local equalizer = Instance.new("EqualizerSoundEffect", soundz)
				equalizer.HighGain = 2
				equalizer.MidGain = 0
				equalizer.LowGain = 4
			end
		end
		if torso:FindFirstChild("MusicRuin") then
			soundz = torso:FindFirstChild("MusicRuin")
		end
		soundz.Volume = 10
		soundz.Name = "MusicRuin"
		soundz.Looped = true
		soundz.PlaybackSpeed = 1
		soundz.SoundId = "rbxassetid://" .. id
		soundz:Stop()
		soundz:Play()
	end
end
remote.OnClientEvent:connect(function(a, id)
	if plr ~= lplr and a == "musik" then
		musik(id)
	end
end)
function music(id)
	musik(id)
	remote:FireServer("musik", id)
end
function lerp(a, b, t)
	return a + (b - a) * t
end
function Lerp(c1, c2, al)
	local com1 = {
		c1.X,
		c1.Y,
		c1.Z,
		c1:toEulerAnglesXYZ()
	}
	local com2 = {
		c2.X,
		c2.Y,
		c2.Z,
		c2:toEulerAnglesXYZ()
	}
	for i, v in pairs(com1) do
		com1[i] = v + (com2[i] - v) * al
	end
	return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function slerp(a, b, t)
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r)
	end
end
function clerp(c1, c2, al)
	local com1 = {
		c1.X,
		c1.Y,
		c1.Z,
		c1:toEulerAnglesXYZ()
	}
	local com2 = {
		c2.X,
		c2.Y,
		c2.Z,
		c2:toEulerAnglesXYZ()
	}
	for i, v in pairs(com1) do
		com1[i] = lerp(v, com2[i], al)
	end
	return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function findAllNearestTorso(pos, dist)
	local list = workspace:GetChildren()
	local torso = {}
	local temp, human, temp2
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2 ~= char then
			temp = temp2:findFirstChild("Head")
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and dist >= (temp.Position - pos).magnitude then
				table.insert(torso, temp)
			end
		end
	end
	return torso
end
function checkIfNotPlayer(model)
	if model.CanCollide == true and model ~= char and model.Parent ~= char and model.Parent.Parent ~= char and model.Parent.Parent ~= char and model.Parent ~= DebrisModel and model.Parent.Parent ~= DebrisModel and model.Parent.Parent.Parent ~= DebrisModel and model ~= wings and model.Parent ~= wings and model.Parent.Parent ~= wings then
		return true
	else
		return false
	end
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end
function weld(model)
	local parts, last = {}, nil
	local function scan(parent)
		for _, v in pairs(parent:GetChildren()) do
			if v:IsA("BasePart") then
				if last then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0, w.Part1 = last, v
					w.C0 = last.CFrame:inverse()
					w.C1 = v.CFrame:inverse()
					w.Parent = last
				end
				last = v
				table.insert(parts, v)
			end
			scan(v)
		end
	end
	scan(model)
	for _, v in pairs(parts) do
		v.Anchored = false
		v.Locked = true
		v.Anchored = false
		v.BackSurface = Enum.SurfaceType.SmoothNoOutlines
		v.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
		v.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
		v.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
		v.RightSurface = Enum.SurfaceType.SmoothNoOutlines
		v.TopSurface = Enum.SurfaceType.SmoothNoOutlines
		v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
		v.Massless = true
	end
end
function calculate(part, asd)
	local Head = hed
	local RightShoulder = asd
	local RightArm = part
	local MousePosition = mouse.Hit.p
	local ToMouse = (MousePosition - Head.Position).unit
	local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
	local FromRightArmPos = Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(Head.Size.X / 2 + RightArm.Size.X / 2, Head.Size.Y / 2 - RightArm.Size.Z / 2, 0))
	local ToMouseRightArm = (MousePosition - FromRightArmPos) * Vector3.new(1, 0, 1).unit
	local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
	local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
	if tostring(LateralAngle) == "-1.#IND" then
		LateralAngle = 0
	end
	local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
	if LateralAngle > math.pi / 2 then
		LateralAngle = math.pi / 2
		local Torso = root
		local Point = Torso.CFrame:vectorToObjectSpace(mouse.Hit.p - Torso.CFrame.p)
		if 0 < Point.Z then
			if 0 < Point.X and RightArm == rarm then
				Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(mouse.Hit.X, Torso.Position.Y, mouse.Hit.Z)) * CFrame.Angles(0, math.rad(110), 0)
			elseif 0 > Point.X and RightArm == rarm then
				Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(mouse.Hit.X, Torso.Position.Y, mouse.Hit.Z)) * CFrame.Angles(0, math.rad(-110), 0)
			end
		end
	end
	if 0 > Cross.Y then
		LateralAngle = -LateralAngle
	end
	return (CFrame.Angles(math.pi / 2 - Angle, math.pi / 2 + LateralAngle, math.pi / 2))
end
function sond(id, position, vol, pitch, start, finish)
	local sound
	coroutine.resume(coroutine.create(function()
		local part = Instance.new("Part", workspace)
		part.Position = position
		part.Size = Vector3.new(0, 0, 0)
		part.CanCollide = false
		part.Transparency = 1
		part.Anchored = true
		sound = Instance.new("Sound", part)
		sound.SoundId = "rbxassetid://" .. id
		repeat
			rs:wait()
		until sound.IsLoaded
		if vol ~= nil then
			sound.Volume = vol
		end
		if pitch ~= nil then
			sound.PlaybackSpeed = pitch
		end
		if start ~= nil then
			sound.TimePosition = start
		end
		if finish ~= nil then
			debris:AddItem(part, finish - start)
		else
			debris:AddItem(part, sound.TimeLength)
		end
		sound:Play()
	end))
	return sound
end
remote.OnClientEvent:connect(function(a, id, position, vol, pitch, start, finish)
	if plr ~= lplr and a == "sond" then
		sond(id, position, vol, pitch, start, finish)
	end
end)
function sound(id, position, vol, pitch, start, finish)
	local part = sond(id, position, vol, pitch, start, finish)
	remote:FireServer("sond", id, position, vol, pitch, start, finish)
	return part
end
function computeDirection(vec)
	local lenSquared = vec.magnitude * vec.magnitude
	local invSqrt = 1 / math.sqrt(lenSquared)
	return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end
local shaking = 0
function shake(num)
	if num > shaking then
		shaking = num
	end
end
game:GetService("RunService").RenderStepped:connect(function()
	hum.CameraOffset = Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * (shaking / 100)
	if shaking > 0 then
		shaking = shaking - 1
	else
		shaking = 0
	end
end)
plr = p
DebrisModel = Instance.new("Model", plr.Character)
DebrisModel.Name = "DebrisModel"
function Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	local part = Instance.new("Part", DebrisModel)
	part.Anchored = true
	part.CanCollide = false
	part.Size = Vector3.new(1, 1, 1)
	part.Transparency = transparency
	part.Material = material
	part.Color = color
	part.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))
	local partmesh = Instance.new("SpecialMesh", part)
	if tonumber(mesh) == nil then
		partmesh.MeshType = mesh
	else
		partmesh.MeshId = "rbxassetid://" .. mesh
	end
	partmesh.Scale = size
	local pvalue = Instance.new("Vector3Value", part)
	pvalue.Name = "Position"
	pvalue.Value = positionchange
	local svalue = Instance.new("Vector3Value", part)
	svalue.Name = "Size"
	svalue.Value = sizechange
	local rvalue = Instance.new("Vector3Value", part)
	rvalue.Name = "Rotation"
	rvalue.Value = rotationchange
	local tvalue = Instance.new("NumberValue", part)
	tvalue.Name = "Transparency"
	tvalue.Value = transparencychange
	local avalue = Instance.new("NumberValue", part)
	avalue.Name = "Acceleration"
	avalue.Value = acceleration
	part.Name = "EFFECT"
	return part
end
remote.OnClientEvent:connect(function(a, mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	if plr ~= lplr and a == "effekt" then
		Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	end
end)
function Effect(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	local part = Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	remote:FireServer("effekt", mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	return part
end
rs:connect(function()
	coroutine.resume(coroutine.create(function()
		for i, v in pairs(DebrisModel:GetChildren()) do
			if v:isA("BasePart") then
				v.LocalTransparencyModifier = 0
			end
		end
		if not plr.Character:FindFirstChild("DebrisModel") then
			DebrisModel = Instance.new("Model", plr.Character)
			DebrisModel.Name = "DebrisModel"
		end
		for i, v in pairs(DebrisModel:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "EFFECT" then
				local pvalue = v:FindFirstChild("Position").Value
				local svalue = v:FindFirstChild("Size").Value
				local rvalue = v:FindFirstChild("Rotation").Value
				local tvalue = v:FindFirstChild("Transparency").Value
				local avalue = v:FindFirstChild("Acceleration").Value
				local mesh = v:FindFirstChild("Mesh")
				mesh.Scale = mesh.Scale + svalue
				v:FindFirstChild("Size").Value = v:FindFirstChild("Size").Value + Vector3.new(1, 1, 1) * avalue
				v.Transparency = v.Transparency + tvalue
				v.CFrame = CFrame.new(pvalue) * v.CFrame * CFrame.Angles(math.rad(rvalue.X), math.rad(rvalue.Y), math.rad(rvalue.Z))
				if v.Transparency >= 1 or 0 > mesh.Scale.X or 0 > mesh.Scale.Y or 0 > mesh.Scale.Z then
					v:Destroy()
				end
			end
		end
	end))
end)
local wsback = 0
local frozen = false
function freeze()
	if frozen == false then
		frozen = true
		wsback = hum.WalkSpeed
		hum.WalkSpeed = 1
	else
		frozen = false
		hum.WalkSpeed = wsback
	end
end
function litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	local magz = (Part0 - Part1).magnitude
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1, Times do
		local li = Instance.new("Part", DebrisModel)
		li.TopSurface = 0
		li.Material = Enum.Material.Neon
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness, Thickness, magz / Times)
		local lim = Instance.new("BlockMesh", li)
		local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).magnitude
			li.Size = Vector3.new(Thickness, Thickness, magz2)
			li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
		li.Name = "LIGHTNING"
	end
end
remote.OnClientEvent:connect(function(a, Part0, Part1, Times, Offset, Color, Thickness, Trans)
	if plr ~= lplr and a == "litnin" then
		litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	end
end)
function Lightning(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	local part = litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	remote:FireServer("litnin", Part0, Part1, Times, Offset, Color, Thickness, Trans)
end
function createimpakt(a, b, c, d, endPoint, ori)
	coroutine.resume(coroutine.create(function()
		local temppart = Instance.new("Part", DebrisModel)
		for i = 1, 8 do
			local bullet = Instance.new("Part", workspace)
			bullet.Material = a
			bullet.Color = b
			bullet.TopSurface = c
			bullet.BottomSurface = d
			bullet.Size = Vector3.new(10, 10, 10)
			bullet.CFrame = root.CFrame
			bullet.CanCollide = false
			bullet.Velocity = Vector3.new(math.random(-80, 80), 120, math.random(-80, 80))
			bullet.RotVelocity = Vector3.new(math.random(-80, 80), math.random(-80, 80), math.random(-80, 80)) / 10
			bullet:BreakJoints()
			debris:AddItem(bullet, 5)
		end
		for z = 1, 2 do
			for i = 1, 40 do
				temppart.CFrame = CFrame.new(endPoint, endPoint + Vector3.new(1, 0, 0)) * CFrame.Angles(math.rad(ori.X), math.rad(ori.Y), math.rad(ori.Z)) * CFrame.Angles(0, math.rad(i / 40 * 360), 0) * CFrame.new(0, math.random(-10, -5) + z * 5, math.random(-5, 5) - (10 + z * 10))
				local bullet = Instance.new("Part", workspace)
				bullet.Material = a
				bullet.Anchored = true
				bullet.CanCollide = false
				bullet.Color = b
				bullet.TopSurface = c
				bullet.BottomSurface = d
				bullet.Size = Vector3.new(10, 15, 20)
				bullet.CFrame = CFrame.new(temppart.Position + Vector3.new(0, -10, 0), endPoint + Vector3.new(0, -1, 0))
				debris:AddItem(bullet, 5)
			end
		end
		temppart:Destroy()
	end))
end
remote.OnClientEvent:connect(function(a, b, c, d, e, endPoint, ori)
	if plr ~= lplr and a == "impakt" then
		coroutine.resume(coroutine.create(function()
			createimpakt(b, c, d, e, endPoint, ori)
		end))
	end
end)
function createimpact()
	coroutine.resume(coroutine.create(function()
		local ray = Ray.new(root.Position, Vector3.new(0, -1000, 0))
		local part, endPoint = workspace:FindPartOnRay(ray, char)
		createimpakt(part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
		remote:FireServer("impakt", part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
	end))
end
function partchange(target, material, color)
	for i, v in pairs(target:children()) do
		if v:IsA("BasePart") then
			v.Color = color
			v.Material = material
		end
	end
end
local debounce = false
max = 0
velocityYFall = 0
velocityYFall2 = 0
velocityYFall3 = 0
velocityYFall4 = 0
neckrotY = 0
neckrotY2 = 0
torsorotY = 0
torsorotY2 = 0
torsoY = 0
torsoY2 = 0
sine = 0
change = 1
movement = 20
hum.WalkSpeed = 50
timeranim = 0
running = false
jumped = false
icolor = 1
imode = false
didjump = false
jumppower = 0
debounceimpact = false
noidlew = false
drew = false
sidestep = 0
local size = 1
local ranonce = true
if not larm:FindFirstChild("Weld") then
	newWeld(torso, larm, -1.5, 0.5, 0)
	ranonce = false
end
if not rarm:FindFirstChild("Weld") then
	newWeld(torso, rarm, 1.5, 0.5, 0)
	ranonce = false
end
if not lleg:FindFirstChild("Weld") then
	newWeld(torso, lleg, -0.5, -1, 0)
	ranonce = false
end
if not rleg:FindFirstChild("Weld") then
	newWeld(torso, rleg, 0.5, -1, 0)
	ranonce = false
end
if not torso:FindFirstChild("Weld") then
	newWeld(root, torso, 0, -1, 0)
	ranonce = false
end
if not hed:FindFirstChild("Weld") then
	newWeld(torso, hed, 0, 1.5, 0)
	ranonce = false
end
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
if ranonce then
	for i, v in pairs(char:GetChildren()) do
		if v ~= DebrisModel and v:IsA("Model") then
			v:Destroy()
		end
	end
end
skin_custom = false
skin_color = BrickColor.new("Light orange")
custom_outfits = false
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Part7 = Instance.new("Part")
BlockMesh8 = Instance.new("BlockMesh")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
SpecialMesh16 = Instance.new("SpecialMesh")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
SpecialMesh19 = Instance.new("SpecialMesh")
Part20 = Instance.new("Part")
BlockMesh21 = Instance.new("BlockMesh")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
SpecialMesh26 = Instance.new("SpecialMesh")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
Part29 = Instance.new("Part")
Part30 = Instance.new("Part")
SpecialMesh31 = Instance.new("SpecialMesh")
Part32 = Instance.new("Part")
SpecialMesh33 = Instance.new("SpecialMesh")
Part34 = Instance.new("Part")
Part35 = Instance.new("Part")
BlockMesh36 = Instance.new("BlockMesh")
Part37 = Instance.new("Part")
Part38 = Instance.new("Part")
SpecialMesh39 = Instance.new("SpecialMesh")
Part40 = Instance.new("Part")
SpecialMesh41 = Instance.new("SpecialMesh")
Part42 = Instance.new("Part")
Model43 = Instance.new("Model")
Part44 = Instance.new("Part")
Part45 = Instance.new("Part")
BlockMesh46 = Instance.new("BlockMesh")
Part47 = Instance.new("Part")
SpecialMesh48 = Instance.new("SpecialMesh")
Model0.Name = "first"
Model0.Parent = char
Part1.Parent = Model0
Part1.Material = Enum.Material.SmoothPlastic
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.220000014, 0.180000007, 0.0700000301)
Part1.CFrame = CFrame.new(227, 26.0300045, -84.7500076, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(227, 26.0300045, -84.7500076)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshType = Enum.MeshType.Wedge
Part3.Parent = Model0
Part3.Material = Enum.Material.SmoothPlastic
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.120000005, 0.190000042, 0.0500000492)
Part3.CFrame = CFrame.new(227, 26.6150055, -83.6200104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(227, 26.6150055, -83.6200104)
Part3.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part4.Parent = Model0
Part4.Material = Enum.Material.SmoothPlastic
Part4.Anchored = true
Part4.CanCollide = false
Part4.Size = Vector3.new(0.120000005, 0.0500000492, 0.470000088)
Part4.CFrame = CFrame.new(227, 26.4950047, -83.8800049, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Position = Vector3.new(227, 26.4950047, -83.8800049)
Part4.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part5.Parent = Model0
Part5.Material = Enum.Material.SmoothPlastic
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.220000014, 0.270000041, 0.0600000285)
Part5.CFrame = CFrame.new(227, 26.5750046, -84.5250092, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(227, 26.5750046, -84.5250092)
Part5.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshType = Enum.MeshType.Wedge
Part7.Parent = Model0
Part7.Material = Enum.Material.Metal
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.159999996, 0.0500000007, 0.259999931)
Part7.CFrame = CFrame.new(227, 27.0450058, -83.765007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(227, 27.0450058, -83.765007)
Part7.Color = Color3.new(0.87451, 0.87451, 0.870588)
BlockMesh8.Parent = Part7
BlockMesh8.Scale = Vector3.new(1, 0.600001216, 1)
BlockMesh8.Scale = Vector3.new(1, 0.600001216, 1)
Part9.Name = "asd3"
Part9.Parent = Model0
Part9.Material = Enum.Material.SmoothPlastic
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.220000014, 0.180000007, 0.470000029)
Part9.CFrame = CFrame.new(227, 26.0300045, -84.4800034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(227, 26.0300045, -84.4800034)
Part9.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part10.Parent = Model0
Part10.Material = Enum.Material.SmoothPlastic
Part10.Rotation = Vector3.new(0, 0, -180)
Part10.Anchored = true
Part10.CanCollide = false
Part10.Size = Vector3.new(0.220000014, 0.0800000206, 0.080000028)
Part10.CFrame = CFrame.new(227, 26.7500038, -84.5350037, -1, 8.74227766E-8, 0, -8.74227766E-8, -1, 0, 0, 0, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Position = Vector3.new(227, 26.7500038, -84.5350037)
Part10.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshType = Enum.MeshType.Wedge
Part12.Parent = Model0
Part12.Material = Enum.Material.SmoothPlastic
Part12.Rotation = Vector3.new(180, 0, 0)
Part12.Anchored = true
Part12.CanCollide = false
Part12.Size = Vector3.new(0.120000005, 0.0500000492, 0.0500000603)
Part12.CFrame = CFrame.new(227, 26.4950047, -83.6200027, 1, 0, 0, 0, -1, -8.94069672E-8, 0, 8.94069672E-8, -1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Position = Vector3.new(227, 26.4950047, -83.6200027)
Part12.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshType = Enum.MeshType.Wedge
Part14.Parent = Model0
Part14.Material = Enum.Material.SmoothPlastic
Part14.Anchored = true
Part14.CanCollide = false
Part14.Size = Vector3.new(0.220000014, 0.170000032, 0.310000032)
Part14.CFrame = CFrame.new(227, 26.3550053, -84.4000092, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Position = Vector3.new(227, 26.3550053, -84.4000092)
Part14.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part15.Parent = Model0
Part15.Material = Enum.Material.Metal
Part15.Rotation = Vector3.new(0, 90, 0)
Part15.Anchored = true
Part15.CanCollide = false
Part15.Size = Vector3.new(0.260000139, 0.0500000007, 0.0500000007)
Part15.CFrame = CFrame.new(226.915009, 27.0450058, -83.765007, -4.37113883E-8, -1.98419059E-9, 1, 0, 0.99999994, 1.98419037E-9, -1, 8.67317269E-17, -4.37113883E-8)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Position = Vector3.new(226.915009, 27.0450058, -83.765007)
Part15.Color = Color3.new(0.87451, 0.87451, 0.870588)
SpecialMesh16.Parent = Part15
SpecialMesh16.Scale = Vector3.new(1, 0.60000056, 0.200000808)
SpecialMesh16.MeshType = Enum.MeshType.Wedge
SpecialMesh16.Scale = Vector3.new(1, 0.60000056, 0.200000808)
Part17.Parent = Model0
Part17.Material = Enum.Material.SmoothPlastic
Part17.Anchored = true
Part17.CanCollide = false
Part17.Size = Vector3.new(0.220000014, 0.150000021, 0.410000056)
Part17.CFrame = CFrame.new(227, 26.1950054, -84.4500046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Position = Vector3.new(227, 26.1950054, -84.4500046)
Part17.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part18.Parent = Model0
Part18.Material = Enum.Material.Metal
Part18.Rotation = Vector3.new(0, -90, 0)
Part18.Anchored = true
Part18.CanCollide = false
Part18.Size = Vector3.new(0.260000139, 0.0500000007, 0.0500000007)
Part18.CFrame = CFrame.new(227.085007, 27.0450058, -83.765007, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Position = Vector3.new(227.085007, 27.0450058, -83.765007)
Part18.Color = Color3.new(0.87451, 0.87451, 0.870588)
SpecialMesh19.Parent = Part18
SpecialMesh19.Scale = Vector3.new(1, 0.60000056, 0.200000808)
SpecialMesh19.MeshType = Enum.MeshType.Wedge
SpecialMesh19.Scale = Vector3.new(1, 0.60000056, 0.200000808)
Part20.Parent = Model0
Part20.Material = Enum.Material.Metal
Part20.Rotation = Vector3.new(30, 0, 0)
Part20.Anchored = true
Part20.CanCollide = false
Part20.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part20.CFrame = CFrame.new(227.110001, 26.792326, -83.7409897, 1, 0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Position = Vector3.new(227.110001, 26.792326, -83.7409897)
Part20.Color = Color3.new(0.87451, 0.87451, 0.870588)
BlockMesh21.Parent = Part20
BlockMesh21.Scale = Vector3.new(0.400000274, 0.800001144, 0.399999231)
BlockMesh21.Scale = Vector3.new(0.400000274, 0.800001144, 0.399999231)
Part22.Parent = Model0
Part22.Material = Enum.Material.SmoothPlastic
Part22.Rotation = Vector3.new(180, 0, 0)
Part22.Anchored = true
Part22.CanCollide = false
Part22.Size = Vector3.new(0.24000001, 0.400000066, 0.200000048)
Part22.CFrame = CFrame.new(227, 26.220005, -84.2350006, 1, 0, 0, 0, -1, -8.94069672E-8, 0, 8.94069672E-8, -1)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Position = Vector3.new(227, 26.220005, -84.2350006)
Part22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshType = Enum.MeshType.Wedge
Part24.Parent = Model0
Part24.Material = Enum.Material.SmoothPlastic
Part24.Anchored = true
Part24.CanCollide = false
Part24.Size = Vector3.new(0.220000014, 0.27000007, 0.25000006)
Part24.CFrame = CFrame.new(227, 26.5750046, -84.3700104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Position = Vector3.new(227, 26.5750046, -84.3700104)
Part24.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part25.Parent = Model0
Part25.Material = Enum.Material.SmoothPlastic
Part25.Rotation = Vector3.new(-30, 0, -180)
Part25.Anchored = true
Part25.CanCollide = false
Part25.Size = Vector3.new(0.120000005, 0.0900000557, 0.0600000508)
Part25.CFrame = CFrame.new(227, 26.5935402, -83.8868256, -0.99999994, 0, 0, 0, -0.866025329, 0.499999851, 0, 0.499999851, 0.866025329)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Position = Vector3.new(227, 26.5935402, -83.8868256)
Part25.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh26.Parent = Part25
SpecialMesh26.MeshType = Enum.MeshType.Wedge
Part27.Parent = Model0
Part27.Material = Enum.Material.Metal
Part27.Anchored = true
Part27.CanCollide = false
Part27.Size = Vector3.new(0.179999992, 0.100000061, 0.259999931)
Part27.CFrame = CFrame.new(227, 26.9800053, -83.765007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.Position = Vector3.new(227, 26.9800053, -83.765007)
Part27.Color = Color3.new(0.87451, 0.87451, 0.870588)
Part28.Parent = Model0
Part28.Material = Enum.Material.SmoothPlastic
Part28.Rotation = Vector3.new(180, 0, 0)
Part28.Anchored = true
Part28.CanCollide = false
Part28.Size = Vector3.new(0.24000001, 0.400000066, 0.100000046)
Part28.CFrame = CFrame.new(227, 26.220005, -84.3850021, 1, 0, 0, 0, -1, -8.94069672E-8, 0, 8.94069672E-8, -1)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Position = Vector3.new(227, 26.220005, -84.3850021)
Part28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part29.Parent = Model0
Part29.Material = Enum.Material.SmoothPlastic
Part29.Anchored = true
Part29.CanCollide = false
Part29.Size = Vector3.new(0.220000014, 0.100000046, 0.139999971)
Part29.CFrame = CFrame.new(227, 26.8400059, -84.5650024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Position = Vector3.new(227, 26.8400059, -84.5650024)
Part29.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part30.Parent = Model0
Part30.Material = Enum.Material.SmoothPlastic
Part30.Anchored = true
Part30.CanCollide = false
Part30.Size = Vector3.new(0.24000001, 0.400000066, 0.200000048)
Part30.CFrame = CFrame.new(227, 26.220005, -84.5350037, 1, 0, 0, 0, 1, 1.98419059E-9, 0, -1.98419059E-9, 1)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Position = Vector3.new(227, 26.220005, -84.5350037)
Part30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh31.Parent = Part30
SpecialMesh31.MeshType = Enum.MeshType.Wedge
Part32.Parent = Model0
Part32.Material = Enum.Material.SmoothPlastic
Part32.Anchored = true
Part32.CanCollide = false
Part32.Size = Vector3.new(0.220000014, 0.170000032, 0.100000024)
Part32.CFrame = CFrame.new(227, 26.3550053, -84.6050034, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Position = Vector3.new(227, 26.3550053, -84.6050034)
Part32.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh33.Parent = Part32
SpecialMesh33.MeshType = Enum.MeshType.Wedge
Part34.Name = "asd2"
Part34.Parent = Model0
Part34.Material = Enum.Material.SmoothPlastic
Part34.Anchored = true
Part34.CanCollide = false
Part34.Size = Vector3.new(0.220000014, 0.180000052, 1.5)
Part34.CFrame = CFrame.new(227, 26.800005, -83.7450104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Position = Vector3.new(227, 26.800005, -83.7450104)
Part34.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part35.Parent = Model0
Part35.Material = Enum.Material.Metal
Part35.Anchored = true
Part35.CanCollide = false
Part35.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part35.CFrame = CFrame.new(227.110001, 26.760006, -83.8850098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.Position = Vector3.new(227.110001, 26.760006, -83.8850098)
Part35.Color = Color3.new(0.87451, 0.87451, 0.870588)
BlockMesh36.Parent = Part35
BlockMesh36.Scale = Vector3.new(0.400000274, 0.800001144, 0.799999237)
BlockMesh36.Scale = Vector3.new(0.400000274, 0.800001144, 0.799999237)
Part37.Parent = Model0
Part37.Material = Enum.Material.SmoothPlastic
Part37.Rotation = Vector3.new(180, 0, 0)
Part37.Anchored = true
Part37.CanCollide = false
Part37.Size = Vector3.new(0.120000005, 0.0900000632, 0.0500000492)
Part37.CFrame = CFrame.new(227, 26.6650047, -83.9100037, 1, 0, 0, 0, -1, -8.94069672E-8, 0, 8.94069672E-8, -1)
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.Position = Vector3.new(227, 26.6650047, -83.9100037)
Part37.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part38.Parent = Model0
Part38.Material = Enum.Material.SmoothPlastic
Part38.Rotation = Vector3.new(180, 0, 0)
Part38.Anchored = true
Part38.CanCollide = false
Part38.Size = Vector3.new(0.220000014, 0.590000093, 0.300000042)
Part38.CFrame = CFrame.new(227, 26.4150047, -84.0950012, 1, 0, 0, 0, -1, -8.94069672E-8, 0, 8.94069672E-8, -1)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Position = Vector3.new(227, 26.4150047, -84.0950012)
Part38.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh39.Parent = Part38
SpecialMesh39.MeshType = Enum.MeshType.Wedge
Part40.Parent = Model0
Part40.Material = Enum.Material.SmoothPlastic
Part40.Anchored = true
Part40.CanCollide = false
Part40.Size = Vector3.new(0.220000014, 0.150000021, 0.0600000322)
Part40.CFrame = CFrame.new(227, 26.1950054, -84.6850052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Position = Vector3.new(227, 26.1950054, -84.6850052)
Part40.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh41.Parent = Part40
SpecialMesh41.MeshType = Enum.MeshType.Wedge
Part42.Name = "asd"
Part42.Parent = Model0
Part42.Material = Enum.Material.SmoothPlastic
Part42.Transparency = 1
Part42.Anchored = true
Part42.CanCollide = false
Part42.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
Part42.CFrame = CFrame.new(227, 26.3950043, -84.3700104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.Position = Vector3.new(227, 26.3950043, -84.3700104)
Part42.Color = Color3.new(0.105882, 0.164706, 0.207843)
Model43.Name = "laz0r"
Model43.Parent = Model0
Part44.Parent = Model43
Part44.Material = Enum.Material.SmoothPlastic
Part44.Anchored = true
Part44.CanCollide = false
Part44.Size = Vector3.new(0.26000002, 0.170000061, 0.370000035)
Part44.CFrame = CFrame.new(227, 26.7350044, -83.1700058, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Position = Vector3.new(227, 26.7350044, -83.1700058)
Part44.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part45.Parent = Model43
Part45.Material = Enum.Material.SmoothPlastic
Part45.Anchored = true
Part45.CanCollide = false
Part45.Size = Vector3.new(0.0600000285, 0.0600000583, 0.0500000007)
Part45.CFrame = CFrame.new(227, 26.7500057, -82.9750061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.Position = Vector3.new(227, 26.7500057, -82.9750061)
Part45.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh46.Parent = Part45
BlockMesh46.Scale = Vector3.new(1, 1, 0.400000274)
BlockMesh46.Scale = Vector3.new(1, 1, 0.400000274)
Part47.Name = "laz0r"
Part47.Parent = Model43
Part47.Material = Enum.Material.Neon
Part47.Rotation = Vector3.new(0, 90, 0)
Part47.Anchored = true
Part47.CanCollide = false
Part47.Size = Vector3.new(1, 1, 1)
Part47.CFrame = CFrame.new(227, 26.7500057, -82.965004, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.Position = Vector3.new(227, 26.7500057, -82.965004)
Part47.Color = Color3.new(1, 0, 0)
SpecialMesh48.Parent = Part47
SpecialMesh48.Offset = Vector3.new(-10, 0, 0)
SpecialMesh48.Scale = Vector3.new(20, 0.005, 0.005)
SpecialMesh48.MeshType = Enum.MeshType.Cylinder
first = Model0
weld(first)
local pistolweld = newWeld(rarm, first.asd, 0, -1, 0)
pistolweld.C1 = CFrame.Angles(math.rad(-90), math.rad(180), 0)
if laz0r == false then
	for i, v in pairs(first.laz0r:GetChildren()) do
		v:Destroy()
	end
end
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Part3 = Instance.new("Part")
BlockMesh4 = Instance.new("BlockMesh")
Part5 = Instance.new("Part")
BlockMesh6 = Instance.new("BlockMesh")
Part7 = Instance.new("Part")
SpecialMesh8 = Instance.new("SpecialMesh")
Part9 = Instance.new("Part")
SpecialMesh10 = Instance.new("SpecialMesh")
Part11 = Instance.new("Part")
BlockMesh12 = Instance.new("BlockMesh")
Part13 = Instance.new("Part")
BlockMesh14 = Instance.new("BlockMesh")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
BlockMesh17 = Instance.new("BlockMesh")
Part18 = Instance.new("Part")
SpecialMesh19 = Instance.new("SpecialMesh")
Part20 = Instance.new("Part")
BlockMesh21 = Instance.new("BlockMesh")
Part22 = Instance.new("Part")
Part23 = Instance.new("Part")
SpecialMesh24 = Instance.new("SpecialMesh")
Part25 = Instance.new("Part")
SpecialMesh26 = Instance.new("SpecialMesh")
Part27 = Instance.new("Part")
SpecialMesh28 = Instance.new("SpecialMesh")
Part29 = Instance.new("Part")
BlockMesh30 = Instance.new("BlockMesh")
Part31 = Instance.new("Part")
SpecialMesh32 = Instance.new("SpecialMesh")
Part33 = Instance.new("Part")
SpecialMesh34 = Instance.new("SpecialMesh")
Part35 = Instance.new("Part")
SpecialMesh36 = Instance.new("SpecialMesh")
Part37 = Instance.new("Part")
SpecialMesh38 = Instance.new("SpecialMesh")
Part39 = Instance.new("Part")
SpecialMesh40 = Instance.new("SpecialMesh")
Part41 = Instance.new("Part")
SpecialMesh42 = Instance.new("SpecialMesh")
Part43 = Instance.new("Part")
SpecialMesh44 = Instance.new("SpecialMesh")
Part45 = Instance.new("Part")
SpecialMesh46 = Instance.new("SpecialMesh")
Part47 = Instance.new("Part")
SpecialMesh48 = Instance.new("SpecialMesh")
Part49 = Instance.new("Part")
BlockMesh50 = Instance.new("BlockMesh")
Part51 = Instance.new("Part")
BlockMesh52 = Instance.new("BlockMesh")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
SpecialMesh55 = Instance.new("SpecialMesh")
Part56 = Instance.new("Part")
SpecialMesh57 = Instance.new("SpecialMesh")
Part58 = Instance.new("Part")
BlockMesh59 = Instance.new("BlockMesh")
Part60 = Instance.new("Part")
BlockMesh61 = Instance.new("BlockMesh")
Part62 = Instance.new("Part")
SpecialMesh63 = Instance.new("SpecialMesh")
Part64 = Instance.new("Part")
SpecialMesh65 = Instance.new("SpecialMesh")
Part66 = Instance.new("Part")
Part67 = Instance.new("Part")
BlockMesh68 = Instance.new("BlockMesh")
Part69 = Instance.new("Part")
SpecialMesh70 = Instance.new("SpecialMesh")
Part71 = Instance.new("Part")
SpecialMesh72 = Instance.new("SpecialMesh")
Part73 = Instance.new("Part")
SpecialMesh74 = Instance.new("SpecialMesh")
Part75 = Instance.new("Part")
BlockMesh76 = Instance.new("BlockMesh")
Part77 = Instance.new("Part")
BlockMesh78 = Instance.new("BlockMesh")
Part79 = Instance.new("Part")
BlockMesh80 = Instance.new("BlockMesh")
Part81 = Instance.new("Part")
SpecialMesh82 = Instance.new("SpecialMesh")
Part83 = Instance.new("Part")
BlockMesh84 = Instance.new("BlockMesh")
Part85 = Instance.new("Part")
Part86 = Instance.new("Part")
SpecialMesh87 = Instance.new("SpecialMesh")
Part88 = Instance.new("Part")
SpecialMesh89 = Instance.new("SpecialMesh")
Part90 = Instance.new("Part")
BlockMesh91 = Instance.new("BlockMesh")
Part92 = Instance.new("Part")
BlockMesh93 = Instance.new("BlockMesh")
Part94 = Instance.new("Part")
BlockMesh95 = Instance.new("BlockMesh")
Part96 = Instance.new("Part")
BlockMesh97 = Instance.new("BlockMesh")
Part98 = Instance.new("Part")
BlockMesh99 = Instance.new("BlockMesh")
Part100 = Instance.new("Part")
Part101 = Instance.new("Part")
SpecialMesh102 = Instance.new("SpecialMesh")
Part103 = Instance.new("Part")
BlockMesh104 = Instance.new("BlockMesh")
Part105 = Instance.new("Part")
BlockMesh106 = Instance.new("BlockMesh")
Part107 = Instance.new("Part")
BlockMesh108 = Instance.new("BlockMesh")
Part109 = Instance.new("Part")
BlockMesh110 = Instance.new("BlockMesh")
Part111 = Instance.new("Part")
SpecialMesh112 = Instance.new("SpecialMesh")
Part113 = Instance.new("Part")
SpecialMesh114 = Instance.new("SpecialMesh")
Part115 = Instance.new("Part")
SpecialMesh116 = Instance.new("SpecialMesh")
Part117 = Instance.new("Part")
Model0.Name = "second"
Model0.Parent = char
Part1.Parent = Model0
Part1.Material = Enum.Material.SmoothPlastic
Part1.Rotation = Vector3.new(0, 90, 0)
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part1.CFrame = CFrame.new(226.910004, 38.7399979, -84.0550079, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(226.910004, 38.7399979, -84.0550079)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh2.Parent = Part1
SpecialMesh2.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh2.MeshType = Enum.MeshType.Wedge
SpecialMesh2.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part3.Parent = Model0
Part3.Material = Enum.Material.SmoothPlastic
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.0500000007, 0.0500000007, 0.629999876)
Part3.CFrame = CFrame.new(227.074997, 38.7399979, -82.8700104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(227.074997, 38.7399979, -82.8700104)
Part3.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh4.Parent = Part3
BlockMesh4.Scale = Vector3.new(0.200000048, 0.800001144, 1)
BlockMesh4.Scale = Vector3.new(0.200000048, 0.800001144, 1)
Part5.Parent = Model0
Part5.Material = Enum.Material.SmoothPlastic
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.160000011, 0.0500000007, 0.729999959)
Part5.CFrame = CFrame.new(227, 38.7399979, -83.8100052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(227, 38.7399979, -83.8100052)
Part5.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh6.Parent = Part5
BlockMesh6.Scale = Vector3.new(1, 0.800001144, 1)
BlockMesh6.Scale = Vector3.new(1, 0.800001144, 1)
Part7.Parent = Model0
Part7.Material = Enum.Material.SmoothPlastic
Part7.Rotation = Vector3.new(0, -90, 0)
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part7.CFrame = CFrame.new(227.089996, 38.7399979, -83.965004, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(227.089996, 38.7399979, -83.965004)
Part7.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh8.Parent = Part7
SpecialMesh8.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh8.MeshType = Enum.MeshType.Wedge
SpecialMesh8.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part9.Parent = Model0
Part9.Material = Enum.Material.SmoothPlastic
Part9.Rotation = Vector3.new(0, -90, 0)
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.0800000653, 0.0500000007, 0.0500000007)
Part9.CFrame = CFrame.new(227.089996, 38.7399979, -84.1350021, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(227.089996, 38.7399979, -84.1350021)
Part9.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh10.Parent = Part9
SpecialMesh10.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh10.MeshType = Enum.MeshType.Wedge
SpecialMesh10.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part11.Parent = Model0
Part11.Material = Enum.Material.SmoothPlastic
Part11.Rotation = Vector3.new(-180, 0, -180)
Part11.Anchored = true
Part11.CanCollide = false
Part11.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part11.CFrame = CFrame.new(227, 38.7799988, -82.6300049, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Position = Vector3.new(227, 38.7799988, -82.6300049)
Part11.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh12.Parent = Part11
BlockMesh12.Scale = Vector3.new(1, 0.800000548, 0.200000763)
BlockMesh12.Scale = Vector3.new(1, 0.800000548, 0.200000763)
Part13.Parent = Model0
Part13.Material = Enum.Material.SmoothPlastic
Part13.Anchored = true
Part13.CanCollide = false
Part13.Size = Vector3.new(0.0500000007, 0.0500000007, 0.629999876)
Part13.CFrame = CFrame.new(226.925003, 38.7399979, -82.8700104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Position = Vector3.new(226.925003, 38.7399979, -82.8700104)
Part13.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh14.Parent = Part13
BlockMesh14.Scale = Vector3.new(0.200000048, 0.800001144, 1)
BlockMesh14.Scale = Vector3.new(0.200000048, 0.800001144, 1)
Part15.Parent = Model0
Part15.Material = Enum.Material.SmoothPlastic
Part15.Anchored = true
Part15.CanCollide = false
Part15.Size = Vector3.new(0.200000003, 0.0600000583, 0.289999932)
Part15.CFrame = CFrame.new(227, 38.6899986, -82.7000046, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Position = Vector3.new(227, 38.6899986, -82.7000046)
Part15.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part16.Parent = Model0
Part16.Material = Enum.Material.SmoothPlastic
Part16.Anchored = true
Part16.CanCollide = false
Part16.Size = Vector3.new(0.0500000007, 0.0600000583, 0.339999914)
Part16.CFrame = CFrame.new(226.904999, 38.6899986, -83.015007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Position = Vector3.new(226.904999, 38.6899986, -83.015007)
Part16.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh17.Parent = Part16
BlockMesh17.Scale = Vector3.new(0.200000048, 1, 1)
BlockMesh17.Scale = Vector3.new(0.200000048, 1, 1)
Part18.Parent = Model0
Part18.Material = Enum.Material.SmoothPlastic
Part18.Rotation = Vector3.new(0, -90, 0)
Part18.Anchored = true
Part18.CanCollide = false
Part18.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part18.CFrame = CFrame.new(227.089996, 38.7399979, -84.0550079, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Position = Vector3.new(227.089996, 38.7399979, -84.0550079)
Part18.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh19.Parent = Part18
SpecialMesh19.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh19.MeshType = Enum.MeshType.Wedge
SpecialMesh19.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part20.Parent = Model0
Part20.Material = Enum.Material.SmoothPlastic
Part20.Anchored = true
Part20.CanCollide = false
Part20.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part20.CFrame = CFrame.new(227, 38.6499977, -83.8150024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Position = Vector3.new(227, 38.6499977, -83.8150024)
Part20.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh21.Parent = Part20
BlockMesh21.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh21.Scale = Vector3.new(1, 1, 0.399998695)
Part22.Parent = Model0
Part22.Material = Enum.Material.SmoothPlastic
Part22.Anchored = true
Part22.CanCollide = false
Part22.Size = Vector3.new(0.200000003, 0.100000061, 0.329999924)
Part22.CFrame = CFrame.new(227, 38.6299973, -83.6100082, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Position = Vector3.new(227, 38.6299973, -83.6100082)
Part22.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part23.Parent = Model0
Part23.Material = Enum.Material.SmoothPlastic
Part23.Rotation = Vector3.new(0, 90, 0)
Part23.Anchored = true
Part23.CanCollide = false
Part23.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part23.CFrame = CFrame.new(226.910004, 38.7399979, -84.0050049, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Position = Vector3.new(226.910004, 38.7399979, -84.0050049)
Part23.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh24.Parent = Part23
SpecialMesh24.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh24.MeshType = Enum.MeshType.Wedge
SpecialMesh24.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part25.Parent = Model0
Part25.Material = Enum.Material.SmoothPlastic
Part25.Rotation = Vector3.new(90, 0, 0)
Part25.Anchored = true
Part25.CanCollide = false
Part25.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part25.CFrame = CFrame.new(226.904999, 38.6699982, -83.4350052, 1, 0, 0, 0, 7.74820847E-8, -1, 0, 1, 7.74820847E-8)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Position = Vector3.new(226.904999, 38.6699982, -83.4350052)
Part25.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh26.Parent = Part25
SpecialMesh26.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
SpecialMesh26.MeshType = Enum.MeshType.Wedge
SpecialMesh26.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
Part27.Parent = Model0
Part27.Material = Enum.Material.SmoothPlastic
Part27.Rotation = Vector3.new(0, 90, 0)
Part27.Anchored = true
Part27.CanCollide = false
Part27.Size = Vector3.new(0.0800001174, 0.0500000007, 0.0500000007)
Part27.CFrame = CFrame.new(226.910004, 38.7399979, -84.1350021, -4.37113883E-8, -1.98419059E-9, 1, 0, 0.99999994, 1.98419037E-9, -1, 8.67317269E-17, -4.37113883E-8)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.Position = Vector3.new(226.910004, 38.7399979, -84.1350021)
Part27.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh28.Parent = Part27
SpecialMesh28.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh28.MeshType = Enum.MeshType.Wedge
SpecialMesh28.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part29.Parent = Model0
Part29.Material = Enum.Material.SmoothPlastic
Part29.Anchored = true
Part29.CanCollide = false
Part29.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part29.CFrame = CFrame.new(227, 38.6499977, -83.9150085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Position = Vector3.new(227, 38.6499977, -83.9150085)
Part29.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh30.Parent = Part29
BlockMesh30.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh30.Scale = Vector3.new(1, 1, 0.399998695)
Part31.Parent = Model0
Part31.Material = Enum.Material.SmoothPlastic
Part31.Anchored = true
Part31.CanCollide = false
Part31.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part31.CFrame = CFrame.new(227.050003, 38.7799988, -84.1050034, 0.99999994, -6.66133815E-16, 3.42726707E-7, 0, 0.99999994, 1.98419037E-9, -3.42726707E-7, -1.98419059E-9, 0.99999994)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Position = Vector3.new(227.050003, 38.7799988, -84.1050034)
Part31.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh32.Parent = Part31
SpecialMesh32.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh32.MeshType = Enum.MeshType.Wedge
SpecialMesh32.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part33.Parent = Model0
Part33.Material = Enum.Material.SmoothPlastic
Part33.Rotation = Vector3.new(0, -90, 0)
Part33.Anchored = true
Part33.CanCollide = false
Part33.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part33.CFrame = CFrame.new(227.089996, 38.7399979, -83.9150085, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.Position = Vector3.new(227.089996, 38.7399979, -83.9150085)
Part33.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh34.Parent = Part33
SpecialMesh34.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh34.MeshType = Enum.MeshType.Wedge
SpecialMesh34.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part35.Parent = Model0
Part35.Material = Enum.Material.SmoothPlastic
Part35.Rotation = Vector3.new(0, 90, 0)
Part35.Anchored = true
Part35.CanCollide = false
Part35.Size = Vector3.new(0.630000114, 0.0500000007, 0.0500000007)
Part35.CFrame = CFrame.new(226.910004, 38.7399979, -82.8700027, -4.37113883E-8, -1.98419059E-9, 1, 0, 0.99999994, 1.98419037E-9, -1, 8.67317269E-17, -4.37113883E-8)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.Position = Vector3.new(226.910004, 38.7399979, -82.8700027)
Part35.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh36.Parent = Part35
SpecialMesh36.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh36.MeshType = Enum.MeshType.Wedge
SpecialMesh36.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part37.Parent = Model0
Part37.Material = Enum.Material.SmoothPlastic
Part37.Rotation = Vector3.new(0, -90, 0)
Part37.Anchored = true
Part37.CanCollide = false
Part37.Size = Vector3.new(0.320000112, 0.0500000007, 0.0500000007)
Part37.CFrame = CFrame.new(227.085007, 38.7350006, -83.9350052, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.Position = Vector3.new(227.085007, 38.7350006, -83.9350052)
Part37.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh38.Parent = Part37
SpecialMesh38.Scale = Vector3.new(1, 0.60000056, 0.200000808)
SpecialMesh38.MeshType = Enum.MeshType.Wedge
SpecialMesh38.Scale = Vector3.new(1, 0.60000056, 0.200000808)
Part39.Parent = Model0
Part39.Material = Enum.Material.SmoothPlastic
Part39.Rotation = Vector3.new(0, -90, 0)
Part39.Anchored = true
Part39.CanCollide = false
Part39.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part39.CFrame = CFrame.new(227.089996, 38.7399979, -84.0050049, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.Position = Vector3.new(227.089996, 38.7399979, -84.0050049)
Part39.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh40.Parent = Part39
SpecialMesh40.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh40.MeshType = Enum.MeshType.Wedge
SpecialMesh40.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part41.Parent = Model0
Part41.Material = Enum.Material.SmoothPlastic
Part41.Rotation = Vector3.new(90, 0, 180)
Part41.Anchored = true
Part41.CanCollide = false
Part41.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part41.CFrame = CFrame.new(226.904999, 38.6699982, -83.1950073, -1, -8.74227766E-8, -6.77369919E-15, 0, 7.74820847E-8, -1, 8.74227766E-8, -1, -7.74820847E-8)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.Position = Vector3.new(226.904999, 38.6699982, -83.1950073)
Part41.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh42.Parent = Part41
SpecialMesh42.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
SpecialMesh42.MeshType = Enum.MeshType.Wedge
SpecialMesh42.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
Part43.Parent = Model0
Part43.Material = Enum.Material.SmoothPlastic
Part43.Rotation = Vector3.new(0, 90, 0)
Part43.Anchored = true
Part43.CanCollide = false
Part43.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part43.CFrame = CFrame.new(226.910004, 38.7399979, -83.8650055, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.Position = Vector3.new(226.910004, 38.7399979, -83.8650055)
Part43.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh44.Parent = Part43
SpecialMesh44.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh44.MeshType = Enum.MeshType.Wedge
SpecialMesh44.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part45.Parent = Model0
Part45.Material = Enum.Material.SmoothPlastic
Part45.Rotation = Vector3.new(0, 90, 0)
Part45.Anchored = true
Part45.CanCollide = false
Part45.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part45.CFrame = CFrame.new(226.910004, 38.7399979, -83.8150024, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.Position = Vector3.new(226.910004, 38.7399979, -83.8150024)
Part45.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh46.Parent = Part45
SpecialMesh46.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh46.MeshType = Enum.MeshType.Wedge
SpecialMesh46.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part47.Parent = Model0
Part47.Material = Enum.Material.SmoothPlastic
Part47.Anchored = true
Part47.CanCollide = false
Part47.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part47.CFrame = CFrame.new(227, 38.7799988, -82.6450043, 0.99999994, -6.66133815E-16, 3.42726707E-7, 0, 0.99999994, 1.98419037E-9, -3.42726707E-7, -1.98419059E-9, 0.99999994)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.Position = Vector3.new(227, 38.7799988, -82.6450043)
Part47.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh48.Parent = Part47
SpecialMesh48.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh48.MeshType = Enum.MeshType.Wedge
SpecialMesh48.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part49.Parent = Model0
Part49.Material = Enum.Material.SmoothPlastic
Part49.Anchored = true
Part49.CanCollide = false
Part49.Size = Vector3.new(0.179999992, 0.0500000007, 0.199999914)
Part49.CFrame = CFrame.new(227, 38.6949959, -83.5450058, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.Position = Vector3.new(227, 38.6949959, -83.5450058)
Part49.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh50.Parent = Part49
BlockMesh50.Scale = Vector3.new(1, 0.600001156, 1)
BlockMesh50.Scale = Vector3.new(1, 0.600001156, 1)
Part51.Parent = Model0
Part51.Material = Enum.Material.SmoothPlastic
Part51.Anchored = true
Part51.CanCollide = false
Part51.Size = Vector3.new(0.160000011, 0.0500000007, 0.889999986)
Part51.CFrame = CFrame.new(227, 38.7549973, -83.0000076, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.Position = Vector3.new(227, 38.7549973, -83.0000076)
Part51.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh52.Parent = Part51
BlockMesh52.Scale = Vector3.new(1, 0.200001135, 1)
BlockMesh52.Scale = Vector3.new(1, 0.200001135, 1)
Part53.Parent = Model0
Part53.Material = Enum.Material.SmoothPlastic
Part53.Anchored = true
Part53.CanCollide = false
Part53.Size = Vector3.new(0.200000003, 0.0800000578, 0.259999931)
Part53.CFrame = CFrame.new(227, 38.6199989, -83.3150024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.Position = Vector3.new(227, 38.6199989, -83.3150024)
Part53.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part54.Parent = Model0
Part54.Material = Enum.Material.SmoothPlastic
Part54.Rotation = Vector3.new(-180, 0, -180)
Part54.Anchored = true
Part54.CanCollide = false
Part54.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part54.CFrame = CFrame.new(227.050003, 38.7799988, -84.0600052, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.Position = Vector3.new(227.050003, 38.7799988, -84.0600052)
Part54.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh55.Parent = Part54
SpecialMesh55.Scale = Vector3.new(1, 0.800000548, 0.200000793)
SpecialMesh55.MeshType = Enum.MeshType.Wedge
SpecialMesh55.Scale = Vector3.new(1, 0.800000548, 0.200000793)
Part56.Parent = Model0
Part56.Material = Enum.Material.SmoothPlastic
Part56.Rotation = Vector3.new(0, 90, 0)
Part56.Anchored = true
Part56.CanCollide = false
Part56.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part56.CFrame = CFrame.new(226.910004, 38.7399979, -83.9150085, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.Position = Vector3.new(226.910004, 38.7399979, -83.9150085)
Part56.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh57.Parent = Part56
SpecialMesh57.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh57.MeshType = Enum.MeshType.Wedge
SpecialMesh57.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part58.Parent = Model0
Part58.Material = Enum.Material.SmoothPlastic
Part58.Anchored = true
Part58.CanCollide = false
Part58.Size = Vector3.new(0.100000001, 0.0500000007, 0.0500000007)
Part58.CFrame = CFrame.new(227, 38.625, -82.5400085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.Position = Vector3.new(227, 38.625, -82.5400085)
Part58.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh59.Parent = Part58
BlockMesh59.Scale = Vector3.new(1, 0.600001216, 0.599996924)
BlockMesh59.Scale = Vector3.new(1, 0.600001216, 0.599996924)
Part60.Parent = Model0
Part60.Material = Enum.Material.SmoothPlastic
Part60.Anchored = true
Part60.CanCollide = false
Part60.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part60.CFrame = CFrame.new(227, 38.6599998, -82.5500031, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Position = Vector3.new(227, 38.6599998, -82.5500031)
Part60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh61.Parent = Part60
BlockMesh61.Scale = Vector3.new(0.799999952, 0.800001264, 0.199996918)
BlockMesh61.Scale = Vector3.new(0.799999952, 0.800001264, 0.199996918)
Part62.Parent = Model0
Part62.Material = Enum.Material.SmoothPlastic
Part62.Rotation = Vector3.new(-180, 0, -180)
Part62.Anchored = true
Part62.CanCollide = false
Part62.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part62.CFrame = CFrame.new(227, 38.7799988, -82.6100006, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Position = Vector3.new(227, 38.7799988, -82.6100006)
Part62.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh63.Parent = Part62
SpecialMesh63.Scale = Vector3.new(1, 0.800000548, 0.600000799)
SpecialMesh63.MeshType = Enum.MeshType.Wedge
SpecialMesh63.Scale = Vector3.new(1, 0.800000548, 0.600000799)
Part64.Parent = Model0
Part64.Material = Enum.Material.SmoothPlastic
Part64.Rotation = Vector3.new(0, 90, 0)
Part64.Anchored = true
Part64.CanCollide = false
Part64.Size = Vector3.new(0.320000112, 0.0500000007, 0.0500000007)
Part64.CFrame = CFrame.new(226.915009, 38.7350006, -83.9350052, -4.37113883E-8, -1.98419059E-9, 1, 0, 0.99999994, 1.98419037E-9, -1, 8.67317269E-17, -4.37113883E-8)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.Position = Vector3.new(226.915009, 38.7350006, -83.9350052)
Part64.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh65.Parent = Part64
SpecialMesh65.Scale = Vector3.new(1, 0.60000056, 0.200000808)
SpecialMesh65.MeshType = Enum.MeshType.Wedge
SpecialMesh65.Scale = Vector3.new(1, 0.60000056, 0.200000808)
Part66.Parent = Model0
Part66.Material = Enum.Material.SmoothPlastic
Part66.Anchored = true
Part66.CanCollide = false
Part66.Size = Vector3.new(0.200000003, 0.14000006, 0.0799999386)
Part66.CFrame = CFrame.new(227, 38.6499977, -84.1350098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.Position = Vector3.new(227, 38.6499977, -84.1350098)
Part66.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part67.Parent = Model0
Part67.Material = Enum.Material.SmoothPlastic
Part67.Anchored = true
Part67.CanCollide = false
Part67.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part67.CFrame = CFrame.new(227, 38.6499977, -84.0550079, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.Position = Vector3.new(227, 38.6499977, -84.0550079)
Part67.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh68.Parent = Part67
BlockMesh68.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh68.Scale = Vector3.new(1, 1, 0.399998695)
Part69.Parent = Model0
Part69.Material = Enum.Material.SmoothPlastic
Part69.Rotation = Vector3.new(0, 90, 0)
Part69.Anchored = true
Part69.CanCollide = false
Part69.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part69.CFrame = CFrame.new(226.910004, 38.7399979, -83.965004, -2.98023224E-8, 1.98419059E-9, 1, -1.66533454E-16, 0.99999994, -1.98419037E-9, -1, -2.60195181E-16, -2.98023224E-8)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.Position = Vector3.new(226.910004, 38.7399979, -83.965004)
Part69.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh70.Parent = Part69
SpecialMesh70.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh70.MeshType = Enum.MeshType.Wedge
SpecialMesh70.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part71.Parent = Model0
Part71.Material = Enum.Material.SmoothPlastic
Part71.Rotation = Vector3.new(0, -90, 0)
Part71.Anchored = true
Part71.CanCollide = false
Part71.Size = Vector3.new(0.630000055, 0.0500000007, 0.0500000007)
Part71.CFrame = CFrame.new(227.089996, 38.7399979, -82.8700027, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.Position = Vector3.new(227.089996, 38.7399979, -82.8700027)
Part71.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh72.Parent = Part71
SpecialMesh72.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh72.MeshType = Enum.MeshType.Wedge
SpecialMesh72.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part73.Parent = Model0
Part73.Material = Enum.Material.SmoothPlastic
Part73.Rotation = Vector3.new(0, 90, 0)
Part73.Anchored = true
Part73.CanCollide = false
Part73.Size = Vector3.new(0.330000132, 0.0500000007, 0.0500000007)
Part73.CFrame = CFrame.new(226.910004, 38.7399979, -83.6100006, -4.37113883E-8, -1.98419059E-9, 1, 0, 0.99999994, 1.98419037E-9, -1, 8.67317269E-17, -4.37113883E-8)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.Position = Vector3.new(226.910004, 38.7399979, -83.6100006)
Part73.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh74.Parent = Part73
SpecialMesh74.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh74.MeshType = Enum.MeshType.Wedge
SpecialMesh74.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part75.Parent = Model0
Part75.Material = Enum.Material.SmoothPlastic
Part75.Anchored = true
Part75.CanCollide = false
Part75.Size = Vector3.new(0.0500000007, 0.100000061, 0.0500000007)
Part75.CFrame = CFrame.new(227.035004, 38.6599998, -82.5400085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Position = Vector3.new(227.035004, 38.6599998, -82.5400085)
Part75.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh76.Parent = Part75
BlockMesh76.Scale = Vector3.new(0.599999964, 1, 0.599996924)
BlockMesh76.Scale = Vector3.new(0.599999964, 1, 0.599996924)
Part77.Parent = Model0
Part77.Material = Enum.Material.SmoothPlastic
Part77.Anchored = true
Part77.CanCollide = false
Part77.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part77.CFrame = CFrame.new(227, 38.6499977, -83.965004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Position = Vector3.new(227, 38.6499977, -83.965004)
Part77.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh78.Parent = Part77
BlockMesh78.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh78.Scale = Vector3.new(1, 1, 0.399998695)
Part79.Parent = Model0
Part79.Material = Enum.Material.SmoothPlastic
Part79.Anchored = true
Part79.CanCollide = false
Part79.Size = Vector3.new(0.0599999987, 0.0500000007, 0.0500000007)
Part79.CFrame = CFrame.new(227, 38.6949959, -83.6600037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.Position = Vector3.new(227, 38.6949959, -83.6600037)
Part79.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh80.Parent = Part79
BlockMesh80.Scale = Vector3.new(1, 0.600001156, 0.599998772)
BlockMesh80.Scale = Vector3.new(1, 0.600001156, 0.599998772)
Part81.Parent = Model0
Part81.Material = Enum.Material.SmoothPlastic
Part81.Rotation = Vector3.new(90, 0, 180)
Part81.Anchored = true
Part81.CanCollide = false
Part81.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part81.CFrame = CFrame.new(227.095001, 38.6699982, -83.1950073, -1, -8.74227766E-8, -6.77369919E-15, 0, 7.74820847E-8, -1, 8.74227766E-8, -1, -7.74820847E-8)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.Position = Vector3.new(227.095001, 38.6699982, -83.1950073)
Part81.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh82.Parent = Part81
SpecialMesh82.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
SpecialMesh82.MeshType = Enum.MeshType.Wedge
SpecialMesh82.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
Part83.Parent = Model0
Part83.Material = Enum.Material.SmoothPlastic
Part83.Anchored = true
Part83.CanCollide = false
Part83.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part83.CFrame = CFrame.new(227, 38.6499977, -83.8650055, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.Position = Vector3.new(227, 38.6499977, -83.8650055)
Part83.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh84.Parent = Part83
BlockMesh84.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh84.Scale = Vector3.new(1, 1, 0.399998695)
Part85.Parent = Model0
Part85.Material = Enum.Material.SmoothPlastic
Part85.Anchored = true
Part85.CanCollide = false
Part85.Size = Vector3.new(0.200000003, 0.0800000578, 0.629999936)
Part85.CFrame = CFrame.new(227, 38.6199989, -82.8700027, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.Position = Vector3.new(227, 38.6199989, -82.8700027)
Part85.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part86.Parent = Model0
Part86.Material = Enum.Material.SmoothPlastic
Part86.Rotation = Vector3.new(0, -90, 0)
Part86.Anchored = true
Part86.CanCollide = false
Part86.Size = Vector3.new(0.330000073, 0.0500000007, 0.0500000007)
Part86.CFrame = CFrame.new(227.089996, 38.7399979, -83.6100006, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.Position = Vector3.new(227.089996, 38.7399979, -83.6100006)
Part86.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh87.Parent = Part86
SpecialMesh87.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh87.MeshType = Enum.MeshType.Wedge
SpecialMesh87.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part88.Parent = Model0
Part88.Material = Enum.Material.SmoothPlastic
Part88.Rotation = Vector3.new(90, 0, 0)
Part88.Anchored = true
Part88.CanCollide = false
Part88.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part88.CFrame = CFrame.new(227.095001, 38.6699982, -83.4350052, 1, 0, 0, 0, 7.74820847E-8, -1, 0, 1, 7.74820847E-8)
Part88.BottomSurface = Enum.SurfaceType.Smooth
Part88.TopSurface = Enum.SurfaceType.Smooth
Part88.Position = Vector3.new(227.095001, 38.6699982, -83.4350052)
Part88.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh89.Parent = Part88
SpecialMesh89.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
SpecialMesh89.MeshType = Enum.MeshType.Wedge
SpecialMesh89.Scale = Vector3.new(0.200000048, 0.400001526, 0.400000572)
Part90.Parent = Model0
Part90.Material = Enum.Material.SmoothPlastic
Part90.Anchored = true
Part90.CanCollide = false
Part90.Size = Vector3.new(0.0500000007, 0.100000061, 0.0500000007)
Part90.CFrame = CFrame.new(226.964996, 38.6599998, -82.5400085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.Position = Vector3.new(226.964996, 38.6599998, -82.5400085)
Part90.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh91.Parent = Part90
BlockMesh91.Scale = Vector3.new(0.600000024, 1, 0.599996924)
BlockMesh91.Scale = Vector3.new(0.600000024, 1, 0.599996924)
Part92.Parent = Model0
Part92.Material = Enum.Material.SmoothPlastic
Part92.Anchored = true
Part92.CanCollide = false
Part92.Size = Vector3.new(0.200000003, 0.0500000007, 0.0999999419)
Part92.CFrame = CFrame.new(227, 38.7000008, -83.7250061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part92.BottomSurface = Enum.SurfaceType.Smooth
Part92.TopSurface = Enum.SurfaceType.Smooth
Part92.Position = Vector3.new(227, 38.7000008, -83.7250061)
Part92.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh93.Parent = Part92
BlockMesh93.Scale = Vector3.new(1, 0.800001144, 1)
BlockMesh93.Scale = Vector3.new(1, 0.800001144, 1)
Part94.Parent = Model0
Part94.Material = Enum.Material.SmoothPlastic
Part94.Anchored = true
Part94.CanCollide = false
Part94.Size = Vector3.new(0.160000011, 0.0500000007, 0.0500000007)
Part94.CFrame = CFrame.new(227, 38.7399979, -82.5600052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part94.BottomSurface = Enum.SurfaceType.Smooth
Part94.TopSurface = Enum.SurfaceType.Smooth
Part94.Position = Vector3.new(227, 38.7399979, -82.5600052)
Part94.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh95.Parent = Part94
BlockMesh95.Scale = Vector3.new(1, 0.800001144, 0.199998856)
BlockMesh95.Scale = Vector3.new(1, 0.800001144, 0.199998856)
Part96.Parent = Model0
Part96.Material = Enum.Material.SmoothPlastic
Part96.Rotation = Vector3.new(-180, 0, -180)
Part96.Anchored = true
Part96.CanCollide = false
Part96.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part96.CFrame = CFrame.new(226.949997, 38.7799988, -84.0800018, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.Position = Vector3.new(226.949997, 38.7799988, -84.0800018)
Part96.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh97.Parent = Part96
BlockMesh97.Scale = Vector3.new(1, 0.800000548, 0.600000739)
BlockMesh97.Scale = Vector3.new(1, 0.800000548, 0.600000739)
Part98.Parent = Model0
Part98.Material = Enum.Material.SmoothPlastic
Part98.Anchored = true
Part98.CanCollide = false
Part98.Size = Vector3.new(0.0500000007, 0.0600000583, 0.339999914)
Part98.CFrame = CFrame.new(227.095001, 38.6899986, -83.015007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.Position = Vector3.new(227.095001, 38.6899986, -83.015007)
Part98.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh99.Parent = Part98
BlockMesh99.Scale = Vector3.new(0.200000048, 1, 1)
BlockMesh99.Scale = Vector3.new(0.200000048, 1, 1)
Part100.Parent = Model0
Part100.Material = Enum.Material.SmoothPlastic
Part100.Anchored = true
Part100.CanCollide = false
Part100.Size = Vector3.new(0.179999992, 0.14000006, 0.319999933)
Part100.CFrame = CFrame.new(227, 38.6499977, -83.9350052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.Position = Vector3.new(227, 38.6499977, -83.9350052)
Part100.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part101.Parent = Model0
Part101.Material = Enum.Material.SmoothPlastic
Part101.Rotation = Vector3.new(0, -90, 0)
Part101.Anchored = true
Part101.CanCollide = false
Part101.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part101.CFrame = CFrame.new(227.089996, 38.7399979, -83.8150024, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.Position = Vector3.new(227.089996, 38.7399979, -83.8150024)
Part101.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh102.Parent = Part101
SpecialMesh102.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh102.MeshType = Enum.MeshType.Wedge
SpecialMesh102.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part103.Parent = Model0
Part103.Material = Enum.Material.SmoothPlastic
Part103.Anchored = true
Part103.CanCollide = false
Part103.Size = Vector3.new(0.200000003, 0.0500000007, 0.22999993)
Part103.CFrame = CFrame.new(227, 38.7150002, -83.5600052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.Position = Vector3.new(227, 38.7150002, -83.5600052)
Part103.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh104.Parent = Part103
BlockMesh104.Scale = Vector3.new(1, 0.200001135, 1)
BlockMesh104.Scale = Vector3.new(1, 0.200001135, 1)
Part105.Parent = Model0
Part105.Material = Enum.Material.SmoothPlastic
Part105.Rotation = Vector3.new(-180, 0, -180)
Part105.Anchored = true
Part105.CanCollide = false
Part105.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part105.CFrame = CFrame.new(227.050003, 38.7799988, -84.0800018, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.Position = Vector3.new(227.050003, 38.7799988, -84.0800018)
Part105.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh106.Parent = Part105
BlockMesh106.Scale = Vector3.new(1, 0.800000548, 0.600000739)
BlockMesh106.Scale = Vector3.new(1, 0.800000548, 0.600000739)
Part107.Parent = Model0
Part107.Material = Enum.Material.SmoothPlastic
Part107.Anchored = true
Part107.CanCollide = false
Part107.Size = Vector3.new(0.200000003, 0.14000006, 0.0500000007)
Part107.CFrame = CFrame.new(227, 38.6499977, -84.0050049, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part107.BottomSurface = Enum.SurfaceType.Smooth
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.Position = Vector3.new(227, 38.6499977, -84.0050049)
Part107.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh108.Parent = Part107
BlockMesh108.Scale = Vector3.new(1, 1, 0.399998695)
BlockMesh108.Scale = Vector3.new(1, 1, 0.399998695)
Part109.Parent = Model0
Part109.Material = Enum.Material.SmoothPlastic
Part109.Anchored = true
Part109.CanCollide = false
Part109.Size = Vector3.new(0.100000001, 0.0500000007, 0.0500000007)
Part109.CFrame = CFrame.new(227, 38.6949959, -82.5400085, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part109.BottomSurface = Enum.SurfaceType.Smooth
Part109.TopSurface = Enum.SurfaceType.Smooth
Part109.Position = Vector3.new(227, 38.6949959, -82.5400085)
Part109.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh110.Parent = Part109
BlockMesh110.Scale = Vector3.new(1, 0.600001216, 0.599996924)
BlockMesh110.Scale = Vector3.new(1, 0.600001216, 0.599996924)
Part111.Parent = Model0
Part111.Material = Enum.Material.SmoothPlastic
Part111.Rotation = Vector3.new(0, -90, 0)
Part111.Anchored = true
Part111.CanCollide = false
Part111.Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007)
Part111.CFrame = CFrame.new(227.089996, 38.7399979, -83.8650055, 1.31134158E-7, 1.98419059E-9, -1, 0, 0.99999994, 1.98419037E-9, 1, -2.60195181E-16, 1.31134158E-7)
Part111.BottomSurface = Enum.SurfaceType.Smooth
Part111.TopSurface = Enum.SurfaceType.Smooth
Part111.Position = Vector3.new(227.089996, 38.7399979, -83.8650055)
Part111.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part111.Name = "Shootingpos"
SpecialMesh112.Parent = Part111
SpecialMesh112.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
SpecialMesh112.MeshType = Enum.MeshType.Wedge
SpecialMesh112.Scale = Vector3.new(0.400001526, 0.800000548, 0.400000811)
Part113.Parent = Model0
Part113.Material = Enum.Material.SmoothPlastic
Part113.Anchored = true
Part113.CanCollide = false
Part113.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part113.CFrame = CFrame.new(226.949997, 38.7799988, -84.1050034, 0.99999994, -6.66133815E-16, 3.42726707E-7, 0, 0.99999994, 1.98419037E-9, -3.42726707E-7, -1.98419059E-9, 0.99999994)
Part113.BottomSurface = Enum.SurfaceType.Smooth
Part113.TopSurface = Enum.SurfaceType.Smooth
Part113.Position = Vector3.new(226.949997, 38.7799988, -84.1050034)
Part113.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh114.Parent = Part113
SpecialMesh114.Scale = Vector3.new(1, 0.800000548, 0.400000811)
SpecialMesh114.MeshType = Enum.MeshType.Wedge
SpecialMesh114.Scale = Vector3.new(1, 0.800000548, 0.400000811)
Part115.Parent = Model0
Part115.Material = Enum.Material.SmoothPlastic
Part115.Rotation = Vector3.new(-180, 0, -180)
Part115.Anchored = true
Part115.CanCollide = false
Part115.Size = Vector3.new(0.0600000918, 0.0500000007, 0.0500000007)
Part115.CFrame = CFrame.new(226.949997, 38.7799988, -84.0600052, -0.99999994, 8.39597269E-16, -4.3014947E-7, 0, 0.99999994, 1.98419037E-9, 4.3014947E-7, 1.98419059E-9, -0.99999994)
Part115.BottomSurface = Enum.SurfaceType.Smooth
Part115.TopSurface = Enum.SurfaceType.Smooth
Part115.Position = Vector3.new(226.949997, 38.7799988, -84.0600052)
Part115.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh116.Parent = Part115
SpecialMesh116.Scale = Vector3.new(1, 0.800000548, 0.200000793)
SpecialMesh116.MeshType = Enum.MeshType.Wedge
SpecialMesh116.Scale = Vector3.new(1, 0.800000548, 0.200000793)
Part117.Name = "asd"
Part117.Parent = Model0
Part117.Material = Enum.Material.SmoothPlastic
Part117.Transparency = 1
Part117.Anchored = true
Part117.CanCollide = false
Part117.Size = Vector3.new(0.220000014, 0.180000052, 1.5)
Part117.CFrame = CFrame.new(227, 38.4899979, -83.2950058, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part117.BottomSurface = Enum.SurfaceType.Smooth
Part117.TopSurface = Enum.SurfaceType.Smooth
Part117.Position = Vector3.new(227, 38.4899979, -83.2950058)
Part117.Color = Color3.new(0.105882, 0.164706, 0.207843)
second = Model0
weld(second)
newWeld(first.asd2, second.asd, 0, 0, -0.25)
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
SpecialMesh3 = Instance.new("SpecialMesh")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Part7 = Instance.new("Part")
BlockMesh8 = Instance.new("BlockMesh")
Part9 = Instance.new("Part")
Model0.Name = "third"
Model0.Parent = char
Part1.Parent = Model0
Part1.Material = Enum.Material.SmoothPlastic
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.179999992, 0.25000003, 0.199999973)
Part1.CFrame = CFrame.new(227, 13.1899986, -90.4499969, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(227, 13.1899986, -90.4499969)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part2.Parent = Model0
Part2.Material = Enum.Material.SmoothPlastic
Part2.Anchored = true
Part2.CanCollide = false
Part2.Size = Vector3.new(0.180000007, 0.25, 0.100000024)
Part2.CFrame = CFrame.new(227, 13.1899986, -90.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(227, 13.1899986, -90.5999985)
Part2.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh3.Parent = Part2
SpecialMesh3.MeshType = Enum.MeshType.Wedge
Part4.Parent = Model0
Part4.Material = Enum.Material.SmoothPlastic
Part4.Anchored = true
Part4.CanCollide = false
Part4.Size = Vector3.new(0.179999992, 0.270000011, 0.300000012)
Part4.CFrame = CFrame.new(227, 12.9299994, -90.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Position = Vector3.new(227, 12.9299994, -90.5)
Part4.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part5.Parent = Model0
Part5.Material = Enum.Material.SmoothPlastic
Part5.Rotation = Vector3.new(-180, 0, 0)
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.180000007, 0.25, 0.0800000355)
Part5.CFrame = CFrame.new(227, 13.1899986, -90.3099976, 1, 0, 0, 0, -1, 8.74227766E-8, 0, -8.74227766E-8, -1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(227, 13.1899986, -90.3099976)
Part5.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshType = Enum.MeshType.Wedge
Part7.Parent = Model0
Part7.Material = Enum.Material.SmoothPlastic
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.220000014, 0.0500000007, 0.540000021)
Part7.CFrame = CFrame.new(227, 12.8049994, -90.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(227, 12.8049994, -90.5)
Part7.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh8.Parent = Part7
BlockMesh8.Scale = Vector3.new(1, 0.800000072, 1)
BlockMesh8.Scale = Vector3.new(1, 0.800000072, 1)
Part9.Name = "asd"
Part9.Parent = Model0
Part9.Material = Enum.Material.SmoothPlastic
Part9.Transparency = 1
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.220000014, 0.180000007, 0.470000029)
Part9.CFrame = CFrame.new(227, 12.9249992, -90.4649963, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(227, 12.9249992, -90.4649963)
Part9.Color = Color3.new(0.105882, 0.164706, 0.207843)
third = Model0
weld(third)
newWeld(first.asd3, third.asd, 0, 0, 0)
second.asd.Weld.C0 = CFrame.new(0, 0, 0)
ragdolled = false
debounce = false
mouse.Button1Down:connect(function()
	if debounce == false and plr == lplr then
		animsync = true
		debounce = true
		noidle = true
		do
			local bg
			if ragdolled == false then
				bg = Instance.new("BodyGyro", root)
				bg.Name = "lolnochara"
				bg.P = 10000
				bg.D = 100
				bg.MaxTorque = Vector3.new(10000, 10000, 10000)
				if jumped == false then
					root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				local spd = 0.8
				for i = 1, 3 do
					rs:wait()
					if jumped == false then
						bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					else
						bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					end
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(70)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), spd)
				end
			else
				local asd = newWeld(torso, rarm, 1.5, 0.5, 0)
				asd.C1 = CFrame.new(0, 0.5, 0)
				local spd = 0.2
				local part = Instance.new("Part")
				local pistolweld = newWeld(rarm, first.asd, 0, -1, 0)
				pistolweld.C1 = CFrame.Angles(math.rad(-90), math.rad(180), 0)
				for i = 1, 20 do
					rs:wait()
					part.CFrame = CFrame.new(rarm.Position, mouse.Hit.p)
					asd.C0 = Lerp(asd.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(part.Orientation.X - torso.Orientation.X), math.rad(part.Orientation.Y - torso.Orientation.Y), math.rad(part.Orientation.Z - torso.Orientation.Z)), spd)
				end
				debris:AddItem(pistolweld, 1)
				part:Destroy()
				asd:Destroy()
			end
			sound(1112951656, second.Shootingpos.Position, 1)
			for i = 1, 5 do
				rs:wait()
				second.asd.Weld.C0 = CFrame.new(0, 0, -0.25 - 0.25 * math.sin(i / 5 * 5))
			end
			local Part0 = Instance.new("Part", DebrisModel)
			Part0.Name = "Bullet"
			Part0.Material = Enum.Material.Neon
			Part0.Color = Color3.new(1, 1, 0)
			Part0.Anchored = true
			local mesh = Instance.new("SpecialMesh", Part0)
			mesh.MeshType = Enum.MeshType.Brick
			Part0.CanCollide = false
			local Position = rarm.Position
			local Target = mouse.Hit.p
			local direction = Target - Position
			local direction = computeDirection(direction)
			local ray = Ray.new(Position, (Target - Position).unit * 1048)
			local part, endPoint = workspace:FindPartOnRay(ray, char)
			Part0.Size = Vector3.new(1, 1, 1)
			mesh.Scale = Vector3.new(1, (Position - endPoint).magnitude + 5, 1)
			local pos = Position + direction * (mesh.Scale.Y / 2 + 2)
			Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(180), 0, 0)
			local loop
			local i = 5
			local lole = i / 40
			mesh.Scale = Vector3.new(lole, mesh.Scale.Y, lole)
			rs:connect(function()
				local lole = i / 40
				mesh.Scale = Vector3.new(lole, mesh.Scale.Y, lole)
				Part0.Transparency = Part0.Transparency + 0.2
				i = i - 1
				if Part0.Transparency >= 1 then
					Part0:Destroy()
				end
			end)
			local asdpos
			if part then
				asdpos = part.CFrame
			end
			if part and part.Parent:FindFirstChildOfClass("Humanoid") then
				sound(1268222061, part.Position, 1)
				remote:FireServer("breakjoints", part.Parent)
				remote:FireServer("velocity", part, part.Velocity + direction * 50)
			end
			local bullet = Instance.new("Part", workspace)
			bullet.CFrame = second.asd.CFrame * CFrame.new(0, 0.2, -0.25) * CFrame.Angles(math.rad(90), 0, 0)
			bullet.Size = Vector3.new(0, 0.2, 0)
			bullet.Material = Enum.Material.Metal
			bullet.BrickColor = BrickColor.new("Gold")
			bullet.Velocity = -bullet.CFrame.rightVector * 20
			debris:AddItem(bullet, 10)
			if ragdolled == false then
				bg:Destroy()
			end
			noidle = false
			debounce = false
			animsync = false
		end
	end
end)
hum.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
music("Stop")
drew = true
if plr == lplr then
	GUI = Instance.new("ScreenGui", p.PlayerGui)
	GUI.Name = "BlackHoleKyu"
	textlabel = Instance.new("TextLabel", GUI)
	textlabel.AnchorPoint = Vector2.new(1, 1)
	textlabel.Position = UDim2.new(1, 505, 1, -5)
	textlabel.Size = UDim2.new(0, 500, 0, 400)
	textlabel.BorderSizePixel = 5
	textlabel.BorderColor3 = bordercolortitle
	textlabel.BackgroundColor3 = backgroundcolortitle
	textlabel.BackgroundTransparency = 0.1
	textlabel.TextTransparency = 0.1
	textlabel.TextColor3 = Color3.fromHSV(0, 0, 1)
	textlabel.TextScaled = true
	textlabel.TextYAlignment = Enum.TextYAlignment.Center
	textlabel.Font = Enum.Font.SciFi
	textlabel.Text = title
end
guiopen = false
debouncebutton = false
function openhelp()
	if debouncebutton == false then
		if guiopen == false then
			debouncebutton = true
			textlabel:TweenPosition(UDim2.new(1, -5, 1, -5), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2)
			guiopen = true
			wait(0.2)
		else
			debouncebutton = true
			textlabel:TweenPosition(UDim2.new(1, 505, 1, -5), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2)
			guiopen = false
			wait(0.2)
		end
	end
	debouncebutton = false
end
if plr == lplr then
	openhelp()
end
mouse.KeyDown:connect(function(key)
	if plr == lplr and key == "h" then
		openhelp()
	end
end)
function projektile(mousepos, size, speed, color)
	local Part0 = Instance.new("Part", DebrisModel)
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Material = Enum.Material.Neon
	Part0.Anchored = false
	Part0.Size = Vector3.new(1, 1, 1)
	Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
	Part0.BottomSurface = Enum.SurfaceType.Smooth
	Part0.TopSurface = Enum.SurfaceType.Smooth
	Part0.Position = Vector3.new(-57, 5, 28)
	Part0.Color = Color3.new(1, 1, 1)
	Part0.CanCollide = false
	local bforce = Instance.new("BodyForce", Part0)
	bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshType = Enum.MeshType.Sphere
	SpecialMesh1.Scale = Vector3.new(1, 1, 1) * size
	local Position = rarm.Position
	local Target = mousepos + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 100 * (mousepos - Position).magnitude
	local direction = Target - Position
	local direction = computeDirection(direction)
	local pos = Position + direction * 2
	Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
	Part0.Velocity = direction * speed
	root.Velocity = root.Velocity + -direction * 5
	local color2 = color
	local loop = rs:connect(function()
		if plr == lplr then
			Effect(Enum.MeshType.Brick, Vector3.new(1.5, 1.5, 1.5) * size, 0, Enum.Material.Neon, Color3.fromHSV(color2, 0.8, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * (speed / 200) / 2, Vector3.new(-0.2, -0.2, -0.2) * (size / 2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
		end
	end)
	local function stop()
		loop:disconnect()
		Part0.Anchored = true
		Part0.Transparency = 1
		Part0.Position = Vector3.new(0, 1000, 0)
		debris:AddItem(Part0, 10)
	end
	delay(10, function()
		stop()
	end)
	local asd
	asd = Part0.Touched:Connect(function(ht)
		if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
			for i = 1, 15 do
				if plr == lplr then
					Effect(Enum.MeshType.Brick, Vector3.new(2.5, 2.5, 2.5) * size, 0, Enum.Material.Neon, Color3.fromHSV(color2, 0.8, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * (size / 2), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
				end
			end
			if plr == lplr then
				Effect(Enum.MeshType.Sphere, Vector3.new(2, 2, 2) * size, 0, Enum.Material.Neon, Color3.fromHSV(color2, 0.8, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.2, 0.2, 0.2) * (size * 2), Vector3.new(), 0.04, 0.1)
				sound(262562442, Part0.Position, 10, math.random(90, 170) / 100)
			end
			for i, v in pairs(findAllNearestTorso(Part0.Position, 10 * size)) do
				local hit = v.Parent
				if hit:FindFirstChildOfClass("Humanoid") then
					local hum = hit:FindFirstChildOfClass("Humanoid")
					if hum.MaxHealth > 1.0E100 then
						remote:FireServer("breakjoints", v.Parent)
					else
						remote:FireServer("damage", hum, hum.MaxHealth / math.random(5, 6) * (size / 2))
					end
				end
			end
			stop()
			asd:disconnect()
		end
	end)
end
remote.OnClientEvent:connect(function(a, pos, size, speed, color)
	if plr ~= lplr and a == "projektile" then
		projektile(pos, size, speed, color)
	end
end)
function projectile(pos, size, speed, color)
	projektile(pos, size, speed)
	remote:FireServer("projektile", pos, size, speed, color)
end
mouse.Button1Down:connect(function()
	if plr == lplr and debounce == false then
		debounce = true
		debounce = false
	end
end)
mouse.KeyDown:connect(function(key)
end)
local woosh = false
local debounce = false
mouse.KeyDown:connect(function(key)
	if plr == lplr and key == "g" then
		if musicplay then
			musicplay = false
			music("Stop")
		else
			musicplay = true
			music("Stop")
		end
	end
end)
local debounceimpact = false
function jumpimpact()
	if debounceimpact == false then
		debounceimpact = true
		if jumppower < -150 then
			jumppower = -150
		end
		shake(-jumppower / 5)
		sound(131436155, lleg.Position, 5, math.random(7, 8) / 10)
		for i = 1, -jumppower / 20 do
			rs:wait()
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0, 0, 0), 0.05)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, jumppower / 20 - hum.HipHeight, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.05)
		end
		debounceimpact = false
	end
end
max = 0
function renderstepped()
	hum.MaxHealth = 500
	if lplr ~= plr then
		if p.Character.Parent == nil then
			local model = Instance.new("Model")
			model.Name = p.Name
			p.Character = model
			for i, v in pairs(char:GetChildren()) do
				v.Parent = p.Character
			end
		end
		char = p.Character
		if p.Character.Parent ~= workspace then
			p.Character.Parent = workspace
		end
		for i, v in pairs(char:GetChildren()) do
			if v:IsA("Accoutrement") then
				if v.Handle:FindFirstChild("Mesh") then
					v.Handle:FindFirstChild("Mesh").Offset = Vector3.new()
					v.Handle.Transparency = 0
				end
			elseif v:IsA("BasePart") then
				v.Anchored = false
				if v:FindFirstChildOfClass("BodyPosition") then
					v:FindFirstChildOfClass("BodyPosition"):Destroy()
				end
				if v:FindFirstChildOfClass("BodyVelocity") then
					v:FindFirstChildOfClass("BodyVelocity"):Destroy()
				end
				if v:FindFirstChildOfClass("BodyGyro") and v:FindFirstChildOfClass("BodyGyro").Name ~= "lolnochara" then
					v:FindFirstChildOfClass("BodyGyro"):Destroy()
				end
				if v:FindFirstChild("Mesh") then
					v:FindFirstChild("Mesh").Offset = Vector3.new()
				end
				if not DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD") then
					local force = Instance.new("Part", DebrisModel)
					force.Name = v.Name .. "FORCEFIELD"
					if v ~= hed then
						force.Size = v.Size + Vector3.new(1, 1, 1) * 0.2
					else
						force.Size = Vector3.new(1, 1, 1) * v.Size.Y + Vector3.new(1, 1, 1) * 0.2
					end
					force.CanCollide = false
					force.Transparency = 1
					force.Color = Color3.new(0, 1, 1)
					force.Material = Enum.Material.Neon
					newWeld(v, force, 0, 0, 0)
				elseif not DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD"):FindFirstChildOfClass("Weld") then
					newWeld(v, DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD"), 0, 0, 0)
				end
				if v.Name ~= "HumanoidRootPart" then
					v.Transparency = 0
				else
					v.Transparency = 1
				end
			end
		end
	end
end
remote.OnClientEvent:Connect(function(k, a, e, f, g, h, i)
	if plr ~= lplr and k == "coords" then
		if animsync == true then
			hed.Weld.C0 = a[1]
			hed.Weld.C1 = a[2]
			larm.Weld.C0 = a[3]
			rarm.Weld.C0 = a[4]
			torso.Weld.C0 = a[5]
			lleg.Weld.C0 = a[6]
			rleg.Weld.C0 = a[7]
		end
		if skin_custom then
			hed.BrickColor = skin_color
			torso.BrickColor = skin_color
			rarm.BrickColor = skin_color
			larm.BrickColor = skin_color
			rleg.BrickColor = skin_color
			lleg.BrickColor = skin_color
		end
		pose = f
		wingpose = g
		animsync = h
		walking = i
		if sine - e > 0.8 or sine - e < -0.8 then
			sine = e
		end
	end
end)
mouse.KeyDown:connect(function(key)
	key = string.lower(key)
	if string.byte(key) == 50 then
		do
			local walkinglocal = true
			local keyConnection = mouse.KeyUp:connect(function(key)
				if string.byte(key) == 50 then
					walkinglocal = false
				end
			end)
			walking = true
			repeat
				rs:wait()
			until walkinglocal == false
			keyConnection:disconnect()
			walking = false
		end
	end
end)
remote.OnClientEvent:Connect(function(k)
	if k == "rs" then
		renderstepped()
	end
end)
rs:connect(function()
	if walking == false then
		change = 1
		movement = 20
		hum.WalkSpeed = 50
	else
		change = 0.5
		movement = 8
		hum.WalkSpeed = 20
	end
	for i, v in pairs(DebrisModel:GetChildren()) do
		if v.Name == "LIGHTNING" then
			local vm = v:FindFirstChildOfClass("BlockMesh")
			vm.Scale = vm.Scale - Vector3.new(0.05, 0.05, 0)
			if 0 >= vm.Scale.X then
				v:Destroy()
			end
		end
	end
	local ray1 = Ray.new(root.Position + Vector3.new(size, 0, 0), Vector3.new(0, -4, 0))
	local part1, endPoint = workspace:FindPartOnRay(ray1, char)
	local ray2 = Ray.new(root.Position - Vector3.new(size, 0, 0), Vector3.new(0, -4, 0))
	local part2, endPoint = workspace:FindPartOnRay(ray2, char)
	local ray3 = Ray.new(root.Position + Vector3.new(0, 0, size / 2), Vector3.new(0, -4, 0))
	local part3, endPoint = workspace:FindPartOnRay(ray3, char)
	local ray4 = Ray.new(root.Position - Vector3.new(0, 0, size / 2), Vector3.new(0, -4, 0))
	local part4, endPoint = workspace:FindPartOnRay(ray4, char)
	local ray5 = Ray.new(root.Position + Vector3.new(size, 0, size / 2), Vector3.new(0, -4, 0))
	local part5, endPoint = workspace:FindPartOnRay(ray5, char)
	local ray6 = Ray.new(root.Position - Vector3.new(size, 0, size / 2), Vector3.new(0, -4, 0))
	local part6, endPoint = workspace:FindPartOnRay(ray6, char)
	local ray7 = Ray.new(root.Position + Vector3.new(size, 0, -size / 2), Vector3.new(0, -4, 0))
	local part7, endPoint = workspace:FindPartOnRay(ray7, char)
	local ray8 = Ray.new(root.Position - Vector3.new(size, 0, -size / 2), Vector3.new(0, -4, 0))
	local part8, endPoint = workspace:FindPartOnRay(ray8, char)
	local ray = Ray.new(root.Position, Vector3.new(0, -6, 0))
	local part, endPoint = workspace:FindPartOnRay(ray, char)
	if part1 or part2 or part3 or part4 or part5 or part6 or part7 or part8 then
		jumped = false
	else
		endPoint = 0
		jumped = true
	end
	if plr == lplr and drew == true then
		if custom_outfits == true then
			p:ClearCharacterAppearance()
			if hed:FindFirstChild("face") then
				hed:FindFirstChild("face"):Destroy()
			end
		end
		if root.Position.Y < workspace.FallenPartsDestroyHeight + 200 then
			char:MoveTo(Vector3.new(0, 0, 0))
		end
		if 0 < hum.Health then
			if hum.Sit == false then
				if (root.Velocity * Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
					animation("Run")
				elseif jumped == true then
					didjump = true
					jumppower = root.Velocity.Y
					animation("Jump")
				elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 5 then
					animation("Idle")
				end
			else
				animation("Sit")
			end
		end
		if didjump and jumped == false then
			jumpimpact(jumppower)
			didjump = false
		end
		if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false and noidle == false then
			if hed:FindFirstChild("Running") then
				hed.Running:Destroy()
			end
			if math.cos(sine / 4) / 2 <= -0.2 and sidestep == 0 then
				local a = sound(131436155, rleg.Position, 2, math.random(7, 8) / 10)
				a.Parent = rleg
				sidestep = 1
			end
			if math.cos(sine / 4) / 2 >= 0.2 and sidestep == 1 then
				local a = sound(131436155, lleg.Position, 2, math.random(7, 8) / 10)
				a.Parent = lleg
				sidestep = 0
			end
		end
		local asd = Vector3.new(math.random(-10000, 10000) / 10000, math.random(-10000, 10000) / 10000, math.random(-10000, 10000) / 10000)
		local asd2 = Vector3.new(math.random(-10000, 10000) / 10000, 0, math.random(-10000, 10000) / 10000)
		if skin_custom then
			hed.BrickColor = skin_color
			torso.BrickColor = skin_color
			rarm.BrickColor = skin_color
			larm.BrickColor = skin_color
			rleg.BrickColor = skin_color
			lleg.BrickColor = skin_color
		end
		remote:FireServer("rs")
		local stuffs = {
			hed.Weld.C0,
			hed.Weld.C1,
			larm.Weld.C0,
			rarm.Weld.C0,
			torso.Weld.C0,
			lleg.Weld.C0,
			rleg.Weld.C0
		}
		remote:FireServer("coords", stuffs, sine, pose, wingpose, animsync, walking)
	end
	if plr ~= lplr and drew then
		noidle = false
		if animsync == false then
			animation(pose)
		end
	end
	if drew then
		if blinktime > 0 then
			blinktime = blinktime - 1
		end
		if blinktime <= 0 then
			if blinking == false then
				blinking = true
				blinktime = 10
			else
				blinking = false
				blinktime = 250
			end
		end
	end
	sine = sine + change
end)
remote.OnClientEvent:Connect(function(k)
	if k == "stop" then
		script:Destroy()
		if plr == lplr then
			GUI:Destroy()
		end
	end
end)

end))
LocalScript2.Disabled = true
LocalScript3.Name = "Faker"
LocalScript3.Parent = Script0
table.insert(cors,sandbox(LocalScript3,function()
local holder = script.Parent
repeat
	if not script:FindFirstChildOfClass("LocalScript") then
		game:GetService("RunService").RenderStepped:wait()
	end
until script:FindFirstChildOfClass("LocalScript")

clone = script:FindFirstChildOfClass("LocalScript"):Clone()
clone.Parent = script.Parent
clone.Name = script.Name

local name = clone:WaitForChild("Value").Value
local p = game:GetService("Players"):WaitForChild(name)
local remote = game:GetService("ReplicatedStorage"):WaitForChild(script.Name .. "_remote_" .. p.Name)

remote:FireServer("obfuscate", script:FindFirstChildOfClass("LocalScript"))
for i,v in pairs(holder:GetChildren()) do
	if v ~= script then
		v.Disabled = false
	end
end

holder.ChildRemoved:connect(function(which)
	if which == clone then
		script.Parent:Destroy()
	end
end)
function SearchTextBoxes(Directory)
	local Found = {}
	for i,v in pairs(Directory:GetChildren()) do
		table.insert(Found,v)
		if v:IsA("TextBox") then
			if v.Parent.Parent.Name == "BoxFrame" then
				-- do nothing
			else
				v.FocusLost:connect(function(asd)
					if asd then
						remote:FireServer(v.Text)
					end
				end)
			end
		end
	end
	for x,l in pairs(Found) do
		if #l:GetChildren() ~= 0 then
			SearchTextBoxes(l) --<<== recursive
		end
	end
end
if p == game:GetService("Players").LocalPlayer then
	SearchTextBoxes(p:FindFirstChildOfClass("PlayerGui"))
end
repeat
	if not game:GetService("ReplicatedStorage"):FindFirstChild(clone.Name .. "_stop_" .. p.Name) then
		game:GetService("RunService").RenderStepped:wait()
	end
until game:GetService("ReplicatedStorage"):FindFirstChild(clone.Name .. "_stop_" .. p.Name)
script.Parent:Destroy()
end))
LocalScript3.Disabled = true
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
Make_Parts_Transparent(game:GetService("Workspace").non:WaitForChild("first"))
Make_Parts_Transparent(game:GetService("Workspace").non:WaitForChild("second"))
Make_Parts_Transparent(game:GetService("Workspace").non:WaitForChild("third"))
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Type-45 PDW [Front]"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = chr["Right Arm"] -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-.5,-.5)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)) -- Angles
print("Ran with no errors")