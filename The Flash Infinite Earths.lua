--The Flash Infinite Earths
if game.PlaceId == 3433421799 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PrecHub: The Flash: Infinite Earths", "Ocean")
    
    --Main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewButton("Kill All", "Kills everyone in the server!", function()F
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do 
            if v ~= game:GetService("Players").LocalPlayer then
                game:GetService("ReplicatedStorage").Events.AntiMonitor.InstantKill:FireServer(v.Character)
            end
        end
    end)
    MainSection:NewButton("Dampen Powers", "Dampens the powers of anyone around you!", function()
        game.ReplicatedStorage.Events.GraceCicada.DampenPowers:FireServer()
    end)
    MainSection:NewButton("Energy Burst", "Releases a burst of energy that damages! ", function()
        game.ReplicatedStorage.Events.GraceCicada.EnergyBurst:FireServer()
    end)
    MainSection:NewLabel("Elongated Man")
    MainSection:NewButton("Stretch Punch", "A long arm punch!", function()
        game.ReplicatedStorage.Events.ElongatedMan.StretchArm:FireServer()
    end)
     
    --Player
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Speed", "Makes you go zoom.", 5000, 0, function(s) -- 5000 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    PlayerSection:NewSlider("JumpPower", "A bit buggy at times, but should modify jump height.", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)
    PlayerSection:NewButton("Shield", "Puts a protective shield around you!", function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do 
            if v ~= game:GetService("Players").LocalPlayer then
                game:GetService("ReplicatedStorage").Events.AntiMonitor.Shield:FireServer(v.Character)
            end
        end
    end)
    PlayerSection:NewButton("Heal", "Heals you back to full health!", function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do 
			if v ~= game:GetService("Players").LocalPlayer then
				game:GetService("ReplicatedStorage").Events.AntiMonitor.Heal:FireServer(v.Character)
            end
        end
    end)
    
    --Misc
    local Misc = Window:NewTab("Misc")
    local MiscSection = Misc:NewSection("Misc")
    MiscSection:NewButton("Wave", "Activates Anti-Monitor wave (permanently)!", function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do 
            if v ~= game:GetService("Players").LocalPlayer then
                game:GetService("ReplicatedStorage").Events.AntiMonitor.Wave:FireServer(v.Character)
            end
        end
    end)
    MiscSection:NewButton("Speedforce Portal", "Opens a portal into the speedforce!", function()
        game.ReplicatedStorage.Events.Speedster.Speedforce:FireServer()
    end)
    MiscSection:NewButton("Vibe Portal", "Broke randomly lol.", function()
        game.ReplicatedStorage.Events.Vibe.VibePortal:FireServer()
    end)
    
    
    --Credits
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")

--No-Scope Arcade
if game.PlaceId == 6407649031 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PrecHub: No-Scope Arcade", "Ocean")
    
    --Main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewLabel("Triggerbot")
    MainSection:NewToggle("Triggerbot", "Automatically clicks when an enemy is on your crosshair!", function(state)
        if state then
            print("Toggle On")
        else
            print("Toggle Off")
        end
    end)


    --Visuals
    local Visuals = Window:NewTab("Visuals")
    local VisualsSection = Visuals:NewSection("ESP")

end

    