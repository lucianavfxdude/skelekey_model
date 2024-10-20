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

loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()

local skelekey = LoadCustomInstance("https://github.com/lucianavfxdude/skelekey_model/blob/main/rawskeleton.rbxm?raw=true")
skelekey.Parent = Plr.Backpack

local currentrom = ReSt.GameData.LatestRoom.Value
local roomlist = Wc.CurrentRooms
local currentrommodel = roomlist[currentrom]

if Char.Key == false and currentrommodel.Lock == false then
  print("mf equip your skele key, and make sure the room is locked")
else
  currentrommodel.Lock.UnlockPrompt.Triggered:Connect(function()
            	Char:WaitForChild("Humanoid").Health = 0
				debug.setupvalue(
					getconnections(game:GetService("ReplicatedStorage").RemotesFolder.DeathHint.OnClientEvent)[1].Function,
					1,
					{
						"mf dont use a spawned in skeleton key",
						"*gives you -100 revives*"
					}
				)
  end
end
