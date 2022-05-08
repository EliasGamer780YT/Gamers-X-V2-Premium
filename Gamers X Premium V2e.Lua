local muter = false
for i,v in next, game:GetService("CoreGui"):GetDescendants() do
    if v:IsA("ScreenGui") and v.Name =="Gamers X Premium V 3.1" then 
        v:Destroy()
    end
end

_G.NoBugs = true

local Meh = game.Players.LocalPlayer

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx   = library.new("Gamers X Premium V 3.1", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(0, 0, 0),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(0, 0, 0),
    LightContrast = Color3.fromRGB(0, 0, 0),
    DarkContrast = Color3.fromRGB(0, 0, 0),  
    TextColor = Color3.fromRGB(0, 0, 0)
}

local Skyy = game:GetService("CoreGui")["Gamers X Premium V 3.1"]

Skyy.Main.Glow.ImageColor3 = Color3.fromRGB(0, 255, 0)
-- first page
local page     = venyx:addPage("Home", 5012544693)
local section1 = page:addSection("Thanks for Purchase Gamers X Premium")
local section1 = page:addSection("Toggles And More")
---Collect Coins-
_G.Coin = true
section1:addToggle("Collect Coins", nil, function(value)
    if value == true then
        _G.Coin = true
        while _G.Coin == true do
            wait()
            if game:GetService("Workspace").GameStorage.Coins:FindFirstChild("Coin") then
                for _,f in pairs(game:GetService("Workspace").GameStorage.Coins.Coin:GetDescendants()) do  
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 0)  
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 1)
                end
            end
        end
    end
    if value == false then
        _G.Coin = true
    end
end)

ct={}
te=table.insert

local Player       = game.Players.LocalPlayer
local Char         = Player.Character
local settings     = {repeatamount = 1} 
_G.Dist            = 0
_G.SphereActivated = false 
setsimulationradius(math.huge,math.huge)
Char.Humanoid:UnequipTools()

te(ct,game:GetService("RunService").Stepped:Connect(function()
    local Player = game.Players.LocalPlayer
    local Char = Player.Character
    pcall(function()
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v ~= Player then 
                if v.Character.Humanoid.Health ~= 0 then 
                    if (v.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).Magnitude <= _G.Dist then 
                        for _,x in pairs(v.Character:GetChildren()) do 
                            if x:IsA("Part") then 
                                for i = 1,settings.repeatamount do 
                                    firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 0)
                                    firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end))
--kill aura-
section1:addToggle("Kill aura", nil, function(value)
    local z = game.Players.LocalPlayer.Character.Humanoid
    if value == true then
        _G.SphereActivated = true 
        _G.Dist = _G.Dist + 77.5
        game.StarterGui:SetCore("SendNotification", {
            Title = "Aura Enabled"; 
            Text     = "Script Enabled"; 
            Duration = 0.5;
        }) 
    end

    if value == false then
        _G.SphereActivated = false 
        _G.Dist = _G.Dist - 77.5
        game.StarterGui:SetCore("SendNotification", {
            Title = "Aura Disabled"; 
            Text  = "Script Disabled"; 
            Duration = 0.5;
        }) 
        for i,f in next, game:GetService("Workspace"):GetChildren() do
            if f.Name == 'Bruhh' then 
                f:Destroy()
            end
        end
        for i,v in pairs(game:GetService("CoreGui").RobloxGui.Modules:GetDescendants()) do 
            if v.Name == 'Sphere' then
                v:Destroy()
            end
        end
    end
end)
---------------------
if _G.SphereActivated then
    function Update()
        te(ct,game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)
            if tool:FindFirstChild("Handle") then
                Part                       = Instance.new("Part")
                Part.Name                  = ("Bruhh")
                Weld                       = Instance.new("Weld", workspace)
                Weld.Name                  = ("Bruhh")
                Part.Parent                = workspace
                Part.Transparency          = 1 
                Part.CanCollide            = false
                Sphere                     = Instance.new("SelectionSphere",game:GetService("CoreGui").RobloxGui.Modules)
                Sphere.Transparency        = 1
                Sphere.Name                = "Sphere"
                Sphere.SurfaceTransparency = 1
                Sphere.Adornee             = Part 
                Part.Massless              = true
                Part.Position              = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
                Weld.Part0                 = Part 
                Weld.Part1                 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
                te(ct,game:GetService("RunService").Stepped:Connect(function()
                    Part.Size = Vector3.new(_G.Dist,_G.Dist,_G.Dist)
                end))
            end
        end))
    end




    Update()



    game.Players.LocalPlayer.CharacterAdded:Connect(Update)
end
--Plataform--
-------------------
section1:addToggle("Platform", nil, function(value)
    if value == true then
        local baseplate    = Instance.new("Part")
        baseplate.Parent   = workspace
        baseplate.Name = "MomentoXD"
        baseplate.Transparency = 0.5
        baseplate.Size     = Vector3.new(800,1,800) -- change size
        baseplate.Anchored = true
        baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)
    end
    if value == false then
        game.Workspace["MomentoXD"]:Destroy()
    end
end)


--Infinity Jump--
_G.infinjump = false
section1:addToggle("infJump", nil, function(value)
    if value == true then
        _G.infinjump = true
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        Mouse.KeyDown:connect(function(k)
            if _G.infinjump then
                if k:byte() == 32 then
                    Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    Humanoid:ChangeState("Jumping")
                    wait()
                    Humanoid:ChangeState("Seated")
                end
            end

        end)
    end
    if value == false then
        if _G.infinjump == true then
            --        k = k:lower()
            _G.infinjump = false
        else

        end
    end
end)
section1:addToggle("RealisticMode (Mode RTX)", nil, function(value)
    local nah = game:GetService("Lighting")
    if value == true then
        nah.Ambient            = Color3.fromRGB(414, 54, 157)
        nah.Brightness         = ("1.5")
        nah.ClockTime          = ("7.92")
        nah.ColorShift_Bottom  = Color3.fromRGB(454, 354, 464)
        nah.ColorShift_Top     = Color3.fromRGB(144, 252, 51)
        nah.FogColor           = Color3.fromRGB(155, 191, 191)
        nah.FogEnd             = ("450")
        nah.FogStart           = ("4")
        nah.GeographicLatitude = ("8")
        nah.OutdoorAmbient     = Color3.fromRGB(444, 255, 255)
        if game:GetService("Workspace"):FindFirstChild("GameMusic") then
            game:GetService("Workspace").GameMusic.PlaybackSpeed = 0.8
        end
    end
    if value == false then
        nah.Ambient            = Color3.fromRGB(255, 174, 157)
        nah.Brightness         = ("1")
        nah.ClockTime          = ("7")
        nah.ColorShift_Bottom  = Color3.fromRGB(255, 255, 0)
        nah.ColorShift_Top     = Color3.fromRGB(255, 255, 0)
        nah.FogColor           = Color3.fromRGB(191, 191, 191)
        nah.FogEnd             = ("8000")
        nah.FogStart           = ("0")
        nah.GeographicLatitude = ("41.73")
        nah.OutdoorAmbient     = Color3.fromRGB(255, 255, 255)
        if game:GetService("Workspace"):FindFirstChild("GameMusic") then
            game:GetService("Workspace").GameMusic.PlaybackSpeed = 1
        end
    end
end)
--Bypass--
section1:addButton("Anticheats (Bypass)", function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
        local plr       = game:GetService("Players").LocalPlayer
        local workspace = game:GetService("Workspace")

        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
        plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
        wait()
        workspace:FindFirstChild("Local"):Destroy()
        workspace:FindFirstChild("Local"):Destroy()
        workspace:FindFirstChild("MobileFix"):Destroy()
        workspace:FindFirstChild("XboxFix"):Destroy()
        game.workspace.Borders.InvisibleBorder:remove()
        game.workspace.Lobby.KillPlates:remove()
        venyx:Notify("Bypassed", "Bypassed: true")

        plr.CharacterAdded:Connect(function()
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
            wait()
            workspace:FindFirstChild("Local"):Destroy()
            workspace:FindFirstChild("Local"):Destroy()
            workspace:FindFirstChild("MobileFix"):Destroy()
            workspace:FindFirstChild("XboxFix"):Destroy()
        end)
        venyx:Notify("Really", "Bypassed")           
    end
end)

--Re--
section1:addButton("Respawn", function()
    local Destroy = game.Destroy
    local Char    = game.Players.LocalPlayer.Character
    local Model   = Instance.new("Model");
    game.Players.LocalPlayer.Character = Model
    game.Players.LocalPlayer.Character = Char
    Destroy(Model);
    wait(game.Players.RespawnTime - 0.055);
    local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Char.Humanoid.Name = 1
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = Char
    l.Name = "Humanoid"
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject                      = Char
    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("Humanoid") 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix 
    wait(0.2)
    venyx:Notify("Character", "Respawned")
end)
--fling-
section1:addButton("Gamers X Fling", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EliasGamer780YT/Gamers-X-V2-Premium/main/GamersXFling.Lua", true))()
    print("Clicked")
    end)

--MainStuff--
local page = venyx:addPage("MainStuff", 5012544693)
local section2 = page:addSection("Attack And More")
--Fake AxE-
section2:addButton("FakeAxe", function()
    local Players       = game:GetService("Players")
    local localPlayer   = Players.LocalPlayer
    local backpack      = localPlayer:WaitForChild("Backpack")
    local tool          = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.CanBeDropped   = true
    tool.Parent         = backpack
    tool.Name           = "FakeAxe"
    tool.Equipped:Connect(function(mouse)
        mouse.Button1Down:Connect(function()
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
                if mouse.Target and mouse.Target.Parent then
                    local Adrix = {
                        [1] = mouse.Target
                    }

                    game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
                end
            end
        end)
    end)
end)
---Fake Block--
section2:addButton("FakeBlock", function()
    local Players       = game:GetService("Players")
    local localPlayer   = Players.LocalPlayer
    local backpack      = localPlayer:WaitForChild("Backpack")
    local tool          = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.CanBeDropped   = true
    tool.Parent         = backpack
    tool.Name           = "FakeBlock"
    tool.Equipped:Connect(function(mouse)
        mouse.Button1Down:Connect(function()
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
                if mouse.Target and mouse.Target.Parent then
                    game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
                    game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
                    game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
                    game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
                end
            end
        end)
    end)
end)

--Fix--
section2:addButton("Fix Remove SHield", function()
    for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
        if v:IsA("ForceField") then
            v:Destroy()
        end
    end
end)
--Shield God Mode--
section2:addButton(" God Mode Infinity Shield", function()
    local playerName = game.Players.LocalPlayer.Name

    game.Players.LocalPlayer.Character:FindFirstChild("Shield"):Activate()
    wait (1)
    game.Workspace:FindFirstChild(playerName).Shield.ShieldPotion:Destroy()
    print("Clicked")
    end)
--Anti ROund-
section2:addButton("Anti Round EndGame", function()
    if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
        ct    = {}
        game.StarterGui:SetCore("SendNotification", {Title = "Enabled"; Text = ""; Duration = 3;})    
        sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
        table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
            if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
                game.StarterGui:SetCore("SendNotification", {
                    Title    = "round finished"; 
                    Text     = ""; 
                    Duration = 3;
                })         
                for i,v in pairs(ct) do v:Disconnect() end
                sound:Destroy()
                wait(2.3)
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end
        end))
    else
        game.StarterGui:SetCore("SendNotification", {Title = "Really Executed"; Text = ""; Duration = 3;})    
    end
end)
--AntiFall-
section2:addButton(" AntiFall (J)", function()
    mousechanger = game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
        if k == "j" and muter == false then
            muter       = true
            local AntiFallX        = Instance.new("Part")
            AntiFallX.Parent       = workspace
            AntiFallX.Name         = "AntiFall"
            AntiFallX.Transparency = 0.7
            AntiFallX.BrickColor   = BrickColor.new("Pastel blue-green")
            AntiFallX.CanCollide   = false
            AntiFallX.Size         = Vector3.new(800,1,800) -- change size
            AntiFallX.Anchored     = true
            AntiFallX.Position     = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-120,0)
            wait()

            local AntiFall = workspace["AntiFall"]

            AntiFall.Touched:Connect(function(hit)
                local player = game.Players:GetPlayerFromCharacter(hit.Parent)
                player.Character.HumanoidRootPart.Velocity = Vector3.new(0,2,0) + player.Character.HumanoidRootPart.CFrame.lookVector*15
                player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0,15,0)
            end)

        elseif k  == "j" and muter == true then
            muter       = false
            for i,v in next, game.workspace:GetDescendants() do
                if v:IsA("Part") and v.Name =="AntiFall" then 
                    v:Destroy()
                end
            end
        end
    end)
    venyx:Notify("Active", "...")
end)

--FlingPLayers--
section2:addButton("FlingPlayersInRound", function()
    local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.01)
    ZZ = game:GetService('RunService').Stepped:connect(function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") then 
                v.CanCollide = false
            end
        end
    end)
    local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
    local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
    BG.P         = 9e4
    BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
    BV.velocity  = Vector3.new(0, 3.75, 0)
    BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
    wait()
    NoLol = game:GetService('RunService').Heartbeat:connect(function()
        for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
            if v:IsA("BasePart") and v.Name ~="Torso" then 
                v.Velocity = Vector3.new(0,-2333333,0)
            end
        end
    end)
    XD = game:GetService("Players").LocalPlayer

    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= XD.Name then
            if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
                wait(0.1)
                XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
                wait(0.1)
                XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
                wait(0.1)
            end 
        end    
    end
    wait(0.2)
    ZZ:Disconnect()

    NoLol:Disconnect()
    wait(0.1)
    BG:Destroy()
    BV:Destroy()
    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
    wait()
    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false
end)
local section2 = page:addSection("Reachs And AntiHitbox & AntiReach")
--Reach V1--
section2:addButton("Reach V1", function()
    local active = true
local trueActive = true
local reachType = "Sphere"
local dmgEnabled = true
local visualizerEnabled = false
 
local visualizer = Instance.new("Part")
visualizer.BrickColor = BrickColor.Blue()
visualizer.Transparency = 0.6
visualizer.Anchored = true
visualizer.CanCollide = false
visualizer.Size = Vector3.new(0.5,0.5,0.5)
visualizer.BottomSurface = Enum.SurfaceType.Smooth
visualizer.TopSurface = Enum.SurfaceType.Smooth
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999999999
ScreenGui.ResetOnSpawn = false
 
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0, 0, 0.600000024, 0)
Frame.Size = UDim2.new(0.150000006, 0, 0.300000012, 0)
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Reach:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
 
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.600000024, 0, 0, 0)
TextBox.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "3.5"
TextBox.TextColor3 = Color3.fromRGB(255, 76, 76)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
 
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.200000003, 0)
TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Shape:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
 
TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Damage:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
 
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 0, 0.600000024, 0)
TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Visualizer:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
 
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 1)
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0, 0, 1, 0)
TextButton.Size = UDim2.new(1, 0, 0.150000006, 0)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Kill Script"
TextButton.TextColor3 = Color3.fromRGB(222, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
 
Frame_2.Parent = Frame
Frame_2.Active = true
Frame_2.AnchorPoint = Vector2.new(0, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.725000024, 0, 0.699999988, 0)
Frame_2.Size = UDim2.new(0, 25, 0, 25)
Frame_2.ZIndex = 5
 
Frame_3.Parent = Frame_2
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
Frame_3.BorderSizePixel = 0
Frame_3.LayoutOrder = 1
Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
 
Frame_4.Parent = Frame
Frame_4.Active = true
Frame_4.AnchorPoint = Vector2.new(0, 0.5)
Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.725000024, 0, 0.5, 0)
Frame_4.Size = UDim2.new(0, 25, 0, 25)
Frame_4.ZIndex = 5
 
Frame_5.Parent = Frame_4
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
Frame_5.BorderSizePixel = 0
Frame_5.LayoutOrder = 1
Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_5.Size = UDim2.new(1, 0, 1, 0)
 
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextButton_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Sphere"
TextButton_2.TextColor3 = Color3.fromRGB(255, 76, 76)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
 
repeat wait() until game.Players.LocalPlayer
ScreenGui.Parent = game:GetService("CoreGui")
 
 
 
Frame_4.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.MouseButton1 then
		dmgEnabled = not dmgEnabled
		local goal = {Size = UDim2.new(0,0,0,0)}
		if dmgEnabled then
			goal = {Size = UDim2.new(1,0,1,0)}
		end
		game:GetService("TweenService"):Create(Frame_5,TweenInfo.new(0.12,Enum.EasingStyle.Quad),goal):Play()
	end
end)
Frame_2.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.MouseButton1 then
		visualizerEnabled = not visualizerEnabled
		local goal = {Size = UDim2.new(0,0,0,0)}
		if visualizerEnabled then
			goal = {Size = UDim2.new(1,0,1,0)}
		end
		game:GetService("TweenService"):Create(Frame_3,TweenInfo.new(0.12,Enum.EasingStyle.Linear),goal):Play()
	end
end)
TextButton_2.MouseButton1Click:connect(function()
	if reachType == "Sphere" then
		reachType = "Line"
	else
		reachType = "Sphere"
	end
	TextButton_2.Text = reachType
end)
TextButton.MouseButton1Click:connect(function()
	trueActive = false
	ScreenGui:Destroy()
end)
game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
	if gpe then return end
	if inp.KeyCode == Enum.KeyCode.F3 then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)
 
local plr = game.Players.LocalPlayer
 
local function onHit(hit,handle)
    local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
	    if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
		if dmgEnabled then
	        for _,v in pairs(hit.Parent:GetChildren()) do
	            if v:IsA("Part") then
	                firetouchinterest(v,handle,0)
	                firetouchinterest(v,handle,1)
	            end
			end
		else
			firetouchinterest(hit,handle,0)
			firetouchinterest(hit,handle,1)
		end
    end
end
 
local function getWhiteList()
    local wl = {}
    for _,v in pairs(game.Players:GetPlayers()) do
        if v ~= plr then
            local char = v.Character
            if char then
                for _,q in pairs(char:GetChildren()) do
                    if q:IsA("Part") then
                        table.insert(wl,q)
                    end
                end
            end
        end
    end
    return wl
end
 
game:GetService("RunService").RenderStepped:connect(function()
    if not active or not trueActive then return end
	local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	if not s then visualizer.Parent = nil end
    if s then
        local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
		if handle then
			if visualizerEnabled then
				visualizer.Parent = workspace
			else
				visualizer.Parent = nil
			end
			local reach = tonumber(TextBox.Text)
			if reach then
				if reachType == "Sphere" then
					visualizer.Shape = Enum.PartType.Ball
					visualizer.Size = Vector3.new(reach,reach,reach)
					visualizer.CFrame = handle.CFrame
		            for _,v in pairs(game.Players:GetPlayers()) do
		                local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
		                if hrp and handle then
		                    local mag = (hrp.Position-handle.Position).magnitude
		                    if mag <= reach then
		                        onHit(hrp,handle)
		                    end
		                end
					end
				elseif reachType == "Line" then
					local origin = (handle.CFrame*CFrame.new(0,0,-2)).p
		    		local ray = Ray.new(origin,handle.CFrame.lookVector*-reach)
					local p,pos = workspace:FindPartOnRayWithWhitelist(ray,getWhiteList())
					visualizer.Shape = Enum.PartType.Block
					visualizer.Size = Vector3.new(1,0.8,reach)
					visualizer.CFrame = handle.CFrame*CFrame.new(0,0,(reach/2)+2)
		    		if p then
		    		    onHit(p,handle)
		    		else
		    		    for _,v in pairs(handle:GetTouchingParts()) do
		    		        onHit(v,handle)
		    		    end
		    		end
				end
			end
        end
    end
end)
    print("Clicked")
    end)
    --Reach v2
    section2:addButton("Reach V2", function()
-- SUB TO TOGACHI_PLAYZ: https://www.youtube.com/channel/UC4M04Iwj1Y6MRTSJIx0B-8A
_G.Reach         = "11"
_G.KeyBindHigher = "r"
_G.KeyBindLower  = "e"
_G.ReachOff      = false -- Set this to true if you want to disable the reach lol
 
game:GetService"RunService".Stepped:Connect(function()
    if _G.ReachOff then return end  
    pcall(function()
      Sword = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("Left Arm") then
             if (game.Players.LocalPlayer.Character.Torso.Position - v.Character.Torso.Position).Magnitude <= _G.Reach then
                   v.Character['Left Arm']:BreakJoints()
                   v.Character['Left Arm'].Transparency = 1
                   v.Character['Left Arm'].CanCollide = false
                   v.Character['Left Arm'].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1,0,-3.5)
                   v.Character['Left Leg']:BreakJoints()
                   v.Character['Left Leg'].Transparency = 1
                   v.Character['Left Leg'].CanCollide = false
                   v.Character['Left Leg'].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1,0,-3.5)
               end
           end
       end
    end)
end)
 
local Mouse = game.Players.LocalPlayer:GetMouse()
    Mouse.KeyDown:Connect(function(key)
        if key == _G.KeyBindHigher then
                 _G.Reach = _G.Reach + 1 
                 game.StarterGui:SetCore("SendNotification", {
                 Title = "Togachi_PlayZ REACH";
                 Text = "Your Reach is now " .. _G.Reach;
                 Icon = "";
                 Duration = 1;})
             end
          end)
 
 
     local Mouse = game.Players.LocalPlayer:GetMouse()
    Mouse.KeyDown:Connect(function(key)
        if key == _G.KeyBindLower then
                 _G.Reach = _G.Reach - 1 
                 game.StarterGui:SetCore("SendNotification", {
                 Title = "Togachi_PlayZ REACH";
                 Text = "Your Reach is now " .. _G.Reach;
                 Icon = "";
                 Duration = 1;})
             end
          end)
        print("Clicked")
        end)

        --Reach V3--
        section2:addButton("Reach V3 (ANTIHITBOX)", function()
            local active = true
            local trueActive = true
            local reachType = "Sphere"
            local dmgEnabled = true
            local visualizerEnabled = false
        
            local visualizer = Instance.new("Part")
            visualizer.BrickColor = BrickColor.new("Lime green")
            visualizer.Transparency = 0.5
            visualizer.Anchored = true
            visualizer.CanCollide = false
            visualizer.Size = Vector3.new(0.5,0.5,0.5)
            visualizer.BottomSurface = Enum.SurfaceType.Smooth
            visualizer.TopSurface = Enum.SurfaceType.Smooth
        
            local ScreenGui = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")
            local TextLabel_2 = Instance.new("TextLabel")
            local TextLabel_3 = Instance.new("TextLabel")
            local TextLabel_4 = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local Frame_2 = Instance.new("Frame")
            local Frame_3 = Instance.new("Frame")
            local Frame_4 = Instance.new("Frame")
            local Frame_5 = Instance.new("Frame")
            local TextButton_2 = Instance.new("TextButton")
        
            local UICorner  = Instance.new("UICorner")
            local UICorner2 = Instance.new("UICorner")
            local UICorner3 = Instance.new("UICorner")
            local UICorner4 = Instance.new("UICorner")
            local UICorner5 = Instance.new("UICorner")
            local UICorner6 = Instance.new("UICorner")
        
            --Properties:
        
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ScreenGui.DisplayOrder = 999999999
            ScreenGui.ResetOnSpawn = false
        
            Frame.Parent = ScreenGui
            Frame.AnchorPoint = Vector2.new(0, 0.5)
            Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Frame.BackgroundTransparency = 0.300
            Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BorderSizePixel = 4
            Frame.Position = UDim2.new(0, 0, 0.600000024, 0)
            Frame.Size = UDim2.new(0.150000006, 0, 0.300000012, 0)
        
            UICorner.Parent = Frame
        
            TextLabel.Parent = Frame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
            TextLabel.Font = Enum.Font.Arial
            TextLabel.Text = "Reach:"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextWrapped = true
        
            UICorner2.Parent = TextLabel
        
            TextBox.Parent = Frame
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Position = UDim2.new(0.600000024, 0, 0, 0)
            TextBox.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
            TextBox.Font = Enum.Font.Arial
            TextBox.Text = "3.5"
            TextBox.TextColor3 = Color3.fromRGB(255, 76, 76)
            TextBox.TextScaled = true
            TextBox.TextSize = 14.000
            TextBox.TextWrapped = true
        
            TextLabel_2.Parent = Frame
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0, 0, 0.200000003, 0)
            TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
            TextLabel_2.Font = Enum.Font.Arial
            TextLabel_2.Text = "Shape:"
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextScaled = true
            TextLabel_2.TextSize = 14.000
            TextLabel_2.TextWrapped = true
        
            TextLabel_3.Parent = Frame
            TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_3.BackgroundTransparency = 1.000
            TextLabel_3.Position = UDim2.new(0, 0, 0.400000006, 0)
            TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
            TextLabel_3.Font = Enum.Font.Arial
            TextLabel_3.Text = "Damage:"
            TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_3.TextScaled = true
            TextLabel_3.TextSize = 14.000
            TextLabel_3.TextWrapped = true
        
            TextLabel_4.Parent = Frame
            TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_4.BackgroundTransparency = 1.000
            TextLabel_4.Position = UDim2.new(0, 0, 0.600000024, 0)
            TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
            TextLabel_4.Font = Enum.Font.Arial
            TextLabel_4.Text = "Visualizer:"
            TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_4.TextScaled = true
            TextLabel_4.TextSize = 14.000
            TextLabel_4.TextWrapped = true
        
            TextButton.Parent                 = Frame
            TextButton.AnchorPoint            = Vector2.new(0, 1)
            TextButton.BackgroundColor3       = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Position               = UDim2.new(0, 0, 1, 0)
            TextButton.Size                   = UDim2.new(1, 0, 0.150000006, 0)
            TextButton.Font                   = Enum.Font.Arial
            TextButton.Text                   = "Close"
            TextButton.TextColor3             = Color3.fromRGB(222, 0, 0)
            TextButton.TextScaled             = true
            TextButton.TextSize               = 14.000
            TextButton.TextWrapped            = true
        
            Frame_2.Parent = Frame
            Frame_2.Active = true
            Frame_2.AnchorPoint = Vector2.new(0, 0.5)
            Frame_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            Frame_2.BorderSizePixel = 0
            Frame_2.Position = UDim2.new(0.725000024, 0, 0.699999988, 0)
            Frame_2.Size = UDim2.new(0, 25, 0, 25)
            Frame_2.ZIndex = 5
        
            UICorner3.Parent = Frame_2
        
            Frame_3.Parent = Frame_2
            Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
            Frame_3.BorderSizePixel = 0
            Frame_3.LayoutOrder = 1
            Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
        
            UICorner4.Parent = Frame_3
        
            Frame_4.Parent = Frame
            Frame_4.Active = true
            Frame_4.AnchorPoint = Vector2.new(0, 0.5)
            Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            Frame_4.BorderSizePixel = 0
            Frame_4.Position = UDim2.new(0.725000024, 0, 0.5, 0)
            Frame_4.Size = UDim2.new(0, 25, 0, 25)
            Frame_4.ZIndex = 5
        
            UICorner5.Parent = Frame_4
        
            Frame_5.Parent = Frame_4
            Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
            Frame_5.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
            Frame_5.BorderSizePixel = 0
            Frame_5.LayoutOrder = 1
            Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
            Frame_5.Size = UDim2.new(1, 0, 1, 0)
        
            UICorner6.Parent = Frame_5
        
            TextButton_2.Parent = Frame
            TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_2.BackgroundTransparency = 1.000
            TextButton_2.Position = UDim2.new(0.600000024, 0, 0.200000003, 0)
            TextButton_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
            TextButton_2.Font = Enum.Font.SourceSans
            TextButton_2.Text = "Sphere"
            TextButton_2.TextColor3 = Color3.fromRGB(255, 76, 76)
            TextButton_2.TextScaled = true
            TextButton_2.TextSize = 14.000
            TextButton_2.TextWrapped = true
        
            repeat wait() until game.Players.LocalPlayer
            ScreenGui.Parent = game:GetService("CoreGui")
        
        
        
            Frame_4.InputBegan:connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                    dmgEnabled = not dmgEnabled
                    local goal = {Size = UDim2.new(0,0,0,0)}
                    if dmgEnabled then
                        goal = {Size = UDim2.new(1,0,1,0)}
                    end
                    game:GetService("TweenService"):Create(Frame_5,TweenInfo.new(0.12,Enum.EasingStyle.Quad),goal):Play()
                end
            end)
            Frame_2.InputBegan:connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                    visualizerEnabled = not visualizerEnabled
                    local goal = {Size = UDim2.new(0,0,0,0)}
                    if visualizerEnabled then
                        goal = {Size = UDim2.new(1,0,1,0)}
                    end
                    game:GetService("TweenService"):Create(Frame_3,TweenInfo.new(0.12,Enum.EasingStyle.Linear),goal):Play()
                end
            end)
            TextButton_2.MouseButton1Click:connect(function()
                if reachType == "Sphere" then
                    reachType = "Line"
                else
                    reachType = "Sphere"
                end
                TextButton_2.Text = reachType
            end)
            TextButton.MouseButton1Click:connect(function()
                trueActive = false
                ScreenGui:Destroy()
            end)
            game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
                if gpe then return end
                if inp.KeyCode == Enum.KeyCode.F3 then
                    ScreenGui.Enabled = not ScreenGui.Enabled
                end
            end)
        
            local plr = game.Players.LocalPlayer
        
            local function onHit(hit,handle)
                local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
                if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
                    if dmgEnabled then
                        for _,v in pairs(hit.Parent:GetChildren()) do
                            if v:IsA("Part") then
                                firetouchinterest(v,handle,0)
                                firetouchinterest(v,handle,1)
                            end
                        end
                    else
                        firetouchinterest(hit,handle,0)
                        firetouchinterest(hit,handle,1)
                    end
                end
            end
        
            local function getWhiteList()
                local wl = {}
                for _,v in pairs(game.Players:GetPlayers()) do
                    if v ~= plr then
                        local char = v.Character
                        if char then
                            for _,q in pairs(char:GetChildren()) do
                                if q:IsA("Part") then
                                    table.insert(wl,q)
                                end
                            end
                        end
                    end
                end
                return wl
            end
        
            game:GetService("RunService").RenderStepped:connect(function()
                if not active or not trueActive then return end
                local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
                if not s then visualizer.Parent = nil end
                if s then
                    local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
                    if handle then
                        if visualizerEnabled then
                            visualizer.Parent = workspace
                        else
                            visualizer.Parent = nil
                        end
                        local reach = tonumber(TextBox.Text)
                        if reach then
                            if reachType == "Sphere" then
                                visualizer.Shape = Enum.PartType.Ball
                                visualizer.Size = Vector3.new(reach,reach,reach)
                                visualizer.CFrame = handle.CFrame
                                for _,v in pairs(game.Players:GetPlayers()) do
                                    local hrp = v.Character and v.Character:FindFirstChild("Head")
                                    if hrp and handle then
                                        local mag = (hrp.Position-handle.Position).magnitude
                                        if mag <= reach then
                                            onHit(hrp,handle)
                                        end
                                    end
                                end
                            elseif reachType == "Line" then
                                local origin = (handle.CFrame*CFrame.new(0,0,0)).p
                                local ray = Ray.new(origin,handle.CFrame.lookVector*-reach)
                                local p,pos = workspace:FindPartOnRayWithWhitelist(ray,getWhiteList())
                                visualizer.Shape  = Enum.PartType.Block
                                visualizer.Size   = Vector3.new(1,1,4)
                                visualizer.CFrame = handle.CFrame*CFrame.new(0,0,-2)
                                if p then
                                    onHit(p,handle)
                                else
                                    for _,v in pairs(handle:GetTouchingParts()) do
                                        onHit(v,handle)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            print("Clicked")
            end)
            ---AntiHitbox v1--
            section2:addButton("AntiHb & Anti REACH V1", function()
                if game.Players.LocalPlayer.Character ~= nil then
                    local char = game.Players.LocalPlayer.Character
                    char.Parent = nil
                    char.HumanoidRootPart:Destroy()
                    char.Parent = workspace
                end
            end)
            ---AntiFire Reach-
            section2:addButton("AntiHitbox V2", function()
                if game.Players.LocalPlayer.Character ~= nil then
                    local char = game.Players.LocalPlayer.Character
                    char.Parent = nil
                   char["Left Arm"]:Destroy()
            char["Left Leg"]:Destroy()
                    char.Parent = workspace
                end
                print("Clicked")
                end)
--Undermine Aura-
_G.Undermineh = true
section2:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
    if _G.NoBugs == true then
        if _G.Undermineh == true then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
                function onTouched(part)       
                    local h = part
                    if h.Name == "Block" then
                        game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
                    end
                end
                Partz              = Instance.new("Part")
                Partz.Parent       = workspace
                Partz.Transparency = 1
                Partz.CanCollide   = false
                Partz.Massless     = true
                Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
                Partz.Size         = Vector3.new(15,20,15)

                local light         = Instance.new("SelectionBox")
                light.Adornee       = Partz
                light.LineThickness = 0.05
                light.Color3        = Color3.fromRGB(0, 255, 0)
                light.Parent        = Partz
                light.Name          = "SelectBox"

                local bruh = Partz.Touched:connect(onTouched)

                wait()
                bruh:Disconnect()
                Partz:Destroy()
            end
        end
    end
end)
--Sliders
local page = venyx:addPage("SlidersStuff", 5012544693)
local section2 = page:addSection("Sliders ")
---WalkSpeed
section2:addSlider("Walkspeed", 16, 16, 100, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

section2:addSlider("JumpPower", 50, 50, 100, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)

section2:addSlider("Hitbox", 2, 2, 30, function(value)
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            v.Character.HumanoidRootPart.Transparency = 0.5
            v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
            v.Character.HumanoidRootPart.Material     = "Plastic"
            v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Really blue")
            v.Character.HumanoidRootPart.CanCollide   = false
        end
    end
end)
--Notifications--
section2:addButton("HealthNotification", function()
    local z = game.Players.LocalPlayer.Character.Humanoid


    game.StarterGui:SetCore("SendNotification", {
        Title    = "YourHealth is: "..z.Health; 
        Text     = "MaxHealth: "..z.MaxHealth; 
        Duration = 3;
    })  
end)

local page = venyx:addPage("SPAMS", 5012544693)
local section3 = page:addSection("SPAMS MESSAGE ")
--Toxic--
section3:addButton("Toxic", function()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
end)
section3:addButton("love Paragraph", function()
    local args = {
        [1] = "verything you say makes me so ahhh. The way you talk sounds so formal and I really love it. ",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = " I didn't believe in love at first sight until we started talking. You truly are someone different. You always encourage me and it makes me smile so genuinely.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I'm sorry I'm so awkward around you you're just like so amazing and so precious please don't ever hurt yourself it's not worth it. Without you the world would be so bleak.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I'm pretty sure you like drawing too, that makes me love you even more. There's like nothing bad about you.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I don't get how you're so perfect. You're literally more perfect than the person who I thought was the most perfect person ever is",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "No one is as good as you, literally no one.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "Your sense of humour, your music taste, your personality, your sweet little compliments.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "Agh everything makes me so happy. You as a whole make me so happy. I love you so much even if you'll never know how I truly feel.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "If you think you don't deserve love and help thats so stupid you literally deserve every last thing that anyone gives you you're literally better than everyone and everything",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "You make me feel like I'm the most special person in the world, but at the same time you probably feel horrible and it breaks my heart.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I only want the best for you and for you to be happy no matter what it takes. ",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I'll do anything to make you happy, anything, like seriously please just be happy and know you're loved you're the best person to ever be alive and I don't want you to die ever.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I really love you I'm not just saying this. Please tell me when something's wrong I'm here to support you in all your life choices.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I'm here when you need someone to cry to. I'm not gonna judge you. Real friends don't judge people",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "You're absolutely wonderful even if you don't think so AND YOU'RE NOT UGLY YOU'RE SO CUTE.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "Looks don't matter it's what's in the heart and I can tell you're a really sweet person who puts their friends above others.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "You probably think your friends deserve to be happy and you don't, but honestly you deserve happiness the most.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "I'm not sad I'm not struggling with anything. You need to realise that it's not only your friends that matter.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "You do too. You matter the most to me, out of anyone.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = "You're happiness comes first. If you're not happy then you're not in a position to make your friends happy. Please be happy always. ",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait (2)

    local args = {
        [1] = " I wanna see you smile. I wanna know that you're really happy because you seem to be going through a hard time even though you don't show it and I really want to help.",
        [2] = "All"
    }

    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    print("Clicked")
    end)
    --Extras
    local page = venyx:addPage("Extras", 5012544693)
    local section4 = page:addSection("Extras")
    section4:addButton("Armor Troll", function()
        local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local character = game.Players.LocalPlayer.Character 
        character.HumanoidRootPart.CFrame = CFrame.new(-11,265,61)
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
        wait(0.1)
        character.Chest:Destroy()
        wait(0.1)
        character.Arm1:Destroy()
        wait(0.1)
        character.Arm2:Destroy()
        wait(0.1)
        character.Leg1:Destroy()
        wait(0.1)
        character.Leg2:Destroy()
        print("Clicked")
        end)


--AntiVoidKill--
section4:addButton("AntiBucleVoidKill", function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)
--EquiPtoools-
section4:addButton("Equiptools", function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end)
--AntiAfk--
section4:addButton("Anti-AFK", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    print("Clicked")
    end)
  
    section4:addButton("Set-Up Armor", function()
        local priorpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               wait(0.01)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                   CFrame.new(-11.0000038, 264, 61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
               wait(0.5)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                   CFrame.new(12, 263.5, 61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
               wait(0.5)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = priorpos
       print("Clicked")
       end)
       --FARMWINS--
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetClosest()
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then
        return
    end

    local TargetDistance = math.huge
    local Target

    for i, v in ipairs(Players:GetPlayers()) do
        if
            v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
                v.Character:FindFirstChild("Sword") or
                v.Backpack:FindFirstChild("Sword")
         then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end

    return Target
end
--Farmwins--
section4:addToggle("AutoFarm", nil, function(value)
    _G.toggled = value
   if value == true then
    while _G.toggled == true do 
        wait(0.5)
    if GetClosest() == nil then
        for i, v in pairs(game:GetService("Workspace").GameStorage.Coins:GetChildren()) do
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 190, 0)
        end
    end
    if GetClosest().Character.HumanoidRootPart.Position.Y <= 130 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 185, 0)
    end
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
        game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
            game.Players.LocalPlayer.Character
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
        game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        GetClosest().Character.HumanoidRootPart.CFrame - Vector3.new(0, 5.3, 0) +
        GetClosest().Character.HumanoidRootPart.CFrame.lookVector * -4.005

        if _G.toggled == false then 
            break end
   end

end

   if value == false then
    print("bruh")
   end
end)
       local section4 = page:addSection("FE Scripts")
--Spy Ware-
section4:addButton("Gamers X Chat Private", function()
--This script reveals ALL hidden messages in the default chat

enabled = true --chat "/Gamers X" to toggle!
spyOnMyself = true --if true will check your messages too
public = false --if true will chat the logs publicly (fun, risky)
publicItalics = true --if true will use /me to stand out
privateProperties = { --customize private logs
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}


local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/Gamers X" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{Gamers "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{Gamers X} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{Gamers X "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
        print("Clicked")
        end)

        --Dex--
        section4:addButton("DEX V2", function()
          --credits to infinite yield fe creators
--it may take a while to load plz be patient if the game isn't small
-- btw the comment "sirhurt is retarded" isn't made by me, check the source here ok https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil
if (not is_sirhurt_closure) and (syn and syn.protect_gui) then --sirhurt is retarded
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = game:GetService("CoreGui")
	PARENT = Main
elseif PROTOSMASHER_LOADED and get_hidden_gui then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = get_hidden_gui()
	PARENT = Main
--elseif elysianexecute and gethui then
--	local Main = Instance.new("ScreenGui")
--	Main.Name = randomString()
--	Main.Parent = gethui()
--	PARENT = Main
elseif game:GetService("CoreGui"):FindFirstChild('RobloxGui') then
	PARENT = game:GetService("CoreGui").RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = game:GetService("CoreGui")
	PARENT = Main
end

if PARENT:FindFirstChild'Dex' then
	PARENT.Dex:Destroy();
end

local Dex = game:GetObjects("rbxassetid://3567096419")[1]
Dex.Name = 'Dex'
Dex.Parent = PARENT
	
local function Load(Obj)
	local function GiveOwnGlobals(Func, Script)
		local Fenv = {}
		local RealFenv = {script = Script}
		local FenvMt = {}
		FenvMt.__index = function(a,b)
			if RealFenv[b] == nil then
				return getfenv()[b]
			else
				return RealFenv[b]
			end
		end
		FenvMt.__newindex = function(a, b, c)
			if RealFenv[b] == nil then
				getfenv()[b] = c
			else
				RealFenv[b] = c
			end
		end
		setmetatable(Fenv, FenvMt)
		setfenv(Func, Fenv)
		return Func
	end
	local function LoadScripts(Script)
		if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
			spawn(function()
				GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
			end)
		end
	    for i,v in pairs(Script:GetChildren()) do
			LoadScripts(v)
		end
	end
	LoadScripts(Obj)
end
	
Load(Dex)
            print("Clicked")
            end)
            section4:addButton("FE HATS", function()
                loadstring(game:HttpGet("https://pastebin.com/raw/4B4fktPS", true))()
                print("Clicked")
                end)

                
            --Barrier----
--Barrier and undermine
local section4 = page:addSection("Barrier & Undermine Block")
--Barrier
section4:addButton("Barrier", function()
    function onTouched(part)       
        local h = part
        if h.Name == "Block" then
            game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
        end
    end
    Partz              = Instance.new("Part")
    Partz.Parent       = workspace
    Partz.Transparency = 1
    Partz.CanCollide   = false
    Partz.Massless     = true
    Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
    Partz.Size         = Vector3.new(8,27,1)
    Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

    local light         = Instance.new("SelectionBox")
    light.Adornee       = Partz
    light.LineThickness = 0.05
    light.Color3        = Color3.fromRGB(17, 17, 257)
    light.Parent        = Partz
    light.Name          = "SelectBox"



    local bruh = Partz.Touched:connect(onTouched)
    wait()
    bruh:Disconnect()
    Partz:Destroy()
end)
--Undermine barrier--
section4:addButton("Undermine Barrier", function()
    if _G.NoBugs == true then
        function onTouched(part)       
            local h = part
            if h.Name == "Block" then
                game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
            end
        end
        Partz              = Instance.new("Part")
        Partz.Parent       = workspace
        Partz.Transparency = 1
        Partz.CanCollide   = false
        Partz.Massless     = true
        Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
        Partz.Size         = Vector3.new(15,20,15)

        local light         = Instance.new("SelectionBox")
        light.Adornee       = Partz
        light.LineThickness = 0.05
        light.Color3        = Color3.fromRGB(0, 255, 0)
        light.Parent        = Partz
        light.Name          = "SelectBox"

        local bruh = Partz.Touched:connect(onTouched)

        wait()
        bruh:Disconnect()
        Partz:Destroy()
    end
end)
--Free Roms-
section4:addButton("Free Vips", function()
    AdriPart = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]
    AdriPart:Clone().Parent = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter
    game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]:Destroy()
    wait()
    game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"].Touched:Connect(function(hit)
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
    end)

    AdriPart2 = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]
    AdriPart2:Clone().Parent = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter
    game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]:Destroy()
    wait()
    game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"].Touched:Connect(function(hit)
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
    end)  
    venyx:Notify("Enabled", "FreeVipsRooms")
end)


---Teleprts--
local section4 = page:addSection("Teleports")

section4:addButton("Lobby", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

section4:addButton("Vip", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

section4:addButton("Mega vip", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

section4:addButton("Middle", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)
--themes-
-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(theme, color, function(color3)
        venyx:setTheme(theme, color3)
    end)
end
--Credits--
local page = venyx:addPage("Credits", 5012544693)
local section5 = page:addSection("Credits:")
local section5 = page:addSection(" Scripts Made By : EliasWhiteShadow#9022")

local section5 = page:addSection("Hi " .. Meh.Name)
local section5 = page:addSection("More")
section5:addButton("Exit", function()
    venyx:Notify("Bye bye", "c:")
    wait(0.4)
    _G.Undermineh         = false
    _G.Coin            = true
    _G.UWU             = false
    _G.infinjump       = false
    _G.SphereActivated = false 
    _G.Dist            = 0
    _G.toggled         = true
    for i,v in pairs(ct) do v:Disconnect() end
    for i,v in next, game:GetService("CoreGui"):GetDescendants() do
        if v:IsA("ScreenGui") and v.Name =="Gamers X Premium V 3.1" then 
            v:Destroy() 
        end
    end
end)
section5:addButton("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
section5:addKeybind("Toggle Keybind", Enum.KeyCode.LeftControl, function()
    venyx:toggle()
end, function()
end)
section5:addButton("ReloadScript", function()
    _G.Undermineh         = false
    _G.Coin            = true
    _G.UWU             = false
    _G.infinjump       = false
    _G.SphereActivated = false 
    _G.Dist            = 0
    _G.toggled         = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/EliasGamer780YT/Gamers-X-V2-Premium/main/Gamers%20X%20Premium%20V2a.Lua"))()
     for i,v in pairs(ct) do v:Disconnect() end
     print("ReloadScript Not Working :( I'm Sorry :,v")
     venyx:Notify("Reload Script Not Working :( i'm Sorry :,v")
end)
--Commands-
game.Players.LocalPlayer.Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/Lag" then
        loadstring(game:HttpGet("https://paste.gg/p/anonymous/d3492bd620bd4c46b54680ac80b0fa0d/files/161ddd9c992c4ceba3c298458d45188a/raw", true))()
      end
   end)
   game.Players.LocalPlayer.Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/KIA" then
  --// Setting \\--
local range = 15
 
--// Variable \\--
local player = game:GetService("Players").LocalPlayer
 
--// Script \\--
game:GetService("RunService").RenderStepped:Connect(function()
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then
                        firetouchinterest(tool.Handle,v,0)
                        firetouchinterest(tool.Handle,v,1)
                    end
                end
            end
        end
    end
end)
      end
   end)

   game.Players:WaitForChild("Jonathan342820")
venyx:Notify("Elias ta en partida", "Conche Tu Mare Vali D:")
---XD-
game.Players["Jonathan342820"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/e kick" then

        game.StarterGui:SetCore("SendNotification", {
            Title    = "HAHAHAHAHAHAHA";
            Text     = "HAHAHAHAHAHAHAHA";
            Duration = 10;
        })
        wait(3)
        game:Shutdown()
    end
end)
