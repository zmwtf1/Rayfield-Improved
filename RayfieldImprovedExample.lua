-- Rayfield Improved
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/zmwtf1/Rayfield-Improved/refs/heads/main/UI.lua'))()


-- Rayfield Improved window example
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Improved Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Improved Interface Suite",
   LoadingSubtitle = "by [Your Name]",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Rayfield Improved Test KeySystem",
      Subtitle = "Rayfield Improved Key System",
      Note = "Key is: 123", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


-- Example Tab
local Testing = Window:CreateTab("Example Tab", "cloud")


-- EXAMPLE TAB --
-- Test Section
local SitSection = Testing:CreateSection("Sit")


-- Sit button
local Button = Testing:CreateButton({
   Name = "Sit",
   Callback = function()
       game.Players.LocalPlayer.Character.Humanoid.Sit = true
   end,
})

-- Speed Section
local SpeedSection = Testing:CreateSection("Speed Section")

-- Speed Slider
local SpeedSlider = Testing:CreateSlider({
   Name = "Speed Slider",
   Range = {16, 150},
   Increment = 2,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})


-- Speed Input
local SpeedInput = Testing:CreateInput({
   Name = "Speed Input",
   CurrentValue = 16,
   PlaceholderText = 16,
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(num)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num
   end,
})

-- Jump Power Section
local JPSection = Testing:CreateSection("JumpPower Section")

-- JP Slider
local JPSlider = Testing:CreateSlider({
   Name = "jumpPower Slider",
   Range = {50, 300},
   Increment = 5,
   Suffix = "JumpPower",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})


-- JP Input
local JPInput = Testing:CreateInput({
   Name = "JumpPower Input",
   CurrentValue = 50,
   PlaceholderText = 50,
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(num)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = num
   end,
})

-- Label Section
local LabelSection = Testing:CreateSection("Example Label")

-- Example label lol
local ExampleLabel = Testing:CreateLabel("Example Label", "cloud")

-- Theme Changer Section
local ThemeChangerSection = Testing:CreateSection("Theme Changer")

-- Theme Changer
local themeChanger =
    Testing:CreateDropdown(
    {
        Name = "Theme Changer",
        Options = {"Default", "AmberGlow", "Amethyst", "Bloom", "DarkBlue", "Green", "Light", "Ocean", "Serenity", "AMOLED", "Purpleset", "AMOLEDPurple"},
        CurrentOption = {"Default"},
        MultipleOptions = false,
        Flag = "Dropdown1",
        Callback = function(option)
            Window.ModifyTheme(option[1])
        end
    }
)

local CodeAndDocsSection = Testing:CreateSection("Get code, and documents.")

-- Copy GitLink button
local GetGithubLol = Testing:CreateButton({
   Name = "Get code, and documents.",
   Callback = function()
       setclipboard("https://github.com/zmwtf1/Rayfield-Improved/tree/main")
   end,
})

-- EXAMPLE TAB --



-- LOAD CONFIG
Rayfield:LoadConfiguration()
-- LOAD CONFIG --