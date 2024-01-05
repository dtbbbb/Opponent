-- [[ Opponent.cc Source Code Brought To You By listofmyregrets AHAHAHAHAHAHAHAHAHHAHAHAHAHAHA -- ]]
-- [[ Credits to colloper for the gun fov + credits to whoever made some parts of the src code -- ]]
-- [[ DOXBIN.LOL VAULT ON TOP AHAHAHAHAAHAHAHAHHAAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA -- ]]

-- [[ Source Code Begins Here -- ]]
-- [[ Ahahahahahahahahhaahhah -- ]]

-- [[ AHAHAHAHAHHAHAHAHAHHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHHAHAHAHA -- ]]
-- [[ DOXBIN.LOL BEST PAID VAULT AHAHAHAHAHAHAHAHAHAHAHAAHAHAHHAHAHAHAHHA -- ]]

-- [[ Lua Armor Key -- ]]
script_key = getgenv()Opponent.Start.Key; -- [[ Lua Armor Key func -- ]]

-- [[ Animations - ]]
local AnimationIds = {
    Lay = "rbxassetid://3152378852",
    Greet = "rbxassetid://3189777795",
    Sturdy = "rbxassetid://11710529975",
    Griddy = "rbxassetid://11710529975",
    Speed = "rbxassetid://11710541744",
}
game:GetService("UserInputService").InputBegan:Connect(function(key, gp)
    if not gp then
        if key.KeyCode == Opponent.Animation.LayKey then
            if Opponent.Animation.Lay then
                local Lay = Instance.new("Animation")
                Lay.AnimationId = AnimationIds.Lay
                local LayTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Lay)
                LayTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    LayTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Opponent.Animation.GreetKey then
            if Opponent.Animation.Greet then
                local Greet = Instance.new("Animation")
                Greet.AnimationId = AnimationIds.Greet
                local GreetTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Greet)
                GreetTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    GreetTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Opponent.Animation.SpeedKey then
            if Opponent.Animation.Speed then
                local Speed = Instance.new("Animation")
                Speed.AnimationId = AnimationIds.Speed
                local SppedTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Speed)
                SpeedTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    SpeedTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Opponent.Animation.SturdyKey then
            if Opponent.Animation.Sturdy then
                local Sturdy = Instance.new("Animation")
                Sturdy.AnimationId = AnimationIds.Sturdy
                local SturdyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Sturdy)
                SturdyTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    SturdyTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Opponent.Animation.GriddyKey then
            if Opponent.Animation.Griddy then
                local Griddy = Instance.new("Animation")
                Griddy.AnimationId = AnimationIds.Griddy
                local GriddyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Griddy)
                GriddyTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    GriddyTrack:Stop()
                end)
            end
        end
    end
end) -- [[ Credits to Evolution -- ]]

-- [[ Universal Support -- ]]
local function getnamecall()
    if game.PlaceId == 2788229376 or game.PlaceId == 14277620939 or game.PlaceId == 15518701410 or game.PlaceId == 11143225577 or game.PlaceId == 15528756840 then      -- da hood, untitled hood, custom ffa, 1v1 hood aim trainer, nostalgia hood
        return "UpdateMousePos"
    elseif game.PlaceId == 14412355918 or game.PlaceId == 14412601883 or game.PlaceId == 14412436145 or game.PlaceId == 14487637618 or game.PlaceId == 14413712255 then -- da downhill, da bank, da uphill, hood aim, da hood bot aim trainer
        return "MOUSE"
    elseif game.PlaceId == 14472848239 then                                                                                                                             -- moon hood
        return "MoonUpdateMousePos"
    elseif game.PlaceId == 5602055394 then                                                                                                                              -- Hood Modded
        return "MousePos"
    elseif game.PlaceId == 9825515356 then                                                                                                                              -- hood customs
        return "GetMousePos"
    end
end


local namecalltype = getnamecall()

function MainEventLocate()
    for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Name == "MainEvent" then -- da hood, custom ffa, 1v1 hood aim trainer
            return v
        end
    end
end

function MAINEVENTLocate()
    for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Name == "MAINEVENT" then -- da downhill, da bank, da uphill, hood aim, da hood bot aim trainer
            return v
        end
    end
end

function MoonUpdateMousePosLocate()
    for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Name == "MoonUpdateMousePos" then -- Mood Hood
            return v
        end
    end
end

function BulletsLocate()
    for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Name == "Bullets" then -- hood modded
            return v
        end
    end
end

local mainevent = MainEventLocate()
local MAINEVENT = MAINEVENTLocate()
local MoonUpdateMousePos = MoonUpdateMousePosLocate()
local Bullets = BulletsLocate() -- [[ Credits to listofmyregrets/rbl for coding it and credits to farzad for providing the remotes + mouse pos -- ]]

-- [[ Intro -- ]]
if Opponent.Start.Intro then 
    local cam = workspace.CurrentCamera
    local x = cam.ViewportSize.X
    local y = cam.ViewportSize.Y
    local newx = math.floor(x * 0.5)
    local newy = math.floor(y * 0.5)

    local SpashScreen = Instance.new("ScreenGui")
    local Image = Instance.new("ImageLabel")
    SpashScreen.Name = "SpashScreen"
    SpashScreen.Parent = game.CoreGui
    SpashScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Image.Name = "Image"
    Image.Parent = SpashScreen
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, newx, 0, newy)
    Image.Size = UDim2.new(0, 866, 0, 288)
    Image.Image = "rbxassetid://15881112152"
    Image.ImageTransparency = 1
    Image.AnchorPoint = Vector2.new(0.5,0.5)

    local Blur = Instance.new("BlurEffect")
    Blur.Parent = game.Lighting
    Blur.Size = 0
    Blur.Name = math.random(1,123123)

    local function gui(last, sex, t, s, inorout)
        local TI = TweenInfo.new(t or 1, s or Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local Tweening = game:GetService("TweenService"):Create(last, TI, sex)
        Tweening:Play()
    end

    gui(Image, {ImageTransparency = 0},0.3)
    gui(Blur, {Size = 20},0.3)
    wait(3)
    gui(Image, {ImageTransparency = 1},0.3)
    gui(Blur, {Size = 0},0.3)
    wait(0.3)
end -- [[ Credits to whoever code this is -- ]]

-- [[ Unlock Fps -- ]]
if getgenv().Opponent.Start.UnlockFps.Enabled == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xfarzad/Sources/main/UWP%20fps%20boost.lua", true))()
end -- [[ Credits to Farzad -- ]]

-- [[ Methods -- ]]
if getgenv().Opponent.Methods.NoDelay == true then
CorePackages.Packages:Destroy()
end -- [[ some kid was selling this in shhhh -- ]]

if getgenv().Opponent.Methods.ADBypss == true then
    for _, key in next, getgc(true) do 
        local function updateKey(instanceType)
            if pcall(function() return rawget(key, instanceType) end) and typeof(rawget(key, instanceType)) == 'table' and (rawget(key, instanceType))[1] == 'kick' then
                key.tvk = {
                    'kick',
                    function() 
                        return game.Workspace:WaitForChild('')
                    end
                }
            end
        end

        updateKey('indexInstance')
        updateKey('namecallInstance')
    end
end -- [[ Credits to whoever coded it -- ]]

if getgenv().Opponent.Methods.DHBypass == true then
assert(getrawmetatable)
grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.__namecall
grm.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(args[1]) == "TeleportDetect" then
        return
    elseif tostring(args[1]) == "CHECKER_1" then
        return
    elseif tostring(args[1]) == "CHECKER" then
        return
    elseif tostring(args[1]) == "GUI_CHECK" then
        return
    elseif tostring(args[1]) == "OneMoreTime" then
        return
    elseif tostring(args[1]) == "checkingSPEED" then
        return
    elseif tostring(args[1]) == "BANREMOTE" then
        return
    elseif tostring(args[1]) == "PERMAIDBAN" then
        return
    elseif tostring(args[1]) == "KICKREMOTE" then
        return
    elseif tostring(args[1]) == "BR_KICKPC" then
        return
    elseif tostring(args[1]) == "BR_KICKMOBILE" then
        return
    end
    return old(self, ...)
end)
end -- [[ credits to whomever coded it -- ]]

if getgenv().Opponent.Methods.RoPro == true then
HTTPService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local StatsService = game:GetService("Stats")

    local function fetchServersData(placeId, limit)
        local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d", placeId, limit)
        local success, response = pcall(function()
            return HTTPService:JSONDecode(game:HttpGet(url))
        end)

        if success and response and response.data then
            return response.data
        end

        return nil
    end

    local placeId = game.PlaceId
    local serverLimit = 100
    local servers = fetchServersData(placeId, serverLimit)

    if not servers then
        return
    end

    local lowestPingServer = servers[1]

    for _, server in pairs(servers) do
        if server["ping"] < lowestPingServer["ping"] and server.maxPlayers > server.playing then
            lowestPingServer = server
        end
    end

    local commonLoadTime = 5
    task.wait(commonLoadTime)

    local pingThreshold = 100
    local serverStats = StatsService.Network.ServerStatsItem
    local dataPing = serverStats["Data Ping"]:GetValueString()
    local pingValue = tonumber(dataPing:match("(%d+)"))

    if pingValue >= pingThreshold then
        TeleportService:TeleportToPlaceInstance(placeId, lowestPingServer.id)
    else
        -- Good ping
    end
end -- [[ credits to whoever coded this -- ]]

-- [[ Checks -- ]]

if getgenv().Opponent.Knocked == true and Plr and Plr.Character then
    local KOd = Plr.Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Plr.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
    if KOd or Grabbed then
        Plr = nil
        IsTargetting = false
    end
end -- [[ Credits to whoever coded this -- ]]

local player
    if getgenv().Opponent.Checks.Grabbed == true and player and player.Character then
        if player.Character:FindFirstChild("GRABBING_CONSTRAINT") then
        return true
        end
end -- [[ credits to whoever coded this -- ]]

task.spawn(function()
    if getgenv().Opponent.Checks.NoGroundShots and Plr2.Character[getgenv().Opponent.Silent.HitParts.Velocity.Y < -15 then
        pcall(function()
            local Target = Plr2.Character[getgenv().Opponent.Silent.HitParts]
            Target.Velocity = Vector3.new(Target.Velocity.X, (Target.Velocity.Y / 5), Target.Velocity.Z)
            Target.AssemblyLinearVelocity = Vector3.new(Target.Velocity.X, (Target.Velocity.Y / 5), Target.Velocity.Z)
        end)
    end
end) -- [[ Credits to whoever coded this -- ]]

if getgenv().Opponent.Checks.Crew_check then
    while true do
        local newPlayer = game.Players.PlayerAdded:wait()
        if player:IsInGroup(newPlayer.Group) then
            table.insert(Ignored.Players, newPlayer)
        end
    end
end -- [[ Credits to whoever coded this -- ]]

-- [[ Resolver -- ]]

local prey
local prey2

task.spawn(function()
    while task.wait() do
        if getgenv().Opponent.Resolver.Enabled == true then -- [[ Enables resolver -- ]]
            checkVelocity(
                prey or prey2, getgenv().Opponent.Resolver.Pos, getgenv().Opponent.Resolver.Neg) -- [[ Resolver Neg and Pos Amount -- ]]
        end
    end
end) -- [[ credits to ordium -- ]]

-- [[ Anti_Aim_Viewer V1 -- ]]
local OppTarget
local OppTargetrey2
local On

local Vec2 = function(property)
    return Vector2.new(property.X, property.Y + (game:GetService("GuiService"):GetGuiInset().Y))
end

if Opponent.Resolver.Anti_Aim_Viewer == true then
    if OppTarget then
        local a = math.huge
        local b = nil

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= Client and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") then
                local c = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.Head.Position)
                local d = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(c.X, c.Y)).Magnitude
                if a > d then
                    b = v
                    a = d
                end
            end
        end

        return b
    elseif OppTarget == nil then
        wait()
    end
end -- [[ credits to whoever coded it -- ]]

-- [[ Anti_Aim_Viewer V2 -- ]]
if getgenv().Opponent.AntiAimViewer == true then
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e5e9bfa5c7d25b0c920c9d4b0ff47aed.lua"))()
end

-- [[ Settings -- ]]
if getgenv().Opponent.Settings.AutoLowGFX == true then
for _, v in pairs(workspace:GetDescendants()) do
        if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
        end
    end
    end -- [[ credits to whoever coded this -- ]]
   
if getgenv().Opponent.Settings.MuteBoomBox == true then
for i, v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            if game.Players:FindFirstChild(v.Name) then
                repeat wait() until v.Character
                for i, x in pairs(v.Character:GetDescendants()) do
                    if x:IsA("Sound") and x.Playing == true then
                        x.Playing = false
                    end
                end
            end
        end
    end
end -- [[ credits to who ever coded it -- ]]

while getgenv().Opponent.Settings.AutoPrediction) == true do
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingValue = string.split(ping, " ")[1]
    local pingNumber = tonumber(pingValue)

    if pingNumber < 10 then
        Opponent.Silent.Prediction = 0.119
    elseif pingNumber < 20 then
        Opponent.Silent.Prediction = 0.13189
    elseif pingNumber < 30 then
        Opponent.Silent.Prediction = 0.1348194910
    elseif pingNumber < 40 then
        Opponent.Silent.Prediction = 0.12327
    elseif pingNumber < 50 then
        Opponent.Silent.Prediction = 0.13237
    elseif pingNumber < 60 then
        Opponent.Silent.Prediction = 0.12731
    elseif pingNumber < 70 then
        Opponent.Silent.Prediction = 0.12481
    elseif pingNumber < 80 then
        Opponent.Silent.Prediction = 0.12951
    elseif pingNumber < 90 then
        Opponent.Silent.Prediction = 0.13181
    elseif pingNumber < 100 then
        Opponent.Silent.Prediction = 0.138
    elseif pingNumber < 110 then
        Opponent.Silent.Prediction = 0.146
    elseif pingNumber < 120 then
        Opponent.Silent.Prediction = 0.1367
    elseif pingNumber < 130 then
        Opponent.Silent.Prediction = 0.1417
    elseif pingNumber < 140 then
        Opponent.Silent.Prediction = 0.15
    elseif pingNumber < 150 then
        Opponent.Silent.Prediction = 0.1500
    end -- [[ credits to listofmyregrets/rblvengeance for the predictions -- ]]

    wait(0.1)
end -- [[ credits to whomever coded it -- ]]

-- [[ HitChance -- ]]
local SilentAimTarget
if getgenv().Opponent.Universal.Use_HitChance then
    if SilentAimTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Opponent.Silent.HitChance = getgenv().Opponent.Silent.AirShot_HitChance
        end -- [[ credits to whoever coded it -- ]]
        
        -- [[ Nearest Point and Nearest Part -- ]]
        task.spawn(function()
    while task.wait() do
        if getgenv().Opponent.Silent.Enabled then
            targ = ClosestPlrFromMouse()
        end
        
                if targ then
            if getgenv().Opponent.Silent.Enabled and (targ.Character) and getgenv().Opponent.Silent.NearestCursorHitpart then
                getgenv().Opponent.Silent.HitParts = tostring(GetClosestBodyPart(targ.Character))
            end
        end
    end
end)

-- [[ Silent FOV -- ]]
local Circle = Drawing.new("Circle")
Circle.Color = getgenv().Opponent.Fov.Color
Circle.Thickness = getgenv().Opponent.Fov.Thickness
Circle.Filled = getgenv().Opponent.Fov.Filled
Circle.Transparency = getgenv().Opponent.Fov.Transparency
Circle.NumSides = getgenv().Opponent.Fov.Sides
local UpdateFOV = function()
    if (not Circle) then
        return Circle
    end
    Circle.Visible = getgenv().Opponent.Fov.Visible
    Circle.Radius = getgenv().Opponent.Fov.Radius * 3
    Circle.Position = Vector2.new(Mouse.X, Mouse.Y + (game:GetService("GuiService"):GetGuiInset().Y))
    return Circle
end

RunService.Heartbeat:Connect(UpdateFOV)

ClosestPlrFromMouse = function()
    local Target, Closest = nil, 1 / 0

    for _, v in pairs(Players:GetPlayers()) do
        if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
            local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

            if (Circle.Radius > Distance and Distance < Closest and OnScreen) then
                Closest = Distance
                Target = v
            end
        end
    end
    return Target
end

local WTS = function(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local IsOnScreen = function(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

-- [[ Alert anf Bind -- ]]
Mouse.KeyDown:Connect(
    function(Key)
    if getgenv().Opponent.Silent.Enable_KeyBind then
        local Keybind = getgenv().Opponent.Silent.KeyBind:lower()
        if (Key == Keybind) then
            if getgenv().Opponent.Silent.Enabled == true then
                getgenv().Opponent.Silent.Enabled = false
                if getgenv().Opponent.Silent.Alert == true then
                    print("Disabled")
                end
            else
                getgenv().Opponent.Silent.Enabled = true
                if getgenv().Opponent.Silent.Alert == true then
                    print("Enabled")
                end
            end
        end
    end
)

-- [[ Mode -- ]]
local grmt = getrawmetatable(game)
local backupindex = grmt.__index
setreadonly(grmt, false)

local grmt = getrawmetatable(game)
local backupindex = grmt.__index
setreadonly(grmt, false)

grmt.__index =
    newcclosure(
        function(self, v)
            if (getgenv().Opponent.Silent.Enabled and Mouse and tostring(v) == "Hit") then
                if getgenv().Opponent.Silent.Mode == "Target" then
                    Prey = Plr
                elseif getgenv().Opponent.Silent.Mode == "FOV" then
                    Prey = ClosestPlrFromMouse()
                end

                if Prey then
                    local endpoint =
                        mainevent:FireServer(namecalltype,
                            game.Players[tostring(Prey)].Character[getgenv().Opponent.Silent.HitParts].Position +
                            (game.Players[tostring(Prey)].Character[getgenv().Opponent.Silent.HitParts].Velocity * getgenv().Opponent.Silent.Prediction))
                    return (tostring(v) == "Hit" and endpoint)
                end
            end
            return backupindex(self, v)
        end
    ) -- [[ Credits to the coder -- ]]
    
    -- [[ HitParts -- ]]
    function PredictionictTargets(Target, Value)
    return Plr.Character[getgenv().Opponent.Silent.HitParts].CFrame +
    (Plr.Character.Humanoid.MoveDirection * Value * 16)
end -- [[ credits to the coder -- ]]

-- [[ GunFov -- ]]
GetGunName = function(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end

GetCurrentWeaponName = function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
       local Tool =  LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
       if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
          return GetGunName(Tool.Name)
       end
    end
    return nil
end

WTS = function(Object)
    local ObjectVector = CurrentCamera:WorldToScreenPoint(Object.Position)
    return v2.new(ObjectVector.X, ObjectVector.Y)
end

Filter = function(obj)
    if (obj:IsA('BasePart')) then
        return true
    end
end

mousePosv2 = function()
    return v2.new(Mouse.X, Mouse.Y) 
end

IsOnScreen2 = function(Object)
    local IsOnScreen = CurrentCamera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end

LocalPlayer.Character.ChildAdded:Connect(function(Weapon)
    if Opponent['GunFov'].Enabled == true then
        local dis = (LocalPlayer.Character.HumanoidRootPart.Position - SilentTarget.Character.HumanoidRootPart.Position).Magnitude
        if SilentTarget then
            if Weapon.Name == "[Double-Barrel SG]" then
                if Opponent['GunFov']['DoubleBarrel'].Fov == true and Opponent['GunFov']['DoubleBarrel'].Prediction == true and Opponent['GunFov']['DoubleBarrel']['HitChance'] == true then
                    if dis < Opponent['GunFov'].Close then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov']['DoubleBarrel']['Close_Fov'] * 3
                        Opponent['Silent'].HitChance = Opponent['GunFov']['DoubleBarrel']['Close_HitChance']
                        Opponent['Silent'].Prediction = Opponent['GunFov']['DoubleBarrel']['Close_Prediction']
                    elseif dis < Opponent['GunFov'].Mid then
                        Opponent.['Fov'].Silent.Size = Opponent['GunFov']['DoubleBarrel']['Mid_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov']['DoubleBarrel']['Mid_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov']['DoubleBarrel']['Mid_HitChance']
                    elseif dis < Opponent['GunFov'].Far then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov']['DoubleBarrel']['Far_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov']['DoubleBarrel']['Far_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov']['DoubleBarrel']['Far_HitChance']
                    end
                end
            end
            if Weapon.Name == "[Revolver]" then
                if Opponent['GunFov'].Revolver.Fov == true and Opponent['GunFov'].Revolver.Prediction == true and Opponent['GunFov'].Revolver.HitChance == true then
                    if dis < Opponent['GunFov'].Close then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov'].Revolver['Close_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov'].Revolver['Close_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov'].Revolver['Close_HitChance']
                    elseif dis < Opponent['GunFov'].Mid then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov'].Revolver['Mid_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov'].Revolver['Mid_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov'].Revolver['Mid_HitChance']
                    elseif dis < Opponent['GunFov'].Far then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov'].Revolver['Far_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov'].Revolver['Far_Prediction']                        
                        Opponent['Silent'].HitChance = Opponent['GunFov'].Revolver['Far_HitChance']
                    end
                end
            end
            if Weapon.Name == "[TacticalShotgun]" then
                if Opponent['GunFov']['TacticalShotgun'].Fov == true and Opponent['GunFov']['TacticalShotgun'].Prediction == true and Opponent['GunFov']['TacticalShotgun']['HitChance'] == true then
                    if dis < Opponent['GunFov'].Close then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov']['TacticalShotgun']['Close_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov']['TacticalShotgun']['Close_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov']['TacticalShotgun']['Close_HitChance']
                    elseif dis < Opponent['GunFov'].Mid then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov']['TacticalShotgun']['Mid_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov']['TacticalShotgun']['Mid_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov']['TacticalShotgun']['Mid_HitChance']
                    elseif dis < Opponent['GunFov'].Far then
                        Opponent['Fov'].Silent.Size = Opponent['GunFov']['TacticalShotgun']['Far_Fov'] * 3
                        Opponent['Silent'].Prediction = Opponent['GunFov']['TacticalShotgun']['Far_Prediction']
                        Opponent['Silent'].HitChance = Opponent['GunFov']['TacticalShotgun']['Far_HitChance']
                    end
                end
            end
        end
    end
end) -- [[Credits to colloper -- ]]
