-- skeleton key script
-- yay
-- 10-24-24 BY SPINDASH01

local Players = game:GetService("Players")
local TS = game:GetService("TweenService")
local ReSt = game:GetService("ReplicatedStorage")
local PPS = game:GetService("ProximityPromptService")
local Wc = game:GetService("Workspace")

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")

local skelekey = game:GetObjects(getsynasset("PlushProject/MainPlushies/max.rbxm"))[1]
-- skelekey.Name = "SkeletonKey"
skelekey.Parent = Plr.Backpack

-- local currentrom = ReSt.GameData.LatestRoom.Value
-- local roomlist = Wc.CurrentRooms
-- local currentrommodel = roomlist[currentrom]

-- currentrommodel.Door.Lock.UnlockPrompt.Triggered:Connect(function()
-- 	if Char.SkeletonKey == false then
-- 			print("dont kill him")
-- 	else
-- 						              	Char:WaitForChild("Humanoid").Health = 0
-- 				debug.setupvalue(
-- 					getconnections(game:GetService("ReplicatedStorage").RemotesFolder.DeathHint.OnClientEvent)[1].Function,
-- 					1,
-- 					{
-- 						"mf dont use a spawned in skeleton key",
-- 						"*gives you -100 revives*"
-- 					}
-- 				)
-- 	end
-- end)
