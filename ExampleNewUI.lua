local VelocityLibrary = (loadstring(Game:HttpGet("https://raw.githubusercontent.com/hillsTools/Velocity-Ui-library/refs/heads/main/VelocityUi.lua")))();
if VelocityLibrary:LoadAnimation() then
	VelocityLibrary:StartLoad();
end;
if VelocityLibrary:LoadAnimation() then
	VelocityLibrary:Loaded();
end;
local UserInputService = game:GetService("UserInputService")
local Window = VelocityLibrary:Window({
	SubTitle = "Velocity Hub",
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
function VelocityLibraryTime()
	local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
	local Hour = math.floor(GameTime / 60 ^ 2) % 24;
	local Minute = math.floor(GameTime / 60 ^ 1) % 60;
	local Second = math.floor(GameTime / 60 ^ 0) % 60;
	Time:Set("[Game Time] : Hours : " .. Hour .. " Min : " .. Minute .. " Sec : " .. Second);
end;
spawn(function()
	while task.wait() do
		pcall(function()
			VelocityLibraryTime();
		end);
	end;
end);
Client = General:Label("Client");
function VelocityLibraryClient()
	local Fps = workspace:GetRealPhysicsFPS();
	Client:Set("[Fps] : " .. Fps);
end;
spawn(function()
	while true do
		wait(0.1);
		VelocityLibraryClient();
	end;
end);
Client1 = General:Label("Client");
function VelocityLibraryClient1()
	local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[Ping] : " .. Ping);
end;
spawn(function()
	while true do
		wait(0.1);
		VelocityLibraryClient1();
	end;
end);
General:Button("Copy Discord Link", function()
	setclipboard("https://discord.gg/FmMuvkaWvG");
	VelocityLibrary:Notify("Copied!", 3);
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
	setclipboard("https://discord.gg/w4bFrrWvrr");
	VelocityLibrary:Notify("Copied!", 3);
end)

General:Textbox("Enter Server Job ID", true, function(value)
    print("Entered Job ID:", value)
end)

General:Button("Join Server", function()
    print("Teleporting to Job ID...") -- Ganti dengan teleport logic jika diperlukan
end)
