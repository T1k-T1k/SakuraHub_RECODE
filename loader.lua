-- // Sakura Hub 🌸 \\ -- | ( Legacy Version: 1.31 | Recode Version: 1.12 ) [ Made by Mommy Flames :3 / Recoded by T1k ^^ ]

--[[---------------------------------------------------------------------------------------------------
-- This script updates a lot, Use this loadstring to be in the latest version:

getgenv().ToggleUI = "J" -- //  Key Toggle "J" set by default however you can change it.
getgenv().SakuraHub = "https://raw.githubusercontent.com/T1k-T1k/SakuraHub_RECODE/refs/heads/main/loader.lua"; <- Script Source

pcall(function()
    loadstring(game:HttpGet(getgenv().SakuraHub))();
end)
]]-----------------------------------------------------------------------------------------------------
getgenv().CurrentVersion = "1.31";

-- // Auto Loader \\ --
repeat task.wait(0.25) until game:IsLoaded();task.spawn(function() pcall(function() if game:GetService("CoreGui"):FindFirstChild("DrRay") then game:GetService("CoreGui").DrRay:Destroy() end end) end)

-- // Auto Skip Loading Menu \\ --
task.spawn(function()
    pcall(function()if not getgenv().SkippedMenu == true then getgenv().SkippedMenu = true;
        repeat task.wait(0.1) until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Loading") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainMenu");
            game:GetService("Players").LocalPlayer.PlayerGui.Loading:Destroy();game:GetService("Players").LocalPlayer.PlayerGui.MainMenu.Enabled = false;
            game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("Play"):FireServer();workspace.scene:Destroy();
        end
    end)
end)

-- // Auto Fix Camera \\ --
task.spawn(function()
    pcall(function()if not getgenv().FixedCamera == true then getgenv().FixedCamera = true;
            repeat task.wait(1.45) until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Stats");
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,true);
            workspace.CurrentCamera:remove();task.wait(0.15);
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid");
            workspace.CurrentCamera.CameraType = "Custom";game:GetService("Players").LocalPlayer.PlayerGui.MainMenu:Destroy();
            game.Players.LocalPlayer.CameraMinZoomDistance = 0.5;game.Players.LocalPlayer.CameraMaxZoomDistance = 400;
            game.Players.LocalPlayer.CameraMode = "Classic";game.Players.LocalPlayer.Character.Head.Anchored = false;
            game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Enabled = true;
            getgenv().CanLoadIntoSakuraStand = true;
        end
    end)
end)

-- // Anti Fall Fixer \\ --
task.spawn(function()
    pcall(function()if not getgenv().AntiFallLoaded == true then getgenv().AntiFallLoaded = true;
        local Base1 = Instance.new("Part");
        Base1.Size = Vector3.new(9999999999,150,9999999999);
        Base1.Position = Vector3.new(-521.1619262695312,-390.18596839904785,1644.64208984375);
        Base1.Anchored = true;Base1.Transparency = 0.5;Base1.Name = "AntiFall1";Base1.Parent = workspace;
        local Base2 = Instance.new("Part");
        Base2.Size = Vector3.new(9999999999,150,9999999999);
        Base2.Position = Vector3.new(-9307.4345703125,110.1080627441406,1495.1046142578125);
        Base2.Anchored = true;Base2.Transparency = 0.5;Base2.Name = "AntiFall2";Base2.Parent = workspace;
        end
    end)
end)

-- // Anti AFK \\ --
task.spawn(function()
    if not getgenv().AntiAfk == true then getgenv().AntiAfk = true;
        while true do task.wait(1100); -- 18 Minutes 20 Seconds
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightBracket",false,game); -- Presses "]" Every ~ 18 Minutes
            end)
        end
    end
end)

-- // Settings Manager \\ --
getgenv().Configurations = function()
    pcall(function()
        -- [Grinding Scripts]
        getgenv().AutoPrivateGrinding = false;
        getgenv().AutoPublicGrinding = false;
        getgenv().AutoKillNearestMob = false;
        getgenv().AutoRollCidBanner = false;
        getgenv().AutoStealingItems = false;
        getgenv().AutoConvertTokens = false;
        getgenv().AutoStoreStageOne = false;
        getgenv().AutoBreakthrough = false;
        getgenv().AutoPickingItems = false;
        getgenv().AutoSpawningToji = false;
        getgenv().AutoOneShotting = false;
        getgenv().AutoStealingOfa = false;
        getgenv().AutoRolandTheme = false;
        getgenv().AutoSukunaTheme = false;
        getgenv().AutoSpawningDuo = false;
        getgenv().AutoSpawningDio = false;
        getgenv().AutoMainFarming = false;
        getgenv().AutoResetIchigo = false;

        -- Deku
        -- Old
        getgenv().AutofarmOnDeku1 = false;
        getgenv().AutofarmOnDeku2 = false;
        getgenv().AutofarmOnDeku3 = false;

        -- New
        getgenv().AutoFarmDekuMainAcc = false;
        getgenv().AutoFarmDekuAlt = false;
        -- getgenv().AutoFarmDekuSolo = false;

        getgenv().AutoEquipWeapon = false;
        getgenv().AutoRollDeaths = false;
        getgenv().AutoRollArcade = false;
        getgenv().AutoSavingCash = false;
        getgenv().AutoRollBanner = false;
        getgenv().AutoBinahTheme = false;
        getgenv().AutoAltFarming = false;
        getgenv().AutoLevelingUp = false;
        getgenv().AutoRespawning = false;
        getgenv().AutoDekuTheme = false;
        getgenv().AutoMonotone = false;
        getgenv().AutoCidTheme = false;
        getgenv().AutoSafeZone = false;
        getgenv().AutoRebirth = false;
        getgenv().AutoSelling = false;
        getgenv().AutoRaining = false;
        getgenv().AutoCloudy = false;

        -- [Exchange Scripts]
        getgenv().AutoB4T = false;
        getgenv().AutoB4P = false;
        getgenv().AutoB4S = false;
        getgenv().AutoB4C = false;

        -- [Quest Scripts]
        getgenv().AutoParryingDamage = false;
        getgenv().AutoBlockingDamage = false;
        getgenv().AutoDealingDamage = false;
        getgenv().AutoTakingDamage = false;
        getgenv().AutoDyingDamage = false;

        -- [Storage Scripts]
        getgenv().StoringAnyEverything = false;
        getgenv().StoringSingularity = false;
        getgenv().StoringNikyuNikyu = false;
        getgenv().StoringDiosDiary = false;
        getgenv().StoringInverted = false;
        getgenv().StoringDiosBone = false;
        getgenv().StoringArasaka = false;
        getgenv().StoringKujoHat = false;
        getgenv().StoringHogyoku = false;
        getgenv().StoringCrimson = false;
        getgenv().StoringCortex = false;
        getgenv().StoringFinger = false;
        getgenv().StoringGloves = false;
        getgenv().StoringSplit = false;
        getgenv().StoringGrace = false;
        getgenv().StoringChain = false;
        getgenv().StoringCyan = false;
        getgenv().StoringTech = false;

        -- [Fighting Scripts]
        getgenv().AutoTeleportPunching = false;
        getgenv().AutoFuckingSyrentia = false;
        getgenv().AutoFuckingAuddy = false;
        getgenv().AutoBlockWarning = false;
        getgenv().AutoAimlocking = false;
        getgenv().AutoGlitching = false;
        getgenv().AutoDefending = false;
        getgenv().AutoRoasting = false;
        getgenv().AutoDashing = false;
        getgenv().AutoDodging = false;

        -- [Movement Scripts]
        getgenv().WalkspeedBypass = false;
        getgenv().JumpPowerBypass = false;

        -- [Esp Scripts]
        getgenv().EspEntities = false;
        getgenv().EspPlayers = false;
        getgenv().EspNpcs = false;
        getgenv().EspItems = false;

        -- [Game UI Scripts]
        getgenv().CloseAnnoyingButtons = false;
        
        -- [Sakura Hub UI Scripts]
        getgenv().AutoGoingRainbow = false;
        game:GetService("CoreGui").StatisticsGUI.Enabled = false;
    end)
end

getgenv().Configurations();
repeat task.wait(0.35) until getgenv().CanLoadIntoSakuraStand == true or game.PlaceId == 15552367548;
for i,v in ipairs(game:GetService("Lighting"):GetChildren()) do 
    if v.Name == "ONSTARTMENUYEAH" then v:Destroy();
        game.Lighting.Ambient = Color3.fromRGB(255,255,255);game.Lighting.Brightness = 0.5;
        game.Lighting.ColorShift_Bottom = Color3.fromRGB(255,255,255);game.Lighting.ColorShift_Top = Color3.fromRGB(255,255,255);
        game.Lighting.ExposureCompensation = 0;game.Lighting.FogColor = Color3.fromRGB(255,255,255);
        game.Lighting.FogEnd = 999999999;game.Lighting.GeographicLatitude = 41.733;
        game.Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255);game.Lighting.GlobalShadows = true;
    end
end

-----------------------------------------------------[[ Main Ui Libs ]]------------------------------------------------------
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/T1k-T1k/SakuraHub_RECODE/refs/heads/main/UILibs/DrayLib.lua"))();
local BoredLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/T1k-T1k/SakuraHub_RECODE/refs/heads/main/UILibs/BoredLib.lua"))();
-----------------------------------------------------[[ Main Ui Libs ]]------------------------------------------------------

getgenv().StartLoading = function(z)
    return function(x)
        return function()
            if getgenv()[z] == true then
                if type( getgenv()[x]) == "function" then
                    task.spawn(getgenv()[x]);
                end
            end
        end
    end
end

getgenv().ResetConfigurations = function()
    if isfile("Sakura_Hub_config.txt") then
        delfile("Sakura_Hub_config.txt");
        BoredLibrary.prompt("Sakura Hub 🌸","Configurations Deleted!",1.5);
    else
        BoredLibrary.prompt("Sakura Hub 🌸","Configurations Doesn't Exist...",1.5);
    end
end

getgenv().SaveConfigurations = function()
    local Data = "";
    for Key,Val in pairs(getgenv()) do
        if type(Val) == "boolean" and Key ~= "ToggleVisibility" and Key ~= "ExecutedStatisticsGUI" then
            Data = Data..Key.."="..tostring(Val).."\n";
        end
    end
    writefile("Sakura_Hub_config.txt",Data);
    BoredLibrary.prompt("Sakura Hub 🌸","Configurations Saved!",1.5);
end

getgenv().LoadConfigurations = function()
    if isfile("Sakura_Hub_config.txt") then
        local Data = readfile("Sakura_Hub_config.txt")
        for Line in string.gmatch(Data,"([^\n]*)\n?") do
            local Key,Val = string.match(Line,"([^=]+)=([^=]+)");
            if Key and Val then
                getgenv()[Key] = (Val == "true");
            end
        end
        BoredLibrary.prompt("Sakura Hub 🌸","Configurations Loaded!",1.5);

        task.spawn(getgenv().StartLoading("WalkspeedBypass")("SuperSpeed"));
        task.spawn(getgenv().StartLoading("JumpPowerBypass")("SuperJump"));
        task.spawn(getgenv().StartLoading("EspPlayers")("EspOnPlayers"));
        task.spawn(getgenv().StartLoading("EspEntities")("EspOnEntities"));
        task.spawn(getgenv().StartLoading("EspItems")("EspOnItems"));
        task.spawn(getgenv().StartLoading("EspNpcs")("EspOnNpcs"));
        task.spawn(getgenv().StartLoading("AutoMonotone")("BlackAndWhite"));
        task.spawn(getgenv().StartLoading("AutoRaining")("ItsRaining"));
        task.spawn(getgenv().StartLoading("AutoCloudy")("ItsCloudy"));
        task.spawn(getgenv().StartLoading("AutoDekuTheme")("ActivateDekuTheme"));
        task.spawn(getgenv().StartLoading("AutoSukunaTheme")("ActivateSukunaTheme"));
        task.spawn(getgenv().StartLoading("AutoBinahTheme")("ActivateBinahTheme"));
        task.spawn(getgenv().StartLoading("AutoRolandTheme")("ActivateRolandTheme"));
        task.spawn(getgenv().StartLoading("AutoCidTheme")("ActivateCidTheme"));
        task.spawn(getgenv().StartLoading("AutoAimlocking")("AimlockingOnPlayers"));
        task.spawn(getgenv().StartLoading("AutoRoasting")("MockingPlayers"));
        task.spawn(getgenv().StartLoading("AutoFuckingAuddy")("FuckingAuddysBigGyatt"));
        task.spawn(getgenv().StartLoading("AutoFuckingSyrentia")("FuckingSyrentiaMouth"));
        task.spawn(getgenv().StartLoading("AutoTeleportPunching")("TeleportHittingBehind"));
        task.spawn(getgenv().StartLoading("AutoRespawning")("AutoGodModding"));
        task.spawn(getgenv().StartLoading("AutoDefending")("DefendAgainstM1s"));
        task.spawn(getgenv().StartLoading("AutoDashing")("DodgeFromAttacks"));
        task.spawn(getgenv().StartLoading("AutoDodging")("UsingUltraIstinct"));
        task.spawn(getgenv().StartLoading("AutoBlockWarning")("AutoBlockingRedAttacks"));
        task.spawn(getgenv().StartLoading("AutoGlitching")("UsingVoidOnOthers"));
        task.spawn(getgenv().StartLoading("AutoGoingRainbow")("UsingRainbowUI"));
        task.spawn(getgenv().StartLoading("StoringAnyEverything")("StoreEverything"));
        task.spawn(getgenv().StartLoading("StoringNikyuNikyu")("StoreNikyu"));
        task.spawn(getgenv().StartLoading("StoringFinger")("StoreSukuna"));
        task.spawn(getgenv().StartLoading("StoringInverted")("StoreInverted"));
        task.spawn(getgenv().StartLoading("StoringSplit")("StoreSplit"));
        task.spawn(getgenv().StartLoading("StoringChain")("StoreChain"));
        task.spawn(getgenv().StartLoading("StoringCortex")("StoreCortex"));
        task.spawn(getgenv().StartLoading("StoringCrimson")("StoreCrimson"));
        task.spawn(getgenv().StartLoading("StoringCyan")("StoreCyan"));
        task.spawn(getgenv().StartLoading("StoringTech")("StoreTech"));
        task.spawn(getgenv().StartLoading("StoringArasaka")("StoreArasaka"));
        task.spawn(getgenv().StartLoading("StoringKujoHat")("StoreKujoHat"));
        task.spawn(getgenv().StartLoading("StoringDiosBone")("StoreDiosBone"));
        task.spawn(getgenv().StartLoading("StoringDiosDiary")("StoreDiosDiary"));
        task.spawn(getgenv().StartLoading("StoringHogyoku")("StoreHogyoku"));
        task.spawn(getgenv().StartLoading("StoringGloves")("StoreGloves"));
        task.spawn(getgenv().StartLoading("StoringGrace")("StoreOAs"));
        task.spawn(getgenv().StartLoading("AutoLevelingUp")("LevelingUp"));
        task.spawn(getgenv().StartLoading("AutoSavingCash")("SavingUpCash"));
        task.spawn(getgenv().StartLoading("AutoRebirth")("Rebirthing"));
        task.spawn(getgenv().StartLoading("AutoBreakthrough")("BreakingThrough"));
        task.spawn(getgenv().StartLoading("AutoPublicGrinding")("PublicServerAutofarm"));
        task.spawn(getgenv().StartLoading("AutoPrivateGrinding")("PrivateServerAutofarm"));
        task.spawn(getgenv().StartLoading("AutoSelling")("SellingAnyItem"));
        task.spawn(getgenv().StartLoading("AutoEquipWeapon")("WeaponEquipped"));
        task.spawn(getgenv().StartLoading("AutoResetIchigo")("IchigoResetted"));
        task.spawn(getgenv().StartLoading("AutoStoreStageOne")("StoredOFA"));
        task.spawn(getgenv().StartLoading("AutoAltFarming")("UsingAltFarming"));
        task.spawn(getgenv().StartLoading("AutoMainFarming")("UsingMainAccountFarming"));
        -- Deku
        -- Old
        task.spawn(getgenv().StartLoading("AutofarmOnDeku1")("UsingDekuAutofarm1"));
        task.spawn(getgenv().StartLoading("AutofarmOnDeku2")("UsingDekuAutofarm2"));
        task.spawn(getgenv().StartLoading("AutofarmOnDeku3")("UsingDekuAutofarm3"));

        -- New
        task.spawn(getgenv().StartLoading("AutoFarmDekuMainAcc")("UsingDekuFarmMain"));
        task.spawn(getgenv().StartLoading("AutoFarmDekuAlt")("UsingDekuFarmAlt"));

        -- task.spawn(getgenv().StartLoading("AutoFarmDekuSolo")("UsingDekuFarmSolo"));

        task.spawn(getgenv().StartLoading("AutoConvertTokens")("UsingTokensToCash"));
        --task.spawn(getgenv().StartLoading("AutoStealingOfa")("StealingOneForAll"));
        task.spawn(getgenv().StartLoading("AutoStealingItems")("StealingAnyItem"));
        task.spawn(getgenv().StartLoading("AutoPickingItems")("PickAuraAnyItem"));
        task.spawn(getgenv().StartLoading("AutoSafeZone")("UsingSafeZone"));
        task.spawn(getgenv().StartLoading("AutoOneShotting")("OneShotAnyBossAndMob"));
        task.spawn(getgenv().StartLoading("AutoKillNearestMob")("AutofarmNearestMob"));
        task.spawn(getgenv().StartLoading("AutoRollBanner")("BannerRolling"));
        task.spawn(getgenv().StartLoading("AutoRollCidBanner")("CidBannerRolling"));
        task.spawn(getgenv().StartLoading("AutoRollKaijuBanner")("KaijuBannerRolling"));
        task.spawn(getgenv().StartLoading("AutoRollDeaths")("RollDeathBanner"));
        task.spawn(getgenv().StartLoading("AutoRollArcade")("RollArcadeBanner"));
        task.spawn(getgenv().StartLoading("AutoB4T")("BreakthroughForToken"));
        task.spawn(getgenv().StartLoading("AutoB4S")("BreakthroughForStorage"));
        task.spawn(getgenv().StartLoading("AutoB4P")("BreakthroughForPresent"));
        task.spawn(getgenv().StartLoading("AutoB4C")("BreakthroughForCapacity"));
        task.spawn(getgenv().StartLoading("AutoParryingDamage")("QuestParryDamage"));
        task.spawn(getgenv().StartLoading("AutoBlockingDamage")("QuestBlockDamage"));
        task.spawn(getgenv().StartLoading("AutoDyingDamage")("QuestDeathDamage"));
        task.spawn(getgenv().StartLoading("AutoTakingDamage")("QuestTakeDamage"));
        task.spawn(getgenv().StartLoading("AutoDealingDamage")("QuestDealDamage"));
        task.spawn(getgenv().StartLoading("CloseAnnoyingButtons")("CloseAnnoyingButtons"))
    else
        BoredLibrary.prompt("Sakura Hub 🌸","Configurations Not Found...",1.5);
    end
end

getgenv().SuperSpeed = function()
    task.spawn(function()
        while getgenv().WalkspeedBypass == true and game:GetService("Players").LocalPlayer do
            pcall(function()
                local chr = game:GetService("Players").LocalPlayer.Character
                if chr then
                   local hum = chr:FindFirstChildWhichIsA("Humanoid");
                    if hum and hum.Parent then
                        local hb = game:GetService("RunService").Heartbeat
                        local delta = hb:Wait()
                        if hum.MoveDirection.Magnitude > 0 then
                            chr:TranslateBy(hum.MoveDirection * 10 * delta * 10);
                        else
                            chr:TranslateBy(hum.MoveDirection * delta * 10);
                        end
                    end
                end
            end)
            task.wait(0.0015);
        end
    end)
end

getgenv().SuperJump = function()
    task.spawn(function()
        while getgenv().JumpPowerBypass == true do
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetState() == Enum.HumanoidStateType.Jumping then
                    game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame * CFrame.new(0,110,0);
                end
            end)
            task.wait(0.0015);
        end
    end)
end

getgenv().CreateCloseButton = function()
    local player = game:GetService("Players").LocalPlayer
    local gui = player:WaitForChild("PlayerGui"):WaitForChild("TopbarStandard")
    local tweenService = game:GetService("TweenService")

    if gui:FindFirstChild("CustomCloseButton") then
        gui.CustomCloseButton:Destroy()
    end

    local frame = Instance.new("Frame")
    frame.Name = "CustomCloseButton"
    frame.Size = UDim2.new(0, 50, 0, 50)
    frame.Position = UDim2.new(0, 5, 0, 5)
    frame.BackgroundTransparency = 1
    frame.ZIndex = 10
    frame.Parent = gui

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    layout.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Name = "CloseButton"
    btn.Text = "OPEN"
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.Position = UDim2.new(0, 0, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextScaled = false
    btn.TextSize = 12
    btn.BorderSizePixel = 0
    btn.AutoButtonColor = true
    btn.ZIndex = 11
    btn.BackgroundTransparency = 1
    btn.TextTransparency = 1
    btn.TextWrapped = true
    btn.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = btn

    tweenService:Create(btn, TweenInfo.new(0.4), {
        BackgroundTransparency = 0.2,
        TextTransparency = 0
    }):Play()

    local holders = gui:FindFirstChild("Holders")
    if holders then
        holders.Visible = true
        tweenService:Create(holders, TweenInfo.new(0.4), {
            Position = UDim2.new(0, 55, 0, 0)
        }):Play()
    end

    local function updateText()
        if holders and holders.Visible then
            btn.Text = "CLOSE"
        else
            btn.Text = "OPEN"
        end
    end
    updateText()

    btn.MouseButton1Click:Connect(function()
        holders = gui:FindFirstChild("Holders")
        if not holders then return end

        if holders.Visible then
            -- скрытие
            holders.Visible = false
        else
            holders.Visible = true
        end

        updateText()
    end)
end

getgenv().EspOnPlayers = function()
    local Folder = workspace.Living

    local function CreateBilboard(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end

        local BillboardGui = Instance.new("BillboardGui");
        local TextLabel = Instance.new("TextLabel");

        BillboardGui.Parent = Head
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0,100,0,50);
        BillboardGui.StudsOffset = Vector3.new(0,2,0);

        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1);
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1,0,1,0);
        TextLabel.Text = X.Name
        TextLabel.TextColor3 = Color3.fromRGB(255,255,0);
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0);
        TextLabel.Visible = false

        return BillboardGui,TextLabel
    end

    local function UseESP(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end

        local BillboardGui,TextLabel = CreateBilboard(X)
        local RenderSteppedCon

        local function DisconnectCons()
            if BillboardGui then
                BillboardGui:Destroy();
            end
            if RenderSteppedCon then
                RenderSteppedCon:Disconnect();
                RenderSteppedCon = nil
            end
        end

        RenderSteppedCon = game:GetService("RunService").RenderStepped:Connect(function()
            local HeadPosition,HeadOnScreen = workspace.CurrentCamera:WorldToViewportPoint(Head.Position);
            if HeadOnScreen then
                TextLabel.Visible = getgenv().EspPlayers
            else
                TextLabel.Visible = false
            end
        end)

        X.AncestryChanged:Connect(function(_,b)
            if not b then
                DisconnectCons();
            end
        end)
    end

    local function isPlayer(X)
        return game.Players:GetPlayerFromCharacter(X) ~= nil
    end

    local function XAdded(X)
        if isPlayer(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            UseESP(X);
        end
        X.ChildAdded:Connect(function(v)
            if isPlayer(v) and v:IsA("Model") and v:FindFirstChild("Head") then
                UseESP(v);
            end
        end)
    end

    for _,X in ipairs(Folder:GetChildren()) do
        if isPlayer(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            XAdded(X);
        end
    end

    Folder.ChildAdded:Connect(function(v)
        task.wait(0.5);XAdded(v);
    end)
end

getgenv().EspOnEntities = function()
    local Folder = workspace.Living
    local Dummies = {"Attacking Dummy","Dummy","Counter Dummy","Blocking Dummy","Tough Dummy"};

    local function CreateBilboard(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end

        local BillboardGui = Instance.new("BillboardGui");
        local TextLabel = Instance.new("TextLabel");

        BillboardGui.Parent = Head
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0,100,0,50);
        BillboardGui.StudsOffset = Vector3.new(0,2,0);

        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1);
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1,0,1,0);
        TextLabel.Text = X.Name
        TextLabel.TextColor3 = Color3.fromRGB(255,0,0);
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0);
        TextLabel.Visible = false

        return BillboardGui,TextLabel
    end

    local function UseESP(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end

        local BillboardGui,TextLabel = CreateBilboard(X)
        local RenderSteppedCon

        local function DisconnectCons()
            if BillboardGui then
                BillboardGui:Destroy();
            end
            if RenderSteppedCon then
                RenderSteppedCon:Disconnect();
                RenderSteppedCon = nil
            end
        end

        RenderSteppedCon = game:GetService("RunService").RenderStepped:Connect(function()
            local HeadPosition,HeadOnScreen = workspace.CurrentCamera:WorldToViewportPoint(Head.Position);
            if HeadOnScreen then
                TextLabel.Visible = getgenv().EspEntities
            else
                TextLabel.Visible = false
            end
        end)

        X.AncestryChanged:Connect(function(_,b)
            if not b then
                DisconnectCons();
            end
        end)
    end

    local function isPlayer(X)
        for _,k in pairs(game.Players:GetPlayers()) do
            if X.Name == k.Name then
                return true
            end
        end
        return false
    end

    local function isDummy(X)
        for _,m in pairs(Dummies) do
            if X.Name == m then
                return true
            end
        end
        return false
    end

    local function XAdded(X)
        if not isPlayer(X) and not isDummy(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            UseESP(X);
        end
        X.ChildAdded:Connect(function(v)
            if not isPlayer(v) and not isDummy(v) and v:IsA("Model") and v:FindFirstChild("Head") then
                UseESP(v);
            end
        end)
    end

    for _,X in ipairs(Folder:GetChildren()) do
        if not isPlayer(X) and not isDummy(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            XAdded(X);
        end
    end

    Folder.ChildAdded:Connect(function(v)
        task.wait(0.5);XAdded(v);
    end)
end

getgenv().EspOnItems = function()
    local Folder = {workspace.Item,workspace.Item2};
    local Casual = {"Chest","Box","Barrel"};
    
    local function CreateBillboard(X,Color)
        local BillboardGui = Instance.new("BillboardGui");
        local TextLabel = Instance.new("TextLabel");
    
        BillboardGui.Parent = X
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0,100,0,50);
        BillboardGui.StudsOffset = Vector3.new(0,2,0);
    
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1,0,1,0);
        TextLabel.Text = X.Name
        TextLabel.TextColor3 = Color
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0);
        TextLabel.Visible = false
    
        return BillboardGui,TextLabel
    end
    
    local function ShouldIgnore(X)
        return X.Name == "SoulSpawn" or X.Position == Vector3.new(1804.5390625,-298.173583984375,-309.4649658203125);
    end
    
    local function UseESP(X)
        if ShouldIgnore(X) then
            return
        end
    
        local Color = table.find(Casual,X.Name) and Color3.fromRGB(255,255,255) or Color3.fromRGB(0,255,0);
        local BillboardGui,TextLabel = CreateBillboard(X,Color);
        local RenderSteppedCon
    
        local function DisconnectCons()
            if BillboardGui then
                BillboardGui:Destroy();
            end
            if RenderSteppedCon then
                RenderSteppedCon:Disconnect();
                RenderSteppedCon = nil
            end
        end
    
        RenderSteppedCon = game:GetService("RunService").RenderStepped:Connect(function()
            local HeadPosition,HeadOnScreen = workspace.CurrentCamera:WorldToViewportPoint(X.Position);
            if HeadOnScreen then
                TextLabel.Visible = getgenv().EspItems
            else
                TextLabel.Visible = false
            end
        end)
    
        X.AncestryChanged:Connect(function(b)
            if not b then
                DisconnectCons();
            end
        end)
    end
    
    local function XAdded(X)
        if X:IsA("BasePart") then
            UseESP(X);
        end
        X.ChildAdded:Connect(function(v)
            if v:IsA("BasePart") then
                UseESP(v);
            end
        end)
    end
    
    for _,X in ipairs(Folder) do
        for _,X in ipairs(X:GetChildren()) do
            if X:IsA("BasePart") then
                if not ShouldIgnore(X) then
                    XAdded(X);
                end
            end
        end
    
        X.ChildAdded:Connect(function(v)
            if v:IsA("BasePart") and not ShouldIgnore(v) then
                task.wait(0.5);XAdded(v);
            end
        end)
    end
end

getgenv().EspOnNpcs = function()
    local Folder = workspace.Map.NPCs

    local function CreateBilboard(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end
    
        local BillboardGui = Instance.new("BillboardGui");
        local TextLabel = Instance.new("TextLabel");
    
        BillboardGui.Parent = Head
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0,100,0,50);
        BillboardGui.StudsOffset = Vector3.new(0,2,0);
    
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1);
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1,0,1,0);
        TextLabel.Text = X.Name
        TextLabel.TextColor3 = Color3.fromRGB(0,255,255);
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0);
        TextLabel.Visible = false
    
        return BillboardGui,TextLabel
    end
    
    local function UseESP(X)
        local Head = X:FindFirstChild("Head");
        if not Head then return end
    
        local BillboardGui,TextLabel = CreateBilboard(X)
        local RenderSteppedCon
    
        local function DisconnectCons()
            if BillboardGui then
                BillboardGui:Destroy();
            end
            if RenderSteppedCon then
                RenderSteppedCon:Disconnect();
                RenderSteppedCon = nil
            end
        end
    
        RenderSteppedCon = game:GetService("RunService").RenderStepped:Connect(function()
            local HeadPosition,HeadOnScreen = workspace.CurrentCamera:WorldToViewportPoint(Head.Position);
            if HeadOnScreen then
                TextLabel.Visible = getgenv().EspNpcs
            else
                TextLabel.Visible = false
            end
        end)
    
        X.AncestryChanged:Connect(function(_,b)
            if not b then
                DisconnectCons();
            end
        end)
    end
    
    local function isPlayer(X)
        for _,k in pairs(game.Players:GetPlayers()) do
            if X.Name == k.Name then
                return true
            end
        end
        return false
    end
    
    local function XAdded(X)
        if not isPlayer(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            UseESP(X);
        end
        X.ChildAdded:Connect(function(v)
            if not isPlayer(v) and v:IsA("Model") and v:FindFirstChild("Head") then
                UseESP(v);
            end
        end)
    end
    
    for _,X in ipairs(Folder:GetChildren()) do
        if not isPlayer(X) and X:IsA("Model") and X:FindFirstChild("Head") then
            XAdded(X);
        end
    end
    
    Folder.ChildAdded:Connect(function(v)
        task.wait(0.5);XAdded(v);
    end)
end

-- Weather Logic

getgenv().BlackAndWhite = function()
    task.spawn(function()
        if getgenv().AutoMonotone == true then
            workspace.Monotone.Value = true;
        else
            workspace.Monotone.Value = false;
        end
    end)
end

getgenv().ItsRaining = function()
    task.spawn(function()
        if getgenv().AutoRaining == true then
            workspace.Raining.Value = true;
        else
            workspace.Raining.Value = false;
        end
    end)
end

getgenv().ItsCloudy = function()
    task.spawn(function()
        if getgenv().AutoCloudy == true then
            workspace.Cloudy.Value = true;
        else
            workspace.Cloudy.Value = false;
        end
    end)
end

-- Weather Logic End

-- Sound Theme Logic

getgenv().ActivateSukunaTheme = function()
    task.spawn(function()
        if getgenv().AutoSukunaTheme == true then
            local SukunaTheme = "http://www.roblox.com/asset/?id=15536911657"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = SukunaTheme
            Sound.Volume = 5;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)
end

getgenv().ActivateDekuTheme = function()
    task.spawn(function()
        if getgenv().AutoDekuTheme == true then
            local DekuTheme = "http://www.roblox.com/asset/?id=13006939528"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = DekuTheme
            Sound.Volume = 10;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)
end

getgenv().ActivateBinahTheme = function()
    task.spawn(function()
        if getgenv().AutoBinahTheme == true then
            local BinahTheme = "http://www.roblox.com/asset/?id=18248621175"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = BinahTheme
            Sound.Volume = 5;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)
end

getgenv().ActivateRolandTheme = function()
    task.spawn(function()
        if getgenv().AutoRolandTheme == true then
            local RolandTheme = "http://www.roblox.com/asset/?id=17105939177"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = RolandTheme
            Sound.Volume = 10;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)
end

getgenv().ActivateCidTheme = function()
    task.spawn(function()
        if getgenv().AutoCidTheme == true then
            local CidTheme = "http://www.roblox.com/asset/?id=15262782046"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = CidTheme
            Sound.Volume = 5;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)
end

-- Sound Theme Logic End

getgenv().AimlockingOnPlayers = function()
    game:GetService("RunService").RenderStepped:Connect(function() if not getgenv().AutoAimlocking == true then return end local x,b for _,v in ipairs(game:GetService("Players"):GetPlayers()) do if v.Character and v ~= game:GetService("Players").LocalPlayer then if not x or (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < b then x = v b = (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude end end end if x and b <= 35 then game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p,x.Character.HumanoidRootPart.Position) end end);
end

getgenv().MockingPlayers = function()
    local AntagonizeList = {
        "Keep dying, it's amusing",
        "Better luck next time",
        "That was embarrassing",
        "Can't handle the pressure?",
        "You call that playing?",
        "Go cry to your mommy",
        "How's the view from down there?",
        "You're making this too easy",
        "Did you forget how to play?",
        "Is that all you've got?",
        "I've seen better.",
        "You're a disgrace",
        "Why are you even playing?",
        "Just uninstall.",
        "You're so bad it's funny",
        "I'm not even trying.",
        "Stop embarrassing yourself.",
        "You're a joke",
        "Try harder next time.",
        "How's the taste of defeat?",
        "Do you even play this game?",
        "You must be new here.",
        "Just stop trying.",
        "I'm just toying with you.",
        "That was painful to watch.",
        "Is this your first time playing?",
        "You're outclassed.",
        "Did someone forget their skills?",
        "Maybe games aren't for you.",
        "This is embarrassing for you.",
        "Keep dreaming of victory.",
        "I'm yawning over here.",
        "You make this too easy.",
        "You're not even worth my time.",
        "I've seen toddlers play better.",
        "You're a respawn machine",
        "Did you pay to be this bad?",
        "You're the laughingstock of the server.",
        "Even bots are better than you.",
        "It's like you're playing blindfolded.",
        "Maybe gaming isn't your thing.",
        "Are you allergic to winning?",
        "I'm having a picnic while you respawn.",
        "I've seen more skill in a potato.",
        "This is the saddest gameplay I've seen.",
        "Did you download your skills from the internet?",
        "Are you playing with your eyes closed?",
        "Did your mom install the game for you?",
        "You should change your name to 'Feeder'.",
        "I bet you think you're good at this game.",
        "I could play blindfolded and still win.",
        "Are you intentionally trying to lose?",
        "You're a professional respawn button presser.",
        "Your gameplay is a comedy show.",
        "Do you need a GPS to find the 'Leave' button?",
        "Even the NPCs play better than you.",
        "Do you have a strategy or just pressing buttons randomly?",
        "You must be allergic to victory.",
        "I could go make a sandwich and still win against you.",
        "Are you trying to set a world record for most deaths in a minute?",
        "Your gameplay is a tutorial on how not to play.",
        "I bet you're proud of that death streak.",
        "This is like watching a car crash in slow motion, but less entertaining.",
        "Do you need me to call tech support for you?",
        "I think you need to restart your gaming career.",
        "I'm not sure what's worse, your gameplay or your excuses.",
        "Even my pet could play better than you.",
        "You're like a mystery box... full of disappointments.",
        "I've seen more challenge in a game of checkers.",
        "Did you read the instructions? Oh wait, you didn't.",
        "I bet you think dying is an achievement.",
        "Your gameplay makes me question the meaning of competition.",
        "You're like a legend... in dying.",
        "Do you think dying is a tactic?",
        "I'm surprised you haven't rage quit yet.",
        "You're like a master at dying... and nothing else.",
        "I'm winning so hard, it's almost unfair to you.",
    }
    
    local LPlayer = game.Players.LocalPlayer
    local CRoot
    
    local function UpdateCRoot()
        local LChar = LPlayer.Character
        if LChar then
            CRoot = LChar:FindFirstChild("HumanoidRootPart");
            if not CRoot then
                LChar.ChildAdded:Wait();
                CRoot = LChar:WaitForChild("HumanoidRootPart");
            end
        end
    end

    local function isPlayer(X)
        return game.Players:GetPlayerFromCharacter(X) ~= nil
    end
    
    local function FindNearest()
        local Dist = 45
        local NearestPlr = nil
    
        for _,v in pairs(game.Workspace.Living:GetChildren()) do
            if isPlayer(v) then
                local Humanoid = v:FindFirstChildOfClass("Humanoid");
                local HumanoidRoot = v:FindFirstChild("HumanoidRootPart");
        
                if Humanoid and HumanoidRoot and v ~= LPlayer.Character then
                    if Humanoid.Health == 0 then
                        local Mag = (CRoot.Position - HumanoidRoot.Position).magnitude
                        if Mag < Dist then
                            Dist = Mag
                            NearestPlr = HumanoidRoot
                        end
                    end
                end
            end
        end
    
        return NearestPlr
    end

    task.spawn(function()
        while getgenv().AutoRoasting == true  do
            pcall(function()UpdateCRoot();
                if CRoot then
                    local Found = FindNearest();
                    if Found then                    
                        local args = { AntagonizeList[math.random(1,#AntagonizeList)],"All"};
                        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args));
                    end
                end
            end)
            task.wait(3);
        end
    end)
    
    LPlayer.CharacterAdded:Connect(function()
        task.wait(3);UpdateCRoot();
    end)
end

-- Fucking Logic

getgenv().FuckingAuddysBigGyatt = function()
    task.spawn(function()
        if getgenv().AutoFuckingAuddy == true then
            local FuckAnimation = Instance.new("Animation");FuckAnimation.AnimationId = "rbxassetid://148840371" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(FuckAnimation);k:Play();k:AdjustSpeed(6);
        else
            for i,v in ipairs((game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")):GetPlayingAnimationTracks()) do
                v:Stop();
            end
        end
    end)

    task.spawn(function()
        if getgenv().AutoFuckingAuddy == true then
            local GahDamn = "http://www.roblox.com/asset/?id=8448213216"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = GahDamn
            Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();

            local Claps = "http://www.roblox.com/asset/?id=9114758204"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = Claps
            Sound.Volume = 10;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)

    task.spawn(function()
        while getgenv().AutoFuckingAuddy == true do
            pcall(function()
                local Auddy = game.Workspace.Map.NPCs["Auddy"];
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Auddy.HumanoidRootPart.Position - Auddy.HumanoidRootPart.CFrame.LookVector * 1,Auddy.HumanoidRootPart.Position);
            end)
            task.wait(0.25);
        end
    end)
end

getgenv().FuckingSyrentiaMouth = function()
    task.spawn(function()
        if getgenv().AutoFuckingSyrentia == true then
            local FuckAnimation = Instance.new("Animation");FuckAnimation.AnimationId = "rbxassetid://148840371" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(FuckAnimation);k:Play();k:AdjustSpeed(5);
        else
            for i,v in ipairs((game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")):GetPlayingAnimationTracks()) do
                v:Stop();
            end
        end
    end)

    task.spawn(function()
        if getgenv().AutoFuckingSyrentia == true then
            local GahDamn = "http://www.roblox.com/asset/?id=8448213216"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = GahDamn
            Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();

            local Slurps = "http://www.roblox.com/asset/?id=7132999597"
            local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = Slurps
            Sound.Volume = 10;Sound.Looped = true;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        else
            for i,v in ipairs(workspace:children()) do
                if v:isA("Sound") then
                    v:Destroy();
                end
            end
        end
    end)

    task.spawn(function()
        while getgenv().AutoFuckingSyrentia == true do
            pcall(function()
                local Syrentia = game.Workspace.Map.NPCs["Syrentia"];
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Syrentia.Head.Position - Syrentia.Head.CFrame.LookVector * -1 + Vector3.new(0,-0.5,0),Syrentia.Head.Position);
            end)
            task.wait(0.25);
        end
    end)
end

-- Fucking Logic End

getgenv().TeleportHittingBehind = function()
    getgenv().DetectionDistance = 55
    getgenv().TeleportDistance = 5

    local LPlayer = game.Players.LocalPlayer
    local CRoot

    local function UpdateCRoot()
        local LChar = LPlayer.Character
        if LChar then
            CRoot = LChar:FindFirstChild("HumanoidRootPart");
            if not CRoot then
                LChar.ChildAdded:Wait();
                CRoot = LChar:WaitForChild("HumanoidRootPart");
            end
        end
    end

    local function FindNearest()
        local Dist = getgenv().DetectionDistance
        local NearestPlr = nil

        for _,v in pairs(game.Workspace.Living:GetChildren()) do
            local Humanoid = v:FindFirstChildOfClass("Humanoid");
            local HumanoidRoot = v:FindFirstChild("HumanoidRootPart");

            if Humanoid and HumanoidRoot and v ~= LPlayer.Character then
                if Humanoid.Health > 0 then
                    local Mag = (CRoot.Position - HumanoidRoot.Position).magnitude
                    if Mag < Dist then
                        Dist = Mag
                        NearestPlr = HumanoidRoot
                    end
                end
            end
        end

        return NearestPlr
    end

    game:GetService("UserInputService").InputBegan:Connect(function(t,j)
        if not j and t.UserInputType == Enum.UserInputType.MouseButton1 then
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                if getgenv().AutoTeleportPunching == true then
                    pcall(function()UpdateCRoot();
                        if CRoot then
                            local Found = FindNearest();
                            if Found then
                                local Target = Found.Position + -Found.CFrame.LookVector * getgenv().TeleportDistance
                                LPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Target,Target + (Found.Position - Target).unit));
                            end
                        end
                    end)
                end
            end
        end
    end)

    LPlayer.CharacterAdded:Connect(function()
        task.wait(3);UpdateCRoot();
    end)
end

getgenv().AutoGodModding = function()
    getgenv().HealthRespawn = 195;
    getgenv().GuildName = "Szechuan";
    getgenv().Password = "pepper";

    task.spawn(function()
        while getgenv().AutoRespawning == true do
            pcall(function()
                local Lplayer = game.Players.LocalPlayer
                if Lplayer.Character:FindFirstChild("Humanoid").Health < getgenv().HealthRespawn then
                    local Location = Lplayer.Character.HumanoidRootPart.CFrame
                    local Guild = game:GetService("Workspace").Living:FindFirstChild(Lplayer.Name).Head:FindFirstChild("GuildGUI");
                    local args = {[1] = Guild and Guild.Text.Text == getgenv().GuildName and "Leave" or "Join",[2] = getgenv().GuildName,[3] = getgenv().Password,[4] = ""};
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SetGuild"):FireServer(unpack(args));
    
                    game.Players.LocalPlayer.CharacterAdded:Wait();
    
                    repeat task.wait(0.015) until Lplayer.Character:FindFirstChild("HumanoidRootPart");task.wait(0.35);
    
                    Lplayer.Character.HumanoidRootPart.CFrame = Location;
                end
            end)
            task.wait(0.0015);
        end
    end)
end

getgenv().DefendAgainstM1s = function()
    task.spawn(function()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().AutoDefending == true then
                pcall(function()
                    for _,k in ipairs(workspace.Living:GetChildren()) do
                        if k:IsA("Model") and k:FindFirstChild("Head") and k.Head:IsA("Part") and k.Head.Name == "Head" and k.Head ~= game.Players.LocalPlayer.Character.Head then
                            if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 15 then
                                if k:FindFirstChildOfClass("Humanoid") and k:FindFirstChildOfClass("Humanoid").Health > 0 then
                                    if k.CDValues:FindFirstChild("LMB_Cooldown") and not k.CDValues:FindFirstChild("Posing") and not k.CDValues:FindFirstChild("Blocking") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.HumanoidRootPart.CFrame * CFrame.new(0,0,5);
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new());
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                connection:Disconnect();
            end
        end)
    end)
end

getgenv().DodgeFromAttacks = function()
    task.spawn(function()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().AutoDashing == true then
                pcall(function()
                    for _,k in ipairs(workspace.Living:GetChildren()) do
                        if k:IsA("Model") and k:FindFirstChild("Head") and k.Head:IsA("Part") and k.Head.Name == "Head" and k.Head ~= game.Players.LocalPlayer.Character.Head then
                            if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 15 then
                                if k:FindFirstChildOfClass("Humanoid") and k:FindFirstChildOfClass("Humanoid").Health > 0 then
                                    if k.CDValues:FindFirstChild("OnCooldown") and not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown") and not k.CDValues:FindFirstChild("Posing") and not k.CDValues:FindFirstChild("Blocking") then
                                        local args = {[1] = "D",[2] = Vector3.new(0,0,0)};
                                        game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("Dash"):FireServer(unpack(args));                          
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                connection:Disconnect();
            end
        end)
    end)
end

getgenv().UsingUltraIstinct = function()
    local Aura = function()
        local function v0(v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12)local v13=Instance.new("ParticleEmitter");v13.Parent=v6;v13.Texture=v2;v13.Drag=0;v13.LockedToPart=true;v13.Rate=v12;v13.Lifetime=NumberRange.new(v11,v11);v13.LightEmission=v4;v13.LightInfluence=v5;v13.Speed=NumberRange.new(v9,v9);v13.Rotation=NumberRange.new(v10,v10);v13.Color=ColorSequence.new(v3);local v25={NumberSequenceKeypoint.new(0,v7),NumberSequenceKeypoint.new(1,0)};v13.Size=NumberSequence.new(v25);v13.SpreadAngle=Vector2.new(v8,v8);end local function v1(v28)for v29,v30 in pairs(v28:GetDescendants()) do if (v30:IsA("BasePart") and (v30.Name~="HumanoidRootPart")) then v0("rbxassetid://1336283955",Color3.fromRGB(60,60,60),1,0,v30,1,90,0,60,0.5,50);v0("rbxassetid://1368485188",Color3.fromRGB(255,255,255),1,0,v30,0.5,30,0.5,-10,2,1);end end end v1(game.Players.LocalPlayer.Character);
    end

    local Unaura = function()
        local function v0(v1)if v1:IsA("ParticleEmitter") then v1:Destroy();end for v4,v5 in ipairs(v1:GetChildren()) do v0(v5);end end for v2,v3 in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v3:IsA("BasePart") then v0(v3);end end
    end
    
    local SoundON = function()
        local v0=Instance.new("Sound");v0.Name="Sound";v0.SoundId="http://www.roblox.com/asset/?id=1677094219";v0.Volume=7;v0.Looped=true;v0.archivable=false;v0.Parent=game.Workspace;if (game.Players.LocalPlayer.Character.Humanoid.Health>10) then v0:Play();end
    end
    
    local SoundOFF = function()
        for v0,v1 in pairs(workspace:children()) do if v1:isA("Sound") then v1:Destroy();end end
    end

    if getgenv().AutoDodging == true then
        local EntranceTheme = "http://www.roblox.com/asset/?id=1216343787";
        local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = EntranceTheme
        Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
        workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Animate").idle.Animation1.AnimationId = "rbxassetid://12512421480";
        Aura();SoundON();
    else
        Unaura();SoundOFF();
    end

    local Connec
    Connec = game.Players.LocalPlayer.CharacterAdded:Connect(function()task.wait(3);
        if getgenv().AutoDodging == true then
            Aura();workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Animate").idle.Animation1.AnimationId = "rbxassetid://12512421480";
        else
            Unaura();SoundOFF();Con:Disconnect();
        end
    end)
    
    task.spawn(function()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().AutoDodging == true then
                pcall(function()
                    for _,k in ipairs(workspace.Living:GetChildren()) do
                        if k:IsA("Model") and k:FindFirstChild("Head") and k.Head:IsA("Part") and k.Head.Name == "Head" and k.Head ~= game.Players.LocalPlayer.Character.Head then
                            if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 55 then
                                if k:FindFirstChildOfClass("Humanoid") and k:FindFirstChildOfClass("Humanoid").Health > 0 then
                                    if k.CDValues:FindFirstChild("OnCooldown") and not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown") and not k.CDValues:FindFirstChild("Posing") and not k.CDValues:FindFirstChild("Blocking") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.HumanoidRootPart.CFrame * CFrame.new(0,45,25);workspace.CurrentCamera.CFrame = k.HumanoidRootPart.CFrame * CFrame.new(0,10,25);
                                        local DodgeAnimation = Instance.new("Animation");DodgeAnimation.AnimationId = "rbxassetid://12146757350" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(DodgeAnimation);k:Play();k:AdjustSpeed(5);
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                connection:Disconnect();
            end
        end)
    end)
end

getgenv().AutoBlockingRedAttacks = function()
    task.spawn(function()
        while getgenv().AutoBlockWarning == true do
            pcall(function()
                if workspace.Living:FindFirstChild(game.Players.LocalPlayer.Name).Head:FindFirstChild("WarningIndi") then
                    for _,k in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if k:IsA("Folder") and k.Name:match("Remote$") and k:FindFirstChild("Block") then
                            k.Block:FireServer(true);
                        end
                    end
                else
                    for _,k in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if k:IsA("Folder") and k.Name:match("Remote$") and k:FindFirstChild("Block") then
                            k.Block:FireServer(false);
                        end
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().UsingVoidOnOthers = function()
    task.spawn(function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
        local Teleported = false;

        while getgenv().AutoGlitching == true do
            pcall(function()
                local OnCooldown = workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown");
                local Dashing = workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("Dashing");
                
                if OnCooldown and Dashing and not Teleported then
                    X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9000,-190,9000);
                    Teleported = true;
                elseif not OnCooldown and not Dashing and Teleported then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = X;
                    Teleported = false;
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().UsingRainbowUI = function()
    task.spawn(function()
        if getgenv().AutoGoingRainbow == false then
            game:GetService("CoreGui").DrRay.TopBar.BackgroundColor3 = Color3.new(0,0,0);
            game:GetService("CoreGui").DrRay.MainBar.BackgroundColor3 = Color3.new(0,0,0);
            game:GetService("CoreGui").DrRay.TopBar.TopBar.BackgroundColor3 = Color3.new(0,0,0);
            game:GetService("CoreGui").StatisticsGUI.Frame.BackgroundColor3 = Color3.new(0,0,0);
        end
    end)

    task.spawn(function()
        while getgenv().AutoGoingRainbow == true do
            pcall(function()  
                local TopBar = game:GetService("CoreGui"):WaitForChild("DrRay"):WaitForChild("TopBar");
                local MainBar = game:GetService("CoreGui"):WaitForChild("DrRay"):WaitForChild("MainBar");
                local Stats = game:GetService("CoreGui"):WaitForChild("StatisticsGUI"):WaitForChild("Frame");

                local T = tick() % 1
                local R = math.sin(T * 2 * math.pi) * 0.5 + 0.5
                local G = math.sin(T * 2 * math.pi + 2 * math.pi / 3) * 0.5 + 0.5
                local B = math.sin(T * 2 * math.pi + 4 * math.pi / 3) * 0.5 + 0.5
                
                TopBar.BackgroundColor3 = Color3.new(R,G,B);
                MainBar.BackgroundColor3 = Color3.new(R,G,B);
                TopBar.TopBar.BackgroundColor3 = Color3.new(R,G,B);
                Stats.BackgroundColor3 = Color3.new(R,G,B);
            end)
            task.wait(0.35);
        end
    end)
end

-- Store Logic

getgenv().StoreEverything = function()
    local ItemsToStore = {"Singu","NikyuNikyu","Dio's Diary","Inverted","Dio's Bone","Arasaka","Kujo","Hogyoku","Crimson","Cortex","Sukun","Gloves","Split","OA's","Chain","Cyan","Tech"}

    task.spawn(function()
        while getgenv().StoringAnyEverything == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                for _,v in ipairs(ItemsToStore) do
                                    if x.Name:lower():find(v:lower()) then
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                        local args = {tonumber(k.Name:match("%d+"))};
                                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                        task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(3.35);
        end
    end)
end

getgenv().StoreNikyu = function()
    local ItemToStore = "Nikyu";

    task.spawn(function()
        while getgenv().StoringNikyuNikyu == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreSingularity = function()
    local ItemToStore = "Singu";

    task.spawn(function()
        while getgenv().StoringSingularity == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreSukuna = function()
    local ItemToStore = "Sukun";
    local ItemSlots = {"Slot1","Slot2","Slot3","Slot4","Slot5","Slot6"};

    task.spawn(function()
        while getgenv().StoringFinger == true do
            pcall(function()
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                            if x.Name:lower():find(ItemToStore:lower()) then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(x);
                                local args = {tonumber(v:sub(5))};
                                game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreInverted = function()
    local ItemToStore = "Inverted";

    task.spawn(function()
        while getgenv().StoringInverted == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreSplit = function()
    local ItemToStore = "Split";
    local ItemSlots = {"Slot1","Slot2","Slot3","Slot4","Slot5","Slot6"};

    task.spawn(function()
        while getgenv().StoringSplit == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreChain = function()
    local ItemToStore = "Chain";

    task.spawn(function()
        while getgenv().StoringChain == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreCortex = function()
    local ItemToStore = "Cortex";

    task.spawn(function()
        while getgenv().StoringCortex == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreCrimson = function()
    local ItemToStore = "Crimson";

    task.spawn(function()
        while getgenv().StoringCrimson == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreCyan = function()
    local ItemToStore = "Cyan";

    task.spawn(function()
        while getgenv().StoringCyan == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreTech = function()
    local ItemToStore = "Tech";

    task.spawn(function()
        while getgenv().StoringTech == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreArasaka = function()
    local ItemToStore = "Arasaka";

    task.spawn(function()
        while getgenv().StoringArasaka == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreKujoHat = function()
    local ItemToStore = "Kujo";

    task.spawn(function()
        while getgenv().StoringKujoHat == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreDiosBone = function()
    local ItemToStore = "Dio's Bone";

    task.spawn(function()
        while getgenv().StoringDiosBone == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreDiosDiary = function()
    local ItemToStore = "Dio's Diary";

    task.spawn(function()
        while getgenv().StoringDiosDiary == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreHogyoku = function()
    local ItemToStore = "Hogyoku";

    task.spawn(function()
        while getgenv().StoringHogyoku == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreGloves = function()
    local ItemToStore = "Gloves";

    task.spawn(function()
        while getgenv().StoringGloves == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

getgenv().StoreOAs = function()
    local ItemToStore = "OA's";

    task.spawn(function()
        while getgenv().StoringOAs == true do
            pcall(function()
                for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner:GetChildren()) do
                    if k:IsA("ImageButton") and k.Visible then
                        if k.Text.Text == "None" then
                            for _,x in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if x.Name:lower():find(ItemToStore:lower()) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(x);
                                    local args = {tonumber(k.Name:match("%d+"))};
                                    game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                                    task.wait(1.15);game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools();
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1.75);
        end
    end)
end

-- Store Logic End

getgenv().LevelingUp = function()
    task.spawn(function()
        while getgenv().AutoLevelingUp == true do task.wait(1.5);
            pcall(function()
                if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                    if game:GetService("Players").LocalPlayer.Data.Cash.Value > 75 then
                        local args = {[1] = "99"};
                        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                    end

                    for i,v in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
                        if table.find({"Arrow","Barrel","Rokakaka","Stop Sign","Mysterious Camera","Haunted Sword","Spin Manual","Hamon Manual","Stone Mask","Bomu Bomu Devil Fruit","Mochi Mochi Devil Fruit","Bari Bari Devil Fruit"},v.Name) then
                            game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(v.Name);
                        end
                    end
    
                    getgenv().HidePurchasePrompt();
                end
            end)
        end    
    end)
end

getgenv().SavingUpCash = function()
    task.spawn(function()
        while getgenv().AutoSavingCash == true do
            pcall(function()
                local Cash1 = game:GetService("Players").LocalPlayer.Data.Cash;
                local Cash2 = game:GetService("Players").LocalPlayer.PlayerGui.Menu.Currencies.Cash.Background.Inner.TextLabel;
                
                if Cash1.Value == tonumber(string.match(Cash2.Text,"%d+ / (%d+)")) then 
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        if game:GetService("Players").LocalPlayer.Data.Cash.Value > 75 then
                            local args = {[1] = "99"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                            local args = {[1] = "99"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                            local args = {[1] = "99"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                        end
                
                        for i,v in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
                            if table.find({"Arrow","Barrel","Rokakaka","Stop Sign","Mysterious Camera","Haunted Sword","Spin Manual","Hamon Manual","Stone Mask","Bomu Bomu Devil Fruit","Mochi Mochi Devil Fruit","Bari Bari Devil Fruit"},v.Name) then
                                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(v.Name);
                            end
                        end
                
                        getgenv().HidePurchasePrompt();
                    end
                end
            end)
            task.wait(0.45);
        end    
    end)
end

getgenv().Rebirthing = function()
    task.spawn(function()
        while getgenv().AutoRebirth == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Exp.Value == 30725 and game:GetService("Players").LocalPlayer.Data.Mastery.Value ~= 15 then
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas"):FireServer();
                end
            end)
            task.wait(0.45);
        end
    end)
end

getgenv().BreakingThrough = function()
    task.spawn(function()
        while getgenv().AutoBreakthrough == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Exp.Value == 30725 and game:GetService("Players").LocalPlayer.Data.Mastery.Value == 15 then
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("Breakthrough"):FireServer();
                end
            end)
            task.wait(0.45);
        end
    end)
end

getgenv().PublicServerAutofarm = function()
    local FloatPart = Instance.new("Part",game.Workspace);
    FloatPart.Name = "FloatPart"
    FloatPart.Size = Vector3.new(6,0.1,6);
    FloatPart.Anchored = true
    FloatPart.Transparency = 1
    
    task.spawn(function()
        if getgenv().AutoPublicGrinding == false then
            game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame * CFrame.new(0,8,0);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPublicGrinding == true do 
            local Connec
            Connec = game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(_,z)
                if getgenv().AutoPublicGrinding == true then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:SetStateEnabled(1,false);
                    if z == Enum.HumanoidStateType.FallingDown or z == Enum.HumanoidStateType.Ragdoll then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp);
                    end
                else
                    Connec:Disconnect();
                end
            end)
           task.wait(0.35);
            if not getgenv().AutoPublicGrinding == true then
                break;
            end
        end
    end)
    
    task.spawn(function()
        while getgenv().AutoPublicGrinding == true do
            pcall(function()
                FloatPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.05,0);
            end)
            task.wait(0.01);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPublicGrinding == true do
            pcall(function()
                for _,j in pairs(game:GetService("Players"):GetPlayers()) do
                    local Char = j.Character
                    if Char then
                        for _,n in pairs(Char:GetDescendants()) do
                            if n:IsA("BasePart") then
                                n.CanCollide = false
                            end
                        end
                    end
                end
            end)
            task.wait(0.15);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPublicGrinding == true do
            pcall(function()
                if not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                    local Lplayer = game:GetService("Players").LocalPlayer
                    local Folder = {workspace.Item,workspace.Item2};
                    
                    local NormalPartz = {}
                    local UniquePartz = {}
                    
                    for _,k in ipairs(Folder) do
                        for _,k in ipairs(k:GetChildren()) do
                            if k:IsA("BasePart") and k.Name ~= "SoulSpawn" and k.Name ~= "PerceptionMask" and k.Position ~= Vector3.new(1804.5390625,-298.173583984375,-309.4649658203125) then
                                if ((k.Name:sub(1,2) == "Bo" or k.Name:sub(1,3) == "Sec") and k:FindFirstChild("Outline")) or ((k.Name:sub(1,2) ~= "Bo" and k.Name:sub(1,3) ~= "Sec") and not k:FindFirstChild("Outline")) then
                                    if not ((Lplayer.Data.Mastery.Value == 0 and k.Name == "SukunaFinger") or (Lplayer.Data.Mastery.Value == 0 and k.Name == "HogyokuFragment") or (Lplayer.Data.Mastery.Value == 1 and Lplayer.Data.Mastery.Value == 2 and k.Name == "OA's Grace")) then
                                        if (k.Name ~= "Box" and k.Name ~= "Barrel" and k.Name ~= "Chest") then
                                            table.insert(UniquePartz,k);
                                        end
                                        if Lplayer.Backpack:FindFirstChild("Chest Key") and workspace.Item:FindFirstChild("Chest") and k.Name == "Chest" then
                                            table.insert(NormalPartz,k);
                                        elseif not Lplayer.Backpack:FindFirstChild("Chest Key") and workspace.Item:FindFirstChild("Chest") and k.Name ~= "Chest" then
                                            table.insert(NormalPartz,k);
                                        elseif not workspace.Item:FindFirstChild("Chest") then
                                            table.insert(NormalPartz,k);
                                        end
                                    end
                                end
                            end
                        end
                    end
                    
                    local function TeleportTo(Parts)
                        if #Parts > 0 then
                            local Selected = Parts[math.random(1,#Parts)];
                            local Prompt = Selected:FindFirstChildOfClass("ProximityPrompt");
                    
                            if Selected and Prompt then
                                Lplayer.Character:SetPrimaryPartCFrame(CFrame.new(Selected.Position - Vector3.new(0,7,0)));
                                task.wait(0.15);
                                Prompt.HoldDuration = 0;Prompt:InputHoldBegin();Prompt:InputHoldEnd();
                            end
                        end
                    end
                    
                    if math.random() <= 0.90 and #UniquePartz > 0 then
                        TeleportTo(UniquePartz);
                    elseif #NormalPartz > 0 then
                        TeleportTo(NormalPartz);
                    end
                end
            end)
            task.wait(0.25);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPublicGrinding == true do
            pcall(function()
                local args = {[1] = "/e sadcat"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("Chatted"):FireServer(unpack(args));
            end)
            task.wait(0.35);
        end
    end)
end

getgenv().PrivateServerAutofarm = function()
    getgenv().ListOfNpcs = {"Arbiter","BossPudding","Pillar","Starrk","Bygone","Cid","Sukuna","Mahito","Gojo","Mahoraga","Q3","N4","Midknight","Space Curse","Jotaro Kujo","Toji","Roland","BlackSilence","AngelicaWeak","Angelica","","Dio","Deku","Adjuchas","Contorted Curse","Glutton Curse","Mosquito Curse","Spider Curse","Frog Hollow","Fishbone"};

    game.Players[game.Players.LocalPlayer.Name].PlayerGui.Chat.Frame.Visible = false;

    if game:GetService("Players").LocalPlayer.Data.StandName.Value == "Standless" or game:GetService("Players").LocalPlayer.Data.StandName.Value == "Shinra Kusakabe" or game:GetService("Players").LocalPlayer.Data.StandName.Value == "Shadow The World" then
        getgenv().Distance = -5.5;
    elseif game:GetService("Players").LocalPlayer.Data.StandName.Value == "Emperor" then
        getgenv().Distance = 19.5;
    else
        getgenv().Distance = -6.5;
    end

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
            pcall(function()
                getgenv().Target = nil getgenv().FoundAnything = false
                for i,v in ipairs(getgenv().ListOfNpcs) do
                    if workspace.Living:FindFirstChild(v) and workspace.Living:FindFirstChild(v):FindFirstChild("Head") then
                        local NPC = workspace.Living:FindFirstChild(v);
                        if NPC then
                            getgenv().Target = NPC getgenv().FoundAnything = true;
                            break
                        end
                    end
                end
            end)
            task.wait(3.5);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do 
            local Connec
            Connec = game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(_,z)
                if getgenv().AutoPrivateGrinding == true then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:SetStateEnabled(1,false);
                    if z == Enum.HumanoidStateType.FallingDown or z == Enum.HumanoidStateType.Ragdoll then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp);
                    end
                else
                    Connec:Disconnect();
                end
            end)
           task.wait(0.35);
            if not getgenv().AutoPrivateGrinding == true then
                break;
            end
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
            pcall(function()
                if getgenv().Target and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                    if getgenv().Target:FindFirstChild("Participated") and getgenv().Target.Participated:FindFirstChild(game.Players.LocalPlayer.Name) then
                        getgenv().Target.Humanoid.Health = 0;
                    end

                    if not getgenv().Target.CDValues:FindFirstChild("OnCooldown") and not getgenv().Target.CDValues:FindFirstChild("Grabbed") and not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("Dashing") then
                        task.spawn(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(getgenv().Target.HumanoidRootPart.Position - getgenv().Target.HumanoidRootPart.CFrame.lookVector * getgenv().Distance,getgenv().Target.HumanoidRootPart.Position);task.wait(0.35);
                        end)getgenv().Attacking();
                    end
                else
                    task.wait(3.15);
                end
            end)
            task.wait(0.15);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
            pcall(function()
                if getgenv().FoundAnything == false and game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled then
                    local args = {[1] = "kill"};
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SukunaDialogue"):FireServer(unpack(args));
                end            
            end)
            task.wait(3.5);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
                pcall(function()
                    if getgenv().FoundAnything == false and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        local RespawnNeeded = false;

                        for _,k in pairs(game.Workspace.Item:GetChildren()) do
                            if ((k.Name == "Box" and k:FindFirstChild("Outline")) and k.Position ~= Vector3.new(1804.5390625,-298.173583984375,-309.4649658203125)) or k.Name == "Barrel" or k.Name == "Chest" and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chest Key") then
                                RespawnNeeded = true;
                                break
                            end
                        end

                        if RespawnNeeded and not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown") and getgenv().AutoLevelingUp == false then
                            local args = {[1] = "Exploiter"};
                            game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("ApplyAchievement"):FireServer(unpack(args));task.wait(4.5);
                        end
                    end
                end)
            task.wait(0.45);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
            pcall(function()
                if getgenv().FoundAnything == false and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled and not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("OnCooldown") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                    local Lplayer = game:GetService("Players").LocalPlayer
                    local Folder = {workspace.Item,workspace.Item2};
                    
                    local NormalParts = {}
                    local UniqueParts = {}
                    
                    for _,k in ipairs(Folder) do
                        for _,k in ipairs(k:GetChildren()) do
                            if k:IsA("BasePart") and k.Name ~= "SoulSpawn" and k.Name ~= "PerceptionMask" and k.Position ~= Vector3.new(1804.5390625,-298.173583984375,-309.4649658203125) then
                                if ((k.Name:sub(1,2) == "Bo" or k.Name:sub(1,3) == "Sec") and k:FindFirstChild("Outline")) or ((k.Name:sub(1,2) ~= "Bo" and k.Name:sub(1,3) ~= "Sec") and not k:FindFirstChild("Outline")) then
                                    if not ((Lplayer.Data.Mastery.Value == 0 and k.Name == "SukunaFinger") or (Lplayer.Data.Mastery.Value == 0 and k.Name == "HogyokuFragment") or (Lplayer.Data.Mastery.Value == 1 and Lplayer.Data.Mastery.Value == 2 and k.Name == "OA's Grace")) then
                                        if (k.Name ~= "Box" and k.Name ~= "Barrel" and k.Name ~= "Chest") then
                                            table.insert(UniqueParts,k);
                                        end
                                        if Lplayer.Backpack:FindFirstChild("Chest Key") and workspace.Item:FindFirstChild("Chest") and k.Name == "Chest" then
                                            table.insert(NormalParts,k);
                                        elseif not Lplayer.Backpack:FindFirstChild("Chest Key") and workspace.Item:FindFirstChild("Chest") and k.Name ~= "Chest" then
                                            table.insert(NormalParts,k);
                                        elseif not workspace.Item:FindFirstChild("Chest") then
                                            table.insert(NormalParts,k);
                                        end
                                    end
                                end
                            end
                        end
                    end
                    
                    local function TeleportTo(Parts)
                        if #Parts > 0 then
                            local Selected = Parts[math.random(1,#Parts)];
                            local Prompt = Selected:FindFirstChildOfClass("ProximityPrompt");
                    
                            if Selected and Prompt then
                                Lplayer.Character:SetPrimaryPartCFrame(CFrame.new(Selected.Position - Vector3.new(0,-2.5,0)));
                                task.wait(0.15);
                                Prompt.HoldDuration = 0;Prompt:InputHoldBegin();Prompt:InputHoldEnd();
                            end
                        end
                    end
                    
                    if math.random() <= 0.85 and #UniqueParts > 0 then
                        TeleportTo(UniqueParts);
                    elseif #NormalParts > 0 then
                        TeleportTo(NormalParts);
                    end
                end
            end)
            task.wait(0.25);
        end
    end)

    task.spawn(function()
        while getgenv().AutoPrivateGrinding == true do
            pcall(function()
                workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Animate").idle.Animation1.AnimationId = "rbxassetid://12512421480";
            end)
            task.wait(0.35);
        end
    end) 
end

getgenv().SellingAnyItem = function()
    task.spawn(function()
        while getgenv().AutoSelling == true do
            pcall(function()                
                local Items = {"Arrow","Barrel","Rokakaka","Stop Sign","Mysterious Camera","Haunted Sword","Spin Manual","Hamon Manual","Stone Mask","Bomu Bomu Devil Fruit","Mochi Mochi Devil Fruit","Bari Bari Devil Fruit"};
                
                for i,v in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
                    if table.find(Items,v.Name) then
                        game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(v.Name);
                    end
                end
            end)
            task.wait(3.5);
        end
    end)
end

getgenv().WeaponEquipped = function()
    task.spawn(function()
        while getgenv().AutoEquipWeapon == true do
            pcall(function()
                if not workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("Summoned") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Q",false,game);
                end
            end)
            task.wait(0.35);
        end
    end)
end

getgenv().IchigoResetted = function()
    task.spawn(function()
        while getgenv().AutoResetIchigo == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.StandName.Value == "Kurosaki Ichigo | Substitute Shinigami" and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled or getgenv().FoundAnything == false and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka"))
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("Rokakaka"):FireServer();
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rokakaka"):Activate();
                end
            end)
            task.wait(0.35);
        end
    end)
end

getgenv().StoredOFA = function()
    task.spawn(function()
        while getgenv().AutoStoreStageOne == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.StandName.Value == "OA [Stage 1]" and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled or getgenv().FoundAnything == false and not game:GetService("Players").LocalPlayer.PlayerGui.InCombat.Enabled then
                    for i = 1,95 do -- Supports up to 95 stand slots :O
                        if game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "Standless" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.45);
        end
    end)
end

-- Strange thing start

getgenv().UsingAltFarming = function()
    task.spawn(function()
        while getgenv().AutoAltFarming == true do
            pcall(function()                
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85.82078552246094,-116.3696060180664,314.07122802734375);
                if workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").MaxHealth ~= workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").Health then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
                end
            end)
            task.wait(0.015);
        end
    end)
end

getgenv().UsingMainAccountFarming = function()
    task.spawn(function()
        while getgenv().AutoMainFarming == true do
            pcall(function()           
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-87.23579406738281,-116.3696060180664,318.3973693847656);
                game:GetService("VirtualUser"):Button1Down(Vector2.new());
            end)
            task.wait(0.015);
        end
    end)
end

-- Strange thing End

-- New Deku Farm

getgenv().UsingDekuFarmMain = function()
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")

    local selectedPlayer = nil
    local selectedLine = nil
    local selectedButton = nil

    local selectionCompletedEvent = Instance.new("BindableEvent")
    local completed = false

    -- UI выбор игрока
    local playerSelectionUI = Instance.new("ScreenGui")
    playerSelectionUI.Name = "SakuraPlayerSelection"
    playerSelectionUI.ResetOnSpawn = false
    playerSelectionUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    playerSelectionUI.Parent = game:GetService("CoreGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 300, 0, 250)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -125)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    mainFrame.BorderSizePixel = 0
    mainFrame.ClipsDescendants = true
    mainFrame.Parent = playerSelectionUI
    Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 12)

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(80, 80, 90)
    UIStroke.Thickness = 2
    UIStroke.Parent = mainFrame

    local titleFrame = Instance.new("Frame")
    titleFrame.Size = UDim2.new(1, 0, 0, 40)
    titleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    titleFrame.BorderSizePixel = 0
    titleFrame.Parent = mainFrame
    Instance.new("UICorner", titleFrame).CornerRadius = UDim.new(0, 12)

    local title = Instance.new("TextLabel")
    title.Text = "🌸 Select Summoner"
    title.Size = UDim2.new(1, -20, 1, 0)
    title.Position = UDim2.new(0, 10, 0, 0)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 220, 240)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = titleFrame

    local scrollFrame = Instance.new("ScrollingFrame")
    scrollFrame.Size = UDim2.new(1, -10, 1, -100)
    scrollFrame.Position = UDim2.new(0, 5, 0, 45)
    scrollFrame.BackgroundTransparency = 1
    scrollFrame.ScrollBarThickness = 4
    scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollFrame.Parent = mainFrame

    local scrollLayout = Instance.new("UIListLayout")
    scrollLayout.Padding = UDim.new(0, 5)
    scrollLayout.SortOrder = Enum.SortOrder.LayoutOrder
    scrollLayout.Parent = scrollFrame

    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, -20, 0, 40)
    buttonFrame.Position = UDim2.new(0, 10, 1, -50)
    buttonFrame.BackgroundTransparency = 1
    buttonFrame.Parent = mainFrame

    local continueButton = Instance.new("TextButton")
    continueButton.Text = "Continue"
    continueButton.Size = UDim2.new(0.45, 0, 1, 0)
    continueButton.BackgroundColor3 = Color3.fromRGB(80, 180, 120)
    continueButton.TextColor3 = Color3.new(1, 1, 1)
    continueButton.Font = Enum.Font.GothamSemibold
    continueButton.TextSize = 16
    continueButton.AutoButtonColor = false
    Instance.new("UICorner", continueButton).CornerRadius = UDim.new(0, 8)
    continueButton.Parent = buttonFrame

    local cancelButton = Instance.new("TextButton")
    cancelButton.Text = "Cancel"
    cancelButton.Size = UDim2.new(0.45, 0, 1, 0)
    cancelButton.Position = UDim2.new(0.55, 0, 0, 0)
    cancelButton.BackgroundColor3 = Color3.fromRGB(180, 80, 80)
    cancelButton.TextColor3 = Color3.new(1, 1, 1)
    cancelButton.Font = Enum.Font.GothamSemibold
    cancelButton.TextSize = 16
    cancelButton.AutoButtonColor = false
    Instance.new("UICorner", cancelButton).CornerRadius = UDim.new(0, 8)
    cancelButton.Parent = buttonFrame

    local function createLine(button)
        local line = Instance.new("Frame")
        line.Name = "SelectionLine"
        line.AnchorPoint = Vector2.new(0.5, 1)
        line.Position = UDim2.new(0.5, 0, 1, -1)
        line.Size = UDim2.new(1, 0, 0, 2)
        line.BackgroundColor3 = Color3.fromRGB(207, 114, 151)
        line.BorderSizePixel = 0
        line.ZIndex = 10
        Instance.new("UICorner", line).CornerRadius = UDim.new(0, 6)
        line.Parent = button
        return line
    end

    local function animateLineExpand(line)
        local tween = TweenService:Create(line, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(1, 0, 0, 4)
        })
        tween:Play()
    end

    local function animateLineCollapse(line)
        local tween = TweenService:Create(line, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 4)
        })
        tween:Play()
        tween.Completed:Wait()
        line:Destroy()
    end

    local function updatePlayerList()
        for _, child in ipairs(scrollFrame:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                local playerButton = Instance.new("TextButton")
                playerButton.Text = string.format("%s (@%s)", player.DisplayName, player.Name)
                playerButton.Size = UDim2.new(1, 0, 0, 40)
                playerButton.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
                playerButton.TextColor3 = Color3.new(1, 1, 1)
                playerButton.Font = Enum.Font.Gotham
                playerButton.TextSize = 14
                playerButton.AutoButtonColor = false
                Instance.new("UICorner", playerButton).CornerRadius = UDim.new(0, 6)
                playerButton.Parent = scrollFrame

                playerButton.MouseButton1Click:Connect(function()
                    if selectedPlayer == player then
                        if selectedLine then
                            animateLineCollapse(selectedLine)
                            selectedPlayer = nil
                            selectedLine = nil
                            selectedButton = nil
                        end
                    else
                        if selectedLine then animateLineCollapse(selectedLine) end
                        selectedPlayer = player
                        selectedButton = playerButton
                        selectedLine = createLine(playerButton)
                        animateLineExpand(selectedLine)
                    end
                end)
            end
        end
    end

    updatePlayerList()
    Players.PlayerAdded:Connect(updatePlayerList)
    Players.PlayerRemoving:Connect(updatePlayerList)

    continueButton.MouseButton1Click:Connect(function()
        if selectedPlayer then
            getgenv().ThePlayerWhoSupports = selectedPlayer
            playerSelectionUI:Destroy()
            BoredLibrary.prompt("Sakura Hub", "Preparation Step Completed 1/1", 1.5)
            BoredLibrary.prompt("Sakura Hub", "✅ Summoner selected!", 1.0)
            local root = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if root then root.CFrame = CFrame.new(-1212, -150, -324) end
            completed = true
            selectionCompletedEvent:Fire()
        else
            BoredLibrary.prompt("Sakura Hub", "⚠️ Select a player first!", 1.5)
        end
    end)

    cancelButton.MouseButton1Click:Connect(function()
        playerSelectionUI:Destroy()
        getgenv().AutoFarmDekuMainAcc = false
        completed = false
        selectionCompletedEvent:Fire()
    end)

    mainFrame.Size = UDim2.new(0, 300, 0, 0)
    TweenService:Create(mainFrame, TweenInfo.new(0.2), {Size = UDim2.new(0, 300, 0, 250)}):Play()

    -- ⏳ Ждём выбора игрока
    selectionCompletedEvent.Event:Wait()

    -- ✅ Если пользователь выбрал игрока — запускаем фарм
    if completed and getgenv().AutoFarmDekuMainAcc and getgenv().ThePlayerWhoSupports then
        task.spawn(function()
            while getgenv().AutoFarmDekuMainAcc do
                pcall(function()
                    -- Твоя логика фарма
                    BoredLibrary.prompt("Sakura Hub", "Ponos test", 1.5)
                end)
                task.wait()
            end
        end)
    end
end

-- Deku Farm Logic

getgenv().UsingDekuAutofarm1 = function()
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local args = {[1] = 33};
                game:GetService("ReplicatedStorage"):WaitForChild("QuestRemotes"):WaitForChild("AcceptQuest"):FireServer(unpack(args));
                local args = {[1] = 33};
                game:GetService("ReplicatedStorage"):WaitForChild("QuestRemotes"):WaitForChild("ClaimQuest"):FireServer(unpack(args));            
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Mastery.Value < 3 then
                    if game:GetService("Players").LocalPlayer.Data.Cash.Value > 75 then
                        local args = {[1] = "99"};
                        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                    end
    
                    for i,v in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
                        if table.find({"Arrow","Barrel","Rokakaka","Stop Sign","Mysterious Camera","Haunted Sword","Spin Manual","Hamon Manual","Stone Mask","Bomu Bomu Devil Fruit","Mochi Mochi Devil Fruit","Bari Bari Devil Fruit"},v.Name) then
                            game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(v.Name);
                        end
                    end
    
                    getgenv().HidePurchasePrompt();
                end
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                for _,x in pairs(workspace.Living:GetChildren()) do
                    if (x.Name == "Bygone" or x.Name == "Angelica" or x.Name == "AngelicaWeak" or x.Name == "BlackSilence") and x:FindFirstChild("Humanoid") then
                        x.Humanoid.Health = 0;
                    end
                end
            end)
            task.wait(0.015);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        local RolandHumanoid = game:GetService("Workspace").Living:FindFirstChild("Roland").Humanoid
                        if RolandHumanoid and RolandHumanoid.Health ~= RolandHumanoid.MaxHealth then
                            task.spawn(function()task.wait(4);
                                RolandHumanoid.Health = 0;
                            end)
                        end
                        local RolandBoss = game:GetService("Workspace").Living:FindFirstChild("Roland"):FindFirstChild("HumanoidRootPart");
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(RolandBoss.Position - RolandBoss.CFrame.lookVector * 7,RolandBoss.Position);
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Ignition"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Punch"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Fierce"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Corna"):FireServer();
                    else
                        task.wait(3.15);
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 and not workspace.Living.Deku.CDValues:FindFirstChild("Blocking") then
                        local DekuHumanoid = game:GetService("Workspace").Living:FindFirstChild("Deku").Humanoid
                        if DekuHumanoid and DekuHumanoid.Health ~= DekuHumanoid.MaxHealth then
                            task.spawn(function()
                                DekuHumanoid.Health = 0;
                            end)
                        end
                        local DekuBoss = game:GetService("Workspace").Living:FindFirstChild("Deku"):FindFirstChild("HumanoidRootPart");
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(DekuBoss.Position - DekuBoss.CFrame.lookVector * 7,DekuBoss.Position);
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Ignition"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Punch"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Fierce"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Corna"):FireServer();
                    else
                        task.wait(3.15);
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    for i = 1,100 do
                        if Lplayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "OA [Stage 4]" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 4]" then
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    for i = 1,100 do
                        if Lplayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "Shinra Kusakabe" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.035);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
                pcall(function()
                    local Lplayer = game:GetService("Players").LocalPlayer;
                    if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 4]" then
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168, 791, -8038);
                        for i,v in pairs(game:GetService("Workspace").Map.RuinedCity:GetDescendants()) do
                            if v:IsA("ProximityPrompt") then
                                fireproximityprompt(v,0);
                            end
                        end
                    end
                end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 3]" then
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    for i = 1,100 do
                        if Lplayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "Shinra Kusakabe" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.035);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 3]" then
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    for i = 1,100 do
                        if Lplayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "Shinra Kusakabe" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.035);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    for i = 1, 100 do
                        if Lplayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "OA [Stage 3]" then
                            local args = {"Slot"..i};
                            if i <= 6 then
                                game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                            else
                                game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                            end
                        end
                    end
                end
            end)
            task.wait(0.035);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and Lplayer.Backpack:FindFirstChild("OA's Grace") and Lplayer.Data.StandName.Value == "OA [Stage 3]" then task.wait(0.45);
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                    task.wait(0.5);
                    Lplayer.Character.Humanoid:EquipTool(Lplayer.Backpack:FindFirstChild("OA's Grace"));
                    task.wait(0.35);
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                    Lplayer.Character:FindFirstChild("OA's Grace"):Activate();
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                end
            end)
            task.wait(1);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") then
                    Lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Item2:FindFirstChild("OA's Grace").CFrame;
                    for i,v in pairs(workspace.Item2["OA's Grace"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            v.HoldDuration = 0;v:InputHoldBegin();v:InputHoldEnd();
                        end
                    end
                end
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Item:FindFirstChild("Gloves") then
                    Lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Item:FindFirstChild("Gloves").CFrame;
                    for i,v in pairs(workspace.Item["Gloves"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            v.HoldDuration = 0;v:InputHoldBegin();v:InputHoldEnd();
                        end
                    end
                end
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and Lplayer.PlayerGui.InCombat.Enabled then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
                end
            end)
            task.wait(1.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku1 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 3]" or Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 4]" then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
                end
            end)
            task.wait(1.35);
        end
    end)    
end

getgenv().UsingDekuAutofarm2 = function()
    task.spawn(function()
        while getgenv().AutofarmOnDeku2 == true do
            pcall(function()
                local args = {[1] = 33};
                game:GetService("ReplicatedStorage"):WaitForChild("QuestRemotes"):WaitForChild("AcceptQuest"):FireServer(unpack(args));
                local args = {[1] = 33};
                game:GetService("ReplicatedStorage"):WaitForChild("QuestRemotes"):WaitForChild("ClaimQuest"):FireServer(unpack(args));            
            end)
            task.wait(0.35);
        end
    end)

    task.spawn(function()
        while getgenv().AutofarmOnDeku2 == true do
            pcall(function()
                for _,x in pairs(workspace.Living:GetChildren()) do
                    if (x.Name == "Bygone" or x.Name == "Angelica" or x.Name == "AngelicaWeak" or x.Name == "BlackSilence") and x:FindFirstChild("Humanoid") then
                        x.Humanoid.Health = 0;
                    end
                end
            end)
            task.wait(0.015);
        end
    end)

    task.spawn(function()
        while getgenv().AutofarmOnDeku2 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Roland") and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        local RolandHumanoid = game:GetService("Workspace").Living:FindFirstChild("Roland").Humanoid
                        if RolandHumanoid and RolandHumanoid.Health ~= RolandHumanoid.MaxHealth then
                            task.spawn(function()task.wait(4);
                                RolandHumanoid.Health = 0;
                            end)
                        end
                        local RolandBoss = game:GetService("Workspace").Living:FindFirstChild("Roland"):FindFirstChild("HumanoidRootPart");
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(RolandBoss.Position - RolandBoss.CFrame.lookVector * 7,RolandBoss.Position);
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Ignition"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Punch"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Fierce"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Corna"):FireServer();
                    else
                        task.wait(3.15);
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku2 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Living:FindFirstChild("Deku") and Lplayer.Data.StandName.Value == "Shinra Kusakabe" then
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 and not workspace.Living.Deku.CDValues:FindFirstChild("Blocking") then
                        local DekuHumanoid = game:GetService("Workspace").Living:FindFirstChild("Deku").Humanoid
                        if DekuHumanoid and DekuHumanoid.Health ~= DekuHumanoid.MaxHealth then
                            task.spawn(function()
                                DekuHumanoid.Health = 0;
                            end)
                        end
                        local DekuBoss = game:GetService("Workspace").Living:FindFirstChild("Deku"):FindFirstChild("HumanoidRootPart");
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(DekuBoss.Position - DekuBoss.CFrame.lookVector * 7,DekuBoss.Position);
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Ignition"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Punch"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Fierce"):FireServer();
                        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Corna"):FireServer();
                    else
                        task.wait(3.15);
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().UsingDekuAutofarm3 = function()
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                for _,x in pairs(workspace.Living:GetChildren()) do
                    if (x.Name == "Bygone" or x.Name == "Angelica" or x.Name == "AngelicaWeak" or x.Name == "BlackSilence") and x:FindFirstChild("Humanoid") then
                        x.Humanoid.Health = 0;
                    end
                end
            end)
            task.wait(0.015);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
            end)
            task.wait(1.15);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
                pcall(function()
                    local Lplayer = game:GetService("Players").LocalPlayer;
                    if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and not Lplayer.Backpack:FindFirstChild("OA's Grace") and not Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 4]" then
                        Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168, 791, -8038);
                        for i,v in pairs(game:GetService("Workspace").Map.RuinedCity:GetDescendants()) do
                            if v:IsA("ProximityPrompt") then
                                fireproximityprompt(v,0);
                            end
                        end
                    end
                end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and not game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") and Lplayer.Backpack:FindFirstChild("OA's Grace") and Lplayer.Data.StandName.Value == "OA [Stage 3]" then task.wait(0.45);
                    Lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.88117599487305,-116.3696060180664,344.53594970703125);
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                    task.wait(0.5);
                    Lplayer.Character.Humanoid:EquipTool(Lplayer.Backpack:FindFirstChild("OA's Grace"));
                    task.wait(0.35);
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                    Lplayer.Character:FindFirstChild("OA's Grace"):Activate();
                    game:GetService("ReplicatedStorage"):WaitForChild("UseItem"):WaitForChild("OFA"):FireServer();
                end
            end)
            task.wait(1);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if game:GetService("Workspace").Item2:FindFirstChild("OA's Grace") then
                    Lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Item2:FindFirstChild("OA's Grace").CFrame;
                    for i,v in pairs(workspace.Item2["OA's Grace"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            v.HoldDuration = 0;v:InputHoldBegin();v:InputHoldEnd();
                        end
                    end
                end
            end)
            task.wait(0.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if not game:GetService("Workspace").Living:FindFirstChild("Deku") and not game:GetService("Workspace").Living:FindFirstChild("Roland") and Lplayer.PlayerGui.InCombat.Enabled then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
                end
            end)
            task.wait(1.35);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutofarmOnDeku3 == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer;
                if Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 3]" or Lplayer.PlayerGui.InCombat.Enabled and Lplayer.Data.StandName.Value == "OA [Stage 4]" then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
                end
            end)
            task.wait(1.35);
        end
    end)
end

-- Deku Farm Logic End

getgenv().UsingTokensToCash = function()
    task.spawn(function()
        while getgenv().AutoConvertTokens == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Token.Value > 500 and game:GetService("Players").LocalPlayer.Data.Cash.Value < 500 then
                    for i = 1,2 do
                        local args = {[1] = "T4C"};
                        game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("TokenExchange"):FireServer(unpack(args));
                    end
                end
            end)
            task.wait(0.35);
        end
    end)
end

getgenv().StealingOneForAll = function()
    local Prompt = false;

    task.spawn(function()
        while getgenv().AutoStealingOfa == true do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.StandName.Value == "Standless" then
                    if game:GetService("Players").LocalPlayer.Data.Mastery.Value < 2 then
                        if workspace.Map.NPCs:FindFirstChild("Kuzma") then
                            for i,v in pairs(game:GetService("Workspace").Map.NPCs.Kuzma:GetChildren()) do
                                if v:IsA("ClickDetector") then fireclickdetector(v);
                                    for i = 1,15 do task.wait(0.15);
                                        local SkipDialogue = game:GetService("Players").LocalPlayer.PlayerGui.Dialogue.Outer.Inner.TextLabel;
    
                                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(SkipDialogue.AbsolutePosition.X+SkipDialogue.AbsoluteSize.X/5,SkipDialogue.AbsolutePosition.Y+50,0,true,SkipDialogue,5);
                                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(SkipDialogue.AbsolutePosition.X+SkipDialogue.AbsoluteSize.X/5,SkipDialogue.AbsolutePosition.Y+50,0,false,SkipDialogue,5);
                                    end
                                end
                            end
                        else
                            if not Prompt then
                                BoredLibrary.prompt("Sakura Hub 🌸","Waiting for Kuzma To Spawn",1.5);Prompt = true;
                            end  
                        end
                    else
                        if not Prompt then
                            BoredLibrary.prompt("Sakura Hub 🌸","Mastery is not Enough",1.5);Prompt = true;
                        end
                    end
                else
                    if not Prompt then
                        BoredLibrary.prompt("Sakura Hub 🌸","You are not Standless",1.5);Prompt = true;
                    end
                end
            end)
            task.wait(0.45);
        end
    end)
end

getgenv().StealingAnyItem = function()
    local FloatPart = Instance.new("Part",game.Workspace);
    FloatPart.Name = "FloatPart"
    FloatPart.Size = Vector3.new(6,0.1,6);
    FloatPart.Anchored = true
    FloatPart.Transparency = 1
    
    task.spawn(function()
        if getgenv().AutoStealingItems == false then
            game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame * CFrame.new(0,8,0);
        end
    end)
    
    task.spawn(function()
        while getgenv().AutoStealingItems == true do
            pcall(function()
                if getgenv().FoundAnyItem == true then
                    FloatPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.05,0);
                end
            end)
            task.wait(0.01);
        end
    end)

    task.spawn(function()
        while getgenv().AutoStealingItems == true do
            pcall(function()
                for _,j in pairs(game:GetService("Players"):GetPlayers()) do
                    local Char = j.Character
                    if Char then
                        for _,n in pairs(Char:GetDescendants()) do
                            if n:IsA("BasePart") then
                                n.CanCollide = false
                            end
                        end
                    end
                end
            end)
            task.wait(0.15);
        end
    end)

    task.spawn(function()
        while getgenv().AutoStealingItems == true do 
            local Connec
            Connec = game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(_,z)
                if getgenv().AutoStealingItems == true then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:SetStateEnabled(1,false);
                    if z == Enum.HumanoidStateType.FallingDown or z == Enum.HumanoidStateType.Ragdoll then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp);
                    end
                else
                    Connec:Disconnect();
                end
            end)
           task.wait(0.35);
            if not getgenv().AutoStealingItems == true then
                break;
            end
        end
    end)

    task.spawn(function()
        while getgenv().AutoStealingItems == true do
            pcall(function()
                local Lplayer = game:GetService("Players").LocalPlayer
                local Folder = {workspace.Item,workspace.Item2};
                
                local UniquePartss = {}
                getgenv().FoundAnyItem = false;

                for _,k in ipairs(Folder) do
                    for _,k in ipairs(k:GetChildren()) do
                        if k:IsA("BasePart") and k.Name ~= "SoulSpawn" and k.Name ~= "PerceptionMask" and k.Position ~= Vector3.new(1804.5390625,-298.173583984375,-309.4649658203125) then
                            if ((k.Name:sub(1,2) == "Bo" or k.Name:sub(1,3) == "Sec") and k:FindFirstChild("Outline")) or ((k.Name:sub(1,2) ~= "Bo" and k.Name:sub(1,3) ~= "Sec") and not k:FindFirstChild("Outline")) then
                                if not ((Lplayer.Data.Mastery.Value == 0 and k.Name == "SukunaFinger") or (Lplayer.Data.Mastery.Value == 0 and k.Name == "HogyokuFragment") or (Lplayer.Data.Mastery.Value == 1 and Lplayer.Data.Mastery.Value == 2 and k.Name == "OA's Grace")) then
                                    if (k.Name ~= "Box" and k.Name ~= "Barrel" and k.Name ~= "Chest") then
                                        table.insert(UniquePartss,k);getgenv().FoundAnyItem = true;
                                    end
                                end
                            end
                        end
                    end
                end
                
                local function TeleportTo(Parts)
                    if #Parts > 0 then
                        local Selected = Parts[math.random(1,#Parts)];
                
                        if Selected then
                            Lplayer.Character:SetPrimaryPartCFrame(CFrame.new(Selected.Position - Vector3.new(0,7,0)));
                        end
                    end
                end
                
                if #UniquePartss > 0 then
                    TeleportTo(UniquePartss);
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().PickAuraAnyItem = function()
    task.spawn(function()
        while getgenv().AutoPickingItems == true do
            pcall(function()
                local Folders = {workspace.Item,workspace.Item2};
                for i,v in pairs(Folders) do
                    for i,v in pairs(v:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            v.HoldDuration = 0;v:InputHoldBegin();v:InputHoldEnd();
                        end
                    end
                end
            end)
            task.wait(0.25);
        end
    end)
end

getgenv().UsingSafeZone = function()
    task.spawn(function()
        while getgenv().AutoSafeZone == true do
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9037, 804, 8927);
            end)
            task.wait(2.35);
        end
    end)
end

getgenv().OneShotAnyBossAndMob = function()
    task.spawn(function()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().AutoOneShotting == true then
                pcall(function()
                    for _,k in ipairs(workspace.Living:GetChildren()) do
                        if k:IsA("Model") and k:FindFirstChild("Head") and k.Head ~= game.Players.LocalPlayer.Character.Head then
                            if game.Players:GetPlayerFromCharacter(k) == nil then
                                if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 9e9 then
                                    if k:FindFirstChildOfClass("Humanoid").Health ~= k:FindFirstChildOfClass("Humanoid").MaxHealth then
                                        k:FindFirstChildOfClass("Humanoid").Health = 0;
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                connection:Disconnect();
            end
        end)
    end)
end

getgenv().AutofarmNearestMob = function()
    task.spawn(function()
        while getgenv().AutoKillNearestMob == true do
            pcall(function()
                local IgnoreShit = {"Attacking Dummy","Dummy","Counter Dummy","Blocking Dummy","Tough Dummy","Chariot Requiem"};
                local UserSelectedIgnoreShit = {};
                for _,k in ipairs(workspace.Living:GetChildren()) do
                    if k:IsA("Model") and k:FindFirstChild("Head") and k.Head ~= game.Players.LocalPlayer.Character.Head then
                        if game.Players:GetPlayerFromCharacter(k) == nil then
                            if not table.find(IgnoreShit,k.Name) then
                                if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 9e9 then
                                    if game.Players[game.Players.LocalPlayer.Name].Character.Humanoid.Health ~= 0 then
                                        local Hum = k:FindFirstChild("HumanoidRootPart");
                                        if Hum then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Hum.Position - Hum.CFrame.lookVector * 5,Hum.Position);
                                            getgenv().Attacking();
                                        end
                                    else
                                        task.wait(3.15);
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().BannerRolling = function()
    task.spawn(function()
        while getgenv().AutoRollBanner == true do
            pcall(function()
                local args = {getgenv().WhichType,"ArrowOfNovae"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("BannerPull"):FireServer(unpack(args));
            end)
            task.wait(1.25);
        end
    end)
end

getgenv().CidBannerRolling = function()
    task.spawn(function()
        while getgenv().AutoRollCidBanner == true do
            pcall(function()
                local args = {getgenv().WhichType,"TheShadowGarden"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("BannerPull"):FireServer(unpack(args));
            end)
            task.wait(1.25);
        end
    end)
end

getgenv().KaijuBannerRolling = function()
    task.spawn(function()
        while getgenv().AutoRollKaijuBanner == true do
            pcall(function()
                local args = {getgenv().WhichType,"KaijuNo.8"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("BannerPull"):FireServer(unpack(args));
            end)
            task.wait(1.25);
        end
    end)
end

getgenv().RollDeathBanner = function()
    task.spawn(function()
        while getgenv().AutoRollDeaths == true do
            pcall(function()
                local args = {[1] = getgenv().WhichTypez};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("PurchaseDeathAnim"):FireServer(unpack(args)); 
            end)
            task.wait(0.45);
        end
    end)
end

getgenv().RollArcadeBanner = function()
    task.spawn(function()
        while getgenv().AutoRollArcade == true do
            pcall(function()
                local args = {[1] = false,[2] = true};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("ArcadePurchase"):FireServer(unpack(args));             
            end)
            task.wait(1.25);
        end
    end)
end

getgenv().BreakthroughForToken = function()
    task.spawn(function()
        while getgenv().AutoB4T == true do
            pcall(function()
                local args = {[1] = "B4T"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("TokenExchange"):FireServer(unpack(args));
            end)
            task.wait(0.75);
        end
    end)
end

getgenv().BreakthroughForStorage = function()
    task.spawn(function()
        while getgenv().AutoB4S == true do
            pcall(function()
                local args = {[1] = "Storage"};
                game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));              
            end)
            task.wait(0.75);
        end
    end)
end

getgenv().BreakthroughForPresent = function()
    task.spawn(function()
        while getgenv().AutoB4T == true do
            pcall(function()
                local args = {[1] = "Present"};
                game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));
            end)
            task.wait(0.75);
        end
    end)
end

getgenv().BreakthroughForCapacity = function()
    task.spawn(function()
        while getgenv().AutoB4C == true do
            pcall(function()
                local args = {[1] = "Cash"};
                game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));              
            end)
            task.wait(0.75);
        end
    end)
end

getgenv().QuestParryDamage = function()
    if getgenv().AutoParryingDamage == true then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false);
    else
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
    end

    task.spawn(function()local Blocking = false;
        while getgenv().AutoParryingDamage == true do
            pcall(function()
                local AttackingDummy = game.Workspace.Living["Attacking Dummy"];
                local BlockBar = tonumber(game.Players.LocalPlayer.PlayerGui.Stats.BG.BlockBG.BlockBar.BlockN.Text);
                local ParryCooldown = game.Workspace.Living[game.Players.LocalPlayer.Name].CDValues:FindFirstChild("Parry_Cooldown");

                if BlockBar == 30 and not Blocking and not ParryCooldown then
                    game.VirtualInputManager:SendKeyEvent(true,"F",false,game);task.wait(0.5);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AttackingDummy.HumanoidRootPart.Position - AttackingDummy.HumanoidRootPart.CFrame.LookVector * -5,AttackingDummy.HumanoidRootPart.Position);Blocking = true
                elseif BlockBar < 30 and Blocking and not ParryCooldown then
                    game.VirtualInputManager:SendKeyEvent(false,"F",false,game);Blocking = false
                end

                if ParryCooldown then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2122.210693359375,-113.98542022705078,-4635.59130859375);
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().QuestBlockDamage = function()
    if getgenv().AutoBlockingDamage == true then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false);
    else
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
    end

    task.spawn(function()local Blocking = false;
        while getgenv().AutoBlockingDamage == true do
            pcall(function()
                local AttackingDummy = game.Workspace.Living["Attacking Dummy"];
                local BlockBar = tonumber(game.Players.LocalPlayer.PlayerGui.Stats.BG.BlockBG.BlockBar.BlockN.Text);
    
                if BlockBar == 30 and not Blocking then
                    game.VirtualInputManager:SendKeyEvent(true,"F",false,game);task.wait(0.5);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AttackingDummy.HumanoidRootPart.Position - AttackingDummy.HumanoidRootPart.CFrame.LookVector * -5,AttackingDummy.HumanoidRootPart.Position);Blocking = true
                elseif BlockBar <= 8 and Blocking then
                    game.VirtualInputManager:SendKeyEvent(false,"F",false,game);Blocking = false;task.wait(0.15);
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2122.210693359375,-113.98542022705078,-4635.59130859375);
                end
            end)
            task.wait(0.25);
        end
    end)
end

getgenv().QuestDeathDamage = function()
    task.spawn(function()
        while getgenv().AutoDyingDamage == true do
            pcall(function()
                local AttackingDummy = game.Workspace.Living["Attacking Dummy"];
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(AttackingDummy.HumanoidRootPart.Position - AttackingDummy.HumanoidRootPart.CFrame.LookVector * -5,AttackingDummy.HumanoidRootPart.Position);task.wait(1.5);

                if workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").MaxHealth ~= workspace.Living[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").Health then
                    local args = {[1] = "kill"};
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SukunaDialogue"):FireServer(unpack(args));
                end
            end)
            task.wait(0.25);
        end
    end)
end

getgenv().QuestTakeDamage = function()
    if getgenv().AutoTakingDamage == true then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false);
    else
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
    end

    task.spawn(function()
        while getgenv().AutoTakingDamage == true do
            pcall(function()
                local CounterDummy = game.Workspace.Living["Counter Dummy"];
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CounterDummy.HumanoidRootPart.Position - CounterDummy.HumanoidRootPart.CFrame.LookVector * -5,CounterDummy.HumanoidRootPart.Position);
                if game.Players[game.Players.LocalPlayer.Name].Character.Humanoid.Health ~= 0 then
                    getgenv().Attacking();
                else
                    task.wait(3.15);
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().QuestDealDamage = function()
    if getgenv().AutoDealingDamage == true then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false);
    else
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
    end

    task.spawn(function()
        while getgenv().AutoDealingDamage == true do
            pcall(function()
                local Dummy = game.Workspace.Living["Dummy"];
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Dummy.HumanoidRootPart.Position - Dummy.HumanoidRootPart.CFrame.LookVector * -5,Dummy.HumanoidRootPart.Position);
                if game.Players[game.Players.LocalPlayer.Name].Character.Humanoid.Health ~= 0 then
                    getgenv().Attacking();
                else
                    task.wait(3.15);
                end
            end)
            task.wait(0.15);
        end
    end)
end

getgenv().LoadConfigurations();
local MainWindow = DrRayLibrary:Load("Sakura Hub   🌸","Default");
local HomeTab = DrRayLibrary.newTab("Home","http://www.roblox.com/asset/?id=9405923687");

-- // Apply Custom UI Color \\ --
game:GetService("CoreGui").DrRay.TopBar.BackgroundColor3 = Color3.new(0,0,0);
game:GetService("CoreGui").DrRay.MainBar.BackgroundColor3 = Color3.new(0,0,0);
game:GetService("CoreGui").DrRay.TopBar.TopBar.BackgroundColor3 = Color3.new(0,0,0);
game:GetService("CoreGui").DrRay.TopBar.ProfileMenu.Clock.BackgroundTransparency = 0.75;
game:GetService("CoreGui").DrRay.TopBar.ProfileMenu.PlayerProfile.BackgroundTransparency = 0.75;
game:GetService("CoreGui").DrRay.TopBar.ProfileMenu.Title.BackgroundTransparency = 0.75;
game:GetService("CoreGui").DrRay.TopBar.TopBarClose.BackgroundTransparency = 0.55;
game:GetService("CoreGui").DrRay.TopBar.TopBarClose.idk.Visible = false;

-- // Loaded Notification \\ --
BoredLibrary.prompt("Sakura Hub 🌸","Current Version: "..getgenv().CurrentVersion,1.5);
------------------------------------------------[[ UI Code Logic Start ]]------------------------------------------------
HomeTab.newLabel("Script Hub Credits   ✨");
HomeTab.newButton("Script Made by Flames","",function()
    local Cheers = "http://www.roblox.com/asset/?id=1617624223"
    local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = Cheers
    Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
    BoredLibrary.prompt("Sakura Hub   🌸","Thank you Mommy Flames <3",1.5);
end)

HomeTab.newButton("Gui Library Made by Chillz","",function()
    local LoudFarts = "http://www.roblox.com/asset/?id=6811876591"
    local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = LoudFarts
    Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
    BoredLibrary.prompt("Sakura Hub   🌸","Thank you Daddy Chillz <3",0.5);
end)

HomeTab.newButton("Notify Library Made by Bored","",function()
    local LoudFarts = "http://www.roblox.com/asset/?id=6811876591"
    local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = LoudFarts
    Sound.Volume = 10;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
    BoredLibrary.prompt("Sakura Hub   🌸","Thank you Daddy Bored <3",0.5);
end)

HomeTab.newLabel("Local Player Scripts   📢");
HomeTab.newToggle("Super Walkspeed","",getgenv().WalkspeedBypass or false,function(Value)
    getgenv().WalkspeedBypass = Value

    -- Got From https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source
    getgenv().SuperSpeed();
end)

HomeTab.newToggle("Super JumpPower","",getgenv().JumpPowerBypass or false,function(Value)
    getgenv().JumpPowerBypass = Value
    getgenv().SuperJump();
end)

-- // Toggle Configuration Function \\ --
HomeTab.newToggle("Close Annoying Buttons", "Toggle Close Button in Topbar", getgenv().CloseAnnoyingButtons or false, function(Value)
    getgenv().CloseAnnoyingButtons = Value
    local tweenService = game:GetService("TweenService")
    local player = game:GetService("Players").LocalPlayer
    local gui = player:FindFirstChild("PlayerGui")
    local topbar = gui and gui:FindFirstChild("TopbarStandard")
    local holders = topbar and topbar:FindFirstChild("Holders")
    local frame = topbar and topbar:FindFirstChild("CustomCloseButton")

    if Value then
        getgenv().CreateCloseButton()
        if holders then
            tweenService:Create(holders, TweenInfo.new(0.4), {
                Position = UDim2.new(0, 55, 0, 0)
            }):Play()
        end
    else
        -- если кнопка есть — плавно скрываем и удаляем
        if frame and frame:FindFirstChild("CloseButton") then
            local btn = frame.CloseButton
            tweenService:Create(btn, TweenInfo.new(0.4), {
                BackgroundTransparency = 1,
                TextTransparency = 1
            }):Play()
            task.delay(0.4, function()
                frame:Destroy()
            end)
        end

        -- возвращаем Holders на место
        if holders then
            tweenService:Create(holders, TweenInfo.new(0.4), {
                Position = UDim2.new(0, 0, 0, 0)
            }):Play()
        end
    end
end)

HomeTab.newButton("Reset Character (Dialogue Method)","",function()
    task.spawn(function()local ReturnAfterDeath = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame game:GetService("Players").LocalPlayer.CharacterAdded:Wait() repeat task.wait(1) until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = ReturnAfterDeath end)
    local args = {[1] = "kill"};
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SukunaDialogue"):FireServer(unpack(args));
end)

HomeTab.newButton("Respawn Character (Clan method)","",function()
    getgenv().GuildName = "Szechuan";
    getgenv().Password = "pepper";

    task.spawn(function()
        pcall(function()
            local Lplayer = game.Players.LocalPlayer
            local Location = Lplayer.Character.HumanoidRootPart.CFrame
            local Guild = game:GetService("Workspace").Living:FindFirstChild(Lplayer.Name).Head:FindFirstChild("GuildGUI");
            local args = {[1] = Guild and Guild.Text.Text == getgenv().GuildName and "Leave" or "Join",[2] = getgenv().GuildName,[3] = getgenv().Password,[4] = ""};
            game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SetGuild"):FireServer(unpack(args));

            game.Players.LocalPlayer.CharacterAdded:Wait();

            repeat task.wait(0.015) until Lplayer.Character:FindFirstChild("HumanoidRootPart");task.wait(0.35);

            Lplayer.Character.HumanoidRootPart.CFrame = Location;
        end)
    end)
end)

HomeTab.newLabel("Visual Scripts   👁️");
HomeTab.newToggle("Esp Players","",getgenv().EspPlayers or false,function(Value)
    getgenv().EspPlayers = Value
    getgenv().EspOnPlayers();
end)

HomeTab.newToggle("Esp Entities","",getgenv().EspEntities or false,function(Value)
    getgenv().EspEntities = Value
    getgenv().EspOnEntities();
end)

HomeTab.newToggle("Esp Items","",getgenv().EspItems or false,function(Value)
    getgenv().EspItems = Value
    getgenv().EspOnItems();
end)

HomeTab.newToggle("Esp Npcs","",getgenv().EspNpcs or false,function(Value)
    getgenv().EspNpcs = Value
    getgenv().EspOnNpcs();
end)

HomeTab.newLabel("Weather Scripts   🌧️");
HomeTab.newToggle("Monotone","",getgenv().AutoMonotone or false,function(Value)
    getgenv().AutoMonotone = Value
    getgenv().BlackAndWhite();
end)

HomeTab.newToggle("Raining","",getgenv().AutoRaining or false,function(Value)
    getgenv().AutoRaining = Value
    getgenv().ItsRaining();
end)

HomeTab.newToggle("Cloudy","",getgenv().AutoCloudy or false,function(Value)
    getgenv().AutoCloudy = Value
    getgenv().ItsCloudy();
end)

HomeTab.newLabel("Sound Scripts   🔊");
HomeTab.newToggle("Deku's Theme   🔥","",getgenv().AutoDekuTheme or false,function(Value)
    getgenv().AutoDekuTheme = Value
    getgenv().ActivateDekuTheme();
end)

HomeTab.newToggle("Sukuna's Theme","",getgenv().AutoSukunaTheme or false,function(Value)
    getgenv().AutoSukunaTheme = Value
    getgenv().ActivateSukunaTheme();
end)

HomeTab.newToggle("Binah's Theme","",getgenv().AutoBinahTheme or false,function(Value)
    getgenv().AutoBinahTheme = Value
    getgenv().ActivateBinahTheme();  
end)

HomeTab.newToggle("Roland's Theme","",getgenv().AutoRolandTheme or false,function(Value)
    getgenv().AutoRolandTheme = Value
    getgenv().ActivateRolandTheme();    
end)

HomeTab.newToggle("Cids's Theme","",getgenv().AutoCidTheme or false,function(Value)
    getgenv().AutoCidTheme = Value
    getgenv().ActivateCidTheme();    
end)

HomeTab.newLabel("Miscellaneous Scripts   📌");
HomeTab.newToggle("Auto Aimlock Nearest Player (Overpowered)","",getgenv().AutoAimlocking or false,function(Value)
    getgenv().AutoAimlocking = Value
    getgenv().AimlockingOnPlayers();
end)

HomeTab.newToggle("Auto Roast Dead Players (Be Near Them)","",getgenv().AutoRoasting or false,function(Value)
    getgenv().AutoRoasting = Value

    -- // Thanks to ChatGPT the goat
    getgenv().MockingPlayers();
end)

HomeTab.newToggle("Auto Frick Auddy's Gyatt (Sus)","",getgenv().AutoFuckingAuddy or false,function(Value)
    getgenv().AutoFuckingAuddy = Value
    getgenv().FuckingAuddysBigGyatt();
end)

HomeTab.newToggle("Auto Frick Syrentia's Mouth (Sus)","",getgenv().AutoFuckingSyrentia or false,function(Value)
    getgenv().AutoFuckingSyrentia = Value
    getgenv().FuckingSyrentiaMouth();
end)

HomeTab.newLabel("Fighting Scripts   ⚔️");
HomeTab.newToggle("Auto Ctrl + Click Combo Players / Mobs (Overpowered)","",getgenv().AutoTeleportPunching or false,function(Value)
    getgenv().AutoTeleportPunching = Value
    getgenv().TeleportHittingBehind();
end)

HomeTab.newToggle("Auto Respawn When Low Health (Overpowered)","",getgenv().AutoRespawning or false,function(Value)
    getgenv().AutoRespawning = Value
    getgenv().AutoGodModding();
end)

HomeTab.newToggle("Auto Counter Attack Players / Mobs (Use Sdio or Gojo)","",getgenv().AutoDefending or false,function(Value)
    getgenv().AutoDefending = Value
    getgenv().DefendAgainstM1s();
end)

HomeTab.newToggle("Auto Dash Players / Mobs (Overpowered)","",getgenv().AutoDashing or false,function(Value)
    getgenv().AutoDashing = Value
    getgenv().DodgeFromAttacks();
end)

HomeTab.newToggle("Auto Dodge Players / Mobs  🔥 (Use In Open Areas)","",getgenv().AutoDodging or false,function(Value)
    getgenv().AutoDodging = Value
        
    -- // Taken from private script of mine
    getgenv().UsingUltraIstinct();
end)

HomeTab.newToggle("Auto Block Warning Attacks (Overpowered)","",getgenv().AutoBlockWarning or false,function(Value)
    getgenv().AutoBlockWarning = Value
    getgenv().AutoBlockingRedAttacks();
end)

HomeTab.newToggle("Auto Bug Players / Mobs (Requires Grab Moves)","",getgenv().AutoGlitching or false,function(Value)
    getgenv().AutoGlitching = Value
    getgenv().UsingVoidOnOthers();
end)

HomeTab.newLabel("Available Working Codes (Report to me if stopped working)");
local Code1 = "HeroHunterFromGumball"; local Desc1 = "500 Tokens"
local Code2 = "6Coins"; local Desc2 = "500 Tokens"
local Code3 = "UltraService"; local Desc3 = "$10000 Cash"
local Code4 = "RoaringEngine"; local Desc4 = "6000 Secs of 2x Xp"
local Code5 = "DeathStep"; local Desc5 = "$2500 Cash"
local Code6 = "RogueBloxIsAJob"; local Desc6 = "500 Tokens"
local Code7 = "OmatsuriMambo"; local Desc7 = "500 Tokens"
local Code8 = "MamboIncident"; local Desc8 = "1000 Tokens"

HomeTab.newButton('Use Code: "'..Code1..'"', Desc1, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code1, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code1)
end)

HomeTab.newButton('Use Code: "'..Code2..'"', Desc2, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code2, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code2)
end)

HomeTab.newButton('Use Code: "'..Code3..'"', Desc3, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code3, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code3)
end)

HomeTab.newButton('Use Code: "'..Code4..'"', Desc4, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code4, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code4)
end)

HomeTab.newButton('Use Code: "'..Code5..'"', Desc5, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code5, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code5)
end)

HomeTab.newButton('Use Code: "'..Code6..'"', Desc6, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code6, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code6)
end)

HomeTab.newButton('Use Code: "'..Code7..'"', Desc7, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code7, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code7)
end)

HomeTab.newButton('Use Code: "'..Code8..'"', Desc8, function()
    BoredLibrary.prompt("Sakura Hub  🌸", "Used: "..Code8, 1.5)
    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("EnterCode"):FireServer(Code8)
end)

HomeTab.newLabel("Server Hop Scripts   🌐");
HomeTab.newButton("Auto Find The Arbiter   🌟  (SCRIPT LOST)","",function()
    setclipboard("https://github.com/Lvl9999/TheArbiter/tree/main");
    BoredLibrary.prompt("Sakura Hub  🌸","Copied to clipboard",0.5);
end)

HomeTab.newButton("Auto Find Space Curse   ☄️  (SCRIPT LOST)","",function()
    setclipboard("https://github.com/Lvl9999/SpaceCurse/tree/main");
    BoredLibrary.prompt("Sakura Hub  🌸","Copied to clipboard",0.5);
end)

HomeTab.newButton("Auto One For All Finder   🦸  (PATCHED + SCRIPT LOST)","",function()
    --setclipboard("https://github.com/Lvl9999/OneForAll/tree/main");
    BoredLibrary.prompt("Sakura Hub  🌸","Patched, Wait for fix",0.5);
end)

HomeTab.newLabel("Quick Scripts   🚀");
HomeTab.newButton("Animation Grabber","",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/T1k-T1k/SakuraHub_RECODE/refs/heads/main/utils/AnimGrabber"))();
end)

HomeTab.newButton("Infinite Yield","",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

HomeTab.newButton("Remote Spy","",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))();
end)

HomeTab.newButton("Dark Explorer","",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))();
end)

HomeTab.newButton("Teleport Maker","",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GSgUCJmq"))();
end)

HomeTab.newLabel("Sakura Hub Stuff  🌸");
HomeTab.newButton("Official Discord Server (Click To Copy To Clipboard)","",function()
    setclipboard("https://discord.gg/XcUFRW4DWH");
    BoredLibrary.prompt("Sakura Hub  🌸","Copied to clipboard",0.5);
end)

HomeTab.newToggle("Sakura Hub, Go Rainbow Please","",getgenv().AutoGoingRainbow or false,function(Value)
    getgenv().AutoGoingRainbow = Value
    getgenv().UsingRainbowUI();
end)

HomeTab.newButton("Sakura Hub / [Recode] Changelogs GUI (Lost / Not Done)","",function()
    task.spawn(function()BoredLibrary.prompt("Sakura Hub  🌸","Loading Changelogs...",0.75);end)

    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/SakuraStand/main/Changelogs"))();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2989)");
    getgenv().ChangelogLabel("[+] Added credits for Chillz and Bored (Ui lib makers).");
    getgenv().ChangelogLabel("[+] Added meme sound effects for credit buttons.");
    getgenv().ChangelogLabel("[+] Added anti fall script to prevent you from falling (In testing).");
    getgenv().ChangelogLabel("[+] Increased the width of the baseplate under map.");
    getgenv().ChangelogLabel("[+] Made its transparency 0.5");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2990)");
    getgenv().ChangelogLabel("[+] Removed the laggy antifall, Made something else instead.");
    getgenv().ChangelogLabel("[+] Added ultra instinct aura and sounds to auto dodge.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2991)");
    getgenv().ChangelogLabel("[+] Added new method of farming (Alt Farming).");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2992)");
    getgenv().ChangelogLabel("[+] Removed auto bully nearest (It was useless).");
    getgenv().ChangelogLabel("[+] Added Sound scripts section.");
    getgenv().ChangelogLabel("[+] Added Weather scripts section.");
    getgenv().ChangelogLabel("[+] Added More teleport buttons in the section.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2993)");
    getgenv().ChangelogLabel("[+] Added Remotes for the Codes (You can now claim them).");
    getgenv().ChangelogLabel("[+] Added Auto Rerolls Section (For gamblers).");
    getgenv().ChangelogLabel("[+] Added Explanation for Autofarm.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2994)");
    getgenv().ChangelogLabel("[+] Changed a bit teleport buttons position.");
    getgenv().ChangelogLabel("[+] Added Auto Spend Breakthrough section.");
    getgenv().ChangelogLabel("[+] Added Auto Spawn Bosses section (Someone Requested).");
    getgenv().ChangelogLabel("[+] Customized the hub to make it a bit more appealing.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2995)");
    getgenv().ChangelogLabel("[+] Finnaly made auto spawn for dio brando.");
    getgenv().ChangelogLabel("[+] Now you can use autofarm with any spec, Mark my words Shinra Kusakabe is the best spec for autofarm.");
    getgenv().ChangelogLabel("[+] Fixed notif not showing on private server edition autofarm.");
    getgenv().ChangelogLabel("[+] Retexted breakthrough point section cause I didnt like it.");
    getgenv().ChangelogLabel("[+] Removed Equip best farming spec dropdown instead its a button.");
    getgenv().ChangelogLabel("[+] Added Drago idle animation to auto dodge cus cool i think.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2996)");
    getgenv().ChangelogLabel("[+] Added auto store feature for Binah's item (The secret spec).");
    getgenv().ChangelogLabel("[+] Retexted some stuff a lil to my liking.");
    getgenv().ChangelogLabel("[+] Added even faster skip menu script.");
    getgenv().ChangelogLabel("[+] Added npcs Sukuna and Arbiter to the farming list including admin bosses.");
    getgenv().ChangelogLabel("[+] Also Added them to the one shot bosses and mobs feature.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2997)");
    getgenv().ChangelogLabel("[+] Fixed a small issue in autofarm public edition.");
    getgenv().ChangelogLabel("[+] Added a feature to make hub go rainbow.");
    getgenv().ChangelogLabel("[+] Changed Statistics ui.");
    getgenv().ChangelogLabel("[+] Fixed hub not executing in Sukuna's world.");
    getgenv().ChangelogLabel("[+] Added one more code to Claim Codes section.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2998)");
    getgenv().ChangelogLabel("[+] Removed Auto Equip Title (Sorry).");
    getgenv().ChangelogLabel("[+] Added Auto Save Config.");
    getgenv().ChangelogLabel("[+] Added a feature to Reset Config.");
    getgenv().ChangelogLabel("[+] Increased Auto Buy Rokakaka when cash capacity full.");
    getgenv().ChangelogLabel("[+] Removed Auto sell items (They were useless)");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.2999)");
    getgenv().ChangelogLabel("[+] Added support for Emperor.");
    getgenv().ChangelogLabel("[+] Added Auto Equip Weapon (Someone Requested).");
    getgenv().ChangelogLabel("[+] Added Anti fall scripts on autofarms (Cant fail anymore)");
    getgenv().ChangelogLabel("[+] Added Auto Reset Ichigo (Someone Requested).");
    getgenv().ChangelogLabel("[+] Added Auto Store OFA.");
    getgenv().ChangelogLabel("[+] Added Esp for Npcs.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.30)");
    getgenv().ChangelogLabel("[+] Added One For All Farmer.");
    getgenv().ChangelogLabel("[+] Fixed a small bug in Anti Fall.");
    getgenv().ChangelogLabel("[+] Improved Void Tp (Because cid users escaped void).");
    getgenv().ChangelogLabel("[+] Added My Private Script (Auto Respawn/God Mode).");
    getgenv().ChangelogLabel("[+] Decreased Steal Item loop rate 0.015 ->> 0.15.");
    getgenv().AddLine();
    getgenv().ChangelogLabel("Recent Changes: (Version 1.31)");
    getgenv().ChangelogLabel("[+] Added Deku Slayer Farmer.");
    getgenv().ChangelogLabel("[+] Added Tokens To Cash Converter.");
    getgenv().ChangelogLabel("[+] Lowered Void TP.");
    getgenv().ChangelogLabel("[+] Added New Working Codes.");
    ----------------------------------------------------------------------------------------------------
end)

HomeTab.newButton("Reload Sakura Hub","",function()
    task.spawn(function()BoredLibrary.prompt("Sakura Hub  🌸","Reloading Hub...",0.75);end)
    getgenv().SakuraHub = "https://raw.githubusercontent.com/Lvl9999/SakuraStand/main/SakuraHub";

    pcall(function()
        getgenv().Configurations();loadstring(game:HttpGet(getgenv().SakuraHub))();
    end)
end)

HomeTab.newButton("Goodbye Sakura Hub   👋","",function()
    task.spawn(function()pcall(function()getgenv().Configurations();game:GetService("CoreGui").DrRay:Destroy();end);end);
    BoredLibrary.prompt("Sakura Hub  🌸","Goodbye :)",0.5);
end)

HomeTab.newLabel("Sakura Hub Configs   ⚙️");
HomeTab.newButton("Save Sakura Hub Config","",function()
    getgenv().SaveConfigurations();
end)

HomeTab.newButton("Reset Sakura Hub Config","",function()
    task.spawn(function()getgenv().Configurations();getgenv().ResetConfigurations();end)
    getgenv().SakuraHub = "https://raw.githubusercontent.com/Lvl9999/SakuraStand/main/SakuraHub";

    pcall(function()
        getgenv().Configurations();loadstring(game:HttpGet(getgenv().SakuraHub))();
    end)
end)

HomeTab.newInput("Report Bugs / Feedback","Type here anything you want me to know :) This text written by T1k",function(text)
    getgenv().Message = text
    getgenv().WebHook = "https://discord.com/api/webhooks/";

    task.spawn(function()
        if getgenv().Message ~= "" then
            local data = {content = "",embeds = {{author = {name = (getgenv().PrivacyMode == true and "Unknown") or game.Players.LocalPlayer.Name,},title = "Reported:",description = getgenv().Message,type = "rich",color = tonumber(0xff0000),footer = {text = string.format("Reported at %s",os.date("%Y-%m-%d %X"))}}}};
            local request = http_request or request or HttpPost or syn.request;
            request({Url = getgenv().WebHook,Body = game:GetService("HttpService"):JSONEncode(data),Method = "POST",Headers = {["content-type"] = "application/json"}});
            BoredLibrary.prompt("Sakura Hub  🌸","Message Sent   ✅",1.5);
        end
    end)
end)

HomeTab.newButton("Hide your username (Use Before Typing, Optional)","",function()
    if not getgenv().HidedName == true then getgenv().HidedName = true
        getgenv().PrivacyMode = true;
        BoredLibrary.prompt("Sakura Hub  🌸","Hided Your Name   ✅",1.5);
    end
end)

local StorageTab = DrRayLibrary.newTab("Storage","http://www.roblox.com/asset/?id=6870729295");

StorageTab.newLabel("Storage Stuff   📁");
StorageTab.newButton("Close / Open Stand Storage","",function()
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Enabled;
    end)
end)

StorageTab.newButton("Close / Open Item Storage","",function()
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Visible;
    end)
end)

StorageTab.newLabel("Storing Stuff   📂");
StorageTab.newToggle("Auto Store Every Item In Here","",getgenv().StoringAnyEverything or false,function(Value)
    getgenv().StoringAnyEverything = Value
    getgenv().StoreEverything();
end)

StorageTab.newToggle("Auto Store Nikyu Nikyu Devil Fruit","",getgenv().StoringNikyuNikyu or false,function(Value)
    getgenv().StoringNikyuNikyu = Value
    getgenv().StoreNikyu();    
end)

StorageTab.newToggle("Auto Store Singularity Essence","",getgenv().StoringSingularity or false,function(Value)
    getgenv().StoringSingularity = Value
    getgenv().StoreSingularity();    
end)

StorageTab.newToggle("Auto Store Sukuna's Finger","",getgenv().StoringFinger or false,function(Value)
    getgenv().StoringFinger = Value
    getgenv().StoreSukuna();    
end)

StorageTab.newToggle("Auto Store Inverted Spear Of Heaven","",getgenv().StoringInverted or false,function(Value)
    getgenv().StoringInverted = Value
    getgenv().StoreInverted();    
end)

StorageTab.newToggle("Auto Store Split Soul Katana","",getgenv().StoringSplit or false,function(Value)
    getgenv().StoringSplit = Value
    getgenv().StoreSplit();    
end)

StorageTab.newToggle("Auto Store Chain of A Thousand Miles","",getgenv().StoringChain or false,function(Value)
    getgenv().StoringChain = Value
    getgenv().StoreChain();    
end)

StorageTab.newToggle("Auto Store Cortex Support","",getgenv().StoringCortex or false,function(Value)
    getgenv().StoringCortex = Value
    getgenv().StoreCortex();    
end)

StorageTab.newToggle("Auto Store Crimson Cyberdeck","",getgenv().StoringCrimson or false,function(Value)
    getgenv().StoringCrimson = Value
    getgenv().StoreCrimson();    
end)

StorageTab.newToggle("Auto Store Cyan Cyberdeck","",getgenv().StoringCyan or false,function(Value)
    getgenv().StoringCyan = Value
    getgenv().StoreCyan();    
end)

StorageTab.newToggle("Auto Store Tech Monitor","",getgenv().StoringTech or false,function(Value)
    getgenv().StoringTech = Value
    getgenv().StoreTech();    
end)

StorageTab.newToggle("Auto Store Arasaka Suitcase","",getgenv().StoringArasaka or false,function(Value)
    getgenv().StoringArasaka = Value
    getgenv().StoreArasaka();    
end)

StorageTab.newToggle("Auto Store Kujo's Hat","",getgenv().StoringKujoHat or false,function(Value)
    getgenv().StoringKujoHat = Value
    getgenv().StoreKujoHat();    
end)

StorageTab.newToggle("Auto Store Dio's Bone","",getgenv().StoringDiosBone or false,function(Value)
    getgenv().StoringDiosBone = Value
    getgenv().StoreDiosBone();    
end)

StorageTab.newToggle("Auto Store Dio's Diary","",getgenv().StoringDiosDiary or false,function(Value)
    getgenv().StoringDiosDiary = Value
    getgenv().StoreDiosDiary();    
end)

StorageTab.newToggle("Auto Store Hogyoku Fragment","",getgenv().StoringHogyoku or false,function(Value)
    getgenv().StoringHogyoku = Value
    getgenv().StoreHogyoku();    
end)

StorageTab.newToggle("Auto Store Roland Glove","",getgenv().StoringGloves or false,function(Value)
    getgenv().StoringGloves = Value
    getgenv().StoreGloves();    
end)

StorageTab.newToggle("Auto Store Ofa Grace","",getgenv().StoringGrace or false,function(Value)
    getgenv().StoringGrace = Value
    getgenv().StoreOAs();    
end)

local ShopTab = DrRayLibrary.newTab("Shop","http://www.roblox.com/asset/?id=9405933217");

getgenv().HidePurchasePrompt = function()
    local LplayerGui = game:GetService("Players").LocalPlayer.PlayerGui;

    LplayerGui.PurchaseFailed.Spin1.Visible = false;
    LplayerGui.PurchaseFailed.Spin2.Visible = false;
    LplayerGui.PurchaseFailed.Spin3.Visible = false;
    LplayerGui.PurchaseFailed.Outer.Visible = false;
    LplayerGui.PurchaseFailed.ConfirmationText.Visible = false;

    LplayerGui.PurchaseSuccess.Spin1.Visible = false;
    LplayerGui.PurchaseSuccess.Spin2.Visible = false;
    LplayerGui.PurchaseSuccess.Spin3.Visible = false;
    LplayerGui.PurchaseSuccess.Outer.Visible = false;
    LplayerGui.PurchaseSuccess.ConfirmationText.Visible = false;
end

getgenv().Attacking = function()
    if game:GetService("Players").LocalPlayer.Data.StandName.Value == "Standless" then
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Stab"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Pan"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Kick"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Punch"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Heavy"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Punch"):FireServer();
        local args = {[1] = false};game:GetService("ReplicatedStorage"):WaitForChild("StandlessRemote"):WaitForChild("Barrage"):FireServer(unpack(args));
    elseif game:GetService("Players").LocalPlayer.Data.StandName.Value == "Shinra Kusakabe" then
        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Ignition"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Punch"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Fierce"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("ShinraRemote"):WaitForChild("Corna"):FireServer();
    elseif game:GetService("Players").LocalPlayer.Data.StandName.Value == "Shadow The World" then
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("TS"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("Knife"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("Donut"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("Eye"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("Kick"):FireServer();
        game:GetService("ReplicatedStorage"):WaitForChild("STWRemote"):WaitForChild("Punch"):FireServer();
    elseif game:GetService("Players").LocalPlayer.Data.StandName.Value == "Emperor" then
        game:GetService("ReplicatedStorage"):WaitForChild("EmperorRemote"):WaitForChild("Punch"):FireServer();
        local args = {[1] = false};
        game:GetService("ReplicatedStorage"):WaitForChild("EmperorRemote"):WaitForChild("Consecutive"):FireServer(unpack(args));
        local args = {[1] = getgenv().Target,[2] = false};
        game:GetService("ReplicatedStorage"):WaitForChild("EmperorRemote"):WaitForChild("AirShot"):FireServer(unpack(args));
        local args = {[1] = getgenv().Target,[2] = false};
        game:GetService("ReplicatedStorage"):WaitForChild("EmperorRemote"):WaitForChild("Curve"):FireServer(unpack(args));
        local args = {[1] = getgenv().Target,[2] = false};
        game:GetService("ReplicatedStorage"):WaitForChild("EmperorRemote"):WaitForChild("Homing"):FireServer(unpack(args));
    else game:GetService("VirtualUser"):ClickButton1(Vector2.new());
        game.VirtualInputManager:SendKeyEvent(true,"E",false,game);game.VirtualInputManager:SendKeyEvent(true,"G",false,game);game.VirtualInputManager:SendKeyEvent(true,"T",false,game);game.VirtualInputManager:SendKeyEvent(true,"R",false,game);game.VirtualInputManager:SendKeyEvent(false,"Y",false,game);
        game.VirtualInputManager:SendKeyEvent(false,"E",false,game);game.VirtualInputManager:SendKeyEvent(false,"G",false,game);game.VirtualInputManager:SendKeyEvent(false,"T",false,game);game.VirtualInputManager:SendKeyEvent(false,"R",false,game);game.VirtualInputManager:SendKeyEvent(false,"Y",false,game);
    end
end

ShopTab.newLabel("Quick Shop  🏪");
ShopTab.newButton("Buy Arrow","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Arrow"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Rokakaka","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Stop Sign","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("StopSign"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Hamon Manual","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Hamon"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Spin Manual","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Spin"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Stone Mask","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Vampire"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

ShopTab.newButton("Buy Camera","",function()
    local args = {[1] = "1"};
    game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Camera"):FireServer(unpack(args));
    getgenv().HidePurchasePrompt();
end)

local FarmingTab = DrRayLibrary.newTab("Farming","http://www.roblox.com/asset/?id=12334656615");

FarmingTab.newLabel("Weekly Reminder   📅");
FarmingTab.newButton("Read This (Very Important)","",function()
    BoredLibrary.prompt("Sakura Hub   🌸","Use one teleport toggle at a time!",1.5);
    task.spawn(function()
        local Grrr = "http://www.roblox.com/asset/?id=8603227350";
        local Sound = Instance.new("Sound");
        Sound.Name = "Sound";
        Sound.SoundId = Grrr;
        Sound.Volume = 10;
        Sound.Looped = false;
        Sound.Archivable = false;
        Sound.Parent = game.Workspace
        Sound:Play();
    end)BoredLibrary.prompt("Sakura Hub   🌸","Dont ask me about Menos  😡😡😡",2.5);task.wait(1.85);
    task.spawn(function()
        local Drip = "http://www.roblox.com/asset/?id=6820466812";
        local Sound = Instance.new("Sound");
        Sound.Name = "Sound";
        Sound.SoundId = Drip;
        Sound.Volume = 10;
        Sound.Looped = false;
        Sound.Archivable = false;
        Sound.Parent = game.Workspace
        Sound:Play();
    end)
    
    task.spawn(function()
        local ScreenGui = Instance.new("ScreenGui");
        ScreenGui.Name = "DripGoku";
        ScreenGui.Parent = game.CoreGui;
        local ImageLabel = Instance.new("ImageLabel");
        ImageLabel.Parent = ScreenGui
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255,255,255);
        ImageLabel.BorderColor3 = Color3.fromRGB(0,0,0);
        ImageLabel.BorderSizePixel = 0;
        ImageLabel.Position = UDim2.new(0,0,0,0);
        ImageLabel.Size = UDim2.new(1,0,1,0);
        ImageLabel.Image = "http://www.roblox.com/asset/?id=6257756322";
        ImageLabel.ImageTransparency = 0;
        task.wait(0.50);
        ScreenGui:Destroy();
    end)
end)

FarmingTab.newLabel("Equip Best Farming Spec   📌");
FarmingTab.newButton("Equip Shinra Kusakabe (Best for Private Server Autofarm)","",function()
    pcall(function()
        if game:GetService("Players").LocalPlayer.Data.StandName.Value ~= "Shinra Kusakabe" then
            for i = 1,100 do
                if game:GetService("Players").LocalPlayer.PlayerGui.StandStorage.Outer.Inner.Inner["Slot"..i].Text.Text == "Shinra Kusakabe" then
                    local args = {"Slot"..i};
                    if i <= 6 then
                        game:GetService("ReplicatedStorage").StorageRemote["Slot"..i]:FireServer();
                    else
                        game:GetService("ReplicatedStorage").StorageRemote.UseStorageExtra:FireServer(unpack(args));
                    end
                end
            end
        else
            task.spawn(function()BoredLibrary.prompt("Sakura Hub   🌸","You are Already Shinra Kusakabe",0.5);end);
        end
    end)
end)

FarmingTab.newLabel("Statistics GUI   📊");
FarmingTab.newToggle("Show / Hide Statistics GUI","",false,function(Value)
    getgenv().ToggleStatisticsGUI = Value
    game:GetService("CoreGui").StatisticsGUI.Enabled = getgenv().ToggleStatisticsGUI;
end)

FarmingTab.newLabel("Auto Leveling  📈");
FarmingTab.newToggle("Auto Buy + Auto Sell Rokakaka (Use At 2x Weekend)","",getgenv().AutoLevelingUp or false,function(Value)
    getgenv().AutoLevelingUp = Value
    getgenv().LevelingUp();
end)

FarmingTab.newToggle("Auto Buy + Auto Sell Rokakaka (When Cash Capacity Full)","",getgenv().AutoSavingCash or false,function(Value)
    getgenv().AutoSavingCash = Value
    getgenv().SavingUpCash();
end)

FarmingTab.newLabel("Auto Tasks   📝");
FarmingTab.newToggle("Auto Upgrade Mastery","",getgenv().AutoRebirth or false,function(Value)
    getgenv().AutoRebirth = Value
    getgenv().Rebirthing();
end)

FarmingTab.newToggle("Auto Breakthrough","",getgenv().AutoBreakthrough or false,function(Value)
    getgenv().AutoBreakthrough = Value
    getgenv().BreakingThrough();
end)

FarmingTab.newLabel("Auto Farming Items + Auto Farming Bosses / Mobs   💤");
FarmingTab.newButton("Quick Explanation (Open F9 Console)","",function()
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F9",false,game);
        BoredLibrary.prompt("Sakura Hub 🌸","Open F9 Console",1.5);
        warn("---------------[Auto Farming]---------------");
        print("This script allows u to get levels and items faster than usual.");
        print("You can one shot mobs by grabbing them.");
        print("Why shinra is the best? Because the spec has 3 grab moves with short cooldown.");
        print("I dont want you to get banned so pls dont use ps edition in a public server.");
        print("Why do I need to select title before autofarming? This will keep u safe from the game forcing u to change title.");
        print("Why does it not go after Menos? Because menos has anti grab so its impossible to one shot him.");
        print("Why does it not go after Paper Curses? Because they are annoying to deal with and its time consuming.");
        print("Why does it not go after Thugs or Bandits? Because they its not worth time trying to deal with them.");
        warn("--------------[Best Settings]--------------");
        print("The best spec to use the autofarm with: (Shinra Kusakabe).");
        print("The best title to use the autofarm with: (The Intelligent).");
        print("I recommend you to use Auto Upgrade Mastery and Auto Breakthrough along with Auto Sell Any Item.");
    end)
end)

FarmingTab.newToggle("Start Farming  [Public Server Edition]","",getgenv().AutoPublicGrinding or false,function(Value)
    getgenv().AutoPublicGrinding = Value
    getgenv().PublicServerAutofarm();
end)

FarmingTab.newToggle("Start Farming  [Private Server Edition]","",getgenv().AutoPrivateGrinding or false,function(Value)
    getgenv().AutoPrivateGrinding = Value
    getgenv().PrivateServerAutofarm();
end)

FarmingTab.newLabel("Auto Selling   💵");
FarmingTab.newToggle("Auto Sell Everything","",getgenv().AutoSelling or false,function(Value)
    getgenv().AutoSelling = Value
    getgenv().SellingAnyItem();
end)

FarmingTab.newLabel("Autofarming Miscellaneous   📌");
FarmingTab.newToggle("Auto Equip Weapon (Requires Unequipped Weapon Specs only)","",getgenv().AutoEquipWeapon or false,function(Value)
    getgenv().AutoEquipWeapon = Value
    getgenv().WeaponEquipped();
end)

FarmingTab.newToggle("Auto Rokakaka Ichigo Stage One (Requires Rokakaka Fruit)","",getgenv().AutoResetIchigo or false,function(Value)
    getgenv().AutoResetIchigo = Value
    getgenv().IchigoResetted();
end)

FarmingTab.newToggle("Auto Store OFA Stage One (Requires Standless slot)","",getgenv().AutoStoreStageOne or false,function(Value)
    getgenv().AutoStoreStageOne = Value
    getgenv().StoredOFA();
end)

FarmingTab.newLabel("Auto Alt Exp Farming   🔥  [Private Servers Only]");
FarmingTab.newButton("Quick Explanation (Open F9 Console)","",function()
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F9",false,game);
        BoredLibrary.prompt("Sakura Hub 🌸","Open F9 Console",1.5);
        warn("---------------[Alt Exp Farming]---------------");
        print("This script is multiple times faster than both autofarm variants (Public / Private).");
        print("This script allows u to get masteries / fingers / masks really fast.");
        print("You can help legit players level up really fast too.");
        print("It basically teleports u to library and resets you once you get hit.");
        print("Why? because when u reset it counts as a kill and it gives the player who hit u exp.");
        print("And the more alts u make them use this the better the exp rate.");
        print("To get this to work you will need executor like wave because it can execute on multi acc.");
        print("Or you can use Emulator Multiplayer, Another copy of your emulator and join in with a diffrent acc.");
        warn("--------------[Best Settings]--------------");
        print("The best spec to use (For the one who gets the exp) is Shadow The World, Why? because his m1 cooldown is short.");
        print("The best title to use (For the one who gets the exp) is The Intelligent (Obtained by buying from laptop).");
        print("I recommend you to use Auto Pick Aura from Stealing Stuff section.");
    end)
end)

FarmingTab.newToggle("Start Farming (Alt Account)","",getgenv().AutoAltFarming or false,function(Value)
    getgenv().AutoAltFarming = Value
    getgenv().UsingAltFarming();
end)

FarmingTab.newToggle("Start Farming (Main Account)","",getgenv().AutoMainFarming or false,function(Value)
    getgenv().AutoMainFarming = Value
    getgenv().UsingMainAccountFarming();
end)

FarmingTab.newLabel("Auto Deku Slayer Farmer   ⚔️  [Use In Private Servers Only]");
FarmingTab.newButton("Quick Explanation (Open F9 Console)","",function()
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F9",false,game);
        warn("---------------[Farming Info]---------------");
        print("For Support Account you must have One for All [Stage 4]");
        print("For Main Account you must have Ronin / Cid / Shinra / Gojo for best autofarm");
        print("This script allows you to get Gloves / Tokens really fast");
        print("Without Support meaning you will do autofarm alone just by yourself");
        print("Main Account meaning you will kill Deku / Roland and others who can be spawned there");
        print("Support Account meaning you will do spawn Deku / Roland for 'Main Account'");
        warn("--------------[Titles Info]--------------");
        print("You can use any titles, it doesn't matter");
    end)
end)

FarmingTab.newToggle("Start Farming (Main Account)","This account will kill bosses",getgenv().AutoFarmDekuMainAcc or false,function(Value)
    getgenv().AutoFarmDekuMainAcc = Value
    getgenv().UsingDekuFarmMain();
end)

FarmingTab.newToggle("Start Farming (Support Account)","This account will summon bosses",getgenv().AutoFarmDekuAlt or false,function(Value)
    getgenv().AutoFarmDekuAlt = Value
    getgenv().UsingDekuFarmAlt();
end)

FarmingTab.newLabel("-------------------------------------------------------------------");

FarmingTab.newToggle("Start Farming (Without Support)","This account will do everything solo (In Development)",getgenv().AutoFarmDekuSolo or false,function(Value)
    -- getgenv().AutoFarmDekuSolo = Value
    -- getgenv().UsingDekuFarmSolo();
    BoredLibrary.prompt("Sakura Hub 🌸","Not done yet, wait for the next update !",1.5);
end)

-- FarmingTab.newToggle("Start Farming (Main Account)","This account will be kill bosses",getgenv().AutofarmOnDeku1 or false,function(Value)
--     getgenv().AutofarmOnDeku1 = Value
--     getgenv().UsingDekuAutofarm1();
-- end)

-- FarmingTab.newToggle("Start Farming (Support Account)","This account will be summon bosses",getgenv().AutofarmOnDeku3 or false,function(Value)
--     getgenv().AutofarmOnDeku3 = Value
--     getgenv().UsingDekuAutofarm3();
-- end)

FarmingTab.newLabel("Auto Tokens Converter");
FarmingTab.newToggle("Auto Exchange Tokens To Cash (When Broke)","",getgenv().AutoConvertTokens or false,function(Value)
    getgenv().AutoConvertTokens = Value
    getgenv().UsingTokensToCash();
end)

FarmingTab.newLabel("Auto Stealing Stuff   🧤");
FarmingTab.newToggle("Auto Steal One For All (Requires Standless)","",getgenv().AutoStealingOfa or false,function(Value)
    getgenv().AutoStealingOfa = Value

    if getgenv().AutoStealingOfa == true then
        BoredLibrary.prompt("Sakura Hub 🌸","Patched, Wait for fix.",1.5);
    end
    --getgenv().StealingOneForAll();
end)

FarmingTab.newToggle("Auto Steal Any Item  (Doesnt go with Autofarm)","",getgenv().AutoStealingItems or false,function(Value)
    getgenv().AutoStealingItems = Value
    getgenv().StealingAnyItem();
end)

FarmingTab.newToggle("Auto Pick Aura (Any Item)","",getgenv().AutoPickingItems or false,function(Value)
    getgenv().AutoPickingItems = Value
    getgenv().PickAuraAnyItem();
end)

FarmingTab.newToggle("Auto Safe Zone (Optional)","",getgenv().AutoSafeZone or false,function(Value)
    getgenv().AutoSafeZone = Value
    getgenv().UsingSafeZone();
end)

FarmingTab.newLabel("Auto Boss / Mob Killer   🔪  (Doesnt go with Autofarm)");
FarmingTab.newToggle("Auto set Nearest Bosses / Mobs Health To 0 (Use Grab Moves)","",getgenv().AutoOneShotting or false,function(Value)
    getgenv().AutoOneShotting = Value
    getgenv().OneShotAnyBossAndMob();
end)

FarmingTab.newToggle("Auto kill Nearest Bosses / Mobs","",getgenv().AutoKillNearestMob or false,function(Value)
    getgenv().AutoKillNearestMob = Value
    getgenv().AutofarmNearestMob();
end)

FarmingTab.newLabel("Auto Rerolls   🌀")
FarmingTab.newDropdown("Type Of Rolls","Banners",{"Multi","Single"},function(Value)
    pcall(function()
        getgenv().WhichType = Value;
    end)
end)

FarmingTab.newToggle("Auto Roll Arrow Of Novae Banner","",getgenv().AutoRollBanner or false,function(Value)
    getgenv().AutoRollBanner = Value
    getgenv().BannerRolling();
end)

FarmingTab.newToggle("Auto Roll Cid Banner","",getgenv().AutoRollCidBanner or false,function(Value)
    getgenv().AutoRollCidBanner = Value
    getgenv().CidBannerRolling();
end)

FarmingTab.newToggle("Auto Roll Kaiju Banner","",getgenv().AutoRollKaijuBanner or false,function(Value)
    getgenv().AutoRollKaijuBanner = Value
    getgenv().KaijuBannerRolling();
end)

FarmingTab.newDropdown("Types Of Payments","Death Animations",{"Cash","Token"},function(Value)
    pcall(function()
        getgenv().WhichTypez = Value;
    end)
end)

FarmingTab.newToggle("Auto Roll Death Animations Banner","",getgenv().AutoRollDeaths or false,function(Value)
    getgenv().AutoRollDeaths = Value
    getgenv().RollDeathBanne();
end)

FarmingTab.newToggle("Auto Roll Arcade Banner (Uses Cash)","",getgenv().AutoRollArcade or false,function(Value)
    getgenv().AutoRollArcade = Value
    getgenv().RollArcadeBanner();
end)

FarmingTab.newLabel("Auto Use Breakthrough Points   🧬");
FarmingTab.newToggle("Convert Breakthrough for Tokens","",getgenv().AutoB4T or false,function(Value)
    getgenv().AutoB4T = Value
    getgenv().BreakthroughForToken();
end)

FarmingTab.newToggle("Convert Breakthrough for Storage Capacity","",getgenv().AutoB4S or false,function(Value)
    getgenv().AutoB4S = Value
    getgenv().BreakthroughForStorage();
end)

FarmingTab.newToggle("Convert Breakthrough for 5 Bags Of Presents","",getgenv().AutoB4P or false,function(Value)
    getgenv().AutoB4P = Value
    getgenv().BreakthroughForPresent();
end)

FarmingTab.newToggle("Convert Breakthrough for Cash Capacity","",getgenv().AutoB4C or false,function(Value)
    getgenv().AutoB4C = Value
    getgenv().BreakthroughForCapacity();
end)

FarmingTab.newLabel("Auto Quests  📋");
FarmingTab.newToggle("Auto Parry Damage","",getgenv().AutoParryingDamage or false,function(Value)
    getgenv().AutoParryingDamage = Value
    getgenv().QuestParryDamage();
end)

FarmingTab.newToggle("Auto Block Damage","",getgenv().AutoBlockingDamage or false,function(Value)
    getgenv().AutoBlockingDamage = Value
    getgenv().QuestBlockDamage();
end)

FarmingTab.newToggle("Auto Death Damage","",getgenv().AutoDyingDamage or false,function(Value)
    getgenv().AutoDyingDamage = Value
    getgenv().QuestDeathDamage();
end)

FarmingTab.newToggle("Auto Take Damage","",getgenv().AutoTakingDamage or false,function(Value)
    getgenv().AutoTakingDamage = Value
    getgenv().QuestTakeDamage();
end)

FarmingTab.newToggle("Auto Deal Damage","",getgenv().AutoDealingDamage or false,function(Value)
    getgenv().AutoDealingDamage = Value
    getgenv().QuestDealDamage();
end)

local AreasTab = DrRayLibrary.newTab("Areas","http://www.roblox.com/asset/?id=6723742952");

getgenv().PlaySound = function()
    local Playlist = {"http://www.roblox.com/asset/?id=289556450","http://www.roblox.com/asset/?id=2642969814"};

    local Sound = Instance.new("Sound");Sound.Name = "Sound";Sound.SoundId = Playlist[math.random(1,#Playlist)];
    Sound.Volume = 5;Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
end

AreasTab.newLabel("Teleports   🗺️  (You can Teleport people with you, Just grab them first)");

AreasTab.newButton("Shop","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9506, 806, 9039);
    end)
end)

AreasTab.newButton("Cafe","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9872, 806, 8653);
    end)
end)

AreasTab.newButton("Main Park","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9302, 805, 9223);
    end)
end)

AreasTab.newButton("Side Park","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9173, 805, 8795);
    end)
end)

AreasTab.newButton("Sakurian Beach","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9411, 797, 9515);
    end)
end)

AreasTab.newButton("Dark Alley","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-558, -265, -4288);
    end)
end)

AreasTab.newButton("The Forest","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10079, 805, 8860);
    end)
end)

AreasTab.newButton("Skateboard Park","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9662, 805, 9002);
    end)
end)

AreasTab.newButton("Forbidden Grows","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9078, 565, 7652);
    end)
end)

AreasTab.newButton("Blue Lock Stadium","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7091, 208, 3038);
    end)
end)

AreasTab.newButton("The Lighthouse","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13365, 1452, -2919);
    end)
end)

AreasTab.newButton("SFC Chicken","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3525, 736, -11513);
    end)
end)

AreasTab.newButton("Wuthering Heights","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3254, 4, -10581);
    end)
end)

AreasTab.newButton("The Pit","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3884, -185, -983);
    end)
end)

AreasTab.newButton("The Understand","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3763, -34, -1269);
    end)
end)

AreasTab.newButton("The Depths","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11835, 210, 9657);
    end)
end)

AreasTab.newButton("Abandoned Shrine","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9882, 828, 9462);
    end)
end)

AreasTab.newButton("Basketball Court","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10098, 821, 9175);
    end)
end)

AreasTab.newButton("Eat N4","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10143, 821, 8963);
    end)
end)

AreasTab.newButton("Urahara Shop","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9686, 805, 9219);
    end)
end)

AreasTab.newButton("BBQ3","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 103, -1325);
    end)
end)

AreasTab.newButton("The Forgotten Sanctuary","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12517, 250, 8577);
    end)
end)

AreasTab.newButton("Mimicry Room","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-254, 28, -2974);
    end)
end)

AreasTab.newButton("Hueco Mundo","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9330, 428, 1725);
    end)
end)

AreasTab.newButton("Bird","",function()
    pcall(function()
        if game:GetService("Workspace").Effects:FindFirstChild("Bird") then
            getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Effects:FindFirstChild("Bird").PrimaryPart.CFrame;
        else
            BoredLibrary.prompt("Sakura Hub   🌸","The bird isn't here :(",1);
        end
    end)
end)

AreasTab.newButton("Sakura Office","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638, 4, -326);
    end)
end)

AreasTab.newButton("Library","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51, -116, 345);
    end)
end)

AreasTab.newButton("Ruined City","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168, 791, -8038);
    end)
end)

AreasTab.newButton("White Room","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, -2, 1510);
    end)
end)

AreasTab.newButton("Midknight Arena","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8901, -371, -7651);
    end)
end)

AreasTab.newButton("PvP Arena","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(855, -395, -750);
    end)
end)

AreasTab.newButton("Anubis Dimension","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3506, -399, 1144);
    end)
end)

AreasTab.newButton("Testing Place","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2384, -430, 3179);
    end)
end)

AreasTab.newButton("Espada Place","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(613, -6, 1691);
    end)
end)

AreasTab.newButton("Sanity Room","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3487, -374, 484);
    end)
end)

AreasTab.newButton("Sukuna Domain","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7187, -140, 3946);
    end)
end)

AreasTab.newButton("Hoh Domain","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15664, -373, 25287);
    end)
end)

AreasTab.newButton("Cave","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11327, 483, 8413);
    end)
end)

AreasTab.newButton("Holy Grail War","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3932, -234, 4540);
    end)
end)

AreasTab.newButton("EthrixLame","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2037, -386, -5356);
    end)
end)

AreasTab.newButton("Highest Peak","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2122, -114, -4636);
    end)
end)

AreasTab.newLabel("NPC Teleports + Interactions   📌");
local SelectedNpc = nil

local Table = {}
for i,v in ipairs(workspace.Map.NPCs:GetChildren()) do
    if v:IsA("Model") then
        table.insert(Table,v.Name);
    end
end

AreasTab.newDropdown("","",Table,function(Value)
    SelectedNpc = workspace.Map.NPCs:FindFirstChild(Value);
end)

AreasTab.newButton("Teleport To Npc","",function()
    pcall(function()
        getgenv().PlaySound();game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SelectedNpc.HumanoidRootPart.CFrame;
    end)
end)

-- // Apply Custom Tab Colors \\ --
local Tabs = {
    game:GetService("CoreGui").DrRay.MainBar.Home;
    game:GetService("CoreGui").DrRay.MainBar.Storage;
    game:GetService("CoreGui").DrRay.MainBar.Shop;
    game:GetService("CoreGui").DrRay.MainBar.Farming;
    game:GetService("CoreGui").DrRay.MainBar.Areas;
}

for _,k in ipairs(Tabs) do
    for _,v in ipairs(k:GetChildren()) do
        if v.Name == "Label" then
            v.BackgroundTransparency = 0.55;
        end
    end
end

-- // Toggle UI Visibility \\--
task.spawn(function()
    if not getgenv().ToggleVisibility == true then
        game:GetService("UserInputService").InputBegan:Connect(function(v,x)
            if not x and v.KeyCode == Enum.KeyCode[getgenv().ToggleUI] then
                pcall(function()
                    game:GetService("CoreGui").DrRay.Enabled = not game:GetService("CoreGui").DrRay.Enabled;
                end)
            end
        end)
        getgenv().ToggleVisibility = true;
    end
end) task.spawn(function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/SakuraStand/main/StatisticsGUI"))();end)
