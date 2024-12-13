-- go ahead skid it idc

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Made By DonjoSx, Upgraded By Nexer1234 (version: v7)" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})

if not game.IsLoaded then
    game.Loaded:Wait()
end

function SlapFarm()
game.ReplicatedStorage.Events.Boxing:FireServer(target, true)
game.ReplicatedStorage.Events.Boxing:FireServer(target, false)	
game.ReplicatedStorage.Events.Boxing:FireServer(target, true)
game.ReplicatedStorage.Events.Boxing:FireServer(target, false)	
end

if AutoExecute == true then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
AutoExecute = true
GhostInvis = true
FarmOrbs = true
FarmToolbox = true
SlappleFarm = true
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BoxerFarmUpgraded/main/main.lua'))()
    ]])
end
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()

wait(0.1)

if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-7000, -7000, -7000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end

if NoCollide == true then
game.Workspace[game.Players.LocalPlayer.Name]["HumanoidRootPart"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Head"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Torso"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Left Arm"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Right Arm"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Left Leg"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Right Leg"].CanCollide = false
game.Players.LocalPlayer.Character["HumanoidRootPart"].CanCollide = false
game.Players.LocalPlayer.Character["Head"].CanCollide = false
game.Players.LocalPlayer.Character["Torso"].CanCollide = false
game.Players.LocalPlayer.Character["Left Arm"].CanCollide = false
game.Players.LocalPlayer.Character["Right Arm"].CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end

for i,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, "ÅBarrier") then
v.CanCollide = false
end
end
for _,v in pairs(game.Players:GetChildren()) do
if v.Character:FindFirstChild("rock") then
v.Character:FindFirstChild("rock").CanTouch = false
v.Character:FindFirstChild("rock").CanQuery = false
v.Character:FindFirstChild("rock").CanCollide = false
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Anchored = false
end
end
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:Destroy()
game.Workspace.DEATHBARRIER.CanTouch = false
game.Workspace.DEATHBARRIER2.CanTouch = false
game.Workspace.dedBarrier.CanTouch = false
game.Workspace.ArenaBarrier.CanTouch = false
game.Workspace.AntiDefaultArena.CanTouch = false
if game.Workspace.Lobby:FindFirstChild("brazil") then
game.Workspace.Lobby.brazil:Destroy()
end
if GhostInvis == true then

fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)

wait(.5)

game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

wait(.3)
  
end

fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)

wait(.6)

repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909, 328, 3) -- regular arena
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
task.wait()

local function Farm()
if SlappleFarm == true then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		    wait(.05)
		    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
end
if FarmToolbox == true then
if game.Workspace:FindFirstChild("Toolbox") then
fireclickdetector(game.Workspace.Toolbox.ClickDetector)
end
end
if FarmOrbs == true then
if game.Workspace:FindFirstChild("MATERIALIZEOrb") then
game.Workspace.MATERIALIZEOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.MATERIALIZEOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.MATERIALIZEOrb, 1)
end
if game.Workspace:FindFirstChild("JetOrb") then
game.Workspace.JetOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.JetOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.JetOrb, 1)
end
if game.Workspace:FindFirstChild("PhaseOrb") then
game.Workspace.PhaseOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.PhaseOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.PhaseOrb, 1)
end
if game.Workspace:FindFirstChild("GlitchOrb") then
game.Workspace.GlitchOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.GlitchOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.GlitchOrb, 1)
end
if game.Workspace:FindFirstChild("SiphonOrb") then
game.Workspace.SiphonOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.SiphonOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.SiphonOrb, 1)
end
end
end

if not SeverHOPSet then 
    SeverHOPSet = { 
        ErrorReply = "rejoin", 
        SwitchServerType = "serverhop" 
    }
end
 
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
 
-- Function to get a random player from the server
local function getRandomPlayer()
    local players = Players:GetPlayers()
    local randomPlayer
 
    repeat wait()
        randomPlayer = players[math.random(1, #players)]
    until randomPlayer ~= localPlayer 
          and randomPlayer.Character:FindFirstChild("Ragdolled").Value == false
 
    return randomPlayer
end
 
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
 
local target = getRandomPlayer()
if target then
    spawn(function()
        while wait() do
	    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
            localPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,7,0)
	    Name = target.Name
	    Farm()
        end 
    end)
wait()
    spawn(function()
	wait(.7)
        for i = 1, 1000 do
            spawn(function()
		localPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
		coroutine.wrap(SlapFarm)()
            end)      
        end
    end)
    wait(2.4)
    Teleport()
else
Teleport() end

while true do
Teleport()
task.wait()
end
