local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Click Simulator Fucker", "Sentinel")

local GamepassesTab = Window:NewTab("Gamepasses")
local LocalTab = Window:NewTab("Local Scripts")

local GamepassesSection = GamepassesTab:NewSection("Gamepasses")
local LocalScriptsSection = LocalTab:NewSection("Local Scripts")

GamepassesSection:NewButton("Double Clicks", "Get X2 Clicks", function()
    game:GetService("Players").LocalPlayer.Boosts.DoubleClicks.isActive.Value = true
end)
GamepassesSection:NewButton("Double Gems", "Get X2 Gems", function()
    game:GetService("Players").LocalPlayer.Boosts.DoubleGems.isActive.Value = true
end)
GamepassesSection:NewButton("Double Luck", "Get X2 Luck", function()
    game:GetService("Players").LocalPlayer.Boosts.DoubleLuck.isActive.Value = true
end)
GamepassesSection:NewButton("Auto Click", "Get Auto Click", function()
    game:GetService("Players").LocalPlayer.Boosts.AutoClick.isActive.Value = true
end)
GamepassesSection:NewButton("Double Shiny", "Get Double Shiny", function()
    game:GetService("Players").LocalPlayer.Boosts.DoubleShiny.isActive.Value = true
end)
GamepassesSection:NewButton("Teleport Gamepass", "Teleport Gamepass", function()
    game:GetService("Players").LocalPlayer.Data.gamepasses.Value = ";teleporter;"
end)
GamepassesSection:NewButton("Auto Rebirth Gamepass", "Auto Rebirth", function()
    game:GetService("Players").LocalPlayer.Data.gamepasses.Value = ";autorebirth;"
end)

LocalScriptsSection:NewButton("Infinite Jump", "Gives you Inf Jump", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

LocalScriptsSection:NewSlider("Walkspeed", "Set your walkspeed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
LocalScriptsSection:NewSlider("Jumppower", "Set your jump power", 1000, 80, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
