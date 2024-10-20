if not game.IsLoaded then
    game.Loaded:Wait()
end

fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)

wait(0.15)

if GhostInvis == true then

fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)

wait(0.15)

game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

wait(0.01)

fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Ghost Invisibility Activated" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})
  
end

if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end

wait(0.2)

if AdminInvis == true then

game:GetService("ReplicatedStorage").AdminAbility:FireServer("Invisibility")

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Admin Invisibility Activated" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})
  
end

if SlappleFarm == true then

if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
	end

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Slapple's Collected" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})
  
end

if CandyFarm == true then

if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
                end
            end
	end

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Candy's Collected" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Ok"})

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
