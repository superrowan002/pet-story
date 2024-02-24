local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Mo's Academy", "DarkTheme")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local FunTab = Window:NewTab("Fun")
local FunSection = FunTab:NewSection("Fun")

MainSection:NewTextBox("Give Item", "Give yourself Items", function(GiveItem)
    local args = {
        [1] = GiveItem
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TakeItem"):FireServer(unpack(args))    
end)

MainSection:NewButton("Collect Keys", "Collect All Keys During the Scavenger Hunt", function()
    local args = {
        [1] = "BlueKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))

    local args = {
        [1] = "GreenKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))

    local args = {
        [1] = "RedKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))
end)

MainSection:NewButton("Give Money", "Quickly give money", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CCo"):FireServer()
end)

MainSection:NewButton("Buy Gym", "Buy Gym Access from anywhere", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PayBully"):FireServer()
end)

MainSection:NewButton("Work Out", "Doesn't work after all lessons in a day finished or if gym isn't owned", function()
    local args = {
        [1] = workspace:WaitForChild("Benches"):WaitForChild("Bench")
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UseBench"):FireServer(unpack(args))
end)

MainSection:NewButton("Insta Damage Enemies", "Can't be toggled off (may cause lag) | Needs a Bat to work", function()
    while wait(0.1) do
        local enemiesFolder = workspace:WaitForChild("Enemies")
        local enemies = enemiesFolder:GetChildren()
    
        local args = {}
        for i, enemy in ipairs(enemies) do
            args[i] = enemy
        end
    
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SendD"):FireServer(unpack(args))
    end    
end)

MainSection:NewButton("Remove Mo Chase Hitbox", "Remove Mo's Hitbox during the Playground Chase", function()
    game:GetService("Workspace").MoChase.MoChaseHurtbox:Destroy()
end)

MainSection:NewColorPicker("Get Flask", "Get a Flask with a custom color", Color3.fromRGB(0,0,0), function(GetFlask)
    local args = {
        [1] = Color3.new(GetFlask)
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Flask"):FireServer(unpack(args))
end)



FunSection:NewButton("Tame Hamster", "Make Puffy the Hamster stay with you", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hamster"):FireServer()
end)

FunSection:NewButton("Hold Football", "Hold a Football", function()
    local args = {
        [1] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetBall"):FireServer(unpack(args))
end)

FunSection:NewButton("Drop Football", "Drop the Football", function()
    local args = {
        [1] = 2
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetBall"):FireServer(unpack(args))
end)
