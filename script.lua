local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "🐶 Pet Story Script 🐶",
   LoadingTitle = "Pet Story Hub",
   LoadingSubtitle = "Lol",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Petstoryhub"
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
   Name = "Heal",
   Callback = function()
        local args = {
    [1] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("HealEvent"):FireServer(unpack(args))
   end,
})

local Button = MainTab:CreateButton({
   Name = "Remote Spy",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
   end,
})

local Input = MainTab:CreateInput({
   Name = "Set Speed",
   PlaceholderText = "Insert Value",
   RemoveTextAfterFocusLost = false,
   Callback = function(WalkSpeedInput)
game.Workspace.sadawefgvesgvwse.Humanoid.WalkSpeed = WalkSpeedInput
   end,
})

local Input = MainTab:CreateInput({
   Name = "Set Jumppower",
   PlaceholderText = "Insert Value",
   RemoveTextAfterFocusLost = false,
   Callback = function(JumpPowerInput)
game.Workspace.sadawefgvesgvwse.Humanoid.JumpPower = JumpPowerInput
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Attack Aura",
   CurrentValue = false,
   Flag = "Attackaura", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(AttackauraOn)
while AttackauraOn == true do
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
   wait(0.1)
end
   end,
})

local MaineventSection = MainTab:CreateSection("Event Options")

local Button = MainTab:CreateButton({
   Name = "Remove River Water",
   Callback = function()
      game.Workspace.Water:Destroy()
   end,
})

local TreatTab = Window:CreateTab("Treats", nil) -- Title, Image
local TreatSection = TreatTab:CreateSection("Treats")

local Button = TreatTab:CreateButton({
   Name = "Treats Adoption Center",
   Callback = function()
      for i = 1, #workspace.Treats.AdoptionCenter:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.AdoptionCenter.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Grannie",
   Callback = function()
      for i = 1, #workspace.Treats.GrannieHouse:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.GrannieHouse.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Sewer",
   Callback = function()
      for i = 1, #workspace.Treats.Sewer:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Sewer.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats City Begin",
   Callback = function()
      for i = 1, #workspace.Treats.City1:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.City1.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats City End / Treat Vent",
   Callback = function()
      for i = 1, #workspace.Treats.City2:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.City2.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Zoo 1",
   Callback = function()
      for i = 1, #workspace.Treats.Zoo1:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Zoo1.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Zoo 2",
   Callback = function()
      for i = 1, #workspace.Treats.Zoo2:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Zoo2.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Zoo 3",
   Callback = function()
      for i = 1, #workspace.Treats.Zoo3:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Zoo3.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats Aquarium",
   Callback = function()
      for i = 1, #workspace.Treats.Aquarium:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Aquarium.Treat.CFrame
         wait(0.1)
     end
   end,
})

local TreateventSection = TreatTab:CreateSection("Event locations")

local Button = TreatTab:CreateButton({
   Name = "Treats Supermarket",
   Callback = function()
      for i = 1, #workspace.Treats.Supermarket:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Supermarket.Treat.CFrame
         wait(0.1)
     end
   end,
})

local Button = TreatTab:CreateButton({
   Name = "Treats North Pole",
   Callback = function()
      for i = 1, #workspace.Treats.Christmas:GetChildren() do
         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
         rootPart.CFrame = workspace.Treats.Christmas.Treat.CFrame
         wait(0.1)
     end
   end,
})

local TeleportTab = Window:CreateTab("Teleports", nil) -- Title, Image
local TeleportSection = TeleportTab:CreateSection("Teleports")

local Button = TeleportTab:CreateButton({
   Name = "Teleport Grannie Truck",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.Truck.TransparentBox.TouchPart.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Pet Room",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.sleepingRoomTouchPart.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Sleep",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.SleepPositions.Manekin.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Sewer Puzzle End",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.sewerDoorTeleport7.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Rat Fight End",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.sewerCheckpoint3.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Dumpyard",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.dumpYardTeleport.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Street dogs",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.wpCity3.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Chase end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.wpCity6.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Shelter",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.streetPlayersTp.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Vent end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.ventSpawn3.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Zoo Bus",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = ZooBus.BusDoor.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Pannie",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.wpPannie1.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Pannie Lever",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.ZooLever1.Lever1.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Monkey start",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.startMonkeyChallengePart.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Monkey end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.finishMonkeyChallengePart.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Crocodile end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.crocObbyWallEnd.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Hyena end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.wpZoo14.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Jellyfish start",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.jellyfishCheckpoint1.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Jellyfish end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.jellyfishCheckpoint2.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Aquarium Lever 1",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.SharkLever.Lever1.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Aquarium Lever 2",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.ControlTentacleLever.Lever1.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Shark Room",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.RingAquarium5.Collider.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Aquarium Lever 3",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.RedHandle.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport Sr. Squidy",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.RingAquarium9.Collider.CFrame
   end,
})

local TeleporteventSection = TeleportTab:CreateSection("Event locations")

local Button = TeleportTab:CreateButton({
   Name = "Teleport Sleigh",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.Sleigh.TransparentBox.TouchWall.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Teleport River end",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.riverCheckpoint.CFrame
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Polo Platform",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.PoloPlatform.PlatformMain.CFrame
   end,
})

local MobdelTab = Window:CreateTab("Mob Delete", nil) -- Title, Image
local MobdelSection = MobdelTab:CreateSection("Mob Delete")

local Button = MobdelTab:CreateButton({
   Name = "Delete Animal Control",
   Callback = function()
      for i = 1, 3 do
         game.Workspace.OfficerPatrol:Destroy()
         end
         game.Workspace.OfficerPatrol4:Destroy()
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Delete Croc Bounce Outline",
   CurrentValue = false,
   Flag = "Delcrocbounce", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(DlcrocAtkOn)
while DlcrocAtkOn == true do
   local bounce = game.Workspace:FindFirstChild("crocRing")
   if bounce then
	bounce:Destroy()
 	wait(0.1)
    end
	end
   end,
})

local Button = MobdelTab:CreateButton({
   Name = "Delete Roborats",
   Callback = function()
      game.Workspace.Roborat1:Destroy()
      game.Workspace.Roborat2:Destroy()
      game.Workspace.Roborat3:Destroy()
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Delete Banana Peels",
   CurrentValue = false,
   Flag = "Delbananapeels", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(DlbananaOn)
   local banana = game.Workspace:FindFirstChild("BananaPeel")
   if banana then
	banana:Destroy()
 	wait(0.1)
    end
   end,
})

local Button = MobdelTab:CreateButton({
   Name = "Delete Crocodiles",
   Callback = function()
      game.Workspace.ZooCrocs:Destroy()
   end,
})

local Button = MobdelTab:CreateButton({
   Name = "Delete Jellyfish",
   Callback = function()
      game.Workspace.JellyfishGroup:Destroy()
   end,
})

local Button = MobdelTab:CreateButton({
   Name = "Sr. Squidy Tentacles",
   Callback = function()
      game.Workspace.SquidyBoss.Tentacle1:Destroy()
      game.Workspace.SquidyBoss.Tentacle2:Destroy()
      game.Workspace.SquidyBoss.Tentacle3:Destroy()
      game.Workspace.SquidyBoss.Tentacle4:Destroy()
   end,
})

local MobdelSection = MobdelTab:CreateSection("Mob TP")

local Toggle = MobdelTab:CreateToggle({
   Name = "Rat Killer Dumpyard",
   CurrentValue = false,
   Flag = "Ratkilldump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(RatKillDump)
while RatKillDump == true do
  local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
  local targetRat = game.Workspace.Rats:GetChildren()[math.random(1,#workspace.Rats:GetChildren())]
  rootPart.CFrame = workspace.dumpYardTeleport.CFrame
  wait(0.1)
  rootPart.CFrame = targetRat.Hitbox.CFrame
  wait(0.1)
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
wait(0.1)
end
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Tp Cockroach",
   CurrentValue = false,
   Flag = "Tpcockroach", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(TpcockroachOn)
      while TpcockroachOn == true do
	         local targetRoach = game.Workspace.Cockroaches:FindFirstChild("Cockroach")
	         local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
             	if targetRoach.Flying.Value == true then
    	           rootPart.CFrame = workspace.canelaSleep.CFrame
                 targetRoach.Flying:GetPropertyChangedSignal("Value"):Connect(function()
                   if targetRoach.Flying.Value == false then
                     rootPart.CFrame = targetRoach.Hitbox.CFrame
                     wait(0.1)
                     game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
                     wait(0.1)
                     game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
                     wait(0.1)
                     game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
	         		wait(0.1)
	         		rootPart.CFrame = workspace.canelaSleep.CFrame
		         	end
		         	end)
		         	else
		         		targetRoach.Flying:GetPropertyChangedSignal("Value"):Connect(function()
                   if targetRoach.Flying.Value == true then
                     rootPart.CFrame = workspace.canelaSleep.CFrame
                     targetRoach.Flying:GetPropertyChangedSignal("Value"):Connect(function()
                       if targetRoach.Flying.Value == false then
                         rootPart.CFrame = targetRoach.Hitbox.CFrame
                         wait(0.1)
                         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
                         wait(0.1)
                         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
                         wait(0.1)
                         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
		         		wait(0.1)
		         		rootPart.CFrame = workspace.canelaSleep.CFrame
             	      end
         			end)
         			end
	         	end)
         		end
           wait(0.1)
           end
     
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Tp Hyena",
   CurrentValue = false,
   Flag = "Tphyena", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(TphyenaOn)
while TphyenaOn == true do
  local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
  local targetHyena = game.Workspace.HyenaEnemies1:GetChildren()[math.random(1,#workspace.HyenaEnemies1:GetChildren())]
  rootPart.CFrame = workspace.teleportPlayersCrocEnd.CFrame
  wait(0.1)
  rootPart.CFrame = targetHyena.HumanoidRootPart.CFrame
  wait(0.1)
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BiteEvent"):FireServer()
wait(0.1)
end
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Tp Great White",
   CurrentValue = false,
   Flag = "Tpgreatwhite", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(TpgreatwhiteOn)
while TpgreatwhiteOn == true do
   local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
   rootPart.CFrame = workspace.Sharks["Great White"].Tail.CFrame
   wait(0.1)
end
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Tp Hammerhead",
   CurrentValue = false,
   Flag = "Tphammerhead", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(TphammerheadOn)
while TphammerheadOn == true do
   local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
   rootPart.CFrame = workspace.Sharks.Hammerhead.Tail.CFrame
   wait(0.1)
end
   end,
})

local Toggle = MobdelTab:CreateToggle({
   Name = "Tp Saw",
   CurrentValue = false,
   Flag = "Tpsaw", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(TpsawOn)
while TpsawOn == true do
   local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
   rootPart.CFrame = workspace.Sharks.Saw.Tail.CFrame
   wait(0.1)
end
   end,
})

local LobbyTab = Window:CreateTab("Lobby", nil) -- Title, Image
local LobbybuySection = LobbyTab:CreateSection("Buying")

local Input = LobbyTab:CreateInput({
   Name = "Buy Pet",
   PlaceholderText = "Pet name",
   RemoveTextAfterFocusLost = false,
   Callback = function(BuyPet)
        local args = {
    [1] = (BuyPet)
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BuyPet"):InvokeServer(unpack(args))
   end,
})

local Input = LobbyTab:CreateInput({
   Name = "Buy Hat",
   PlaceholderText = "Hat name",
   RemoveTextAfterFocusLost = false,
   Callback = function(BuyHat)
        local args = {
    [1] = (BuyHat)
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BuyHat"):InvokeServer(unpack(args))
   end,
})

local LobbyteleportSection = LobbyTab:CreateSection("Teleporting")

local Button = LobbyTab:CreateButton({
   Name = "Truck 1",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.Truck1.Gate.CFrame
   end,
})

local Button = LobbyTab:CreateButton({
   Name = "Truck 2",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.Truck2.Gate.CFrame
   end,
})

local Button = LobbyTab:CreateButton({
   Name = "Daily Reward",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.DailyRewardAssets.Hitbox.CFrame
   end,
})

local Button = LobbyTab:CreateButton({
   Name = "Mystery Shop",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.MysteryShopDoor.Main.CFrame
   end,
})

local Button = LobbyTab:CreateButton({
   Name = "Pet Shop",
   Callback = function()
      local rootPart = game.Workspace.sadawefgvesgvwse.HumanoidRootPart
      rootPart.CFrame = workspace.ShopDoor.Main.CFrame
   end,
})
