local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Airplane 4 Story", "DarkTheme")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("Be the Monster", "Activates the Be the Monster gamepass", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("beTheMonsterEvent"):FireServer()
end)

MainSection:NewTextBox("Equip Title", "Equip any title in the game", function(EquipTitle)
    local args = {
        [1] = EquipTitle
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("equipTitleEvent"):FireServer(unpack(args))
end)

MainSection:NewButton("Revive", "Respawns the player", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ReviveEvent"):FireServer()
end)

MainSection:NewTextBox("Select Baggage", "Choose the baggage item to be selected", function(SelectBaggage)
    local args = {
        [1] = SelectBaggage
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("selectedBaggageItemEvent"):FireServer(unpack(args))
end)

MainSection:NewButton("Auto Heal", "Not able to be toggled off", function()
    while wait() do  
        local args = {
            [1] = 100
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("healPlayerEvent"):FireServer(unpack(args))
                    end
end)

MainSection:NewTextBox("Give Item", "Give yourself any item if you know its name", function(GiveItem)
    local args = {
        [1] = GiveItem
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("grabItemEvent"):FireServer(unpack(args))
end)

MainSection:NewButton("Ultimate Sword", "Equip 10 swords at once", function()
    for i = 1, 10 do
        local args = {
           [1] = "Ronald Sword"
        }
              game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GrabItemEvent"):FireServer(unpack(args))
        end
end)
