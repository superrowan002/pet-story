local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Airplane 4 Script",
   LoadingTitle = "Airplane 4 Hub",
   LoadingSubtitle = "Lol",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Airplane4hub"
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
   Name = "Be the Monster",
   Callback = function()
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("beTheMonsterEvent"):FireServer()
   end,
})

local Input = MainTab:CreateInput({
   Name = "Title Selector",
   PlaceholderText = "Insert Title (Caps)",
   RemoveTextAfterFocusLost = false,
   Callback = function(SelectedTitle)
local args = {
    [1] = SelectedTitle
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("equipTitleEvent"):FireServer(unpack(args))

   end,
})

local Button = MainTab:CreateButton({
   Name = "Revive / Reset inv",
   Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ReviveEvent"):FireServer()
   end,
})

local Input = MainTab:CreateInput({
   Name = "Baggage Selector",
   PlaceholderText = "Insert Baggage",
   RemoveTextAfterFocusLost = false,
   Callback = function(SelectedBaggage)
local args = {
    [1] = SelectedBaggage
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("selectedBaggageItemEvent"):FireServer(unpack(args))
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

local Input = MainTab:CreateInput({
   Name = "Item Grabber",
   PlaceholderText = "Insert Item",
   RemoveTextAfterFocusLost = false,
   Callback = function(SelectedItem)
local args = {
    [1] = SelectedItem
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GrabItemEvent"):FireServer(unpack(args))
   end,
})

local Button = MainTab:CreateButton({
   Name = "Ultimate Sword (unequip = gone)",
   Callback = function()
      for i = 1, 20 do
local args = {
   [1] = "Ronald Sword"
}
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GrabItemEvent"):FireServer(unpack(args))
end
   end,
})