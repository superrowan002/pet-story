local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Cruise Story Script",
   LoadingTitle = "Cruise Story Hub",
   LoadingSubtitle = "Lol",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Cruisestoryhub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
   Name = "Remote Spy",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
   end,
})

local Input = MainTab:CreateInput({
   Name = "Give Cash",
   PlaceholderText = "Insert Amount",
   RemoveTextAfterFocusLost = false,
   Callback = function(CashGive)
local args = {
    [1] = CashGive
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveCashEvent"):FireServer(unpack(args))
   end,
})

local Input = MainTab:CreateInput({
   Name = "Give Tickets",
   PlaceholderText = "Insert Amount",
   RemoveTextAfterFocusLost = false,
   Callback = function(TicketGive)
local args = {
    [1] = TicketGive
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveTicketsEvent"):FireServer(unpack(args))
   end,
})

local Input = MainTab:CreateInput({
   Name = "Give Item",
   PlaceholderText = "Item Name",
   RemoveTextAfterFocusLost = false,
   Callback = function(ItemName)
local args = {
    [1] = ItemName
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveItemEvent"):FireServer(unpack(args))
   end,
})

local Button = MainTab:CreateButton({
   Name = "Auto Heal",
   Callback = function()
while wait() do  
local args = {
    [1] = 100
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("healPlayerEvent"):FireServer(unpack(args))
            end
   end,
})

local Button = MainTab:CreateButton({
   Name = "Be the Pirate",
   Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("beThePirateEvent"):FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Tame Dog",
   Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("dogTreatEvent"):FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Revive",
   Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("reviveEvent"):FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Unlock Cage",
   Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("goldKeyEvent"):FireServer()
   end,
})














   local args = {
    [1] = insert
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("equipTitleEvent"):FireServer(unpack(args))