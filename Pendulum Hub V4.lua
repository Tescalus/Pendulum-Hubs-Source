if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/its-asia/pendulumUI/main/library.lua"))()

local Pendulum = Library.CreateLib("Pendulum Hub")
local UserInputService = game:GetService("UserInputService")

local ScriptsTab = Pendulum:NewTab("Scripts",false)
local CreditsTab = Pendulum:NewTab("Credits",true)
local AnimationIdPlayer = Pendulum:NewTab("Animation Player",false)
local Settings = Pendulum:NewTab("Settings",false)

local Players = game:GetService("Players")

-- Settings

Settings:NewButton("Headless (USE WHEN REANIMATED!)", "Destroys your head.", function()
	Players.LocalPlayer.Character.Head:Destroy()
end)

Settings:NewButton("Remove Fling (USE WHEN REANIMATED!)", "Removes Fling", function()
	Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
end)

Settings:NewButton("Remove Torso Fling (USE WHEN REANIMATED!)", "Removes Fling", function()
	Players.LocalPlayer.Character.Torso:Destroy()
end)

-- Animation ID Player

AnimationIdPlayer:NewButton("Animation ID Player", "If you have trouble using it join the discord.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Animation%20ID%20Player.lua"))()
end)

-- Script Buttons

ScriptsTab:NewSearchBar()
ScriptsTab:NewButton("Neptunian V", "An original. If you want the hat join the discord.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Neptunia.lua"))()
end)

Settings:NewButton("Fake Korblox", "Makes it look like you have korblox", function()
	game:GetService("Players").LocalPlayer.Character["Right Leg"]:Destroy()
end)

ScriptsTab:NewButton("Sonic", "All other versions don't fling except this one.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FESonic.lua"))()
end)

ScriptsTab:NewButton("Neko", "This one is kinda self explanatory lol.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/neko.lua"))()
end)

ScriptsTab:NewButton("Joy", "Its got some cute stufff", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Joy.lua"))()
end)

ScriptsTab:NewButton("Elio Blasio", "Literally anyone with a gun. If you want hats join the discord.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Elio%20Balsio.lua"))()
end)

ScriptsTab:NewButton("Ender", "Smashy boi", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FinalEnderVersionDeObfuscated.lua"))()
end)

ScriptsTab:NewButton("KillBot V2", "The script kinda sucks lol", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/KillbotV2.lua"))()
end)

ScriptsTab:NewButton("Star Platinum Over Heaven", "A really fun script for people who have played a jojo game before.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEStandConverted.lua"))()
end)

ScriptsTab:NewButton("Chill", "You can get a lot of peoples attention with this.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEChill.lua"))()
end)

ScriptsTab:NewButton("Lutris v2", "Definetely an OP script. Join discord for hat", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Lustris%20V2.lua"))()
end)

ScriptsTab:NewButton("Memeus v2.5", "Dead memes from 2019 (some arent dead)", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Memeus.lua"))()
end)

ScriptsTab:NewButton("Meme animation", "This one is just some emotes and dances.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/memeanimations.lua"))()
end)

ScriptsTab:NewButton("Krystal dance", "Some nice dances. My favorite is U.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Krystal%20Dance.lua"))()
end)

ScriptsTab:NewButton("Spinning Blade", "Definetely has the best idle animation", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEPen.lua"))()
end)

ScriptsTab:NewButton("Xester", "The strongest script out of them all.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEXESTERFINALLY!!!!!!!.lua"))()
end)

ScriptsTab:NewButton("Caducus", "Edgy demon guy.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/cadacus.lua"))()
end)

ScriptsTab:NewButton("Minigun", "Have fun spraying skids.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEminigun.lua"))()
end)

ScriptsTab:NewButton("Lightning Sword", "Similar to Dual Ultima. its basiclly an edit.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/LightningSword.lua"))()
end)

ScriptsTab:NewButton("Corrupted Overseer", "My favorite script.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Corrupted%20Overseer.lua"))()
end)

ScriptsTab:NewButton("Darth Vadar", "For the star wars fans.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Darth%20Vadar.lua"))()
end)

ScriptsTab:NewButton("Sans", "left click to fling. time it with attacks to fling.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FESans.lua"))()
end)

ScriptsTab:NewButton("Zen", "literally zenyata", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/FEZen.lua"))()
end)

ScriptsTab:NewButton("Gale Fighter", "Another classic!", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Gale%20Fighter.lua"))()
end)

ScriptsTab:NewButton("Glove & Sword", "The script isn't broken press f to equip.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Glove%20and%20sword.lua"))()
end)

ScriptsTab:NewButton("Reaper", "Reaper from Overwatch", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Reaper.lua"))()
end)

ScriptsTab:NewButton("Zenith Rifle", "Added because of high request.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Zenith%20rifle.lua"))()
end)

ScriptsTab:NewButton("Abyss Eye", "This one is very intimidating.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/AbyssEye.lua"))()
end)

ScriptsTab:NewButton("Bizzaro", "TPose thing", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Bizzaro.lua"))()
end)

ScriptsTab:NewButton("Sword Guy", "I don't even know the name LOL.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Swordthing.lua"))()
end)

ScriptsTab:NewButton("Sharpshooter", "Laser finger thing", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Sharpshooter.lua"))()
end)

ScriptsTab:NewButton("Dual Pink Guns", "Reminds me of the matrix for some reason.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Dual%20pink%20guns.lua"))()
end)

ScriptsTab:NewButton("Aureate", "This script can kill your frames in big games.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Aureate.lua"))()
end)

ScriptsTab:NewButton("Neptunian Gun & Sword", "Join discord for hats.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Script_4.lua"))()
end)

ScriptsTab:NewButton("Doomspire Brickbattler", "For people who say that old roblox is better.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/DoomspireBrickbattler.lua"))()
end)

ScriptsTab:NewButton("Star Glitcher", "A free version that doesn't need any hats.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Free%20Star%20Glitcher.lua"))()
end)

ScriptsTab:NewButton("Nightmare Sans", "From Dream!tale. Very strong.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Nightmare%20Sans.lua"))()
end)

ScriptsTab:NewButton("Abyss Sword", "The first script I converted that uses a gear.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Abyssal%20sword.lua"))()
end)

ScriptsTab:NewButton("Dark Magic", "If you've played Black Magic you'll love this script.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Magic.lua"))()
end)

ScriptsTab:NewButton("Torando Gauntlet", "Gauntlet that makes tornados.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Tornado%20Gauntlet.lua"))()
end)

ScriptsTab:NewButton("Hidden blades - From AC", "This ones cool.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Hidden%20Blades.lua"))()
end)

ScriptsTab:NewButton("Despira", "This one is a balanced range and close ranged script.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Despira.lua"))()
end)

ScriptsTab:NewButton("Golden Fireball God", "This somehow reminds me of Asgore.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Golden%20Fireball%20God.lua"))()
end)

ScriptsTab:NewButton("Simple Sword", "There isn't much to it.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Katanathing.lua"))()
end)

ScriptsTab:NewButton("Brutal Anti Furry", "Damn you must hate furrys.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Anti%20Furry%20lol.lua"))()
end)

ScriptsTab:NewButton("Omni God", "A stupidly powerful script if you know how to use fling properly.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Omni%20God.lua"))()
end)

ScriptsTab:NewButton("Baldi", "https://www.youtube.com/watch?v=SciE-AbMLt0", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Baldi%20FE.lua"))()
end)

ScriptsTab:NewButton("Shedletsky Rage", "Not to much about it.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Shedletsky%20Rage.lua"))()
end)

ScriptsTab:NewButton("Nebula Star Glitcher", "Yes it has the big black lol.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Nebula%20Star%20Glitcher.lua"))()
end)

ScriptsTab:NewButton("Lustris PURPLE", "Purple version of Lustris and different powers", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Lustris%20PURPLE.lua"))()
end)

ScriptsTab:NewButton("Touhou Magic", "Rain bullet hell on em bitch.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Touhou%20Script.lua"))()
end)

ScriptsTab:NewButton("Excalibur", "Its just a cool sword thing", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Excalibur.lua"))()
end)

ScriptsTab:NewButton("John Doe", "Yeah I added him back with better fling", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/John%20Doe.lua"))()
end)

ScriptsTab:NewButton("What another one", "Yes thats the scripts name Mr. Skiddy Titty", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/What%20another%20one.lua"))()
end)

ScriptsTab:NewButton("Ether", "Do people even read these?", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Evolution-Hub/main/Ether.lua"))()
end)

ScriptsTab:NewButton("Uncle Parlo The Redneck", "Parlo is not a pedophile I swear!", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Uncle%20Parlo%20The%20Stupid%20Fucking%20Redneck.lua"))()
end)

ScriptsTab:NewButton("Eyo Zen", "Guy with eyeball that shoots lasers.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Eyo%20Zen.lua"))()
end)

ScriptsTab:NewButton("Cop", "Your average cop.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Cop.lua"))()
end)

ScriptsTab:NewButton("Verlex", "Very unique script that i've seen.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Verlex.lua"))()
end)

ScriptsTab:NewButton("Lost Hope", "Dragon Scythe thing and its cool", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Lost%20Hope.lua"))()
end)

ScriptsTab:NewButton("The Assasian", "A shit ton of moves that are epic", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/The%20Assasian.lua"))()
end)

ScriptsTab:NewButton("Dragonian Pyramus", "Literally the fucking ender dragon.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Dragonian%20Pyramus.lua"))()
end)

ScriptsTab:NewButton("Grappler", "You can go to a city game and use this.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Dragonian%20Pyramus.lua"))()
end)

ScriptsTab:NewButton("Groundbreaker Gauntlets", "Gauntlets of death", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Groundbreaker%20Gauntlets.lua"))()
end)

ScriptsTab:NewButton("Sexy Staff Girl", "Gauntlets of death", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Sexy%20Staff%20Girl.lua"))()
end)

ScriptsTab:NewButton("Jojo Super Gauntlets", "Why are there so many gauntlet scripts?", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Jojo%20Super%20Gauntlets.lua"))()
end)

ScriptsTab:NewButton("The Pacifist", "No attacks. Just a very chill animation script.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/The%20Pacifist.lua"))()
end)

ScriptsTab:NewButton("Sakura Blade", "Barely any jitter in these animations.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Sakura%20Blade.lua"))()
end)

ScriptsTab:NewButton("Lightning Cannon", "Shoots Lightning. Skids 101.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Lightning%20Cannon.lua"))()
end)

ScriptsTab:NewButton("M41451", "Rainbow AK47 needed join the discord for hat.", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Lightning%20Cannon.lua"))()
end)

-- Credits

CreditsTab:NewLabel("Credits to Tescalus#3758 for making the entire hub")
CreditsTab:NewLabel("Pendulum hubs very own UI was made by charli#4616")
CreditsTab:NewLabel("All script creators go to their original owners.")

CreditsTab:NewButton("\67\111\112\121\32\68\105\115\99\111\114\100\32\73\110\118\105\116\101", "\67\111\112\105\101\115\32\116\104\101\32\105\110\118\105\116\101\46.", function()
	if setclipboard then
		setclipboard("\100\105\115\99\111\114\100\46\103\103\47\71\113\98\77\53\87\69\80\100\113")
	end
end)

-- Shift + L Hides Gui

local Enabled = true
UserInputService.InputBegan:Connect(function(Input,Typing)
	if Input.KeyCode == Enum.KeyCode.L and not Typing and UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
		Enabled = not Enabled
		
		if Enabled == false then
			Pendulum:Hide()
		elseif Enabled == true then
			Pendulum:Show()
		end
	end
end)
