
--GAMERS X PREMIUM-
--BY EliasShadowXx



local muter = false
for i,v in next, game:GetService("CoreGui"):GetDescendants() do
    if v:IsA("ScreenGui") and v.Name =="Gamers X Premium V 5.1" then 
        v:Destroy()
    end
end

_G.NoBugs = true

local Meh = game.Players.LocalPlayer

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx   = library.new("Gamers X Premium V 5.1", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(0, 0, 0),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(0, 0, 0),
    LightContrast = Color3.fromRGB(0, 0, 0),
    DarkContrast = Color3.fromRGB(0, 0, 0),  
    TextColor = Color3.fromRGB(0, 0, 0)
}

local Skyy = game:GetService("CoreGui")["Gamers X Premium V 5.1"]

Skyy.Main.Glow.ImageColor3 = Color3.fromRGB(255, 14, 14)
-- first page
local page     = venyx:addPage("Home", 5012544693)
local section1 = page:addSection("Thanks for Purchase Gamers X Premium")
local section1 = page:addSection("Toggles And Button")
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
--Botones
local section1 = page:addSection("Buttons Normal ")
--Click Tp-
section1:addButton("Click Tp X", function()
--click to tp
local Imput = game:GetService("UserInputService")
local Plr = game:service'Players'.LocalPlayer
local Mouse = Plr:GetMouse()

function To(position)
    local Chr = Plr.Character
    if Chr ~= nil then
        Chr:MoveTo(position)
    end
end

Imput.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.X) then
        To(Mouse.Hit.p)
    end
end)

    print("Clicked")
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
    end)
    ---cordenada
    section1:addButton("Gamers X Cordenates", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EliasGamer780YT/Gamers-X-V2-Premium/main/GamersXCordenates.Lua", true))()
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
---AutofarmCoins Miner-
section2:addButton("AutoFarm Coin Island Miner", function()
    local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

local stuff = workspace:getDescendants()
for i=1,#stuff do
if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
repeat
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
    print("Clicked")
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
local section4 = page:addSection("SPAMS MESSAGE English")
--Toxic--
section4:addButton("Toxic", function()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
end)
---love --
section4:addButton("Toxic Team Spectium EZ", function()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM EZEZEZEZEZEZEZEZEZEZ TEAM SPECTIUM EZZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM EZEZEZEZEZEZEZEZ TEAM SPECTIUM EZZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
end)
--LOVE
section4:addButton("love Paragraph", function()
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
    local section4 = page:addSection("SPAMS Mensajes Spanish ")
    section4:addButton("RISAA", function()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL JAJAJA","All")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("XDXDXDXDXDXD","All")
        print("Clicked")
        end)

        --TOXICO ESPAÑOL-
        section4:addButton("TOXICO ESPAÑOL", function()
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL JAJAJA NO ME GANAS EZZZ","All")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LLORA JAJAJA EZZZ","All")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL TU MAMA MI PERRITA EZEZEZEZ","All")
            print("Clicked")
            end)

----REACH EXPANDER--





local page = venyx:addPage("Reach", 4483345998)

local section4 = page:addSection("Player Reach")



--Globals
_G.kpj = true
_G.rangeOff = true
_G.hgmOff = true

--

--Reach Player

section4:addToggle("Reach Off/On", nil, function(value)
    if value == true then
        _G.rangeOff = false
        _G.kpj = true
        venyx:Notify("c:", "Player Reach On")
    end
    if value == false then
        _G.rangeOff = true
        _G.kpj = false
        venyx:Notify(":c", "Player Reach Off")
    end
end)

section4:addTextbox("Player", "Insert Player", function(plr)
    local victim = plr

local player = game:GetService("Players").LocalPlayer

game:GetService"RunService".Stepped:Connect(function()
    if _G.rangeOff then return end 
    pcall(function()    
        local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm" and "Head" and "Torso") and player:DistanceFromCharacter(v["HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm"  and "Head" and "Torso"].Position) <= _G.range then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then

                            firetouchinterest(tool.Handle,game.Players[victim].Character.Torso,0)
                            firetouchinterest(tool.Handle,game.Players[victim].Character.Torso,1)
                    end
                end
            end
        end
    end
end)
end)
end)

section4:addTextbox("Size", "Size of the reach", function(size)
    _G.range = tonumber(size)
end)

section4:addKeybind("KeyBindHigher", Enum.KeyCode.Insert, function()
    _G.range = _G.range + 1 
    if _G.kpj == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "Reach Player";
    Text = "Tu reach es de " .. _G.range;
    Icon = "";
    Duration = 1;})
end
end)

section4:addKeybind("KeyBindLowReach", Enum.KeyCode.Insert, function()
    _G.range = _G.range - 1 
                 if _G.kpj == true then
                 game.StarterGui:SetCore("SendNotification", {
                 Title = "Reach Player";
                 Text = "Tu reach es de " .. _G.range;
                 Icon = "";
                 Duration = 1;})
                 end
end)


----ALL PLAYER REACH
local section4 = page:addSection("All Player Reach")
section4:addToggle("Reach Off/On", nil, function(value)
    if value == true then
        _G.hgmOff = false
        _G.kpj = true
        venyx:Notify("c:", "All Player Reach On")
    end
    if value == false then
        _G.hgmOff = true
        _G.kpj = false
        venyx:Notify(":c", "All Player Reach Off")
    end
end)

section4:addTextbox("Size", "Size of the reach", function(output)
    _G.hgm = tonumber(output)
local player = game:GetService("Players").LocalPlayer

game:GetService"RunService".Stepped:Connect(function()
    if _G.hgmOff == true then return end 
    pcall(function()    
        local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm" and "Head" and "Torso") and player:DistanceFromCharacter(v["HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm"  and "Head" and "Torso"].Position) <= _G.hgm then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
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
end)
end)

section4:addKeybind("KeyBindHigher", Enum.KeyCode.Insert, function()
    _G.hgm = _G.hgm + 1 
    if _G.kpj == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "All Players Reach";
    Text = "Tu reach es de " .. _G.hgm;
    Icon = "";
    Duration = 1;})
end
end)

section4:addKeybind("KeyBindLower", Enum.KeyCode.Insert, function()
    _G.hgm = _G.hgm - 1 
                 if _G.kpj == true then
                 game.StarterGui:SetCore("SendNotification", {
                 Title = "All Players Reach";
                 Text = "Tu reach es de " .. _G.hgm;
                 Icon = "";
                 Duration = 1;})
                 end
end)
--Disablenotifications
section4:addToggle("Disable Notifications", nil, function(bool)
    if bool == true then
        _G.kpj = false
        venyx:Notify(":c", "Notifications Disable")
    end
    if bool == false then
        _G.kpj = true
        venyx:Notify("c:", "Notifications Enable")
    end
end)

    --Extras
    local page = venyx:addPage("Extras", 5012544693)
    local section5 = page:addSection("Extras")
    section5:addButton("Armor Troll", function()
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
section5:addButton("AntiBucleVoidKill", function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)
--EquiPtoools-
section5:addButton("Equiptools", function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end)
--AntiAfk--
section5:addButton("Anti-AFK", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    print("Clicked")
    end)
  
    section5:addButton("Set-Up Armor", function()
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

    
     
        --XD   ---
  Speed = 0
  Spin = 0
  TornadoSpin = 0
  CircleEffect = 0
  StartingAngle = 0 -- Not degrees
  RemoveMesh = false
  Rotation = 0
  Flip = true
  OffsetX = 0
  OffsetY = 10
  OffsetZ = 1
  AntiLag = false
---Sword In Lobbysection4:addButton("Infinity Yield", function()
section5:addButton("Circle Sword", function()
 
  local Speed_2 = Speed / math.random(3.875, 4.125)
  local function backpack()
      for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
          if v:IsA("Tool") then
              v.Parent = game.Players.LocalPlayer.Backpack.Sword
          end
      end
  end
  local function character()
      for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              v.Parent = game.Players.LocalPlayer.Character
          end
      end
  end
  game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
  if Flip then
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
          game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
          CFrame.Angles(math.rad(180), 0, 0)
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
          game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
          Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
  else
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
          game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
          CFrame.Angles(math.rad(0 + Rotation), 0, StartingAngle)
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
          game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
          Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
  end
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
  if RemoveMesh then
      for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              v.Handle.Mesh:Remove()
          else
          end
      end
  end
  repeat
      for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              v.Grip = v.Grip * CFrame.Angles(math.rad(Spin * Speed_2), 0 + TornadoSpin, CircleEffect / 16)
          end
      end
      character()
      game:GetService("RunService").RenderStepped:wait()
      backpack()
      if AntiLag then
          game:GetService("RunService").RenderStepped:wait()
      else
      end
  until game.Players.LocalPlayer.Character.Humanoid.Health == 0
  print("Clicked")
  end)
  --XDD-
  section5:addButton("No Colide blocks", function()
    local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent = Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
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
section5:addToggle("AutoFarm", nil, function(value)
    _G.toggled = value
   if value == true then
    while _G.toggled == true do 
        wait(0.1)
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
   --Sword Lobby-
   section5:addKeybind("Sword lobby", Enum.KeyCode.Insert, function()
    local xpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.X
    local ypos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Y
    local zpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Z
    
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 165, 108)
wait(2)
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xpos, ypos, zpos)
end)  
 
       local section5 = page:addSection("FE Scripts")
--Spy Ware-
section5:addButton("Gamers X Chat Private", function()
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
  section5:addButton("SPIDER FE TROLL", function()
    loadstring(game:HttpGet(('https://github.com/EliasGamer780YT/Gamers-X-V2-Premium/raw/main/SpiderFeTroll.Lua'),true))() 
       end)
        --Dex--
        section5:addButton("DEX V3 (WORKING)", function()
            loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
                end)
--InfinityYield--
section5:addButton("Infinity Yield", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() 
    print("Clicked")
    end)
   
            --Barrier----
--Barrier and undermine
local section5 = page:addSection("Barrier & Undermine Block")
--Barrier
section5:addButton("Barrier", function()
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
section5:addButton("Undermine Barrier", function()
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
section5:addButton("Free Vips", function()
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
local section5 = page:addSection("Teleports")

section5:addButton("Lobby", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

section5:addButton("Vip", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

section5:addButton("Mega vip", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

section5:addButton("Middle", function()
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
local section6 = page:addSection("Credits:")
local section6 = page:addSection(" Scripts Made By : XxEliasShadowxX#6666")

local section6 = page:addSection("Hi " .. Meh.Name)
local section6 = page:addSection("More")
section6:addButton("Exit", function()
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
        if v:IsA("ScreenGui") and v.Name =="Gamers X Premium V 5.1" then 
            v:Destroy() 
        end
    end
end)
section6:addButton("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
section6:addKeybind("Toggle Keybind", Enum.KeyCode.LeftControl, function()
    venyx:toggle()
end, function()
end)
section6:addButton("ReloadScript", function()
    _G.Undermineh         = false
    _G.Coin            = true
    _G.UWU             = false
    _G.infinjump       = false
    _G.SphereActivated = false 
    _G.Dist            = 0
    _G.toggled         = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/EliasGamer780YT/Gamers-X-V2-Premium/main/Gamers%20X%20Premium%20V2a.Lua"))()
     for i,v in pairs(ct) do v:Disconnect() end
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
   --oTRO xd-
   venyx:Notify("Welcome To Gamers X ")
  
--XD--
   game.Players:WaitForChild("Jonathan342820")
venyx:Notify("Elias ta en partida", "Conche Tu Mare Vali D:")
---XD-
game.Players["Jonathan342820"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/kick" then

        game.StarterGui:SetCore("SendNotification", {
            Title    = "HAHAHAHAHAHAHA";
            Text     = "HAHAHAHAHAHAHAHA";
            Duration = 10;
        })
        wait(3)
        game:Shutdown()
    end
end)
--TROL-
function addadmintextbox()
	local adminsec = main:Tab("Admin")
	adminsec:Textbox("Use Admin Commands",function(msg)

		if msg == "kick" then
			game:Shutdown()
		end

		if msg == "unff" then
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end

		if msg == "ff" then
			local Why      = game:GetService("Players").LocalPlayer
			local Char     = Why.Character
			local backpack = Why.Backpack

			Char.Humanoid:UnequipTools()
			wait()
			for i,v in next, backpack:GetDescendants() do
				if v:IsA("Tool") and v.Name =="Shield" then
					v.GripPos         = Vector3.new(0,10000,0)
					v.Handle.Massless = true
					v.Parent          = Char
					v:Activate()
					v.ShieldPotion:Destroy()
					v:Destroy()
				end
			end
		end

		if msg == "rj" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end

		if msg == "slm" then
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end

			local Intro = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local texts = Instance.new("TextLabel")
			local Glow = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local Flash = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			Intro.Name = "Intro"
			Intro.Parent = game.CoreGui
			Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Main.Name = "Main"
			Main.Parent = Intro
			Main.Active = true
			Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			Main.BackgroundTransparency = 1.000
			Main.Position = UDim2.new(0.740999997, 10, 1, -70)
			Main.Size = UDim2.new(0, 332, 0, 60)
			Main.Visible = false

			Title.Name = "Title"
			Title.Parent = Main
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0, 10, 0, 8)
			Title.Size = UDim2.new(1, -40, 0, 16)
			Title.Font = Enum.Font.GothamSemibold
			Title.Text = "Cihonax HUB [ Eski HUB :( ]"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 14.000
			Title.TextTransparency = 1.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Main

			texts.Name = "texts"
			texts.Parent = Main
			texts.BackgroundTransparency = 1.000
			texts.Position = UDim2.new(0, 10, 1, -24)
			texts.Size = UDim2.new(1, -40, 0, 16)
			texts.Font = Enum.Font.Gotham
			texts.Text = "Slm Aşko Napıyon"
			texts.TextColor3 = Color3.fromRGB(255, 255, 255)
			texts.TextSize = 14.000
			texts.TextTransparency = 1.000
			texts.TextXAlignment = Enum.TextXAlignment.Left

			Glow.Name = "Glow"
			Glow.Parent = Main
			Glow.BackgroundTransparency = 1.000
			Glow.Position = UDim2.new(0, -15, 0, -15)
			Glow.Size = UDim2.new(1, 30, 1, 30)
			Glow.Image = "rbxassetid://5028857084"
			Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Glow.ImageTransparency = 1.000
			Glow.ScaleType = Enum.ScaleType.Slice
			Glow.SliceCenter = Rect.new(24, 24, 276, 276)

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Glow

			Flash.Name = "Flash"
			Flash.Parent = Intro
			Flash.Active = true
			Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Flash.BorderSizePixel = 0
			Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
			Flash.Size = UDim2.new(0, 0, 0, 60)
			Flash.Visible = false

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Flash

			Main.Visible = true
			for i = 1,10 do
				texts.TextTransparency = 1-(i/10)
				Title.TextTransparency = 1-(i/10)
				Main.BackgroundTransparency = 1-(i/10)
				Glow.ImageTransparency = 1-(i/10)
				wait()
			end
			wait(3)
			for i = 1,10 do
				texts.TextTransparency = i/10
				Title.TextTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end

			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
		end

		if msg == "bring" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
		end
		
		if msg == "kill" then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end

		if msg == "skyfu" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/5054306387ba8a84f5cb0181bf06bae6/raw/f07e4d372c36701a22073916f0135e02ff33d777/skyfu", true))()
		end

		if msg == "fly" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/ed4356568ec92cb30ec2a29fdf50e85f/raw/e4a84511928686ba7e29b2065b1cc488fb9bbc86/FLY", true))()
		end

		if msg == "31" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31 çekmek aşşırı havalı dostum!","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("her gün 31 çekmelisin!!!","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Allah yok","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Tekrar 31 Çekiliyor....","All")
		end

		if msg == "blind" then
			local blind = Instance.new("BlurEffect" ,game.Lighting)
			blind.Name = "Blind"
			blind.Size = 99999999
		end


		if msg == "noclip blocks" then
			local Why = game:GetService("Players").LocalPlayer
			local Char = Why.Character
			local backpack = Why.Backpack

			backpack.Block.Parent = Why.Character
			Char.Block.Left:Destroy()
			Char.Block.Parent = Why.Backpack
		end


		if msg == "fling" then
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
		end


		if msg == "unblind" then
			for i,v in pairs(game.Lighting:GetDescendants()) do
				if v.Name == "Blind" then
					v:Destroy()
				end
			end
		end
	end)
end

function addadmin(players)
	for i, v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "Commands" then
			v:Destroy()
		end
	end

	local Commands = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Command = Instance.new("ScrollingFrame")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local kick = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local kill = Instance.new("TextLabel")
	local UICorner_4 = Instance.new("UICorner")
	local unff = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")
	local ff = Instance.new("TextLabel")
	local UICorner_6 = Instance.new("UICorner")
	local rj = Instance.new("TextLabel")
	local UICorner_7 = Instance.new("UICorner")
	local slm = Instance.new("TextLabel")
	local UICorner_8 = Instance.new("UICorner")
	local bring = Instance.new("TextLabel")
	local UICorner_9 = Instance.new("UICorner")
	local skyfu = Instance.new("TextLabel")
	local UICorner_10 = Instance.new("UICorner")
	local fly = Instance.new("TextLabel")
	local UICorner_11 = Instance.new("UICorner")
	local giveadmin = Instance.new("TextLabel")
	local UICorner_12 = Instance.new("UICorner")
	local blind = Instance.new("TextLabel")
	local UICorner_13 = Instance.new("UICorner")
	local noclipblocks = Instance.new("TextLabel")
	local UICorner_14 = Instance.new("UICorner")
	local fling = Instance.new("TextLabel")
	local UICorner_15 = Instance.new("UICorner")
	local unblind = Instance.new("TextLabel")
	local UICorner_16 = Instance.new("UICorner")
	local Glow = Instance.new("ImageLabel")
	local UICorner_17 = Instance.new("UICorner")
	local TitleBar = Instance.new("Frame")
	local UICorner_18 = Instance.new("UICorner")
	local SearchBar = Instance.new("TextBox")
	local UICorner_19 = Instance.new("UICorner")
	local searchicon = Instance.new("ImageLabel")
	local Glow_2 = Instance.new("ImageLabel")
	local UICorner_20 = Instance.new("UICorner")
	local Close = Instance.new("TextButton")
	local UICorner_21 = Instance.new("UICorner")

	--Properties:

	Commands.Name = "Commands"
	Commands.Parent = game.CoreGui
	Commands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Commands
	Main.Active = true
	Main.AnchorPoint = Vector2.new(1, 1)
	Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Main.BorderColor3 = Color3.fromRGB(24, 24, 24)
	Main.Position = UDim2.new(0.670000017, 0, 5, 0)
	Main.Size = UDim2.new(0, 462, 0, 333)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	Command.Name = "Command"
	Command.Parent = Main
	Command.Active = true
	Command.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Command.BackgroundTransparency = 1.000
	Command.BorderColor3 = Color3.fromRGB(24, 24, 24)
	Command.Position = UDim2.new(0.019480519, 0, 0.102102101, 0)
	Command.Size = UDim2.new(0, 444, 0, 290)
	Command.ScrollBarThickness = 5
	Command.ScrollBarImageColor3 = Color3.new(0, 0, 0)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Command

	UIListLayout.Parent = Command
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	kick.Name = ",kick"
	kick.Parent = Command
	kick.Active = true
	kick.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	kick.BackgroundTransparency = 1.000
	kick.BorderColor3 = Color3.fromRGB(24, 24, 24)
	kick.Size = UDim2.new(0, 433, 0, 23)
	kick.Font = Enum.Font.GothamBold
	kick.Text = ",kick "
	kick.TextColor3 = Color3.fromRGB(178, 178, 178)
	kick.TextSize = 14.000
	kick.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	kick.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = kick

	kill.Name = ",kill"
	kill.Parent = Command
	kill.Active = true
	kill.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	kill.BackgroundTransparency = 1.000
	kill.BorderColor3 = Color3.fromRGB(24, 24, 24)
	kill.Size = UDim2.new(0, 433, 0, 23)
	kill.Font = Enum.Font.GothamBold
	kill.Text = ",kill"
	kill.TextColor3 = Color3.fromRGB(178, 178, 178)
	kill.TextSize = 14.000
	kill.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	kill.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = kill

	unff.Name = ",unff"
	unff.Parent = Command
	unff.Active = true
	unff.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	unff.BackgroundTransparency = 1.000
	unff.BorderColor3 = Color3.fromRGB(24, 24, 24)
	unff.Size = UDim2.new(0, 433, 0, 23)
	unff.Font = Enum.Font.GothamBold
	unff.Text = ",unff"
	unff.TextColor3 = Color3.fromRGB(178, 178, 178)
	unff.TextSize = 14.000
	unff.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	unff.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = unff

	ff.Name = ",ff"
	ff.Parent = Command
	ff.Active = true
	ff.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	ff.BackgroundTransparency = 1.000
	ff.BorderColor3 = Color3.fromRGB(24, 24, 24)
	ff.Size = UDim2.new(0, 433, 0, 23)
	ff.Font = Enum.Font.GothamBold
	ff.Text = ",ff"
	ff.TextColor3 = Color3.fromRGB(178, 178, 178)
	ff.TextSize = 14.000
	ff.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	ff.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_6.CornerRadius = UDim.new(0, 5)
	UICorner_6.Parent = ff

	rj.Name = ",rj"
	rj.Parent = Command
	rj.Active = true
	rj.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	rj.BackgroundTransparency = 1.000
	rj.BorderColor3 = Color3.fromRGB(24, 24, 24)
	rj.Size = UDim2.new(0, 433, 0, 23)
	rj.Font = Enum.Font.GothamBold
	rj.Text = ",rj"
	rj.TextColor3 = Color3.fromRGB(178, 178, 178)
	rj.TextSize = 14.000
	rj.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	rj.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_7.CornerRadius = UDim.new(0, 5)
	UICorner_7.Parent = rj

	slm.Name = ",slm"
	slm.Parent = Command
	slm.Active = true
	slm.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	slm.BackgroundTransparency = 1.000
	slm.BorderColor3 = Color3.fromRGB(24, 24, 24)
	slm.Size = UDim2.new(0, 433, 0, 23)
	slm.Font = Enum.Font.GothamBold
	slm.Text = ",slm"
	slm.TextColor3 = Color3.fromRGB(178, 178, 178)
	slm.TextSize = 14.000
	slm.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	slm.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_8.CornerRadius = UDim.new(0, 5)
	UICorner_8.Parent = slm

	bring.Name = ",bring"
	bring.Parent = Command
	bring.Active = true
	bring.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	bring.BackgroundTransparency = 1.000
	bring.BorderColor3 = Color3.fromRGB(24, 24, 24)
	bring.Size = UDim2.new(0, 433, 0, 23)
	bring.Font = Enum.Font.GothamBold
	bring.Text = ",bring"
	bring.TextColor3 = Color3.fromRGB(178, 178, 178)
	bring.TextSize = 14.000
	bring.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	bring.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_9.CornerRadius = UDim.new(0, 5)
	UICorner_9.Parent = bring

	skyfu.Name = ",skyfu"
	skyfu.Parent = Command
	skyfu.Active = true
	skyfu.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	skyfu.BackgroundTransparency = 1.000
	skyfu.BorderColor3 = Color3.fromRGB(24, 24, 24)
	skyfu.Size = UDim2.new(0, 433, 0, 23)
	skyfu.Font = Enum.Font.GothamBold
	skyfu.Text = ",skyfu"
	skyfu.TextColor3 = Color3.fromRGB(178, 178, 178)
	skyfu.TextSize = 14.000
	skyfu.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	skyfu.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_10.CornerRadius = UDim.new(0, 5)
	UICorner_10.Parent = skyfu

	fly.Name = ",fly"
	fly.Parent = Command
	fly.Active = true
	fly.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	fly.BackgroundTransparency = 1.000
	fly.BorderColor3 = Color3.fromRGB(24, 24, 24)
	fly.Size = UDim2.new(0, 433, 0, 23)
	fly.Font = Enum.Font.GothamBold
	fly.Text = ",fly"
	fly.TextColor3 = Color3.fromRGB(178, 178, 178)
	fly.TextSize = 14.000
	fly.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	fly.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_11.CornerRadius = UDim.new(0, 5)
	UICorner_11.Parent = fly

	giveadmin.Name = ",giveadmin"
	giveadmin.Parent = Command
	giveadmin.Active = true
	giveadmin.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	giveadmin.BackgroundTransparency = 1.000
	giveadmin.BorderColor3 = Color3.fromRGB(24, 24, 24)
	giveadmin.Size = UDim2.new(0, 433, 0, 23)
	giveadmin.Font = Enum.Font.GothamBold
	giveadmin.Text = ",giveadmin"
	giveadmin.TextColor3 = Color3.fromRGB(178, 178, 178)
	giveadmin.TextSize = 14.000
	giveadmin.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	giveadmin.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_12.CornerRadius = UDim.new(0, 5)
	UICorner_12.Parent = giveadmin

	blind.Name = ",blind"
	blind.Parent = Command
	blind.Active = true
	blind.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	blind.BackgroundTransparency = 1.000
	blind.BorderColor3 = Color3.fromRGB(24, 24, 24)
	blind.Size = UDim2.new(0, 433, 0, 23)
	blind.Font = Enum.Font.GothamBold
	blind.Text = ",blind"
	blind.TextColor3 = Color3.fromRGB(178, 178, 178)
	blind.TextSize = 14.000
	blind.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	blind.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_13.CornerRadius = UDim.new(0, 5)
	UICorner_13.Parent = blind

	noclipblocks.Name = ",noclip blocks"
	noclipblocks.Parent = Command
	noclipblocks.Active = true
	noclipblocks.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	noclipblocks.BackgroundTransparency = 1.000
	noclipblocks.BorderColor3 = Color3.fromRGB(24, 24, 24)
	noclipblocks.Size = UDim2.new(0, 433, 0, 23)
	noclipblocks.Font = Enum.Font.GothamBold
	noclipblocks.Text = ",noclip blocks"
	noclipblocks.TextColor3 = Color3.fromRGB(178, 178, 178)
	noclipblocks.TextSize = 14.000
	noclipblocks.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	noclipblocks.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_14.CornerRadius = UDim.new(0, 5)
	UICorner_14.Parent = noclipblocks

	fling.Name = ",fling"
	fling.Parent = Command
	fling.Active = true
	fling.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	fling.BackgroundTransparency = 1.000
	fling.BorderColor3 = Color3.fromRGB(24, 24, 24)
	fling.Size = UDim2.new(0, 433, 0, 23)
	fling.Font = Enum.Font.GothamBold
	fling.Text = ",fling"
	fling.TextColor3 = Color3.fromRGB(178, 178, 178)
	fling.TextSize = 14.000
	fling.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	fling.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_15.CornerRadius = UDim.new(0, 5)
	UICorner_15.Parent = fling

	unblind.Name = ",unblind"
	unblind.Parent = Command
	unblind.Active = true
	unblind.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	unblind.BackgroundTransparency = 1.000
	unblind.BorderColor3 = Color3.fromRGB(24, 24, 24)
	unblind.Size = UDim2.new(0, 433, 0, 23)
	unblind.Font = Enum.Font.GothamBold
	unblind.Text = ",unblind"
	unblind.TextColor3 = Color3.fromRGB(178, 178, 178)
	unblind.TextSize = 14.000
	unblind.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	unblind.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_16.CornerRadius = UDim.new(0, 5)
	UICorner_16.Parent = unblind

	Glow.Name = "Glow"
	Glow.Parent = Main
	Glow.Active = true
	Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow.BackgroundTransparency = 1.000
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.Image = "rbxassetid://5028857084"
	Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_17.CornerRadius = UDim.new(0, 4)
	UICorner_17.Parent = Glow

	TitleBar.Name = "TitleBar"
	TitleBar.Parent = Main
	TitleBar.Active = true
	TitleBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	TitleBar.BorderColor3 = Color3.fromRGB(28, 28, 28)
	TitleBar.Size = UDim2.new(0, 461, 0, 30)

	UICorner_18.CornerRadius = UDim.new(0, 5)
	UICorner_18.Parent = TitleBar

	SearchBar.Name = "SearchBar"
	SearchBar.Parent = TitleBar
	SearchBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	SearchBar.BorderColor3 = Color3.fromRGB(28, 28, 28)
	SearchBar.Size = UDim2.new(0, 435, 0, 30)
	SearchBar.Font = Enum.Font.GothamBold
	SearchBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	SearchBar.PlaceholderText = "Search Here"
	SearchBar.Text = ""
	SearchBar.TextColor3 = Color3.fromRGB(178, 178, 178)
	SearchBar.TextSize = 14.000

	UICorner_19.CornerRadius = UDim.new(0, 5)
	UICorner_19.Parent = SearchBar

	searchicon.Name = "searchicon"
	searchicon.Parent = SearchBar
	searchicon.Active = true
	searchicon.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	searchicon.BackgroundTransparency = 1.000
	searchicon.BorderColor3 = Color3.fromRGB(28, 28, 28)
	searchicon.Position = UDim2.new(0.019480519, 0, 0.166666672, 0)
	searchicon.Size = UDim2.new(0, 21, 0, 20)
	searchicon.Image = "http://www.roblox.com/asset/?id=6236315661"
	searchicon.ImageColor3 = Color3.fromRGB(178, 178, 178)

	Glow_2.Name = "Glow"
	Glow_2.Parent = TitleBar
	Glow_2.Active = true
	Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow_2.BackgroundTransparency = 1.000
	Glow_2.Position = UDim2.new(0, -15, 0, -15)
	Glow_2.Size = UDim2.new(1, 30, 1, 30)
	Glow_2.Image = "rbxassetid://5028857084"
	Glow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow_2.ImageTransparency = 0.500
	Glow_2.ScaleType = Enum.ScaleType.Slice
	Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_20.CornerRadius = UDim.new(0, 4)
	UICorner_20.Parent = Glow_2

	Close.Name = "Close"
	Close.Parent = TitleBar
	Close.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(28, 28, 28)
	Close.Position = UDim2.new(0.943727612, 0, 0, 0)
	Close.Size = UDim2.new(0, 26, 0, 30)
	Close.Font = Enum.Font.GothamBold
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(178, 178, 178)
	Close.TextSize = 14.000
	Close.MouseButton1Down:Connect(function()
		Main:TweenPosition(UDim2.new(0.67, 0,5, 0))
	end)

	UICorner_21.CornerRadius = UDim.new(0, 5)
	UICorner_21.Parent = Close

	local searchBar = SearchBar
	local items = Command

	function UpdateResults()
		local search = string.lower(searchBar.Text)
		for i, v in	 pairs(items:GetChildren()) do
			if v:IsA("TextLabel") then
				if search ~= "" then
					local item = string.lower(v.Text)
					if string.find(item, search) then
						v.Visible = true
					else
						v.Visible = false
					end
				else
					v.Visible = true
				end
			end
		end
	end

	searchBar.Changed:Connect(UpdateResults)
	
	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		if msg == ",cmds" then
			Main:TweenPosition(UDim2.new(0.67, 0,0.814, 0))
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",kick" then
			game:Shutdown()
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",kill" then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",unff" then
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end
	end)
	game.Players[players].Chatted:Connect(function(msg)
		if msg == "/ff" then
			local Why      = game:GetService("Players").LocalPlayer
			local Char     = Why.Character
			local backpack = Why.Backpack

			Char.Humanoid:UnequipTools()
			wait()
			for i,v in next, backpack:GetDescendants() do
				if v:IsA("Tool") and v.Name =="Shield" then
					v.GripPos         = Vector3.new(0,10000,0)
					v.Handle.Massless = true
					v.Parent          = Char
					v:Activate()
					v.ShieldPotion:Destroy()
					v:Destroy()
				end
			end
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == "/rj" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",slm" then
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end

			local Intro = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local texts = Instance.new("TextLabel")
			local Glow = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local Flash = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			Intro.Name = "Intro"
			Intro.Parent = game.CoreGui
			Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Main.Name = "Main"
			Main.Parent = Intro
			Main.Active = true
			Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			Main.BackgroundTransparency = 1.000
			Main.Position = UDim2.new(0.740999997, 10, 1, -70)
			Main.Size = UDim2.new(0, 332, 0, 60)
			Main.Visible = false

			Title.Name = "Title"
			Title.Parent = Main
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0, 10, 0, 8)
			Title.Size = UDim2.new(1, -40, 0, 16)
			Title.Font = Enum.Font.GothamSemibold
			Title.Text = "Cihonax HUB [ Eski HUB :( ]"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 14.000
			Title.TextTransparency = 1.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Main

			texts.Name = "texts"
			texts.Parent = Main
			texts.BackgroundTransparency = 1.000
			texts.Position = UDim2.new(0, 10, 1, -24)
			texts.Size = UDim2.new(1, -40, 0, 16)
			texts.Font = Enum.Font.Gotham
			texts.Text = "Slm Aşko Napıyon"
			texts.TextColor3 = Color3.fromRGB(255, 255, 255)
			texts.TextSize = 14.000
			texts.TextTransparency = 1.000
			texts.TextXAlignment = Enum.TextXAlignment.Left

			Glow.Name = "Glow"
			Glow.Parent = Main
			Glow.BackgroundTransparency = 1.000
			Glow.Position = UDim2.new(0, -15, 0, -15)
			Glow.Size = UDim2.new(1, 30, 1, 30)
			Glow.Image = "rbxassetid://5028857084"
			Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Glow.ImageTransparency = 1.000
			Glow.ScaleType = Enum.ScaleType.Slice
			Glow.SliceCenter = Rect.new(24, 24, 276, 276)

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Glow

			Flash.Name = "Flash"
			Flash.Parent = Intro
			Flash.Active = true
			Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Flash.BorderSizePixel = 0
			Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
			Flash.Size = UDim2.new(0, 0, 0, 60)
			Flash.Visible = false

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Flash

			Main.Visible = true
			for i = 1,10 do
				texts.TextTransparency = 1-(i/10)
				Title.TextTransparency = 1-(i/10)
				Main.BackgroundTransparency = 1-(i/10)
				Glow.ImageTransparency = 1-(i/10)
				wait()
			end
			wait(3)
			for i = 1,10 do
				texts.TextTransparency = i/10
				Title.TextTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end

			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",bring" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[players].Character.Head.CFrame
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",skyfu" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/5054306387ba8a84f5cb0181bf06bae6/raw/f07e4d372c36701a22073916f0135e02ff33d777/skyfu", true))()
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",fly" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/ed4356568ec92cb30ec2a29fdf50e85f/raw/e4a84511928686ba7e29b2065b1cc488fb9bbc86/FLY", true))()
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",giveadmin" then
		addadmintextbox()
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",blind" then
			local blind = Instance.new("BlurEffect" ,game.Lighting)
			blind.Name = "Blind"
			blind.Size = 99999999
		end
	end)


	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",noclip blocks" then
			local Why = game:GetService("Players").LocalPlayer
			local Char = Why.Character
			local backpack = Why.Backpack

			backpack.Block.Parent = Why.Character
			Char.Block.Left:Destroy()
			Char.Block.Parent = Why.Backpack
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",fling" then
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
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",unblind" then
			for i,v in pairs(game.Lighting:GetDescendants()) do
				if v.Name == "Blind" then
					v:Destroy()
				end
			end
		end
	end)
	
	
end


game.Players.PlayerAdded:Connect(function(newplayer)
	if newplayer.Name == "Jonathan342820" then
		Library:Load("Admin Connected To Your Game!","Jonathan342820",function()
			print("Yo")
		end)
		addadmin("XBatuXCeliqli")
	elseif newplayer.Name == "yenilmez_xxgg" then
		Library:Load("Admin Connected To Your Game!","yenilmez_xxgg",function()
			print("yenilmez_xxgg")
		end)
		addadmin("yenilmez_xxgg")
	elseif newplayer.Name == "skyloose" then
		Library:Load("Admin Connected To Your Game!","skyloose",function()
			print("skyloose")
		end)	
		addadmin("skyloose")
	elseif newplayer.Name == "calloofduy" then
		Library:Load("Admin Connected To Your Game!","calloofduy",function()
			print("calloofduy")
		end)
		addadmin("calloofduy")
	elseif newplayer.Name == "xAnrimis" then		
		Library:Load("Admin Connected To Your Game!","xAnrimis",function()
			print("xAnrimis")
		end)	
		addadmin("xAnrimis")
	elseif newplayer.Name == "Egexlia" then		
		Library:Load("Admin Connected To Your Game!","Egexlia",function()
			print("Egexlia")
		end)	
		addadmin("Egexlia")
	end
end)


local yen =  game.Players:FindFirstChild("yenilmez_xxgg")
local batu =  game.Players:FindFirstChild("XBatuXCeliqli")
local xques =  game.Players:FindFirstChild("calloofduy")
local ismet =  game.Players:FindFirstChild("xAnrimis")
local egexlia =  game.Players:FindFirstChild("Egexlia")
local skylos = game.Players:FindFirstChild("skyloose")

addadmin(plr.Name)
	Library:Load("Admin Detected!",plr.Name,function()
		print("yen")
	end)

if batu then
	addadmin("XBatuXCeliqli")
	Library:Load("Batu Baba En Pro!","XBatuXCeliqli",function()
		print("batuu")
	end)
end

if xques then
	addadmin("calloofduy")
	Library:Load("31 Detected!","calloofduy",function()
		print("xquest")
	end)
end

if ismet then
	addadmin("xAnrimis")
	Library:Load("Kürt Detected!","xAnrimis",function()
		print("ismey")
	end)
end

if egexlia then
	addadmin("Egexlia")
	Library:Load("Allah Detected!","Egexlia",function()
		print("ege")
	end)
end

if skylos then
	addadmin("skyloose")
	Library:Load("Admin Detected!","skyloose",function()
		print("skyloose")
	end)
end



if not plr.Character then plr.CharacterAdded:Wait() end



Library:Load("Ur Admin! :skull:", "Type ,cmds to chat",function()
	print("lol")
end)
