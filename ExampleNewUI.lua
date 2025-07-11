local StellarLibrary = (loadstring(Game:HttpGet("https://raw.githubusercontent.com/x2zu/OPEN-SOURCE-UI-ROBLOX/refs/heads/main/X2ZU%20UI%20ROBLOX%20OPEN%20SOURCE/NewUiStellar.lua")))();
if StellarLibrary:LoadAnimation() then
	StellarLibrary:StartLoad();
end;
if StellarLibrary:LoadAnimation() then
	StellarLibrary:Loaded();
end;
local UserInputService = game:GetService("UserInputService")
local Window = StellarLibrary:Window({
	SubTitle = "x2zu Project",
	Size = game:GetService("UserInputService").TouchEnabled and UDim2.new(0, 380, 0, 260) or UDim2.new(0, 500, 0, 320),
	TabWidth = 140
})
local Information = Window:Tab("Information", "rbxassetid://128891143813807");
local General = Window:Tab("Main", "rbxassetid://10723407389");
local Tab3 = Window:Tab("Farming", "rbxassetid://10723415335");
local Tab4 = Window:Tab("Items", "rbxassetid://10709782497");
local Tab5 = Window:Tab("Setting", "rbxassetid://10734950309");
local Tab6 = Window:Tab("Local Player", "rbxassetid://10747373176");
local Tab7 = Window:Tab("Hold Skill", "rbxassetid://10734984606");
local Settings = Window:Tab("Setting", "rbxassetid://98216376967992");
-- local Information = Window:Tab("Information", "rbxassetid://128891143813807");
-- local General = Window:Tab("General", "rbxassetid://92150073897728");
-- local Tab3 = Window:Tab("Tab3", "rbxassetid://83493480205564");
-- local Tab4 = Window:Tab("Tab4", "rbxassetid://82733483462291");
-- local Tab5 = Window:Tab("Tab5", "rbxassetid://121264555493885");
-- local Tab6 = Window:Tab("Tab6", "rbxassetid://113316938807084");
-- local Tab7 = Window:Tab("Tab7", "rbxassetid://71040312165698"); 
-- local Tab8 = Window:Tab("Tab8", "rbxassetid://136162614128994");


Information:Seperator("Annoucements")
Info = Information:Label("Important")

General:Seperator("Main");
Time = General:Label("Executor Time");
function StellarLibraryTime()
	local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
	local Hour = math.floor(GameTime / 60 ^ 2) % 24;
	local Minute = math.floor(GameTime / 60 ^ 1) % 60;
	local Second = math.floor(GameTime / 60 ^ 0) % 60;
	Time:Set("[Game Time] : Hours : " .. Hour .. " Min : " .. Minute .. " Sec : " .. Second);
end;
spawn(function()
	while task.wait() do
		pcall(function()
			StellarLibraryTime();
		end);
	end;
end);
Client = General:Label("Client");
function StellarLibraryClient()
	local Fps = workspace:GetRealPhysicsFPS();
	Client:Set("[Fps] : " .. Fps);
end;
spawn(function()
	while true do
		wait(0.1);
		StellarLibraryClient();
	end;
end);
Client1 = General:Label("Client");
function StellarLibraryClient1()
	local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[Ping] : " .. Ping);
end;
spawn(function()
	while true do
		wait(0.1);
		StellarLibraryClient1();
	end;
end);
General:Button("Copy Discord Link", function()
	setclipboard("https://discord.gg/FmMuvkaWvG");
	StellarLibrary:Notify("Copied!", 3);
end);
General:Label("Status : label");
-- Dropdown
General:Seperator("Dropdown");
General:Dropdown("Type", {"Option 1", "Option 2", "Option 3"}, nil, function(selected)
    print("Selected number:", selected)
end)


-- Toggle
General:Seperator("Toggle");
General:Toggle("Type", {"Option 1", "Option 2", "Option 3"}, "Toggle with desc", function(selected)
    print("Selected number:", selected)
end)
General:Toggle("Type", {"Option 1", "Option 2", "Option 3"}, nil, function(selected)
    print("Selected number:", selected)
end)

-- Slider
General:Seperator("Slider");
General:Slider("Farm Distance", 0, 50, 25, function(value)
    print("Selected Farm Distance:", value)
end)

General:Line();
local JobLabel = General:Label("Server Job ID :")

General:Button("Copy Server Job ID", function()
	setclipboard("https://discord.gg/FmMuvkaWvG");
	StellarLibrary:Notify("Copied!", 3);
end)

General:Textbox("Enter Server Job ID", true, function(value)
    print("Entered Job ID:", value)
end)

General:Button("Join Server", function()
    print("Teleporting to Job ID...") -- Ganti dengan teleport logic jika diperlukan
end)
