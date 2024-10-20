-- skeleton key script
-- yay
-- 10-24-24 BY SPINDASH01

local Players = game:GetService("Players")
local TS = game:GetService("TweenService")
local ReSt = game:GetService("ReplicatedStorage")
local PPS = game:GetService("ProximityPromptService")

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")

loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()

local skelekey = LoadCustomInstance("https://github.com/lucianavfxdude/skelekey_model/blob/main/rawskeleton.rbxm?raw=true")
skelekey.Parent = Plr.Backpack