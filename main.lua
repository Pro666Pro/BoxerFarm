-- go ahead skid it idc

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Made By DonjoSx, Upgraded By Nexer1234 (version: v2.3)" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})
if not game.IsLoaded then
    game.Loaded:Wait()
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

fireclickdetector(workspace.Lobby["GloveStands"]["Boxer"].ClickDetector)

wait(0.15)

if GhostInvis == true then

fireclickdetector(workspace.Lobby["GloveStands"]["Ghost"].ClickDetector)

wait(0.15)

game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

wait(0.01)

fireclickdetector(workspace.Lobby["GloveStands"]["Boxer"].ClickDetector)

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Ghost Invisibility Activated" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})
  
end

wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.874173164367676, 362.9585876464844, -2.117299795150757)

wait(0.7)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,10,0)

wait(0.3)

if SlappleFarm == true then

for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Slapple's Collected" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})
  
end

wait(0.3)

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
          and randomPlayer.Character:FindFirstChild("rock") == nil
 
    return randomPlayer
end
 
local RJ = function()
    task.spawn(function()
        local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
 
        if not httprequest then 
            localPlayer:kick("Your executor cannot run rejoin script") 
        end
 
        local servers = {}
        local req = httprequest({
            Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)
        })
 
        local body = game:GetService("HttpService"):JSONDecode(req.Body)
 
        if body and body.data then
            for _, v in next, body.data do
                if SeverHOPSet.SwitchServerType:lower() == "serverhop" then
                    if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) 
                       and v.playing < v.maxPlayers and v.id ~= game.JobId then
                        table.insert(servers, 1, v.id)
                    end
                else
                    if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) 
                       and v.playing < v.maxPlayers and v.id == game.JobId then
                        table.insert(servers, 1, v.id)
                    end
                end
            end
        end
 
        if #servers > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], localPlayer)
            wait(3)
            if localPlayer then 
                game:GetService("TeleportService"):Teleport(game.PlaceId) 
                wait(4)
                if localPlayer then
                localPlayer:kick("Error")
                end
            end 
        else
            if SeverHOPSet.ErrorReply:lower() == "kick" then 
                localPlayer:kick("No server found") 
            else 
                game:GetService("TeleportService"):Teleport(game.PlaceId) 
            end
        end
    end)
end
 
for _, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
        if v.Name:find("{") then
            if v:IsA("RemoteEvent") then
                v:FireServer("Boxer")
            end
        end
    end
 
local target = getRandomPlayer()
if target then
    spawn(function()
        while wait() do
            localPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
        end 
    end)
wait()
    spawn(function()
	wait(0.7)
        for i = 1, 1000 do
            spawn(function()
                game.ReplicatedStorage.Events.Boxing:FireServer(target, true)
				game.ReplicatedStorage.Events.Boxing:FireServer(target, false)	

            end)      
        end
    end)
    wait(1)
    RJ()
else
RJ() end
