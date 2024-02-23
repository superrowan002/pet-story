local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cruise Story", "DarkTheme")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewTextBox("Give Cruise Bucks", "Give yourself Cruise Bucks", function(GiveBucks)
    local args = {
        [1] = GiveBucks
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveCashEvent"):FireServer(unpack(args))
end)

MainSection:NewTextBox("Give Tickets", "Give yourself Arcade Tickets", function(GiveTickets)
    local args = {
        [1] = GiveTickets
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveTicketsEvent"):FireServer(unpack(args))
end)

MainSection:NewTextBox("Give Item", "Give yourself any item if you know its name", function(GiveItem)
    local args = {
        [1] = GiveItem
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveItemEvent"):FireServer(unpack(args))
end)

MainSection:NewButton("Auto Heal", "Not able to be toggled off", function()
    while wait() do  
        local args = {
            [1] = 100
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("healPlayerEvent"):FireServer(unpack(args))
                    end
end)

MainSection:NewButton("Be the Pirate", "Activates the Be the Pirate gamepass", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("beThePirateEvent"):FireServer()
end)

MainSection:NewButton("Tame Dog", "Tames the Dog", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("dogTreatEvent"):FireServer()
end)

MainSection:NewButton("Revive", "Respawns the player", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("reviveEvent"):FireServer()
end)

MainSection:NewButton("Unlock Cage", "Unlocks the cage the players are trapped in", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("goldKeyEvent"):FireServer()
end)

MainSection:NewTextBox("Equip Title", "Equip any title in the game | Special: HALLOWEEN, SANTA", function(EquipTitle)
    local args = {
        [1] = EquipTitle
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("equipTitleEvent"):FireServer(unpack(args))
end)

MainSection:NewTextBox("Award Badge", "Award yourself any badge in the game (enter badge ID)", function(AwardBadge)
    local args = {
        [1] = AwardBadge
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("awardBadgeEvent"):FireServer(unpack(args))
end)
