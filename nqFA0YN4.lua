if _G.Ran == true then return end
wait()
_G.Ran = true
repeat wait() until game:IsLoaded()

_G.Parry = false
_G.Spam = false
_G.Curve = false
_G.CurveSpam = false
_G.Shaders = false
_G.Night = false
_G.Visual = false
_G.Sound = false
_G.Effect = false
_G.Trail = false
_G.BallTrail = false
_G.SelfEffect = false
_G.KillEffect = false
_G.AI = false
_G.Farm = false
_G.TP = false
_G.Spectate = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/KOKAKAKA/Synthia/main/blademodule.lua'))()
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Nova X",
    SubTitle = "Reborn | By Kia",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 320),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
  Main = Window:AddTab({ Title = "Main", Icon = "atom" }),
  Misc = Window:AddTab({ Title = "Misc", Icon = "settings-2" }),
  Credits = Window:AddTab({ Title = "Credits", Icon = "user" }),
}
local Options = Fluent.Options
do
local Toggle = Tab:AddToggle("Auto Parry", 
{
    Title = "Auto Parry", 
    Description = "Main Parry",
    Default = false
    Callback = function(state)
    _G.Parry = state
    _G.Spam = state
    _G.Visual = state
    end 
})
