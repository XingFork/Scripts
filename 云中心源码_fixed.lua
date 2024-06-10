print("!")
repeat
    task.wait()
until game:IsLoaded()
print("!!")
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/Orion%20mobile%20phone.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"), true))()
----------------------------------------------------------------------------------------------------------------------------------------
--[[
playername = "Hudson_From4"
                                                                            playid = game.Players:GetUserIdFromNameAsync(playername)
                                                                            local api = game:HttpGet("https://users.roblox.com/v1/users/"..playid)
                                                                            local REN_name = string.match(api,'name":"(.-)",')
                                                                            local REN_displayName = string.match(api,'displayName":"(.-)"')

                                                                            game.Players.LocalPlayer.Name = REN_name
                                                                            game.Players.LocalPlayer.Character.Name = REN_name 
                                                                            game.Players.LocalPlayer.DisplayName = REN_displayName
                                                                           game.Players.LocalPlayer.CharacterAppearanceId = playid
                                                                            game.Players.LocalPlayer.UserId = playid
           
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E4%BA%91%E4%B8%AD%E5%BF%83CLOUD-HUB.lua", true))()
]]
local AllPlayers = {game.Players.LocalPlayer.Name}

local function refreshPlayerList()
    AllPlayers = {game.Players.LocalPlayer.Name}
    for _, player in ipairs(game.Players:GetPlayers()) do
        if not table.find(AllPlayers, player.Name) then
            table.insert(AllPlayers, player.Name)
        end
    end
end

refreshPlayerList()

local function TeleportToPlayer(Plr)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name == Plr then
            local localPlayer = game.Players.LocalPlayer
            localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
            print("已传送到 " .. Plr)
            break
        end
    end
end
 
if OrionLib and OrionLib.MakeNotification then
    game.Players.ChildAdded:Connect(
        function(player)
            local success, errorMessage =
                pcall(
                function()
                    OrionLib:MakeNotification(
                        {
                            Name = "🟩玩家加入🟩",
                            Content = player.Name .. " 加入了游戏",
                            Image = "rbxassetid://6031302992",
                            Time = 5
                        }
                    )
                end
            )
            if not success then
                print("Error: " .. errorMessage)
            end
        end
    )
    
    game.Players.ChildRemoved:Connect(
        function(player)
            local success, errorMessage =
                pcall(
                function()
                    OrionLib:MakeNotification(
                        {
                            Name = "🟥玩家离开🟥",
                            Content = player.Name .. " 离开了游戏",
                            Image = "rbxassetid://6031302992",
                            Time = 5
                        }
                    )
                end
            )
            if not success then
                print("Error: " .. errorMessage)
            end
        end
    )
else
OrionLib:MakeNotification({ 
 Name = "错误代码", 
 Content = "❌未完成", 
 Image = "rbxassetid://17493876383", 
 Time = 7.5
 })
end
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------
local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local bb = game:service "VirtualUser"
game:service "Players".LocalPlayer.Idled:connect(
    function()
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
)
wait(0.1)
print("用户界面库正在加载！")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/UI-Libs/main/CloudUi.lua", true))()
print("用户界面库加载成功！")
----------------------------------------------------------------------------------------------------------------------------------------
local window = library:new("云脚本中心☁️")--V2.1.3
----------------------------------------------------------------------------------------------------------------------------------------
local main = window:Tab("主要的", "17493876383")--1
local amusement = window:Tab("娱乐", "17493876383")--1
local SettingsTab = window:Tab("设置", "6034509993")--2
local CNScript = window:Tab("脚本中心", "6031302918")--3
local FEScript = window:Tab("FE", "6022668955")--4
local buildaship = window:Tab("造船寻宝", "6031097229")--5
local Natural = window:Tab("自然灾害生存", "6031097229")--6
local prison = window:Tab("监狱人生", "6031097229")--7
local ninja = window:Tab("忍者传奇", "6031097229")--8
local shark = window:Tab("鲨口生求 1＆2", "6031097229")--9
local speed = window:Tab("极速传奇", "6031097229")--10
local force = window:Tab("力量传奇", "6031097229")--11
local hunt = window:Tab("寻宝模拟器", "6031097229")--12
local breaks = window:Tab("Break in 1＆2", "6031097229")--13二个服务器
local Field = window:Tab("Field Trip Z", "6031097229")--14
local TheRake = window:Tab("The Rake", "6031097229")--15
local Evade = window:Tab("Evade", "6031097229")--16
local destroyer = window:Tab("破坏者谜团", "6031097229")--17
local FM1 = window:Tab("伐木大亨2", "6031097229")--18
local Blade = window:Tab("刀刃球", "6031097229")--19
local TDS = window:Tab("TDS&TDX", "6031097229")--20二个服务器
local DOORSHUB = window:Tab("DOORS", "6031067241")--21
local bruh = window:Tab("一路向西", "6031097229")--22
local china = window:Tab("河北唐县", "5012544693")--23
local palm = window:Tab("巴掌大战", "6031097229")--24
local magic = window:Tab("法宝模拟器", "6031097229")--25
local RNG = window:Tab("sol'RNG", "6031097229")--26
local Wartycoon = window:Tab("战争大亨", "6031097229")--27
local strength = window:Tab("超级大力士模拟器", "6031097229")--28
local rainbow = window:Tab("彩虹朋友", "6031097229")--29
local Snow = window:Tab("铲雪模拟器", "6031097229")--30
local zombie = window:Tab("进攻的僵尸", "6031097229")--31
local strongest = window:Tab("最强战场", "6031097229")--32
local vividness = window:Tab("动感星期五", "6031097229")--33
local infectious = window:Tab("感染性微笑", "6031097229")--34
local bfand = window:Tab("bf", "6031097229")--35
local LLL = window:Tab("内脏与黑火药", "6031097229")--36
local LLLL = window:Tab("披萨店", "6035121914")--37
local l3008l = window:Tab("3008", "6031097229")--38
local pig = window:Tab("恐怖小猪", "6031097229")--39
local pqkao = window:Tab("幸运方块大乱斗", "6031097229")--40
local FULLMOVIE = window:Tab("住宅大屠杀", "6031097229")--41
local aaakqnja = window:Tab("蜂群模拟器", "6031097229")--41
local Akmala = window:Tab("露营1-3", "6031097229")--42三个服务器
local AJHAKAB = window:Tab("举重模拟器", "6031097229")--43
local AJBAKQJ = window:Tab("俄亥俄州", "6031097229")--44
local AJBAKAN = window:Tab("钓鱼模拟器", "6031097229")--45
local AJBAKAA = window:Tab("最强拳击模拟器", "6031097229")--46
local AJBAKAP = window:Tab("小偷模拟器", "6031097229")--47
local AJBAKAL = window:Tab("越狱", "6031097229")--48
local jwjaknj = window:Tab("火箭发射模拟器", "6031097229")--50
local jwjakn = window:Tab("怪兽宇宙", "6031097229")--51
local jwjak = window:Tab("战斗勇士", "6031097229")--52   共57
local jwja = window:Tab("逃离建筑", "6031097229")--53   共59
local AJAKAK = window:Tab("兵工厂", "6031097229")
print("🔘功能-加载成功！")
----------------------------------------------------------------------------------------------------------------------------------------
local LOL = main:section("关于脚本信息", false)
local AKAJK = main:section("玩家", false)
local Player = main:section("通用", false)
local teles = main:section("ESP", false)
local teleports = main:section("传送带️", false)
local chat = amusement:section("破解违禁词方法", false)
local SETUP = SettingsTab:section("游戏设置", false)
local SETU = SettingsTab:section("画质设置", false)
local set = SettingsTab:section("UI设置和自定义",false)
local CNA = CNScript:section("小云制作", false)
local CNS = CNScript:section("其他国外脚本", false)
local CN = CNScript:section("其他国内脚本", false)
local AQ = CNScript:section("收费国内脚本『破解』", false)
local FE = FEScript:section("FE", true)
local Aoajlak = Natural:section("主要的", true)
local Tab2 = Natural:section("脚本中心", true)
local Tab3 = buildaship:section("主要的", true)
local fakeTab3 = buildaship:section("脚本", true)
local LOlTab3 = buildaship:section("角色", true)
local MainTab4 = prison:section("主要的", true)
local cnTab4 = prison:section("脚本", true)
local deliverTab4 = prison:section("传送地图🗺️", true)
local Tab5 = ninja:section("中心", true)
local Tab66 = shark:section("鲨口生求1", true)
local Tab6 = shark:section("鲨口生求2", true)
local Tab77 = speed:section("脚本包", true)
local LTab7 = speed:section("主要的", true)
local Aoaoao = speed:section("主要传送",false)
local Ajajaqll = speed:section("水晶传送",false)
local TwTajja = speed:section("种族传送",false)
local QPKQ = speed:section("通用",false)
local SUS = magic:section("脚本", true)
local Tab24 = magic:section("脚本", true)
local Tab26 = RNG:section("脚本", true)
local Tab28 = strength:section("超级大力士模拟器",true)
local rai = rainbow:section("主要的",true)
local win = Snow:section("主要的",true)
local let = zombie:section("主要的",true)
local strong = strongest:section("主要的",true)
local strongs = strongest:section("脚本",true)
local action = vividness:section("脚本",true)
local infe = infectious:section("脚本",true)
local infes = infectious:section("主要的",true)
local bfs = bfand:section("脚本",true)
local LL = LLL:section("脚本",true)
local W = LLLL:section("脚本",true)
local xlolx = pig:section("脚本",true)
local oapq = pqkao:section("脚本",true)
local JWJ = FULLMOVIE:section("主要的",true)
local NEKOISR63 = aaakqnja:section("主要的",true)
local jajajha = Akmala:section("主要的",true)
local ALQKNA = AJHAKAB:section("主要的",true)
local JABAJA = AJBAKQJ:section("主要的",true)
local Janab = AJBAKAN:section("主要的",true)
local Janb = AJBAKAA:section("主要的",true)
local Jan = AJBAKAP:section("主要的",true)
local Java = AJBAKAL:section("主要的",true)
local akn = jwjakn:section("主要功能",true)
local jwj = jwja:section("主要功能",true)
print("☑️功能-验证成功")
----------------------------------------------------------------------------------------------------------------------------------------
local settings = {
    Color = Color3.fromRGB(255, 0, 0),
    Size = 15,
    Transparency = 1, 
    AutoScale = true,
    ESPEnabled = false
}

local space = game:GetService("Workspace")
local players = game:GetService("Players")
local player = players.LocalPlayer
local camera = space.CurrentCamera
local espConnections = {}

local function NewText(color, size, transparency)
    local text = Drawing.new("Text")
    text.Visible = false
    text.Text = ""
    text.Position = Vector2.new(0, 0)
    text.Color = color
    text.Size = size
    text.Center = true
    text.Transparency = transparency
    return text
end

local function SetVisibility(state, library)
    for _, textObject in pairs(library) do
        textObject.Visible = state
    end
end

local function SetSize(size, library)
    for _, textObject in pairs(library) do
        textObject.Size = size
    end
end

local function CreateESP(playerToTrack)
    local library = {
        name = NewText(settings.Color, settings.Size, settings.Transparency)
    }

    local function UpdateESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if settings.ESPEnabled and playerToTrack.Character and playerToTrack.Character:FindFirstChild("Humanoid") and playerToTrack.Character:FindFirstChild("HumanoidRootPart") then
                if playerToTrack.Name ~= player.Name and playerToTrack.Character.Humanoid.Health > 0 then
                    local HumanoidRootPart_Pos, OnScreen = camera:WorldToViewportPoint(playerToTrack.Character.HumanoidRootPart.Position)
                    if OnScreen then
                        library.name.Text = playerToTrack.Name
                        library.name.Position = Vector2.new(HumanoidRootPart_Pos.X, HumanoidRootPart_Pos.Y)

                        if settings.AutoScale then
                            local distance = (camera.CFrame.Position - playerToTrack.Character.HumanoidRootPart.Position).Magnitude
                            local textSize = math.clamp(1000 / distance, 2, 30)
                            SetSize(textSize, library)
                        else
                            SetSize(settings.Size, library)
                        end

                        SetVisibility(true, library)
                    else
                        SetVisibility(false, library)
                    end
                else
                    SetVisibility(false, library)
                end

                if not players:FindFirstChild(playerToTrack.Name) then
                    connection:Disconnect()
                end
            else
                SetVisibility(false, library)
            end
        end)
        table.insert(espConnections, connection)
    end

    coroutine.wrap(UpdateESP)()
end

local function ToggleESP(state)
    settings.ESPEnabled = state
    if state then
        for _, v in pairs(players:GetPlayers()) do
            if v ~= player then
                CreateESP(v)
            end
        end

        players.PlayerAdded:Connect(function(newPlayer)
            if newPlayer ~= player then
                CreateESP(newPlayer)
            end
        end)
    else
        for _, connection in pairs(espConnections) do
            connection:Disconnect()
        end
        espConnections = {}
    end
end
----------------------------------------------------------------------------------------------------------------------------------------
LOL:Label("🤓🤓🤓")
LOL:Label("你的注入器:"..identifyexecutor())
LOL:Label("当前服务器ID:" .. game.GameId .. " ")
LOL:Label("你的用户名" .. game.Players.LocalPlayer.Name .. " ")
LOL:Label("云脚本的创作者小云 QQ168777105")
LOL:Label("123fa98通过白名单来保护云脚本")
LOL:Label("后续会继续添加脚本，不会停更。由于找的外国脚本可能存在不兼容的问题，请见谅")
LOL:Label("云脚本非常易用且功能强大")
LOL:Label("云脚本正在经历疯狂优化，性能将更加强大")
LOL:Label("云脚本中心1群号526684389")
LOL:Label("云脚本中心2群号")
LOL:Button(
    "复制到云脚本①群号（如果找不到）",
    function()
        setclipboard("526684389")
    end
)
LOL:Button(
    "复制到云脚本①链接（QQ可发送）",
    function()
        setclipboard("http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=ur8Jd6QyPa-jj0CRZxhUJKgtovFK1Hg4&authKey=jeoho%2FgycjAWtcLjjEf%2FFmkxgxR7QHgKg%2BXWFYZ851bgW38gYN5r8wO%2BdJQES%2FrJ&noverify=0&group_code=526684389")
    end
)
----------------------------------------------------------------------------------------------------------------------------------------

--[[AKAJK:Textbox("设置速度", "文本", "输入的", "文本", function(Value)
    print("Value")
end)
]]
AKAJK:Slider(
    "跳跃",
    "",
    16,
    16,
    500,
    false,
    function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end
)
AKAJK:Slider(
    "速度",
    "",
    16,
    16,
    500,
    false,
    function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
)
AKAJK:Slider(
    "血量",
    "",
    100,
    1,
    999999999,
    false,
    function(Value)
        game.Players.LocalPlayer.Character.Humanoid.Health = Value
    end
)

AKAJK:Slider('缩放距离', 'ZOOOOOM OUT!',  128, 128, 200000,false, function(value)
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = value
    end)
    AKAJK:Slider('设置重力（正常196.2）', 'Sliderflag', 196.2, 0.1, 1000,false, function(Value)
    game.Workspace.Gravity = Value
end)
AKAJK:Slider('视界（正常70）', 'Sliderflag', 70, 0.1, 250, false, function(v)
        game.Workspace.CurrentCamera.FieldOfView = v
    end)
Player:Button(
    "甩飞别人",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
    end
)
Player:Button(
    "装备隐形",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%B7%A5%E4%BD%9C%E5%AE%A4.LUA", true))()
    end
)
Player:Button(
    "甩飞所有人",
    function()
    local cam = workspace.CurrentCamera
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Flashlight = RS.Flashlight
local Clone = Flashlight:Clone()
Clone.Parent = script.Parent

local Brightness = 5

local Keybind = Enum.KeyCode.F

local UIS = game:GetService("UserInputService")

local Toggle = false

local Mouse = game.Players.LocalPlayer:GetMouse()

local TS = game:GetService("TweenService")
local TI = TweenInfo.new(.1, Enum.EasingStyle.Sine)


UIS.InputBegan:Connect(function(Input, p)
	if p then return end
	if Input.KeyCode == Keybind then
		Toggle = not Toggle
	end
end)

RunService.RenderStepped:Connect(function()
	if Clone then
		
		Clone.Position = cam.CFrame.Position
		TS:Create(Clone, TI, {CFrame = CFrame.lookAt(Clone.Position, Mouse.Hit.Position)}):Play()
		
		if Toggle then
			TS:Create(Clone.SpotLight, TI, {Brightness = Brightness}):Play()
			
		else
			TS:Create(Clone.SpotLight, TI, {Brightness = 0}):Play()
		end

	end
end)
    end)
Player:Button(
    "旋转",
    function()
    local speed = 50

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
    end)
Player:Button(
    "自瞄",
    function()
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame.BorderColor3 = Color3.fromRGB(16, 16, 16)
Frame.Position = UDim2.new(0.326547235, 0, 0.442340851, 0)
Frame.Size = UDim2.new(0.346905529, 0, 0.194492236, 0)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Frame_2.BorderColor3 = Color3.fromRGB(16, 16, 16)
Frame_2.Size = UDim2.new(1, 0, 0.26777932, 0)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1.00234735, 0, 1.08253634, 0)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Aimbot"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.92957741, 0, 0, 0)
TextButton.Size = UDim2.new(0.0697798356, 0, 0.991438508, 0)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "_"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton_2.BorderColor3 = Color3.fromRGB(20, 20, 20)
TextButton_2.Position = UDim2.new(0.0492957756, 0, 0.495575249, 0)
TextButton_2.Size = UDim2.new(0.0469483584, 0, 0.176991165, 0)
TextButton_2.Font = Enum.Font.SourceSansSemibold
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 20.000
TextButton_2.TextWrapped = true

TextLabel_2.Parent = TextButton_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(1.54999995, 0, 0, 0)
TextLabel_2.Size = UDim2.new(17.7999992, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Aimbot"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function RPTXOJ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local state = true
	script.Parent.MouseButton1Down:Connect(function()
		print"t"
		state = not state
		local LB_Size = script.Parent.Parent.AbsoluteSize
		local NW_Size = UDim2.new(0, LB_Size.X, 0, LB_Size.Y)
		if not state then
			script.Parent.Text = "+"
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1
			}):Play()
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 
					v.Visible = false
					v.TextLabel.Visible = false
				end
			end
		else
			script.Parent.Text = "_"
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0
			}):Play()
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 
					v.Visible = true
					v.TextLabel.Visible = true
				end
			end
		end
	end)
end
coroutine.wrap(RPTXOJ_fake_script)()
local function CIXXD_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local state = false
	script.Parent.MouseButton1Down:Connect(function()
		state = not state
		if state then 
			script.Parent.Text = "x"
		else
			script.Parent.Text = ""
		end
	end)
	
	local Cam = workspace.CurrentCamera
	
	local hotkey = true
	function lookAt(target, eye)
		Cam.CFrame = CFrame.new(target, eye)
	end
	
	function getClosestPlayerToCursor(trg_part)
		local nearest = nil
		local last = math.huge
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character and v.Character and v.Character:FindFirstChild(trg_part) then
				if game.Players.LocalPlayer.Character:FindFirstChild(trg_part) then
					local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v.Character[trg_part].Position)
					local AccPos = Vector2.new(ePos.x, ePos.y)
					local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
					local distance = (AccPos - mousePos).magnitude
					if distance < last and vissss and hotkey and distance < 400 then
						last = distance
						nearest = v
					end
				end
			end
		end
		return nearest
	end
	
	game:GetService("RunService").RenderStepped:Connect(function()
		local closest = getClosestPlayerToCursor("Head")
		if state and closest and closest.Character:FindFirstChild("Head") then
			lookAt(Cam.CFrame.p, closest.Character:FindFirstChild("Head").Position)
		end
	end)
end
coroutine.wrap(CIXXD_fake_script)()
local function QNWNII_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Active = true
	script.Parent.Selectable = true
	script.Parent.Draggable = true
end
coroutine.wrap(QNWNII_fake_script)()

    end
)
Player:Button(
    "飞行脚本可隐藏",
    function()
        local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)
Frame.BackgroundTransparency = 0.5  -- 设置透明度

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "⬆️"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000
up.BackgroundTransparency = 0.5  -- 设置透明度

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "⬇️"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000
down.BackgroundTransparency = 0.5  -- 设置透明度

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞行"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000
onof.BackgroundTransparency = 0.5  -- 设置透明度

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "飞行[小云二改]"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.BackgroundTransparency = 0.5  -- 设置透明度

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true
plus.BackgroundTransparency = 0.5  -- 设置透明度

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
speed.BackgroundTransparency = 0.5  -- 设置透明度

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true
mine.BackgroundTransparency = 0.5  -- 设置透明度

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position = UDim2.new(0, 0, -1, 27)
closebutton.BackgroundTransparency = 0.5  -- 设置透明度

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)
mini.BackgroundTransparency = 0.5  -- 设置透明度

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false
mini2.BackgroundTransparency = 0.5  -- 设置透明度

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "飞行小云二改";
	Text = "支持作者小云";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true

		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = '不能小于1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 0.5
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
    end
)
wait(1)
Player:Button(
    "飞车（可能别人看不见）",
    function()
        local Speed = 250

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "上"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "停止"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "停止飞行"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "停止飞行"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "飞行"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞行"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 526)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 50000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)
    end
)
Player:Button(
    "范围",
    function()
        _G.HeadSize = 20
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    end
)

Player:Button(
    "中级范围",
    function()
        _G.HeadSize = 100
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    end
)
Player:Button(
    "高级范围",
    function()
        _G.HeadSize = 500
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
    end
)
Player:Toggle('上帝模式', 'No Description', false, function(Value)
        if Value then
            local LP = game:GetService"Players".LocalPlayer
            local HRP = LP.Character.HumanoidRootPart
            local Clone = HRP:Clone()
            Clone.Parent = LP.Character
        else
            game.Players.LocalPlayer.Character.Head:Destroy()
        end
    end)

Player:Button(
    "自杀",
    function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
)
Player:Button(
    "工具包",
    function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
    end
)
Player:Button(
    "F3X",
    function()
    loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
    end)
Player:Button(
    "键盘⌨️",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true)
        )()
    end
)



Player:Toggle(
    "夜视",
    "text",
    false,
    function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
)
Player:Toggle(
    "无敌",
    "text",
    false,
    function(Value)
    if Value then
		    local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
		else
		    game.Players.LocalPlayer.Character.Humanoid.Health = 100
		end
		end)
Player:Toggle(
    "跳跃",
    "text",
    false,
    function(s)
        getgenv().InfJ = s
        game:GetService("UserInputService").JumpRequest:connect(
            function()
                if InfJ == true then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState(
                        "Jumping"
                    )
                end
            end
        )
    end
)
Player:Toggle(
    "穿墙",
    "text",
    false,
    function(Value)
        if Value then
            Noclip = true
            Stepped =
                game.RunService.Stepped:Connect(
                function()
                    if Noclip == true then
                        for a, b in pairs(game.Workspace:GetChildren()) do
                            if b.Name == game.Players.LocalPlayer.Name then
                                for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                    if v:IsA("BasePart") then
                                        v.CanCollide = false
                                    end
                                end
                            end
                        end
                    else
                        Stepped:Disconnect()
                    end
                end
            )
        else
            Noclip = false
        end
    end
)



--[[teles:Toggle("人物显示（可能问题出来）", "", false, function(s)
    _G.UseESP = s
    if not s then
        for _, highlight in pairs(highlights) do
            highlight.Highlight:Destroy()
            if highlight.BillboardGui then
                highlight.BillboardGui:Destroy()
            end
            if highlight.HealthGui then
                highlight.HealthGui:Destroy()
            end
        end
        highlights = {}
    end
end)

teles:Toggle("昵称显示（可能问题出来）", "", false, function(ss)
    _G.UseNameTag = ss
    for _, highlight in pairs(highlights) do
        if ss then
            if not highlight.BillboardGui then
                local billboardGui = Instance.new("BillboardGui", highlight.Highlight.Adornee:FindFirstChild("Head") or highlight.Highlight.Adornee:WaitForChild("Head"))
                billboardGui.Name = "NameTag"
                billboardGui.Size = UDim2.new(0, 100, 0, 25) 
                billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                billboardGui.AlwaysOnTop = true

                local textLabel = Instance.new("TextLabel", billboardGui)
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Text = highlight.Highlight.Adornee.Name
                textLabel.TextColor3 = _G.ESPColor
                textLabel.TextScaled = true
                textLabel.Font = Enum.Font.SourceSans
                textLabel.TextSize = 14 
                highlight.BillboardGui = billboardGui
            end
        else
            if highlight.BillboardGui then
                highlight.BillboardGui:Destroy()
                highlight.BillboardGui = nil
            end
        end
    end
end)

teles:Toggle("血量显示（可能问题出来）", "", false, function(sss)
    _G.UseHealthTag = sss
    for _, highlight in pairs(highlights) do
        if sss then
            if not highlight.HealthGui then
                local healthGui = Instance.new("BillboardGui", highlight.Highlight.Adornee:FindFirstChild("Head") or highlight.Highlight.Adornee:WaitForChild("Head"))
                healthGui.Name = "HealthTag"
                healthGui.Size = UDim2.new(0, 100, 0, 25)
                healthGui.StudsOffset = Vector3.new(0, 1.5, 0)
                healthGui.AlwaysOnTop = true

                local healthLabel = Instance.new("TextLabel", healthGui)
                healthLabel.Size = UDim2.new(1, 0, 1, 0)
                healthLabel.BackgroundTransparency = 1
                healthLabel.Text = tostring(highlight.Highlight.Adornee.Humanoid.Health)
                healthLabel.TextColor3 = _G.ESPColor
                healthLabel.TextScaled = true
                healthLabel.Font = Enum.Font.SourceSans 
                healthLabel.TextSize = 14 

                highlight.HealthGui = healthGui

                highlight.Highlight.Adornee:FindFirstChildOfClass("Humanoid").HealthChanged:Connect(function(health)
                    if highlight.HealthGui then
                        highlight.HealthGui.TextLabel.Text = tostring(health)
                    end
                end)
            end
        else
            if highlight.HealthGui then
                highlight.HealthGui:Destroy()
                highlight.HealthGui = nil
            end
        end
    end
end)]]
teles:Toggle("人物显示", "", false, function(state)
getgenv().enabled = state --Toggle on/off
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(1, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)
teles:Toggle("ESP显示名称", "", false, function(state)
ToggleESP(state)
end)



-- 创建一个下拉菜单来选择传送的玩家
teleports:Dropdown("选择玩家到传送", "Player Name", AllPlayers, function(Value)
    TeleportToPlayer(Value)
end)

-- 传送到指定位置函数
local function tp(position)
    game.Players.LocalPlayer.Character:PivotTo(position)
end

-- 创建刷新列表按钮
teleports:Button("刷新列表", function()
    refreshPlayerList()
    -- 更新下拉菜单选项
    teleports:SetOptions(AllPlayers)
end)

chat:Button("聊天黄油",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E7%A0%B4%E8%A7%A3%E8%BF%9D%E7%A6%81%E8%AF%8D%E6%96%B9%E6%B3%95.lua", true))()
end)
chat:Label("通知")
SETUP:Button("显示的时间", function()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
end)
SETUP:Button("显示FPS", function()
local ScreenGui = Instance.new("ScreenGui")
local FpsLabel = Instance.new("TextLabel")

ScreenGui.Name = "FPSGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FpsLabel.Name = "FPSLabel"
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0.75,20,0.075,20)--位置
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = "FPS: 0"
FpsLabel.TextSize = 30
FpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255) --颜色
FpsLabel.Parent = ScreenGui

local frameCounter = 0

function updateFpsLabel()
    frameCounter = frameCounter + 1
    if frameCounter >= 20 then -- 20帧
        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsLabel.Text = "FPS: " .. fps
        frameCounter = 0
    end
end

game:GetService("RunService").RenderStepped:Connect(updateFpsLabel)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end)
SETU:Button("光影v4", function()
print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()
end)

SETU:Button("RTX高仿", function()
print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

SETU:Button("国外高质量光影菜单", function()
print("button pressed")
      loadstring(game:HttpGet(('https://pastefy.ga/xXkUxA0P/raw'),true))()
end)

SETU:Button("光影", function()
print("button pressed")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
SETU:Button(
    "RTX图形画质",
    function()
        local light = game.Lighting
        for i, v in pairs(light:GetChildren()) do
            v:Destroy()
        end

        local ter = workspace.Terrain
        local color = Instance.new("ColorCorrectionEffect")
        local bloom = Instance.new("BloomEffect")
        local sun = Instance.new("SunRaysEffect")
        local blur = Instance.new("BlurEffect")

        color.Parent = light
        bloom.Parent = light
        sun.Parent = light
        blur.Parent = light

        -- enable or disable shit

        local config = {
            Terrain = true,
            ColorCorrection = true,
            Sun = true,
            Lighting = true,
            BloomEffect = true
        }

        -- settings {

        color.Enabled = false
        color.Contrast = 0.15
        color.Brightness = 0.1
        color.Saturation = 0.25
        color.TintColor = Color3.fromRGB(255, 222, 211)

        bloom.Enabled = false
        bloom.Intensity = 0.1

        sun.Enabled = false
        sun.Intensity = 0.2
        sun.Spread = 1

        bloom.Enabled = false
        bloom.Intensity = 0.05
        bloom.Size = 32
        bloom.Threshold = 1

        blur.Enabled = false
        blur.Size = 6

        -- settings }

        if config.ColorCorrection then
            color.Enabled = true
        end

        if config.Sun then
            sun.Enabled = true
        end

        if config.Terrain then
            -- settings {
            ter.WaterWaveSize = 0.1
            ter.WaterWaveSpeed = 22
            ter.WaterTransparency = 0.9
            ter.WaterReflectance = 0.05
        -- settings }
        end
        if config.Lighting then
            -- settings {
            light.Ambient = Color3.fromRGB(0, 0, 0)
            light.Brightness = 4
            light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
            light.ExposureCompensation = 0
            light.FogColor = Color3.fromRGB(132, 132, 132)
            light.GlobalShadows = true
            light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
            light.Outlines = false
        -- settings }
        end
        local a = game.Lighting
        a.Ambient = Color3.fromRGB(33, 33, 33)
        a.Brightness = 5.69
        a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        a.EnvironmentDiffuseScale = 0.105
        a.EnvironmentSpecularScale = 0.522
        a.GlobalShadows = true
        a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
        a.ShadowSoftness = 0.18
        a.GeographicLatitude = -15.525
        a.ExposureCompensation = 0.75
        b.Enabled = true
        b.Intensity = 0.99
        b.Size = 9999
        b.Threshold = 0
        local c = Instance.new("ColorCorrectionEffect", a)
        c.Brightness = 0.015
        c.Contrast = 0.25
        c.Enabled = true
        c.Saturation = 0.2
        c.TintColor = Color3.fromRGB(217, 145, 57)
        if getgenv().mode == "Summer" then
            c.TintColor = Color3.fromRGB(255, 220, 148)
        elseif getgenv().mode == "Autumn" then
            c.TintColor = Color3.fromRGB(217, 145, 57)
        else
            warn("没有选择模式！")
            print("请选择一种模式")
            b:Destroy()
            c:Destroy()
        end
        local d = Instance.new("DepthOfFieldEffect", a)
        d.Enabled = true
        d.FarIntensity = 0.077
        d.FocusDistance = 21.54
        d.InFocusRadius = 20.77
        d.NearIntensity = 0.277
        local e = Instance.new("ColorCorrectionEffect", a)
        e.Brightness = 0
        e.Contrast = -0.07
        e.Saturation = 0
        e.Enabled = true
        e.TintColor = Color3.fromRGB(255, 247, 239)
        local e2 = Instance.new("ColorCorrectionEffect", a)
        e2.Brightness = 0.2
        e2.Contrast = 0.45
        e2.Saturation = -0.1
        e2.Enabled = true
        e2.TintColor = Color3.fromRGB(255, 255, 255)
        local s = Instance.new("SunRaysEffect", a)
        s.Enabled = true
        s.Intensity = 0.01
        s.Spread = 0.146

        print("RTX图形加载完毕！创造制作BrickoIcko")
    end
)
SETUP:Button(
    "刷新字符",
    function()
        repeat
            chlplr.Health = 0
            task.wait()
        until chlplr.Health ~= 0
    end
)
SETUP:Button(
    "重置字符",
    function()
        loadstring(
            game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/refresh%20character")
        )()
    end
)
SETUP:Button(
    "重新加入Rejoin",
    function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            game:GetService("Players").LocalPlayer
        )
    end
)
SETUP:Button(
    "保存游戏",
    function()
        saveinstance()
    end
)
SETUP:Button(
    "离开游戏",
    function()
        game:Shutdown()
    end
)
SETUP:Button(
    "开启最高FPS",
    function()
        setfpscap(999)
    end
)
set:Toggle("移除UI辉光", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
        else
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
        end
    end)

    set:Toggle("彩虹UI", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
        end
    end)

        set:Button("摧毁GUI",function()
            game:GetService("CoreGui")["frosty is cute"]:Destroy()
        end)

        set:Keybind("切换用户界面", Enum.KeyCode.Home, function(Value)
            ToggleUILib()
        end)

CNA:Label("不知道哪个脚本，请联系QQ168777105")
CNA:Label("脚本启动不出来等问题，必须删除")
CNS:Button(
    "脚本中心",
    function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))();
loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    end
)
CNS:Button(
    "rblxhub",
    function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
    end
)
CNS:Button(
    "V.GHub支持一百个服务器",
    function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end
)
CN:Button(
    "星空脚本",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%85%B6%E4%BB%96%E5%9B%BD%E5%86%85%E8%84%9A%E6%9C%AC/%E6%98%9F%E7%A9%BA%E8%84%9A%E6%9C%AC/MoonSecV3.lua"))()
    end
)
CN:Button(
    "林脚本",
    function()
lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
    end
)
CN:Button(
    "k1s脚本",
    function()
        getgenv().LS="k1s"
loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/dkdjdj/main/%E6%B7%B7%E6%B7%86.txt"))()
    end
    )
CN:Button(
    "丁丁脚本",
    function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vvbnn/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E9%98%89%E5%89%B2.txt"))()
    end
)
CN:Button("剑客V4修复版", function()
jianke_V4 = "作者_初夏"
jianke__V4 = "作者QQ1412152634"
jianke___V4 = "剑客QQ群347724155"
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)
CN:Button("呱鸡脚本（小云已经帮修复）", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/MRgmQkUy", true))()
end)
CN:Button("☁云脚本☁", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/%E4%BA%91%E8%84%9A%E6%9C%ACCloud%20script.lua", true))() 
end)

CN:Button("鲨脚本", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))() 
end)
      
  
CN:Button("USA脚本", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
end)
      
CN:Button("龙脚本", function()
        getgenv().long = "龙脚本，加载时间长请耐心"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")() 
end)
 
 
CN:Button("冰脚本", function()
loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))() 
end)
  
CN:Button("河流脚本", function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\77\50\57\77\117\81\115\80"))()
end)
      
CN:Button("BS脚本（偷云脚本）", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,71,57,103,117,122,88,100,75})end)())))()--BS
end)
     
      
      
CN:Button("地岩脚本", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end)

CN:Button("波奇塔脚本", function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,113,109,55,76,121,119,82,117})end)())))()
end)

CN:Button(
    "皇脚本",
    function()
        loadstring(
            game:HttpGet(
                "\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"
            )
        )()
    end
)
CN:Button(
    "导管中心",
    function()
        loadstring(
            "\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10"
        )()
    end
)
CN:Button(
    "青脚本",
    function()
        loadstring(game:HttpGet("https://rentry.co/cyq78/raw"))()
    end
)
wait(1)
CN:Button(
    "秋脚本",
    function()
        local SCC_CharPool = {
            [1] = tostring(
                utf8.char(
                    (function()
                        return table.unpack(
                            {
                                104,
                                116,
                                116,
                                112,
                                115,
                                58,
                                47,
                                47,
                                114,
                                97,
                                119,
                                46,
                                103,
                                105,
                                116,
                                104,
                                117,
                                98,
                                117,
                                115,
                                101,
                                114,
                                99,
                                111,
                                110,
                                116,
                                101,
                                110,
                                116,
                                46,
                                99,
                                111,
                                109,
                                47,
                                87,
                                83,
                                56,
                                53,
                                55,
                                57,
                                54,
                                48,
                                47,
                                45,
                                47,
                                109,
                                97,
                                105,
                                110,
                                47,
                                37,
                                69,
                                55,
                                37,
                                65,
                                55,
                                37,
                                56,
                                66,
                                37,
                                67,
                                50,
                                37,
                                66,
                                55,
                                37,
                                69,
                                56,
                                37,
                                56,
                                55,
                                37,
                                65,
                                65,
                                37,
                                69,
                                53,
                                37,
                                56,
                                56,
                                37,
                                66,
                                54,
                                37,
                                69,
                                56,
                                37,
                                56,
                                52,
                                37,
                                57,
                                65,
                                37,
                                69,
                                54,
                                37,
                                57,
                                67,
                                37,
                                65,
                                67,
                                37,
                                69,
                                54,
                                37,
                                57,
                                54,
                                37,
                                66,
                                48,
                                37,
                                69,
                                54,
                                37,
                                66,
                                65,
                                37,
                                57,
                                48,
                                37,
                                69,
                                55,
                                37,
                                65,
                                48,
                                37,
                                56,
                                49,
                                46,
                                116,
                                120,
                                116
                            }
                        )
                    end)()
                )
            )
        }
        loadstring(game:HttpGet(SCC_CharPool[1]))()
    end
)
CN:Button(
    "脚本中心",
    function()
        loadstring(
            game:HttpGet(
                "\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"
            )
        )()
    end
)
CN:Button(
    "剑客V3",
    function()
        jianke_V3 = "作者_初夏"
        jianke = "剑客QQ群601704430"
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3")))()
    end
)
CN:Button(
    "剑客V2",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/jiankeQWQ/Sword-Guest/main/JKYYDS")))()
    end
)
--[[
AQ:Button("丁丁脚本[破解]",function()

playername = "xszxwhbdd"
playid = game.Players:GetUserIdFromNameAsync(playername)
local api = game:HttpGet("https://users.roblox.com/v1/users/"..playid)
local REN_name = string.match(api,'name":"(.-)",')
local REN_displayName = string.match(api,'displayName":"(.-)"')

game.Players.LocalPlayer.Name = REN_name
game.Players.LocalPlayer.Character.Name = REN_name 
game.Players.LocalPlayer.DisplayName = REN_displayName
game.Players.LocalPlayer.CharacterAppearanceId = playid
game.Players.LocalPlayer.UserId = playid

loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/xiu/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.txt"))()

end)
AQ:Button("鱼龙脚本[破解]请不要多点击",function()

playername = "ygshwishxjso"
playid = game.Players:GetUserIdFromNameAsync(playername)
local api = game:HttpGet("https://users.roblox.com/v1/users/"..playid)
local REN_name = string.match(api,'name":"(.-)",')
local REN_displayName = string.match(api,'displayName":"(.-)"')

game.Players.LocalPlayer.Name = REN_name
game.Players.LocalPlayer.Character.Name = REN_name 
game.Players.LocalPlayer.DisplayName = REN_displayName
game.Players.LocalPlayer.CharacterAppearanceId = playid
game.Players.LocalPlayer.UserId = playid

getgenv().FH = "鱼龙脚本"loadstring(game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,102,50,48,105,51,48,115,52,48,104,47,70,72,47,109,97,105,110,47,70,72,46,108,117,97)))()
end)]]
AQ:Label("有没有收费其他脚本，请加小云QQ168777105")
FE:Button("水滴注入器", function()
--[[
	警告:小心！此脚本未经ScriptBlox验证。使用风险自担！
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/crceck123/roblox-script/main/hydrogen_skin_for_evon.lua"))()
end)
FE:Button("cmd", function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
end)
FE:Button("FE C00lgui", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
FE:Button("FE 1x1x1x1", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()-- create by Alan Chiel. some script not work but i fix later
end)

FE:Button("FE大长腿", function()
loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)
FE:Button("FE用头", function()
loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
FE:Button("复仇者", function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)
FE:Button("鼠标", function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)
FE:Button("变怪物", function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
FE:Button("香蕉枪", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)

FE:Button("超长🐔巴", function()
loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)

FE:Button("操人", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
FE:Button("FE动画中心", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
FE:Button("FE变玩家", function()
loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
FE:Button("FE猫娘R63", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
FE:Button("FE", function()
oadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
end)

Aoajlak:Label("主要的")

Aoajlak:Toggle("自动农场胜出", "ToggleInfo", false, function(bool)
    _G.autowinfarm = bool;
    while wait(.1) do
        if _G.autowinfarm == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
end
end)
Aoajlak:Toggle("地图投票用户界面", "t", false, function(Value)
		plr.PlayerGui.MainGui.MapVotePage.Visible = Value
	end)

local nextdis
Aoajlak:Toggle("预测灾害", "t", false, function(val)
		nextdis = val

		while wait(1) and nextdis do
			local SurvivalTag = plr.Character:FindFirstChild("SurvivalTag")
			if SurvivalTag then
				if SurvivalTag.Value == "Blizzard" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雪"
				elseif SurvivalTag.Value == "Sandstorm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：沙尘暴"
				elseif SurvivalTag.Value == "Tornado" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：龙卷风"
				elseif SurvivalTag.Value == "Volcanic Eruption" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火山"
				elseif SurvivalTag.Value == "Flash Flood" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：洪水"
				elseif SurvivalTag.Value == "Deadly Virus" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：病毒"
				elseif SurvivalTag.Value == "Tsunami" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：海啸"
				elseif SurvivalTag.Value == "Acid Rain" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：酸雨"
				elseif SurvivalTag.Value == "Fire" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：火焰"
				elseif SurvivalTag.Value == "Meteor Shower" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：流星雨"
				elseif SurvivalTag.Value == "Earthquake" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：地震"
				elseif SurvivalTag.Value == "Thunder Storm" and nextdis then
					Message.Visible = true
					Message.Text = "下一个灾难是：暴风雨"
				else
					Message.Visible = false
				end
			end
		end
	end)

Aoajlak:Toggle("地图投票用户界面", "Map Voting UI", false, function(bool)
if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
    end
end
if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
    end
end
end)

Aoajlak:Toggle("在水上行走", "ToggleInfo", false, function(bool)
 if bool == false then do game.Workspace.WaterLevel.CanCollide = false
                            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
                        end
                    end
                    if bool == true then do game.Workspace.WaterLevel.CanCollide = true
                            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
                        end
                    end
end)

Aoajlak:Toggle("游戏岛悬崖碰撞", "Togglelnfo", false, function(bool)
for i, v in pairs (game.workspace:GetDescendants())do
                                if v.Name == 'LowerRocks' then
                                    v.CanCollide = bool
                                end
                            end
end)

Aoajlak:Button("禁用坠落损坏",function()
local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                                if FallDamageScript then
                                FallDamageScript:Destroy()
                                end
end)

Aoajlak:Toggle("自动禁用坠落伤害", "Toggleelnfo", false, function(bool)
_G.NoFallDamage = bool;
                            while wait(0.5) do
                                    if _G.NoFallDamage == true then
                            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                            if FallDamageScript then
                            FallDamageScript:Destroy()
                            end end end
end)

Aoajlak:Button("打印下一次灾难(/console)",function()
warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
end)

Aoajlak:Button("移除灾难界面(暴风雪和沙尘暴)",function()
game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
		game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
end)

Aoajlak:Label("地图")

Aoajlak:Button("传送到地图",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.828506, 65.4863434, 18.8461514, 0.00697017973, 0.0789371505, -0.996855199, -3.13589936e-07, 0.996879458, 0.0789390653, 0.999975681, -0.000549906865, 0.00694845384)
end)

Aoajlak:Button("游戏岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Aoajlak:Button("产卵塔",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
Tab2:Button(
    "云脚本高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/AIKAAOKA---------------JSHAKABALAOALAPALAALOAJAHAWJWBAKABAJANAKABKABWJWNA.LUA", true))()
    end
)
Tab2:Button(
    "自然灾害-高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"))()
    end
)
Tab2:Button(
    "黑洞脚本（按E）",
    function()
        local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local NetworkAccess =
            coroutine.create(
            function()
                settings().Physics.AllowSleep = false
                while game:GetService("RunService").RenderStepped:Wait() do
                    for _, Players in next, game:GetService("Players"):GetPlayers() do
                        if Players ~= game:GetService("Players").LocalPlayer then
                            Players.MaximumSimulationRadius = 0
                            sethiddenproperty(Players, "SimulationRadius", 0)
                        end
                    end
                    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    setsimulationradius(math.huge)
                end
            end
        )
        coroutine.resume(NetworkAccess)

        local function EnhanceAndInvinciblePart(part)
            if
                part:IsA("Part") and part.Anchored == false and part.Parent:FindFirstChild("Humanoid") == nil and
                    part.Parent:FindFirstChild("Head") == nil and
                    part.Name ~= "Handle"
             then
                Mouse.TargetFilter = part
                for _, x in next, part:GetChildren() do
                    if
                        x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or
                            x:IsA("BodyThrust") or
                            x:IsA("BodyVelocity") or
                            x:IsA("RocketPropulsion")
                     then
                        x:Destroy()
                    end
                end
                if part:FindFirstChild("Attachment") then
                    part:FindFirstChild("Attachment"):Destroy()
                end
                if part:FindFirstChild("AlignPosition") then
                    part:FindFirstChild("AlignPosition"):Destroy()
                end
                if part:FindFirstChild("Torque") then
                    part:FindFirstChild("Torque"):Destroy()
                end
                part.CanCollide = false
                local Torque = Instance.new("Torque", part)
                Torque.Torque = Vector3.new(100000, 100000, 100000)
                local AlignPosition = Instance.new("AlignPosition", part)
                local Attachment2 = Instance.new("Attachment", part)
                Torque.Attachment0 = Attachment2
                AlignPosition.MaxForce = 9999999999999999
                AlignPosition.MaxVelocity = math.huge
                AlignPosition.Responsiveness = 200
                AlignPosition.Attachment0 = Attachment2
                AlignPosition.Attachment1 = Attachment1
            end
        end

        for _, part in next, game:GetService("Workspace"):GetDescendants() do
            EnhanceAndInvinciblePart(part)
        end

        game:GetService("Workspace").DescendantAdded:Connect(
            function(part)
                EnhanceAndInvinciblePart(part)
            end
        )
        -- 监听按键事件
        UserInputService.InputBegan:Connect(
            function(input, isProcessed)
                if input.KeyCode == Enum.KeyCode.E and not isProcessed then
                    Updated = Mouse.Hit + Vector3.new(0, 5, 0)
                end
            end
        )

        -- 使用物理引擎移动所有物体
        spawn(
            function()
                while game:GetService("RunService").RenderStepped:Wait() do
                    Attachment1.WorldCFrame = Updated
                end
            end
        )
    end
)
Tab2:Button(
    "自然灾害-1脚本",
    function()
        loadstring(
            game:HttpGet(
                "https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg",
                true
            )
        )()
    end
)
Tab2:Button(
    "自然灾害-2脚本",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/    loadstringUjHI6RQpz2o8",
                true
            )
        )()
    end
)
Tab2:Button(
    "自然灾害-3脚本",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"), true))()
    end
)


Tab3:Toggle(
    "自动刷金币",
    "text",
    false,
    function(FARM)
        _G.FARMs = FARM
        while _G.FARMs do
            wait()
            pcall(
                function()
                    game.Workspace.Gravity = 0
                    wait(0.5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(1)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(30, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -50.4467354,
                                34.108551,
                                8676.95117,
                                -0.999937415,
                                -0.000405743311,
                                0.0111814411,
                                -6.1212857e-09,
                                0.999342263,
                                0.0362627953,
                                -0.0111888004,
                                0.0362605266,
                                -0.999279737
                            )
                        }
                    ):Play()
                    wait(30)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -54.1517258,
                                -359.077667,
                                9497.03418,
                                -0.99982208,
                                0.00359633542,
                                -0.0185163822,
                                -7.16419102e-09,
                                0.981655717,
                                0.190661997,
                                0.0188623965,
                                0.190628082,
                                -0.981481075
                            )
                        }
                    ):Play()
                    wait(5)
                    game.Workspace.Gravity = 200
                    wait(20)
                end
            )
        end
    end
)
Tab3:Toggle(
    "自动刷金币快速版",
    "text",
    false,
    function(FARM2)
        _G.FARM2s = FARM2
        while _G.FARM2s do
            wait()
            pcall(
                function()
                    game.Workspace.Gravity = 0
                    wait(0.5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(1)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -50.4467354,
                                34.108551,
                                8676.95117,
                                -0.999937415,
                                -0.000405743311,
                                0.0111814411,
                                -6.1212857e-09,
                                0.999342263,
                                0.0362627953,
                                -0.0111888004,
                                0.0362605266,
                                -0.999279737
                            )
                        }
                    ):Play()
                    wait(5)
                    local TweenService = game:GetService("TweenService")
                    local Tw =
                        TweenService:Create(
                        game.Players.LocalPlayer.Character.HumanoidRootPart,
                        TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
                        {
                            CFrame = CFrame.new(
                                -51.05019,
                                43.5682182,
                                702.193481,
                                -0.999886811,
                                -0.000135422233,
                                0.0150433034,
                                8.65181704e-09,
                                0.999959469,
                                0.00900237076,
                                -0.0150439134,
                                0.00900135189,
                                -0.999846339
                            )
                        }
                    ):Play()
                    wait(5)
                    local Event = game:GetService("Workspace").ClaimRiverResultsGold
                    Event:FireServer()
                    wait(0.1)
                    game.Players.LocalPlayer.Character.Humanoid.Health = -1000
                    wait(0.1)
                    game.Workspace.Gravity = 200
                    wait(7)
                end
            )
        end
    end
)
Tab3:Toggle(
    "自动索赔金币",
    "text",
    false,
    function(GlaimGold)
        _G.ClaimGolds = ClaimGold
        while _G.ClaimGolds do
            wait()
            pcall(
                function()
                    local Event = game:GetService("Workspace").ClaimRiverResultsGold
                    Event:FireServer()
                end
            )
        end

        MainSection:Button(
            "ClearAllBoatParts",
            function()
                local Event = game:GetService("Workspace").ClearAllPlayersBoatParts
                Event:FireServer()
            end
        )

        wait(0.5)
        local ba = Instance.new("ScreenGui")
        local ca = Instance.new("TextLabel")
        local da = Instance.new("Frame")
        local _b = Instance.new("TextLabel")
        local ab = Instance.new("TextLabel")
        ba.Parent = game.CoreGui
        ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ca.Parent = ba
        ca.Active = true
        ca.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ca.Draggable = true
        ca.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
        ca.Size = UDim2.new(0, 370, 0, 52)
        ca.Font = Enum.Font.SourceSansSemibold
        ca.Text = "Anti AFK Script"
        ca.TextColor3 = Color3.new(0, 1, 1)
        ca.TextSize = 22
        da.Parent = ca
        da.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
        da.Position = UDim2.new(0, 0, 1.0192306, 0)
        da.Size = UDim2.new(0, 370, 0, 107)
        _b.Parent = da
        _b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        _b.Position = UDim2.new(0, 0, 0.800455689, 0)
        _b.Size = UDim2.new(0, 370, 0, 21)
        _b.Font = Enum.Font.Arial
        _b.Text = "made by simon"
        _b.TextColor3 = Color3.new(0, 1, 1)
        _b.TextSize = 20
        ab.Parent = da
        ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        ab.Position = UDim2.new(0, 0, 0.158377, 0)
        ab.Size = UDim2.new(0, 370, 0, 44)
        ab.Font = Enum.Font.ArialBold
        ab.Text = "Status: Active"
        ab.TextColor3 = Color3.new(0, 1, 1)
        ab.TextSize = 20

        local bb = game:service "VirtualUser"
        game:service "Players".LocalPlayer.Idled:connect(
            function()
                bb:CaptureController()
                bb:ClickButton2(Vector2.new())
                ab.Text = "机器人想踢你，但我踢了他"
                wait(2)
                ab.Text = "状态：Active"
            end
        )
    end
)

fakeTab3:Button(
    "无限方块（假）",
    function()
        spawn(
            function()
                local guiinf =
                    game:GetService("Players").LocalPlayer.PlayerGui.BuildGui.InventoryFrame.ScrollingFrame.BlocksFrame
                _G.Blocks = false
                while game:GetService("RunService").RenderStepped:wait() do
                    if _G.Blocks then
                        return
                    end
                    for i, v in pairs(guiinf:GetDescendants()) do
                        if v.Name == "AmountText" then
                            v.Text = math.huge
                        end
                    end
                end
            end
        )
    end
)

LOlTab3:Button(
    "变🐔鸡",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local Chicken = workspace:WaitForChild("ChangeCharacter")
        Chicken:FireServer("ChickenCharacter")
    end
)
LOlTab3:Button(
    "变🐧企鹅",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local penguin = workspace:WaitForChild("ChangeCharacter")
        penguin:FireServer("PenguinCharacter")
    end
)
LOlTab3:Button(
    "变🦊狐狸",
    function()
        local players = game:GetService("Players")
        local client = players.LocalPlayer
        local fox = workspace:WaitForChild("ChangeCharacter")
        fox:FireServer("FoxCharacter")
    end
)




local isAutoKillRunning = false -- 变量来跟踪自动终止循环的状态
        local function AutoKillLoop()
            while isAutoKillRunning do
                for i, v in next, game:GetService("Players"):GetChildren() do
                    pcall(function()
                        if v ~= game:GetService("Players").LocalPlayer and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                            while v.Character:WaitForChild("Humanoid").Health > 0 and isAutoKillRunning do
                                wait()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                                for x, c in next, game:GetService("Players"):GetChildren() do
                                    if c ~= game:GetService("Players").LocalPlayer then
                                        game.ReplicatedStorage.meleeEvent:FireServer(c)
                                    end
                                end
                            end
                        end
                    end)
                    wait()
                end
            end
        end
        
        local function AutoJump()
            while isAutoKillRunning do
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                    local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
                    if humanoid.Sit then
                        humanoid.Jump = true
                    end
                end
                wait()
            end
        end

local ez = Instance.new("Folder")
ez.Name = "nikodoors"
ez.Parent = game:service"ReplicatedStorage"
local ez = Instance.new("Folder")
ez.Name = "nikofences"
ez.Parent = game:service"ReplicatedStorage"

local Parts = {}
local States = {}
local plr = game.Players.LocalPlayer
local char = plr.Character

MainTab4:Toggle("开启杀戮气场","state",false,function(s)
States.KillAura = state
        if state then
            notifications:notify{
            Title = "云脚本中心",
            Description = "关闭杀戮气场",
            Icon = 6031302918,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("云");print("山");print("清风");print("忍")
                end
            },
            Length = 10
        }
            CreateKillPart()
        else
            notifications:notify{
            Title = "云脚本中心",
            Description = "开启杀戮气场",
            Icon = 6031302918,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("云");print("山");print("清风");print("忍")
                end
            },
            Length = 10
        }
            if Parts[1] and Parts[1].Name == "KillAura" then
                Parts[1]:Destroy()
                Parts[1] = nil
            end
         end
        end)
        
        function CreateKillPart()
            if Parts[1] then
             pcall(function()
                 Parts[1]:Destroy()
             end)
             Parts[1] = nil
        end
        local Part = Instance.new("Part",plr.Character)
        local hilight = Instance.new("Highlight",Part)
        hilight.FillTransparency = 1
    
        Part.Anchored = true
        Part.CanCollide = false
        Part.CanTouch = false
        Part.Material = Enum.Material.SmoothPlastic
        Part.Transparency = .98
        Part.Material = Enum.Material.SmoothPlastic
        Part.BrickColor = BrickColor.White()
        Part.Size = Vector3.new(20,2,20)
        Part.Name = "KillAura"
        Parts[1] = Part
        end
    
        task.spawn(function()
        repeat task.wait()until plr.Character and char and char:FindFirstChildOfClass("Humanoid")
    
        if States.KillAura then
            CreateKillPart()
        end
      end)
      
    game:GetService("RunService").Stepped:Connect(function()
        if States.KillAura then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then
                        local args = {
                            [1] = v
                        }
                        for i =1,2 do
                            task.spawn(function()
                                game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                            end)
                        end
    
                    end
                end
            end
        end
end)
game:GetService("RunService").Stepped:Connect(function()
        if States.KillAura then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <14 and v.Character.Humanoid.Health >0 then
                        local args = {
                            [1] = v
                        }
                        for i =1,2 do
                            task.spawn(function()
                                game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                            end)
                        end
    
                    end
                end
            end
        end  
     end)
     wait(1)
MainTab4:Toggle("自动杀所有人","text",false,function(state)
if state then
                print("Toggle On")
                isAutoKillRunning = true
                spawn(AutoKillLoop)
                spawn(AutoJump) -- Start the automatic jump function
            else
                print("Toggle Off")
                isAutoKillRunning = false
            end
end)
MainTab4:Toggle("删除门🚪","text",false,function(state)
if state then
        print("Toggle On")
        for i,v in pairs(workspace.Doors:GetChildren()) do
             v.Parent = game:service"ReplicatedStorage".nikodoors
    
        end
    else
        print("Toggle Off")
        for i,v in pairs(game:service"ReplicatedStorage".nikodoors:GetChildren()) do
            v.Parent = workspace.Doors
        end
    end
end)
MainTab4:Button("逮捕所有罪犯", function()
    wait(0.1)
	Player = game.Players.LocalPlayer
	Pcf = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			local i = 10
			repeat
				wait()
				i = i-1
				game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
				Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		end
	end
end)

MainTab4:Button("变成警察", function()
workspace.Remote.TeamEvent:FireServer("Bright blue");
end)

MainTab4:Button("变成囚犯", function()
workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
        local Character = ClosestChar()
        if Character then
            return Character.Torso, Character.Torso.Position
        end
    end

    return __namecall(self, ...)
end)
setreadonly(MT, true)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
MainTab4:Button("无敌模式",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
MainTab4:Button(
    "杀死所有人",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
    end
)
MainTab4:Button(
    "手里剑（秒杀）",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/mSLiAZHk"))()
    end
)
MainTab4:Button(
    "变钢铁侠",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
    end
)
MainTab4:Button(
    "变死神",
    function()
        loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
    end
)
MainTab4:Button(
    "变车模型",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
    end
)


cnTab4:Button(
    "PRISONWARE V1.3",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    end
)
cnTab4:Button(
    "红该 脚本",
    function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
        --紅该 脚本--
    end
)
cnTab4:Button(
    "Tiger脚本",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE"), true))(

        )
    end
)
cnTab4:Button(
    "Moon脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10"))()
    end
)
cnTab4:Button(
    "1脚本",
    function()
        -- This Script isn't mine credits to the owner.
        -- Works on krnl,Synapse,Sirhurt And other.
        loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
    end
)
cnTab4:Button(
    "2脚本",
    function()
        getgenv().http_request = http_request or request or (http and http.request) or syn.request
        repeat
        until http_request
        loadstring(
            http_request(
                {
                    Url = "https://raw.githubusercontent.com/alphaalt0409/WEIRDAPPLEBEEPANEL/main/weirdapplebee.lua",
                    Method = "GET"
                }
            ).Body
        )()
    end
)


deliverTab4:Button(
    "警卫室",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
    end
)
deliverTab4:Button(
    "监狱室内",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
    end
)
deliverTab4:Button(
    "罪犯复活点",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
    end
)
deliverTab4:Button(
    "监狱室外",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
    end
)



Tab5:Button(
    "最强脚本 ",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/hope%20earnestly/Ninja%20Legend.lua",
                true
            )
        )()
    end
)



Tab66:Label("会封禁，建议别用脚本")
Tab66:Button(
    "脚本",
    function()
        loadstring(rawget(game:GetObjects("rbxassetid://3623753581"), 1).Source)("Pepsi Byte")
    end
)

Tab6:Button(
    "透视&免费船只[ ]",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E9%B2%A8%E5%8F%A3%E7%94%9F%E6%B1%822.lua",
                true
            )
        )()
    end
)
Tab6:Button(
    "自动杀鲨鱼",
    function()
        --给杀鲨鱼
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",
                true
            )
        )()
    end
)
Tab6:Button(
    "刷牙齿[不支持手机📱]",
    function()
        --牙齿
        loadstring(game:HttpGet("https://shattered-gang.lol/scripts/sharkbite_2.lua"))()
    end
)






Aoaoao:Button("城市",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-559.2, -7.45058e-08, 417.4))
end)

Aoaoao:Button("雪城",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-858.358, 0.5, 2170.35))
end)

Aoaoao:Button("岩浆城",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1707.25, 0.550008, 4331.05))
end)

Aoaoao:Button("传奇公路",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3594.68, 214.804, 7274.56))
end)



TwTajja:Button("沙漠赛跑(城市)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(58.8, 1.007, -8684.72))
end)

TwTajja:Button("岩浆种族(城市)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1013.4, 1.007, -10997))
end)

TwTajja:Button("草原赛跑(城市)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1687.65, 1.007, -5943.91))
end)

TwTajja:Button("星程(太空)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4366.38, 42.98, -14036.68))
end)

TwTajja:Button("高速公路比赛(沙漠)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2053.67, 71.93, 17943.08))
end)



Ajajaqll:Button("欧米茄水晶(传奇公路)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4530.78, 75.31, 6405.20))
end)

Ajajaqll:Button("电子晶体(沙漠)",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-10682.54, 616.92, 4.86))
end)


QPKQ:Button("反踢出",function()
    local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
end)

QPKQ:Button("低分辨率图形（可能60帧数）",function()
    _G.Settings = {
            Players = {
                ["Ignore Me"] = true, -- Ignore your Character
                ["Ignore Others"] = true -- Ignore other Characters
            },
            Meshes = {
            Destroy = false,
            LowDetail = true
        },
        Images = {
            Invisible = true,
            LowDetail = false,
            Destroy = false,
        },
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)
   
QPKQ:Button("单击TP工具",function()
mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "Click Teleport"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
end)

QPKQ:Button("反AFK",function()
wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)
 
    print("Antiafk enabled")
end)

QPKQ:Button("飞行",function()
loadstring(game:HttpGet("https://pastebin.com/raw/gqv7PXAa"))()
end)
Tab77:Label("通知↓左上角看就行")
Tab77:Button(
    "云脚本V2",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E6%B8%B8%E6%88%8F/%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87V2.lua",
                true
            )
        )()
        CoreGui:SetCore(
            "SendNotification",
            {
                Title = "⚠️注意！",
                Text = "左上角！",
                Duration = 30
            }
        )
    end
)
Tab77:Button(
    "云脚本V1",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/7.lua"))()
    end
)

LTab7:Button(
    "开启卡宠",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
)
LTab7:Button(
    "自动重生和自动刷等级",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()
    end
)
local Tab8 = force:section("脚本包", false)
local Tab1 = force:section("主要功能",false)
local Tab3 = force:section("岩石",false)
local Tab46 = force:section("扔巨石",false)
local Tab45 = force:section("死电梯",false)
local Tab44 = force:section("台式压力机",false)
local Tab9 = force:section("深蹲架",false)
local Tab4 = force:section("跑步机",false)
local Tabb4 = force:section("引体向上海滩",false)
local li = force:section("传送🗺️", false)
Tab1:Button("选择工具",function(tool)
    selecttool = tool
end)
    
Tab1:Toggle("自动农场", "text",false,function(Tool)
    getgenv().Tool = farm
while getgenv().Tool do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == selecttool then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
if not getgenv().farm then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
    end)
    
Tab1:Toggle("TP安全的地方", "text",false,function(place)
    if place then
getgenv().place = true
while getgenv().place do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.6716728, 32.2157211, 1290.41211, 0.9945544, 1.23613528e-08, -0.104218982, -7.58742402e-09, 1, 4.62031657e-08, 0.104218982, -4.51608102e-08, 0.9945544)
end
else
getgenv().place = false
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-34.1635208, 3.67689133, 219.640869, 0.599920511, -2.24152163e-09, 0.800059617, 4.46125981e-09, 1, -5.43559087e-10, -0.800059617, 3.89536625e-09, 0.599920511)
end
    end)
    
Tab1:Toggle("TP安全地点", "text",false,function(place)
    if place then
getgenv().place = true
while getgenv().place do
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.6716728, 32.2157211, 1290.41211, 0.9945544, 1.23613528e-08, -0.104218982, -7.58742402e-09, 1, 4.62031657e-08, 0.104218982, -4.51608102e-08, 0.9945544)
end
else
getgenv().place = false
wait()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-34.1635208, 3.67689133, 219.640869, 0.599920511, -2.24152163e-09, 0.800059617, 4.46125981e-09, 1, -5.43559087e-10, -0.800059617, 3.89536625e-09, 0.599920511)
end
end)
    
Tab1:Toggle("自动重生", "text",false,function(rebirth)
    getgenv().rebirth = rebirth
while getgenv().rebirth do
wait()
local A_1 = "rebirthRequest"
local Event = game:GetService("ReplicatedStorage").rEvents.rebirthRemote
Event:InvokeServer(A_1)
end
end)



Tab3:Toggle("摇滚0", "text",false,function(rock)
    getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end)

Tab3:Toggle("摇滚10", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 10 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚100", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 100 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚5千", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 5000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚15千", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 150000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚40千", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 400000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚75千", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 750000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚1M", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 1000000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)

Tab3:Toggle("摇滚5M", "text",false,function(rock)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then
getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137)
end
if not getgenv().rock then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end
end
end)



Tab4:Toggle("跑步机海滩10", "text",false,function(treadmill)
    getgenv().spam = treadmill
while getgenv().spam do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874)
local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:WaitForChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end

if not getgenv().spam then
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:UnbindFromRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end)

Tab4:Toggle("跑步机Frost-健身房2000", "text",false,function(treadmill)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then
getgenv().spam = treadmill
while getgenv().spam do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816)
local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:WaitForChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end

if not getgenv().spam then
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:UnbindFromRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end)

Tab4:Toggle("跑步机神话-健身房2000", "text",false,function(treadmill)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then
getgenv().spam = treadmill
while getgenv().spam do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231)
local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:WaitForChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end

if not getgenv().spam then
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:UnbindFromRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end)

Tab4:Toggle("永恒跑步机-健身房", "text",false,function(treadmill)
    if game.Players.LocalPlayer.Agility.Value >= 3500 then
getgenv().spam = treadmill
while getgenv().spam do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594)
local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:WaitForChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end

if not getgenv().spam then
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:UnbindFromRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end)

Tab4:Toggle("跑步机传奇-健身房", "text",false,function(treadmill)
    if game.Players.LocalPlayer.Agility.Value >= 3000 then
getgenv().spam = treadmill
while getgenv().spam do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727)
local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:WaitForChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end

if not getgenv().spam then
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:UnbindFromRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
   	 if localPlayer.Character then
   		 local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
   		 if humanoid then
   			 humanoid:Move(Vector3.new(10000, 0, -1), true)
   		 end
   	 end
    end
)
end
end)



Tab9:Toggle("蹲式沙滩", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(232.627625, 3.67689133, 96.3039856, -0.963445187, -7.78685845e-08, -0.267905563, -7.92865222e-08, 1, -5.52570167e-09, 0.267905563, 1.5917589e-08, -0.963445187)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab9:Toggle("深蹲架霜冻健身房", "text",false,function(rack)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2629.13818, 3.36860609, -609.827454, -0.995664716, -2.67296816e-08, -0.0930150598, -1.90042453e-08, 1, -8.39415222e-08, 0.0930150598, -8.18099295e-08, -0.995664716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab9:Toggle("深蹲架传奇健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4443.04443, 987.521484, -4061.12988, 0.83309716, 3.33018835e-09, 0.553126693, -2.87759438e-09, 1, -1.68654424e-09, -0.553126693, -1.86619012e-10, 0.83309716)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab9:Toggle("深蹲架肌肉健身房", "text",false,function(rack)
    getgenv().spam = rack
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8757.37012, 13.2186356, -6051.24365, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)



Tabb4:Toggle("引体向上海滩", "text",false,function(pull)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-185.157745, 5.81071186, 104.747154, 0.227061391, -8.2363325e-09, 0.97388047, 5.58502826e-08, 1, -4.56432803e-09, -0.97388047, 5.54278827e-08, 0.227061391)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)


Tabb4:Toggle("引体向上神话游戏", "text",false,function(pull)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2315.82104, 5.81071281, 847.153076, 0.993555248, 6.99809632e-08, 0.113349125, -7.05298859e-08, 1, 8.32554692e-10, -0.113349125, -8.82168916e-09, 0.993555248)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tabb4:Toggle("引体向上传奇健身房", "text",false,function(pull)
    getgenv().spam = pull
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4305.08203, 989.963623, -4118.44873, -0.953815758, -7.58000382e-08, -0.30039227, -8.98859724e-08, 1, 3.30721512e-08, 0.30039227, 5.85457904e-08, -0.953815758)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)



Tab44:Toggle("卧推海滩", "text",false,function(banch)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 150 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-241.827469, 7.91391563, 346.321808, 0.811665356, -1.43794319e-08, -0.584122717, -3.94010407e-08, 1, -7.93666999e-08, 0.584122717, 8.74342447e-08, 0.811665356)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab44:Toggle("卧推冰上体操", "text",false,function(banch)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 7500 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3020.7019, 32.5691414, -194.773117, 0.924556971, 2.05821564e-08, 0.381043822, -3.5507064e-08, 1, 3.21384199e-08, -0.381043822, -4.32435456e-08, 0.924556971)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab44:Toggle("卧推神话游戏", "text",false,function(banch)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2363.95483, 42.2141037, 1243.50562, -0.944882751, 2.18911698e-08, 0.32740894, 4.06544087e-09, 1, -5.51292381e-08, -0.32740894, -5.07596027e-08, -0.944882751)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab44:Toggle("卧推永恒健身房", "text",false,function(banch)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7172.77002, 48.3923645, -1105.06018, -0.972435296, -4.87620122e-09, 0.233172983, -2.76572942e-09, 1, 9.37805122e-09, -0.233172983, 8.47465476e-09, -0.972435296)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab44:Toggle("卧推传奇体操", "text",false,function(banch)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.81152, 1024.02734, -3800.75122, 0.446250677, -7.44993258e-08, -0.894908011, -1.94296179e-09, 1, -8.4216893e-08, 0.894908011, 3.93206179e-08, 0.446250677)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab44:Toggle("卧推肌肉运动", "text",false,function(banch)
    getgenv().spam = bench
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8592.99805, 49.1056519, -6042.80322, -0.975815654, -1.70261014e-08, 0.218595073, -1.06326148e-08, 1, 3.04244203e-08, -0.218595073, 2.73643881e-08, -0.975815654)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)



Tab45:Toggle("死电梯海滩", "text",false,function(lift)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1500 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(136.606216, 3.67689133, 97.661499, -0.974106729, -1.89495477e-08, 0.226088539, -1.78365624e-08, 1, 6.96555214e-09, -0.226088539, 2.75254886e-09, -0.974106729)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab45:Toggle("死举传奇健身房", "text",false,function(lift)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 5000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2916.11572, 3.67689204, -212.97438, -0.241641939, -6.10995343e-08, 0.970365465, 6.65890596e-08, 1, 7.9547597e-08, -0.970365465, 8.38377616e-08, -0.241641939)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab45:Toggle("死举传奇健身房", "text",false,function(lift)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4538.42627, 987.829834, -4008.82007, -0.830109239, 2.21324914e-08, 0.557600796, 8.02302083e-08, 1, 7.97476361e-08, -0.557600796, 1.1093568e-07, -0.830109239)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab45:Toggle("死举肌", "text",false,function(lift)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8768.4375, 13.5269203, -5681.62256, -0.997508109, -5.4007393e-10, 0.0705519542, 1.52984292e-10, 1, 9.81797044e-09, -0.0705519542, 9.80429782e-09, -0.997508109)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)



Tab46:Toggle("投掷海滩", "text",false,function(lift)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 3000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-91.6730804, 3.67689133, -292.42868, -0.221022144, -2.21041621e-08, -0.975268781, 1.21414407e-08, 1, -2.54162646e-08, 0.975268781, -1.7458726e-08, -0.221022144)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab46:Toggle("扔神话游戏", "text",false,function(lift)
    if game.Players.LocalPlayer.leaderstats.Strength.Value >= 10000 then
getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2486.01733, 3.67689276, 1237.89331, 0.883595645, -2.06135038e-08, -0.468250751, -3.3286871e-09, 1, -5.03036404e-08, 0.468250751, 4.60067362e-08, 0.883595645)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab46:Toggle("投掷传奇体操", "text",false,function(lift)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4189.96143, 987.829773, -3903.0166, 0.422592968, 0, 0.906319559, 0, 1, 0, -0.906319559, 0, 0.422592968)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab46:Toggle("投掷肌肉", "text",false,function(lift)
    getgenv().spam = lift
while getgenv().spam do
wait()
if game.Players.LocalPlayer.machineInUse.Value == nil then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(8933.69434, 13.5269222, -5700.12598, -0.823058188, 6.96304259e-09, 0.567957044, -1.19721832e-08, 1, -2.96093621e-08, -0.567957044, -3.11699146e-08, -0.823058188)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
else
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder.Deadlift.interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
end
if not getgenv().spam then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

Tab8:Button(
    "云脚本V2.1",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E5%8A%9B%E9%87%8FV2.1.lua"
            )
        )()
    end
)
Tab8:Button(
    "脚本老版本",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend")
        )()
    end
)
Tab8:Button(
    "speed X Hub",
    function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends"))(

        )
    end
)
Tab8:Button("收集宝石",function()
        jk = {}
for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
    if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
        table.insert(jk, v.Name)
    end
end
for i = 1, #jk do
    wait(2)
    game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
end
    end)
    Tab8:Toggle("自动比赛开关",'Toggleflag',false, function(state)
        if li0.Text=="关"
then li0.Text="开"
else li0.Text="关"
    end
        if state then
            while wait() do 
                if li0.Text=="自动加入战斗（开）" then
            wait(2)
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                end
                end
        end
    end)


li:Button("传送到出生点", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

li:Button("传送到冰霜健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)
 
li:Button("传送到神话健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)
 
li:Button("传送到永恒健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)
 
li:Button("传送到传说健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)
 
li:Button("传送到肌肉之王健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)
 
li:Button("传送到安全岛", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)
 
li:Button("传送到幸运抽奖区域", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

local Tab9 = hunt:section("脚本", true)
Tab9:Button(
    " [小云制作]",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E5%AF%BB%E5%AE%9D%E6%A8%A1%E6%8B%9F%E5%99%A8.lua",
                true
            )
        )()
    end
)
Tab8:Button(
    "HuntSim脚本",
    function()
        loadstring(game:HttpGet("http://void-scripts.com/Scripts/treasureHuntSim.lua"))()
    end
)
 
local Tab10 = breaks:section("第1章", true)
Tab10:Button(
    "HoHo",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/28Z4ExEn", true))()
    end
)
Tab10:Button(
    "HoHo英文版",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
)
Tab10:Button(
    "云",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/BREAK%20IN.LUA", true))()
    end
)
local Tab10 = breaks:section("第2章", true)
Tab10:Button(
    "云",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/BREAK%20IN2.LUA", true))()
    end
)
Tab10:Button(
    "高级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/D8rkX/D8rk-Hub/main/Games/Break%20In%202.lua", true))(

        )
    end
)
Tab10:Button(
    "最强云脚本中心",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/i.lua", true))()
    end
)
local Tab11 = Field:section("脚本", true)
Tab11:Button(
    "V.G Hub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
    end
)
Tab11:Button(
    "HoHo英文版",
    function()
        oadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
)
Tab11:Button(
    "HoHo ",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/LLL.lua", true))(

        )
    end
)


local Tab12 = TheRake:section("脚本", true)

Tab12:Button(
    "云☁️ ",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/The%20Rake.lua", true))()
    end
)
Tab12:Button(
    "Herades脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/artas01/artas01/main/TheRakeRemastered_byHerades"))()
    end
)
Tab12:Button(
    "RealZzHub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RealZzHub/MainV2/main/Main.lua"))()
    end
)


local Tab14 = Evade:section("脚本", true)
Tab14:Button(
    "Evade ",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/blob/main/new%2FJahaakabakjaqj.lua", true)
        )()
    end
)
Tab14:Button(
    "V.G Hub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
    end
)
Tab14:Button(
    "Darkrai X",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
    end
)


local Tab15 = destroyer:section("第章", true)
Tab15:Button(
    "云破坏者谜团",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/AIAJAOKALQ.LUA", true))()
    end
)
Tab15:Button(
    "云破坏者谜团2",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/FUCK%20YOU.LUA", true))()
    end
)
Tab15:Button(
    "多功能",
    function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"), true))()
    end
)

Tab15:Button(
    "V.G Hub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
    end
)

    local FM = FM1:section("脚本中心",true)

FM:Button("bark2.0", function()
       loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,110,111,111,98,54,49,54,49,54,49,47,82,79,66,76,79,88,47,109,97,105,110,47,98,97,114,107,50,46,48,46,108,117,97})end)())))();     
end)    
                      
    
 FM:Button(" 忍  -- 伐木大亨2(盗版浮光掠影)", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,98,51,115,84,68,86,112,116})end)())))();
 end)
 FM:Button(
    "DarkX（白脚本）",
    function()
        loadstring(game:HttpGet "https://raw.githubusercontent.com/darkxwin/darkxsourcethinkyoutousedarkx/main/darkx")()
    end
)
FM:Button(
    "LuaWare汉 化 版",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
    end
)
FM:Button(
    "LuaWare",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf", true)
        )()
    end
)

FM:Button(
    "ButterHub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt"))()
    end
)
FM:Button("白脚本伐木大亨2[免费](已修复)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))();
end)
    
FM:Button("伐木大亨2多功能", function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
end)

FM:Dropdown("传送", 'Dropdown',
    {'出生点', '木材反斗城', '土地商店', '桥', '码头', '椰子岛', '洞穴', '鲨鱼斧合成',
     '火山', '沼泽', '家具店', '盒子车行', '连锁逻辑店', '鲍勃的小店', '画廊', '雪山',
     '灵视神殿', '怪人', '小绿盒', '滑雪小屋', '黄金木洞穴', '小鸟斧头', "灯塔"},
    function(b)
        if b == '木材反斗城' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270, 4, 60)
        elseif b == '出生点' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(174, 10.5, 66)
        elseif b == '土地商店' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270, 3, -98)
        elseif b == '桥' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, 37, -892)
        elseif b == '码头' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1136, 0, -206)
        elseif b == '椰子岛' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2614, -4, -34)
        elseif b == '洞穴' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3590, -177, 415)
        elseif b == '火山' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1588, 623, 1069)
        elseif b == '沼泽' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1216, 131, -822)
        elseif b == '家具店' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(486, 3, -1722)
        elseif b == '盒子车行' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(509, 3, -1458)
        elseif b == '雪山' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1487, 415, 3259)
        elseif b == '连锁逻辑店' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4615, 7, -794)
        elseif b == '鲍勃的小店' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292, 8, -2544)
        elseif b == '画廊' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5217, -166, 721)
        elseif b == '灵视神殿' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1608, 195, 928)
        elseif b == '怪人' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071, 16, 1141)
        elseif b == '小绿盒' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1667, 349, 1474)
        elseif b == '滑雪小屋' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1244, 59, 2290)
        elseif b == '黄金木洞穴' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1080, -5, -942)
        elseif b == '鲨鱼斧合成' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(330.259735, 45.7998505, 1943.30823, 0.972010553, -8.07546598e-08, 0.234937176,
                7.63610259e-08, 1, 2.77986647e-08, -0.234937176, -9.08055142e-09, 0.972010553)
        elseif b == '小鸟斧头' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4813.1, 33.5, -978.8)
        elseif b == '灯塔' then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1464.8, 356.3, 3257.2)
        end

    end)


local Tab17 = Blade:section("脚本", true)
Tab17:Button(
    "自动招架",
    function()
        local L0_0
  L0_0 = game
  L0_0 = L0_0.Name
  if L0_0 == "Blade Ball Game" then
    while true do
      game.ParryBladeBall()
      wait(0.5)
    end
  else
    notifications:notify{
            Title = "云脚本中心",
            Description = "这个剧本是为刀刃球脚本游戏准备的",
            Icon = 17493876383,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("小云:D")
                end
            },
            Length = 5
        }
  end
    end
)
Tab17:Button("刀刃球1",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
end)
    Tab17:Button("刀刃球2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
end)
    Tab17:Button("刀刃球3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
end)
    Tab17:Button("刀刃球4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/Neon.C-Hub-X/main/UnknownVersion"))()
end)
    Tab17:Button("刀刃球5",function()
    local a,b,c,d=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,"https://shz.al/~NeoV4"c(a and b, "Your Executor does not support.")a(b({Url=d,Method="GET"}).Body)()
end)
    Tab17:Button("刀刃球6",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
end)
Tab17:Button(
    "刀刃球7",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
    end
)

local Tab18 = TDS:section("TDS", true)

Tab18:Button(
    "主要的辅助自动点击[需要电脑]",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E6%B8%B8%E6%88%8F/TDS%E5%A1%94%E9%98%B2.lua",
                true
            )
        )()
    end
)
Tab18:Button(
    "隐藏塔查看",
    function()
        local Towers = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Root.Inventory.View.Frame.Frame.Frame

        for _, v in pairs(Towers:GetDescendants()) do
            if v:IsA("ImageButton") then
                v.Visible = true
            end
        end
    end
)
Tab18:Label("自动点击就请不要手点")
Tab18:Button("（需要侦察和狙击兵）新手0级能打过", function()
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 

TDS:Loadout("Scout", "Sniper", "nil", "nil", "nil") 

TDS:Map("Portland", true, "Survival")

TDS:Mode('Normal')--Starter Grind by #LackOfWifi#1723

TDS:Place('Scout', -21.07355499267578, 0.2301158905029297, 18.69173812866211, 0, 0, 24)

TDS:Upgrade(1, 0, 0, 23)

TDS:Place('Scout', -17.022647857666016, 0.22975444793701172, 18.743301391601562, 0, 0, 11)

TDS:Upgrade(2, 0, 0, 10)

TDS:Place('Scout', -13.26114273071289, 0.22942161560058594, 19.22350311279297, 2, 0, 58)

TDS:Upgrade(3, 2, 0, 57)

TDS:Place('Sniper', -9.475704193115234, 7.751002311706543, 15.617055892944336, 3, 0, 57)

TDS:Upgrade(4, 3, 0, 5)

TDS:Upgrade(3, 4, 0, 59)

TDS:Upgrade(2, 4, 0, 1)

TDS:Upgrade(1, 5, 0, 4)

TDS:Upgrade(4, 6, 0, 59)

TDS:Place('Sniper', -13.272991180419922, 7.751002311706543, 14.758727073669434, 7, 0, 58)

TDS:Upgrade(5, 7, 0, 57)

TDS:Upgrade(5, 7, 0, 3)

TDS:Place('Scout', -24.14844512939453, 0.23038768768310547, 19.097640991210938, 8, 0, 4)

TDS:Upgrade(6, 8, 0, 3)

TDS:Upgrade(6, 8, 0, 2)

TDS:Place('Sniper', -16.596965789794922, 7.751002311706543, 14.68368148803711, 9, 0, 58)

TDS:Upgrade(7, 9, 0, 57)

TDS:Place('Sniper', -5.745538711547852, 7.751002311706543, 15.332261085510254, 9, 0, 52)

TDS:Upgrade(8, 9, 0, 47)

TDS:Upgrade(7, 10, 0, 59)

TDS:Upgrade(8, 10, 0, 48)

TDS:Upgrade(8, 11, 0, 4)

TDS:Upgrade(4, 12, 0, 4)

TDS:Upgrade(5, 14, 0, 55)--Starter Grind by #LackOfWifi#1723

TDS:Upgrade(7, 14, 0, 2)

TDS:Upgrade(3, 15, 0, 1)

TDS:Upgrade(2, 16, 0, 58)

TDS:Upgrade(1, 16, 0, 4)

TDS:Upgrade(6, 16, 0, 3)

TDS:Upgrade(1, 18, 0, 3)

TDS:Place('Sniper', -20.1894588470459, 7.751002311706543, 15.518404006958008, 19, 0, 28)

TDS:Upgrade(9, 19, 0, 27)

TDS:Upgrade(9, 19, 0, 5)

TDS:Upgrade(9, 19, 0, 4)

TDS:Place('Sniper', -9.377171516418457, 7.751002311706543, 12.409147262573242, 20, 0, 57)

TDS:Upgrade(10, 20, 0, 55)

TDS:Upgrade(10, 20, 0, 55)

TDS:Upgrade(10, 20, 0, 4)

TDS:Place('Sniper', -33.24842834472656, 7.751002311706543, 14.234642028808594, 21, 0, 37)

TDS:Upgrade(11, 21, 0, 36)

TDS:Upgrade(11, 21, 0, 36)

TDS:Upgrade(11, 21, 0, 4)

TDS:Place('Sniper', -1.9295330047607422, 7.751002311706543, 15.389253616333008, 22, 0, 1)

TDS:Upgrade(12, 22, 0, 58)

TDS:Upgrade(12, 22, 0, 58)

TDS:Upgrade(12, 22, 0, 27)

TDS:Place('Sniper', 1.612715721130371, 7.751002311706543, 15.5001859664917, 22, 0, 10)

TDS:Upgrade(13, 22, 0, 8)

TDS:Upgrade(13, 22, 0, 8)

TDS:Upgrade(13, 22, 0, 5)

TDS:Place('Sniper', 1.8282337188720703, 7.751002311706543, 12.432242393493652, 23, 0, 46)

TDS:Upgrade(14, 23, 0, 44)

TDS:Upgrade(14, 23, 0, 44)--Starter Grind by #LackOfWifi#1723

TDS:Upgrade(14, 23, 0, 28)

TDS:Place('Sniper', -37.13174057006836, 7.751002311706543, 12.133678436279297, 23, 0, 4)

TDS:Upgrade(15, 23, 0, 2)

TDS:Upgrade(15, 23, 0, 2)

TDS:Upgrade(15, 23, 0, 1)

TDS:Place('Sniper', -36.703330993652344, 7.751002311706543, 15.853965759277344, 24, 0, 54)

TDS:Upgrade(16, 24, 0, 53)

TDS:Upgrade(16, 24, 0, 48)

TDS:Upgrade(16, 24, 0, 5)

TDS:Place('Sniper', -32.83076858520508, 7.159343242645264, -4.1754150390625, 25, 0, 47)

TDS:Upgrade(17, 25, 0, 46)

TDS:Upgrade(17, 25, 0, 45)

TDS:Upgrade(17, 25, 0, 5)

TDS:Place('Sniper', -20.11481285095215, 7.751002311706543, 12.399961471557617, 26, 0, 55)

TDS:Upgrade(18, 26, 0, 54)

TDS:Upgrade(18, 26, 0, 53)

TDS:Upgrade(18, 26, 0, 53)

TDS:Place('Sniper', -40.72605514526367, 7.751002311706543, 12.25623607635498, 27, 0, 56)

TDS:Upgrade(19, 27, 0, 55)

TDS:Upgrade(19, 27, 0, 54)

TDS:Upgrade(19, 27, 0, 54)

TDS:Place('Sniper', -40.554710388183594, 7.751002311706543, 15.897595405578613, 27, 0, 49)

TDS:Upgrade(20, 27, 0, 47)

TDS:Upgrade(20, 27, 0, 47)

TDS:Upgrade(20, 27, 0, 38)

TDS:Place('Sniper', 5.973940372467041, 7.751002311706543, 15.4154691696167, 28, 0, 52)

TDS:Upgrade(21, 28, 0, 51)

TDS:Upgrade(21, 28, 0, 51)

TDS:Upgrade(21, 28, 0, 50)

TDS:Place('Sniper', -29.16613006591797, 7.159438133239746, -7.509609222412109, 28, 0, 36)

TDS:Sell(22, 28, 0, 35)

TDS:Place('Sniper', -29.516433715820312, 7.159419059753418, -7.196532726287842, 28, 0, 31)

TDS:Upgrade(23, 28, 0, 30)

TDS:Upgrade(23, 28, 0, 30)

TDS:Upgrade(23, 28, 0, 29)--Starter Grind by #LackOfWifi#1723

TDS:Place('Sniper', 9.378538131713867, 7.751002311706543, 12.852798461914062, 28, 0, 15)

TDS:Upgrade(24, 28, 0, 14)

TDS:Upgrade(24, 28, 0, 14)

TDS:Upgrade(24, 28, 0, 14)

TDS:Place('Sniper', -36.41805648803711, 7.159343242645264, -5.21421480178833, 29, 0, 54)
end)
Tab18:Button("您好，需要什么脚本？", function()
print("hi")
end)
wait(1)
local Tab18 = TDS:section("TDX", true)
Tab18:Label("需要六个塔就可能自动点击")
Tab18:Label("Discord搜bananahub")
Tab18:Button("Bananan Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/diepedyt/bui/main/temporynewkeysystem.lua"))()
end)
local Tab19 = DOORSHUB:section("主要", true)
Tab19:Button("可以清除东西的枪", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end)                  
Tab19:Button("十字架", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))();
end)
      
Tab19:Button("夜视仪", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
end)


Tab19:Button("神圣炸弹", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end)
      
Tab19:Button("吸铁石", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
end)
      
Tab19:Button("剪刀", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/v2yEJYmu"))()
end)
      
Tab19:Button("↓英文脚本↓", function()
end)

Tab19:Button("BlackKingq", function()
      loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end)
      
Tab19:Button("MS DOORS", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua'))()
end)
local Tab19 = DOORSHUB:section("中文", true)
Tab19:Button(
    "普通Doors ",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
    end
)
Tab19:Button(
    "云Doors",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/DOORS.LUA", true))()
    end
)
Tab19:Button(
    "云Doors超级脚本",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/EntitySpawner/main/doors(orionlib).lua"))()
    end
)
Tab19:Button(
    "微山doors_1.0.4",
    function()
        --微山doors_1.0.4
_G.WeiShanTeamQQ = "3543896302"
_G.WeiShanTeamScriptName = "微山doors_1.0.4"
loadstring(game:HttpGet("https://raw.githubusercontent.com/weishanteam/Script/main/doors/WeiShan_Loader.lua"))()
    end
)
Tab19:Button(
    "BobHub",
    function()
        --[[Doors Blackking And BobHub脚本 ]] loadstring(
            game:HttpGet(
                "\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"
            )
        )()
    end
)
local Tab19 = DOORSHUB:section("英文", true)
Tab19:Button(
    "chiba",
    function()
        loadstringcgame:HttpGet("https://raw.githubuserconteny.com/kindlhare/chibaHubcomeback/main/chiba-Doors.txt")()
    end
)

Tab19:Button(
    "Vynixius",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
    end
)

Tab19:Button(
    "Darkrai X",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
    end
)

Tab19:Button(
    "MS DOORS",
    function()
        loadstring(
            game:HttpGet(
                ("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),
                true
            )
        )()
    end
)

Tab19:Button(
    "变怪",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"
            )
        )()
    end
)

Tab19:Button(
    "FFJ1",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
    end
)

local Tab20 = bruh:section("主要的", true)
local Tab200 = bruh:section("传送", true)
Tab20:Button(
    "云中心",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/IlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIl/CloudHub/main/%E4%B8%80%E8%B7%AF%E5%90%91%E8%A5%BF.lua",
                true
            )
        )()
    end
)
Tab20:Button("子弹追踪！",function()
local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()

       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)
end)
Tab20:Button("魔改手枪！",function()
local list = require(game:GetService("ReplicatedStorage").GunScripts.GunStats)
for i,v in pairs(list) do
    v.Spread = 0
    v.prepTime = 0.1
    v.equipTime = 0.1
    v.MaxShots = math.huge
    v.ReloadSpeed = 0.1
    v.BulletSpeed = 250
    v.HipFireAccuracy = 0
    v.ZoomAccuracy = 0
end
end)
Tab20:Toggle("昵称显卡所有人","text",false,function(Find_Required)
local function API_Check()

            if Drawing == nil then

                return "No"
            else
                return "Yes"
            end
        end

        local Find_Required = API_Check()

        if Find_Required == "No" then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "一个错误哈哈";
                Text = "无法加载ESP脚本，因为不支持您的漏洞利用。";
                Duration = math.huge;
                Button1 = "OK"
            })

            return
        end

        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local UserInputService = game:GetService("UserInputService")
        local Camera = workspace.CurrentCamera

        local Typing = false

        _G.SendNotifications = false   -- If set to true then the script would notify you frequently on any changes applied and when loaded / errored. (If a game can detect this, it is recommended to set it to false)
        _G.DefaultSettings = false   -- If set to true then the ESP script would run with default settings regardless of any changes you made.

        _G.TeamCheck = true   -- If set to true then the script would create ESP only for the enemy team members.

        _G.ESPVisible = name   -- If set to true then the ESP will be visible and vice versa.
        _G.TextColor = Color3.fromRGB(0, 1, 0.749019)  -- The color that the boxes would appear as.
        _G.TextSize = 14   -- The size of the text.
        _G.Center = true   -- If set to true then the script would be located at the center of the label.
        _G.Outline = false   -- If set to true then the text would have an outline.
        _G.OutlineColor = Color3.fromRGB(0, 0, 0)   -- The outline color of the text.
        _G.TextTransparency = 0.7   -- The transparency of the text.
        _G.TextFont = Drawing.Fonts.UI   -- The font of the text. (UI, System, Plex, Monospace) 

        _G.DisableKey = Enum.KeyCode.RightAlt   -- The key that disables / enables the ESP.

        local function CreateESP()
            for _, v in next, Players:GetPlayers() do
                if v.Name ~= Players.LocalPlayer.Name then
                    local ESP = Drawing.new("Text")

                    RunService.RenderStepped:Connect(function()
                        if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                            local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

                            ESP.Size = _G.TextSize
                            ESP.Center = _G.Center
                            ESP.Outline = _G.Outline
                            ESP.OutlineColor = _G.OutlineColor
                            ESP.Color = _G.TextColor
                            ESP.Transparency = _G.TextTransparency
                            ESP.Font = _G.TextFont

                            if OnScreen == true then
                                local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                                local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                                local Dist = (Part1 - Part2).Magnitude
                                ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                                ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                                if _G.TeamCheck == true then 
                                    if Players.LocalPlayer.Team ~= v.Team then
                                        ESP.Visible = _G.ESPVisible
                                    else
                                        ESP.Visible = false
                                    end
                                else
                                    ESP.Visible = _G.ESPVisible
                                end
                            else
                                ESP.Visible = false
                            end
                        else
                            ESP.Visible = false
                        end
                    end)

                    Players.PlayerRemoving:Connect(function()
                        ESP.Visible = false
                    end)
                end
            end

            Players.PlayerAdded:Connect(function(Player)
                Player.CharacterAdded:Connect(function(v)
                    if v.Name ~= Players.LocalPlayer.Name then 
                        local ESP = Drawing.new("Text")

                        RunService.RenderStepped:Connect(function()
                            if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                                local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

                                ESP.Size = _G.TextSize
                                ESP.Center = _G.Center
                                ESP.Outline = _G.Outline
                                ESP.OutlineColor = _G.OutlineColor
                                ESP.Color = _G.TextColor
                                ESP.Transparency = _G.TextTransparency

                                if OnScreen == true then
                                    local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                                local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                                    local Dist = (Part1 - Part2).Magnitude
                                    ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                                    ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                                    if _G.TeamCheck == true then 
                                        if Players.LocalPlayer.Team ~= Player.Team then
                                            ESP.Visible = _G.ESPVisible
                                        else
                                            ESP.Visible = false
                                        end
                                    else
                                        ESP.Visible = _G.ESPVisible
                                    end
                                else
                                    ESP.Visible = false
                                end
                            else
                                ESP.Visible = false
                            end
                        end)

                        Players.PlayerRemoving:Connect(function()
                            ESP.Visible = false
                        end)
                    end
                end)
            end)
        end

        if _G.DefaultSettings == true then
            _G.TeamCheck = false
            _G.ESPVisible = true
            _G.TextColor = Color3.fromRGB(40, 90, 255)
            _G.TextSize = 14
            _G.Center = true
            _G.Outline = false
            _G.OutlineColor = Color3.fromRGB(0, 0, 0)
            _G.DisableKey = Enum.KeyCode.Q
            _G.TextTransparency = 0.75
        end

        UserInputService.TextBoxFocused:Connect(function()
            Typing = true
        end)

        UserInputService.TextBoxFocusReleased:Connect(function()
            Typing = false
        end)

        UserInputService.InputBegan:Connect(function(Input)
            if Input.KeyCode == _G.DisableKey and Typing == false then
                _G.ESPVisible = not _G.ESPVisible

                if _G.SendNotifications == true then
                    game:GetService("StarterGui"):SetCore("SendNotification",{
                        Title = "Exunys显影剂";
                        Text = "ESP的可见性现在设置为"..tostring(_G.ESPVisible)..".";
                        Duration = 5;
                    })
                end
            end
        end)

        local Success, Errored = pcall(function()
            CreateESP()
        end)

        if Success and not Errored then
            if _G.SendNotifications == true then
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "史诗玩家esp";
                    Text = "史诗玩家esp已成功加载";
                    Duration = 5;
                })
            end
        elseif Errored and not Success then
            if _G.SendNotifications == true then
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Ash01显影剂";
                    Text = "ESP脚本在加载时出错，请检查开发人员控制台！【F9】";
                    Duration = 5;
                })
            end
            TestService:Message("ESP脚本出错，请通知Ash01以下信息:")
            warn(Errored)
            print("！如果错误是假阳性(表示找不到玩家),那就不用麻烦了！！")
        end
end)
Tab20:Button(
    "快速抢动",
    function()
        loadstring(game:GetObjects("rbxassetid://10041726588")[1].Source)()
    end
)

Tab20:Button(
    "范围",
    function()
        loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
    end
)
Tab200:Button("滚筒",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Tumbleweed", false)
end)
Tab200:Button("",function()
print("114514");
end)
Tab200:Button("岩石溪",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("StoneCreek", false)
end)
Tab200:Button("灰色山脊",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Grayridge", false)
end)
Tab200:Button("大矿洞",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("Quarry", false)
end)
Tab200:Button("堡垒",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("FortCassidy", true)
end)
Tab200:Button("阿瑟堡",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("FortArthur", true)
end)
Tab200:Button("红色岩石营地",function()
print("114514");game:GetService("ReplicatedStorage").GeneralEvents.Spawn:FireServer("RedRocks", true)
end)
local Tab21 = china:section("脚本", true)

Tab21:Label("自动刷钱 | 首先成为送货司机delivery driver")
local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()

function teleportTo(CFrame) 
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
end

_G.autoFarm = false

function autoFarm()
	while _G.autoFarm do
		fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
		task.wait(2.2)
		for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do
			if point.Locate.Locate.Enabled then
				teleportTo(point.CFrame)
			end
		end
		task.wait(0)
	end
end
Tab21:Toggle("自动刷钱","text",false,function(value)
_G.autoFarm = value
	if value then
		autoFarm()
	end
end)
local Tab22 = palm:section("脚本", true)
Tab22:Button(
    "云中心",
    function()
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/IlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIl/CloudHub/main/%E5%B7%B4%E6%8E%8C%E5%A4%A7%E6%88%98.lua",
                true
            )
        )()
    end
)
local BZMNQ = palm:section("主要",true)
local BZMNQZX = palm:section("杂项",true)
local BZMNQFJN = palm:section("防技能",true)
BZMNQ:Button("获取计数器手套", function()
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(121)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)

BZMNQ:Toggle("地牢亮度","Toggle" ,false, function(Value)
 Light = Value
    if not Light then
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)

BZMNQ:Dropdown("传送","Dropdown",{"安全区","竞技场","埃及岛","果实岛","盘子","锦标赛","默认竞技场"},function(Value)
if Value == "安全区" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
elseif Value == "竞技场" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "埃及岛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "果实岛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "盘子" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
elseif Value == "锦标赛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
elseif Value == "默认竞技场" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
end
end)

BZMNQ:Toggle("复古技能","Toggle" ,false, function(Value)
RetroSpam = Value
while RetroSpam do
game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
task.wait()
end
end)

BZMNQ:Dropdown("复古技能选择","Dropdown",{"Rocket Launcher","Ban Hammer","Bomb"}, function(Value)
RetroAbility = Value
end)

BZMNQ:Toggle("自动捡糖果","Toggle",false, function(Value)
CandyCornFarm = Value
while CandyCornFarm do
for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                if v:FindFirstChildWhichIsA("TouchTransmitter") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
task.wait()
end
end)

BZMNQ:Toggle("获取炼金术师材料","Toggle", false, function(Value)
AlchemistIngredients = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
while AlchemistIngredients do
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
task.wait()
end
end
end)

BZMNQ:Toggle("自动加入竞技场","Toggle", false, function(Value)
AutoEnterArena = Value
while AutoEnterArena do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
    end
task.wait()
end
end)

BZMNQ:Toggle("自动光波球","Toggle", false, function(Value)
if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait()
end
end)

BZMNQ:Button("Rojo技能", function(Value)
_G.RojoSpam = Value
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
wait(6)
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
task.wait()
end)

BZMNQ:Toggle("音符技能","Toggle", false, function(Value)
_G.RhythmSpam = Value
while _G.RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
end)

BZMNQ:Toggle("Null技能","Toggle", false, function(Value)
NullSpam = Value
while NullSpam do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
task.wait()
end
end)

BZMNQZX:Toggle("自动拾取黄金果实","Toggle", false, function(Value)
SlappleFarm = Value
while SlappleFarm do
for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
task.wait()
end
end)

BZMNQZX:Toggle("自动捡飞行宝珠","Toggle", false, function(Value)
Jetfarm = Value
while Jetfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
end)

BZMNQZX:Toggle("自动捡相位球","Toggle", false, function(Value)
Phasefarm = Value
while Phasefarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
end)

BZMNQZX:Toggle("自动刷bob","Toggle", false, function(Value)
ReplicaFarm = Value
while ReplicaFarm do
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                end
            end
task.wait()
game:GetService("ReplicatedStorage").Duplicate:FireServer()
task.wait(7)
end
end)

BZMNQZX:Toggle("无限反转","Toggle", false, function(Value)
_G.InfReverse = Value
while _G.InfReverse do
game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
wait(6)
end
end)

BZMNQZX:Toggle("彩虹角色(装备黄金手套)","Toggle", false, function(Value)
_G.Rainbow = Value
while _G.Rainbow do
for i = 0,1,0.001*25 do
game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
task.wait()
end
end
end)


BZMNQFJN:Toggle("管理员预警(反管理员)","Toggle", false, function(Value)
AntiAdmins = Value
while AntiAdmins do
for i,v in pairs(game.Players:GetChildren()) do
                    if v:GetRankInGroup(9950771) >= 2 then
AntiKick = false
                        game.Players.LocalPlayer:Kick("High Rank Player Detected.".." ("..v.Name..")")
                        break
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("防踢","Toggle", false, function(Value)
AntiKick = Value
while AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
AK:Set(false)
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("防击飞","Toggle", false, function(Value)
AntiRagdoll = Value
if AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
end)

BZMNQFJN:Toggle("反虚空(锦标赛也有效果)","Toggle", false, function(Value)
game.Workspace.dedBarrier.CanCollide = Value
game.Workspace.TAntiVoid.CanCollide = Value
end)

BZMNQFJN:Toggle("防死亡屏障","Toggle", false, function(Value)
if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
end)

BZMNQFJN:Toggle("反巴西","Toggle", false, function(Value)
if Value == true then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = false
                end
else
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = true
                end
end
end)

BZMNQFJN:Toggle("反死亡方块","Toggle", false, function(Value)
if Value == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        else
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
        end
end)

BZMNQFJN:Toggle("反上帝技能","Toggle", false, function(Value)
AntiTimestop = Value
while AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("反鱿鱼","Toggle", false, function(Value)
AntiSquid = Value
if AntiSquid == false then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
        end
while AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
end)

BZMNQFJN:Toggle("反神圣杰克","Toggle", false, function(Value)
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
end)

BZMNQFJN:Toggle("反传送带","Toggle", false, function(Value)
game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
end)

BZMNQFJN:Toggle("反板砖","Toggle", false, function(Value)
AntiBrick = Value
while AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("反Null","Toggle", false, function(Value)
AntiNull = Value
while AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Imp" and v:FindFirstChild("Body") then
shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
end
end
task.wait()
end
end)

wait(2)
SUS:Toggle(
    "自动打怪",
    "text",
    false,
    function(v)
    _G.farmNearest = v

    spawn(function()
        while task.wait() do
            if not _G.farmNearest then break end
            pcall(function()
                local nearest = getNear()

                plr.CFrame = nearest.Root.CFrame * CFrame.new(0,0,10)
                wait(.2)

                workspace.Fight.Events.FightAttack:InvokeServer(0,nearest.Name)   

                repeat task.wait()
                    plr.CFrame = nearest.Root.CFrame * CFrame.new(0,0,10)
                until nearest.Root == nil or not _G.farmNearest
            end)
        end
    end)
    end
)
SUS:Toggle(
    "自动收集",
    "text",
    false,
    function(v)
    _G.autoCollect = v

    spawn(function()
        while task.wait() do
            if not _G.autoCollect then break end
            for i, v in pairs(game:GetService("Workspace").Rewards:GetChildren()) do
                if v ~= nil then
                    v.CFrame = plr.CFrame
                end
            end
        end
    end)
    end
)
Tab24:Button(
    "脚本",
    function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/TheCircle'))();
end)



Tab26:Button(
    "2",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd/main/rng"))()
    end
)

Tab26:Button(
    "1",
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua")
        )()
    end
)


local Tab27 = Wartycoon:section("按钮功能", true)

Tab27:Button(
    "删除所有门",
    function()
        for k,v in pairs(Workspace.Tycoon.Tycoons:GetChildren()) do
            for x,y in pairs(v.PurchasedObjects:GetChildren()) do
                if(y.Name:find("Door") or y.Name:find("Gate")) then y:destroy(); end;
            end;
        end;
    end
)

Tab27:Button(
    "删除你的视觉盔甲和头盔",
    function()
        for k,v in pairs(Player.Character:GetChildren()) do
            if(v.ClassName == "Accessory") then v:destroy() end;
            if(v.Name:find("Armor")) then v.Mesh:destroy() end;
            if(v.Name:find("Helmet")) then v:destroy() end;
        end;
    end
)


Tab27:Button(
    "无限子弹",
    function()
local lp = game.Players.LocalPlayer

for i, v in next, lp.Backpack:GetDescendants() do
    if v.Name == 'Settings' then
        local success, settingsModule = pcall(require, v)
        if success then
            settingsModule.Ammo = math.huge
        else
            warn("无法要求设置: " .. tostring(settingsModule))
        end
    end
end
end)

--[[
Tab27:Button(
    "无限弹药和空载",
    function()
ReplicatedStorage.BulletFireSystem.GunReload:destroy();
        local gunReload = Instance.new("Part");
        gunReload.Name = "GunReload";
        gunReload.Parent = ReplicatedStorage.BulletFireSystem;
        while true do
            wait(0);
            for _,v in pairs(Player.Character:GetChildren()) do
                if(v.ClassName == "Tool") then v.ACS_Modulo.Variaveis.Ammo.Value = 9999; end;
            end;
        end;
    end
)
]]
Tab27:Button(
    "防暴盾牌",
    function()
ReplicatedStorage.BulletFireSystem.GunReload:destroy();
        local gunReload = Instance.new("Part");
        gunReload.Name = "GunReload";
        gunReload.Parent = ReplicatedStorage.BulletFireSystem;
        while true do
            wait(0);
            for _,v in pairs(Player.Character:GetChildren()) do
                if(v.ClassName == "Tool") then v.ACS_Modulo.Variaveis.Ammo.Value = 9999; end;
            end;
        end;
    end
)

local Tab27 = Wartycoon:section("主要脚本", true)
Tab27:Button(
    "HitBox, Esp, InfAmo, AutoBuild",
    function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tora"))()
    end)
    Tab27:Button(
    "Good for AutoFarm",
    function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Yeet%20A%20Friend.lua"))()
    end)
    Tab27:Button(
    "脚本",
    function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
    end)
    Tab27:Button(
    "AutoCollect, AutoBuild",
    function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0zombiewars"))()
    end)
local Tab27 = Wartycoon:section("主要功能", true)



Tab27:Button(
    "基地",
    function()
for _, v in pairs({"Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Kilo","Lima","Omega","Tango","Victor","Zulu"}) do
    if(v ~= Player.leaderstats.Team.Value) then
        TycoonsSection:AddButton({
            Name = v,
            Callback = function ()
                Player.Character.HumanoidRootPart.CFrame = Workspace.Tycoon.Tycoons[v].Essentials.Spawn.CFrame;
            end 
        });
    end;
end;
    end
);
wait(1)
Tab27:Button(
    "捕获点",
    function()
Player.Character.HumanoidRootPart.CFrame = Workspace.Beams.CapturePoint1.CFrame;
    end
)
Tab27:Button(
    "查看游戏中的所有玩家（包括血量条）",
    function()
loadstring(game:HttpGet(('https://pastebin.com/raw/G2zb992X'),true))()
    end
)
Tab27:Button(
    "油桶",
    function()
for _, v in pairs(Workspace.Beams:GetChildren()) do
            if(v.Name:find("Warehouse")) then
                Player.Character.HumanoidRootPart.CFrame = Workspace.Beams[v.Name].CFrame;
                break
            end;
        end;
    end
)

Tab27:Button(
    "车辆货箱",
    function()
for _,v in pairs(Workspace.Beams:GetChildren()) do
            if(v.Name:find("Airdrop_")) then Player.Character.HumanoidRootPart.CFrame = v.CFrame; end;
        end;
    end
)

Tab27:Button(
    "隔空投送",
    function()
for _, v in pairs(Workspace.Beams:GetChildren()) do
            if(v.Name:find("Warehouse")) then
                Player.Character.HumanoidRootPart.CFrame = Workspace.Beams[v.Name].CFrame;
                break
            end;
        end;
    end
)


local Tab27 = Wartycoon:section("传送", true)
Tab27:Button(
    "传送到空投",
    function()
local Folder = workspace["Game Systems"]
local player = game.Players.LocalPlayer.Character.HumanoidRootPart


for _, Child in ipairs(Folder:GetDescendants()) do
	if Child.Name:match("Airdrop_") then 
		player.CFrame = Child.MainPart.CFrame
end
end
    end
)

Tab27:Button(
    "传送你的基地",
    function()
function getTycoon()
    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Tycoon.Tycoons[game:GetService("Players").LocalPlayer.leaderstats.Team.Value].Essentials.Spawn.Position)
end
    end
)
Tab27:Button(
    "酒店基地",
    function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(2853, 48, -1282)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.2)
pl.CFrame = location
    end
)
Tab27:Button(
    "传送旗帜",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73.22032928466797, 47.9999885559082, 191.06993103027344)
    end
)

Tab27:Button(
    "传送油桶",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.748652458190918, 48.662540435791016, 700.2245483398438)
    end
)

Tab27:Button(
    "传送油桶",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.48243713378906, 105.25657653808594, -2062.3896484375)
    end
)

Tab27:Button(
    "传送油桶",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.840208053588867, 49.34040069580078, -416.9921569824219)
    end
)

Tab27:Button(
    "传送油桶",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.48390197753906, 105.25657653808594, 3434.9033203125)
    end
)
local Tab27 = Wartycoon:section("基地传送", true)
Tab27:Button("Alpha", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/VLnX6Etv'),true))()
    end)
Tab27:Button("Bravo", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/EAHNuVVe'),true))()
end)
 
    Tab27:Button("Charlie",function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/KqKHx9nA'),true))()
    end)
 
    Tab27:Button("Delta", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/U6jGwTNk'),true))()
    end)
 
    Tab27:Button("Echo", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/WsGaXzcC'),true))()
    end)
 
    Tab27:Button("Foxtrot", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/eKKY3utm'),true))()
    end)
 
    Tab27:Button("Golf", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/H4jmV6nm'),true))()
    end)
 
    Tab27:Button("Hotel", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/sdCc3K6N'),true))()
    end)
 
    Tab27:Button("Kilo", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/6JJCWSH5'),true))()
    end)
 
    Tab27:Button("Lima", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/uZVAeiix'),true))()
    end)
 
    Tab27:Button("Omega", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/j47JwdUX'),true))()
    end)
 
    Tab27:Button("Romeo", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Wf2ehBSp'),true))()
    end)
 
    Tab27:Button("Sierra", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Mnd2qp98'),true))()
    end)
 
    Tab27:Button("Tango", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/qjAXwLzt'),true))()
    end)
 
    Tab27:Button("Victor", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/D1ADj7qa'),true))()
    end)
 
    Tab27:Button("Zulu", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/BeJeZcGc'),true))()
    end)
Tab28:Button("传送到开始区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
end)

Tab28:Button("传送到健身区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
end)

Tab28:Button("传送到食物区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
end)

Tab28:Button("传送到街机区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
end)

Tab28:Button("传送到农场区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
end)

Tab28:Button("传送到城堡区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
end)

Tab28:Button("传送到蒸汽朋克区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
end)

Tab28:Button("传送到迪斯科区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
end)

Tab28:Button("传送到太空区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
end)

Tab28:Button("传送到糖果区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
end)

Tab28:Button("送到实验室区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
end)

Tab28:Button("传送到热带区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
end)

Tab28:Button("传送到恐龙区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
end)

Tab28:Button("传送到复古区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
end)

Tab28:Button("传送到冬季区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
end)

Tab28:Button("传送到深海区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
end)

Tab28:Button("传送到狂野西部区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
end)

Tab28:Button("传送到豪华公寓区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
end)

Tab28:Button("传送到宝剑战斗区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
end)

Tab28:Button("传送到童话区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
end)

Tab28:Button("传送到桃花区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
end)

Tab28:Button("传送到厨房区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
end)

Tab28:Button("传送到下水道区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
rai:Button(
    "JNHHGaming",
    function()
      --彩虹朋友V3
loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
    end
)
rai:Toggle(
    "收集物品项目",
    "text",
    false,
    function()
    for _,v in ipairs(game:GetService("Workspace"):GetChildren()) do
        if v:FindFirstChild("TouchTrigger") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchTrigger.CFrame
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52, 140, -8)
            wait(0.2)
        end
    end
    end
)

rai:Toggle(
    "怪物ESP",
    "text",
    false,
    function(bool)
    if bool then
        local runService = game:GetService("RunService")
        event = runService.RenderStepped:Connect(function()
            for _,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
                if not v:FindFirstChild("Lol") then
                    local esp = Instance.new("Highlight", v)
                    esp.Name = "Lol"
                    esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    esp.FillColor = Color3.new(0, 0, 255)
                end
            end
        end)
    end
    if not bool then
        event:Disconnect()
        for _,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
            v:FindFirstChild("Lol"):Destroy()
        end
    end
    end
)

win:Toggle(
    "自动收集雪",
    "text",
    false,
    function(s)
    toggle = Value
while toggle do wait()
local args = {
    [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
    [2] = "Snow1",
    [3] = "MagicWand"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
    end
    end
)
win:Toggle(
    "自动出售雪",
    "text",
    false,
    function(s)
    toggle = Value
while toggle do wait()
local args = {
    [1] = "SellSnow",
    [2] = "Frosty"
}

game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
    end
)

win:Button(
    "传送出售雪的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
    end
)
win:Label("传送🗺️")
win:Button(
    "传送买车的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
    end
)
win:Button(
    "传送买工具的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
    end
)
win:Button(
    "传送买背包的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
    end
)
win:Button(
    "传送买假日礼物的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
    end
)
win:Button(
    "传送买宠物的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
    end
)
win:Button(
    "传送超大铲雪的地方",
    function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
    end
)
let:Button(
    "自动传送僵尸",
    function()
      local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.farm2 = true
Player.Chatted:Connect(function(m)
if(m==";autofarm false")then
_G.farm2 = false
elseif(m==";autofarm true")then
_G.farm2 = true
end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
    end
)
strong:Button(
    "SOON..",
    function()
      print("1")
    end
)
strongs:Button(
    "脚本",
    function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
)
strongs:Button(
    "多功能",
    function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
    end
)
strongs:Button(
    "功能",
    function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua"))()
    end
)
action:Button("辅助自动点击",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
end)
action:Button("动感星期五-主要的",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)
infe:Button("通用脚本 支持手机",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/InfectiousSmile.lua", true))()
end)
infe:Button("感染性微笑1脚本",function()
loadstring(game:HttpGet(("https://pastebin.com/raw/mT10xnt7"), true))()
end)
infe:Button("感染性微笑2脚本",function()
loadstring(game:HttpGet("https://pastebin.com/raw/WG1BMS72",true))()
end)
infes:Button("防止微笑感染",function()
for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"Infector") then
v:Destroy()
end
end
end)
infes:Button("删除门",function()
for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"AntiSmiler") then
v:Destroy()
end
end
end)
infes:Button("反外挂",function()
workspace.Map.AntiHack:Destroy() game.Players.LocalPlayer.Character.AntiFly:Destroy()
end)
infes:Toggle("速度-微笑感染","text",false,function(s)
getgenv().SlowDownSpeed = getgenv().SlowDownSpeed or 16
        getgenv().NoSlowDown = Value
        if getgenv().NoSlowDown then
            SteppedConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().SlowDownSpeed
                end)
            end)
        else
            if SteppedConnection then
                SteppedConnection:Disconnect()
                SteppedConnection = nil
            end
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
end)
infes:Toggle("打击微笑感染","text",false,function(s)
getgenv().InfectAura = Value
        if getgenv().InfectAura then
            getgenv().InfectAuraConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character.Infected.InfectEvent:FireServer()
                end)
            end)
        else
            if getgenv().InfectAuraConnection then
                getgenv().InfectAuraConnection:Disconnect()
                getgenv().InfectAuraConnection = nil
            end
        end
end)
infes:Toggle("Bat自动打击","text",false,function(s)
getgenv().HitAura = s
        if getgenv().HitAura then
            getgenv().HitAuraConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    local character = game:GetService("Players").LocalPlayer.Character
                    if character then
                        local bat = character:FindFirstChildOfClass("Tool")
                        if bat and bat.Name == "Bat" and bat:FindFirstChild("SwingEvent") then
                            bat.SwingEvent:FireServer()
                        end
                           if packedice and packedice.Name == "Packed Ice" and packedice:FindFirstChild("SwingEvent") then
                           packedice.SwingEvent:FireServer()
                        end
                    end
                end)
            end)
        else
            if getgenv().HitAuraConnection then
                getgenv().HitAuraConnection:Disconnect()
                getgenv().HitAuraConnection = nil
            end
        end
end)
infes:Toggle("瓶子自动打击","text",false,function(s)
getgenv().HitAura = s
        if getgenv().HitAura then
            getgenv().HitAuraConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    local character = game:GetService("Players").LocalPlayer.Character
                    if character then
                        local bottle = character:FindFirstChildOfClass("Tool")
                        if bottle and bottle.Name == "Bottle" and bottle:FindFirstChild("SwingEvent") then
                            bottle.SwingEvent:FireServer()
                        end
                           if packedice and packedice.Name == "Packed Ice" and packedice:FindFirstChild("SwingEvent") then
                           packedice.SwingEvent:FireServer()
                        end
                    end
                end)
            end)
        else
            if getgenv().HitAuraConnection then
                getgenv().HitAuraConnection:Disconnect()
                getgenv().HitAuraConnection = nil
            end
        end
end)
bfs:Button("bf脚本 ",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
end)
bfs:Button("脚本",function()
loadstring(game:GetObjects("rbxassetid://10218248730")[1].Source)()
end)
bfs:Button("脚本gui",function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
end)
bfs:Button("HOHO HUB",function()
oadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))() 
end)
LL:Button("云",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/KAKANAKAAL/AUKAOAJWOAJQNWJA.LUA", true))()
end)
LL:Button("主要脚本",function()
local scriptUrl = "https://raw.githubusercontent.com/EnableDev1/kitten/main/fdsasd9ujiofsdiufu9834u89fu389-obfuscated.lua"

local function loadAndExecuteScript(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        local loadedFunction, loadError = loadstring(response)
        if loadedFunction then
            local executionSuccess, executionerror = pcall(loadedFunction)
            if not executionSuccess then
                warn("Error executing the loader dm o9am. " .. executionerror)
            end
        else
            warn("" .. loadError)
        end
    else
        warn("" .. response)
    end
end

loadAndExecuteScript(scriptUrl)
end)
W:Button("自动工作",function()
loadstring(game:HttpGet("https://pastebin.com/raw/cEwtwKZR",true))()
end)
W:Button("PizzaPart替换披萨模板名称",function()
-- 这是一个Roblox脚本的例子,当有人在猫上写“披萨”时,它会从天上掉下披萨:

local pizzaPart = game.ServerStorage.PizzaPart -- 请务必将“PizzaPart”替换为您的披萨模板名称。

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if string.lower(message) == "pizza" then
            local pizza = pizzaPart:Clone()
            pizza.Position = Vector3.new(math.random(-50, 50), 50, math.random(-50, 50))
            pizza.Parent = game.Workspace
        end
    end)
end)


-- Explication :
--1. Nous déclarons une variable `pizzaPart` qui référence le modèle de la pizza dans le `ServerStorage`. Assurez-vous de remplacer "PizzaPart" par le nom de votre modèle de pizza.
--2. Nous utilisons l'événement `PlayerAdded` pour détecter quand un joueur rejoint le jeu.
--3. À chaque fois qu'un joueur envoie un message dans le chat (`Chatted`), nous vérifions si le message est "pizza" (en ignorant la casse avec `string.lower`).
--4. Si le message est "pizza", nous clonons la pizza à partir du modèle `pizzaPart`, lui donnons une position aléatoire au-dessus du monde (`Workspace`), puis la plaçons dans `Workspace`.

-- Vous pouvez placer ce script dans un objet Script situé dans `ServerScriptService`. Assurez-vous que le modèle de la pizza est stocké dans `ServerStorage`.
end)
W:Button("炸厨房",function()
-- Subscribe to ZhenX on Youtube
-- Credits to the owner of this Script

_G.cookroomfucker = true -- change to false and re execute if you wanna turn it off 
local lp = game:GetService("Players").LocalPlayer
local remote
local ffc = game.FindFirstChild

do
    local reg = (getreg or debug.getregistry)()
	for i=1,#reg do
		local f = reg[i]
		if type(f)=="table" and rawget(f,"FireServer") and rawget(f,"BindEvents") then
			remote = f
		end
	end
end

function moveThing(bmd, location)
    remote:FireServer("UpdateProperty", bmd, "CFrame", location)
    wait()
    remote:FireServer("SquishDough", bmd)
end

-- cook room fucker main script

for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
    v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()


spawn(function()
    while _G.cookroomfucker and wait() do
        spawn(function()
            for i,v in pairs(workspace.AllDough:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllMountainDew:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.BoxingRoom:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllBox:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
        spawn(function()
            for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
                moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
            end
        end)
    end
end)

spawn(function()
    while _G.cookroomfucker and wait() do
        for i,v in pairs(game:GetService("Workspace").Ovens:GetChildren()) do
            v.Door.ClickDetector.Detector:FireServer()
            wait(.15)
        end
    end
end)
end)
--[[aaha
--Settings--
local ESP = {
    Enabled = false,
    Boxes = true,
    BoxShift = CFrame.new(0,-1.5,0),
    BoxSize = Vector3.new(4,6,0),
    Color = Color3.fromRGB(255, 170, 0),
    FaceCamera = false,
    Names = true,
    TeamColor = true,
    Thickness = 2,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {}
}

local Value = true -- 控制功能的开关状态

-- Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint

-- Functions--
local function Draw(obj, props)
    local new = Drawing.new(obj)
    
    props = props or {}
    for i,v in pairs(props) do
        new[i] = v
    end
    return new
end

function ESP:GetTeam(p)
    local ov = self.Overrides.GetTeam
    if ov then
        return ov(p)
    end
    
    return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
    if ov then
        return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
    local ov = self.Overrides.GetColor
    if ov then
        return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
    return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
    local ov = self.Overrides.GetPlrFromChar
    if ov then
        return ov(char)
    end
    
    return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
        end
    else
        parent.ChildAdded:Connect(NewListener)
        for i,v in pairs(parent:GetChildren()) do
            coroutine.wrap(NewListener)(v)
        end
    end
end

local boxBase = {}
boxBase.__index = boxBase

function boxBase:Remove()
    ESP.Objects[self.Object] = nil
    for i,v in pairs(self.Components) do
        v.Visible = false
        v:Remove()
        self.Components[i] = nil
    end
end

function boxBase:Update()
    if not self.PrimaryPart then
        --warn("not supposed to print", self.Object)
        return self:Remove()
    end

    local color
    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    else
        color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
    end

    local allow = true
    if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
        allow = false
    end
    if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
        allow = false
    end
    if self.Player and not ESP.Players then
        allow = false
    end
    if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
        allow = false
    end
    if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
        allow = false
    end

    if not allow then
        for i,v in pairs(self.Components) do
            v.Visible = false
        end
        return
    end

    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    end

    --calculations--
    local cf = self.PrimaryPart.CFrame
    if ESP.FaceCamera then
        cf = CFrame.new(cf.p, cam.CFrame.p)
    end
    local size = self.Size
    local locs = {
        TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
        TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
        BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
        BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
        TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
        Torso = cf * ESP.BoxShift
    }

    if ESP.Boxes then
        local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
        local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
        local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
        local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)

        if self.Components.Quad then
            if Vis1 or Vis2 or Vis3 or Vis4 then
                self.Components.Quad.Visible = true
                self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.Quad.Color = color
            else
                self.Components.Quad.Visible = false
            end
        end
    else
        self.Components.Quad.Visible = false
    end

    if ESP.Names then
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        
        if Vis5 then
            self.Components.Name.Visible = true
            self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y)
            self.Components.Name.Text = self.Name
            self.Components.Name.Color = color
            
            self.Components.Distance.Visible = true
            self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
            self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .."m away"
            self.Components.Distance.Color = color
        else
            self.Components.Name.Visible = false
            self.Components.Distance.Visible = false
        end
    else
        self.Components.Name.Visible = false
        self.Components.Distance.Visible = false
    end
    
    if ESP.Tracers then
        local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

        if Vis6 then
            self.Components.Tracer.Visible = true
            self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
            self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
            self.Components.Tracer.Color = color
        else
            self.Components.Tracer.Visible = false
        end
    else
        self.Components.Tracer.Visible = false
    end
end

function ESP:Add(obj, options)
    if not obj.Parent and not options.RenderInNil then
        return warn(obj, "has no parent")
    end

    local box = setmetatable({
        Name = options.Name or obj.Name,
        Type = "Box",
        Color = options.Color --or self:GetColor(obj),
        Size = options.Size or self.BoxSize,
        Object = obj,
        Player = options.Player or plrs:GetPlayerFromCharacter(obj),
        PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
        Components = {},
        IsEnabled = options.IsEnabled,
        Temporary = options.Temporary,
        ColorDynamic = options.ColorDynamic,
        RenderInNil = options.RenderInNil
    }, boxBase)

    if self:GetBox(obj) then
        self:GetBox(obj):Remove()
    end

    box.Components["Quad"] = Draw("Quad", {
        Thickness = self.Thickness,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })
    box.Components["Name"] = Draw("Text", {
        Text = box.Name,
        Color = box.Color,
        Center = true,
        Outline = true,
        Size = 19,
        Visible = self.Enabled and self.Names
    })
    box.Components["Distance"] = Draw("Text", {
        Color = box.Color,
        Center = true,
        Outline = true,
        Size = 19,
        Visible = self.Enabled and self.Names
    })
    
    box.Components["Tracer"] = Draw("Line", {
        Thickness = ESP.Thickness,
        Color = box.Color,
        Transparency = 1,
        Visible = self.Enabled and self.Tracers
    })
    self.Objects[obj] = box
    
    obj.AncestryChanged:Connect(function(_, parent)
        if parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)
    obj:GetPropertyChangedSignal("Parent"):Connect(function()
        if obj.Parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)

    local hum = obj:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.Died:Connect(function()
            if ESP.AutoRemove ~= false then
                box:Remove()
            end
        end)
    end

    return box
end

local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    cam = workspace.CurrentCamera
    for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
        if v.Update then
            local s,e = pcall(v.Update, v)
            if not s then warn("[EU]", e, v.Object:GetFullName()) end
        end
    end
end)
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false
-- notify function
local function notify(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "云脚本中心";
        Text = message;
        Icon = "";
        Duration = 5;
    })
end

local function teleportToItem(itemName)
   local donesearch = false
   for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do
       if v.Name == "Root" and v.Parent.Name == itemName then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           donesearch = true
           break
       end
   end
   if donesearch == false then
       notify("未定义项目位置")
   end
end
]]wait(1)
local OwO = l3008l:section("透视",true)
local Teleports = l3008l:section("传送点",true)

OwO:Button("解锁第三人称", function()
   game.Players.LocalPlayer.CameraMaxZoomDistance = 50
   game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
OwO:Button("透视",function()
ESP.Boxes = Value
end)
OwO:Button("ESP追踪者（注意！全是坏透视！等在修复！）",function()
ESP.Tracers = Value
end)
OwO:Button("ESP 名牌！",function()
ESP.Names = Value
end)
OwO:Button("显示玩家！",function()
ESP.Players = Value
end)

OwO:Button("显示员工！",function()
ESP.employeeToggle = Value
end)
OwO:Button("显示项目！",function()
ESP.itemESP = Value
end)
Teleports:Button("传送到热狗", function()
   teleportToItem("Hotdog")
end)
Teleports:Button("传送到披萨店", function()
   teleportToItem("Pizza")
end)
Teleports:Button("传送到汉堡店", function()
   teleportToItem("Burger")
end)
Teleports:Button("传送到医疗箱", function()
   teleportToItem("Medkit")
end)
xlolx:Button("小猪脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/79-x/W/main/Piggy%20Script"))()
end)
xlolx:Button("小猪脚本2",function()
loadstring(game:HttpGet("https://encurtador.com.br/fiyFJ"))();
end)
--made a loadstring for my discord 
--https://discord.gg/7axk7UGS8C

xlolx:Button("云小猪脚本",function()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

local tab1 = library:CreateTab("  云脚本中心", true)
local button = library:MakeButton(tab1,"启动",function(button)
 
_G.GodMode = true

while _G.GodMode == true do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = false
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightHand.CanTouch = false
game.Players.LocalPlayer.Character.LeftHand.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = false
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = false
end
	
while _G.GodMode == false do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = true
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightHand.CanTouch = true
game.Players.LocalPlayer.Character.LeftHand.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = true
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = true
end

end)
local button = library:MakeButton(tab1,"关闭",function(button)

_G.GodMode = false

while _G.GodMode == true do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = false
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightHand.CanTouch = false
game.Players.LocalPlayer.Character.LeftHand.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = false
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = false
end
	
while _G.GodMode == false do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = true
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightHand.CanTouch = true
game.Players.LocalPlayer.Character.LeftHand.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = true
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = true
end

end)


local text = library:MakeLabel(tab1,"推迟逃跑")


local button = library:MakeButton(tab1,"飞行",function(button)

loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()

end)


local button = library:MakeButton(tab1,"透视",function(button)

loadstring(game:HttpGet('https://pastebin.com/raw/hpMC6ULU'))()

end)




local tab2 = library:CreateTab("      混杂的", true)
local button = library:MakeButton(tab2,"项目Gui",function(button)


loadstring(game:HttpGet("https://pastebin.com/raw/9fyyVTSg"))() 


end)
local text = library:MakeLabel(tab2," ")

local button = library:MakeButton(tab2,"行走速度 25",function(button)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25

end)
local button = library:MakeButton(tab2,"行走速度 50",function(button)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50

end)

local button = library:MakeButton(tab2,"行走速度 100",function(button)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100

end)
local text = library:MakeLabel(tab2," ")

local button = library:MakeButton(tab2,"跳跃能力 25",function(button)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 25

end)

local button = library:MakeButton(tab2,"跳跃能力 50",function(button)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

end)

local button = library:MakeButton(tab2,"跳跃能力 100",function(button)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100

end)
local text = library:MakeLabel(tab2," ")
local button = library:MakeButton(tab2,"重置Jp和Wspeed",function(button)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
oapq:Button("攻击体积！",function()
_G.HeadSize = 25
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)
oapq:Button("获得所有幸运方块",function()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end)
JWJ:Button("传送至 手电筒！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.9, 7.8, -76.4)
end)
JWJ:Button("传送至 木板放置工具！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.5, 23.8, -66.5)
end)
JWJ:Button("传送至 梯子！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67.4, 4.2, -133.2)
end)
JWJ:Button("传送至 电力箱！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.3, 4.7, -93.6)
end)
JWJ:Button("传送至 加油小屋！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.2, 4.8, -126.1)
end)
JWJ:Button("传送至 柜子1！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.3, 7.8, -39.5)
end)
JWJ:Button("传送至 柜子2！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.1, 23.8, -69.3)
end)
JWJ:Button("传送至 监控查看位置！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.4, 25.8, -80.5)
end)
JWJ:Button("传送至 监控1！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.6, 4.2, -120.4)
end)
JWJ:Button("传送至 监控2！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.6, 4.2, -93.2)
end)
JWJ:Button("传送至 监控3！",function()
print("114514");game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.4, 4.2, 25.1)
end)
NEKOISR63:Button("最强汉化",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/beea.LUA", true))()
end)
NEKOISR63:Button("最强",function()
loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
end)
jajajha:Button("露营1",function()
print("114514");loadstring(game:HttpGet('https://raw.githubusercontent.com/xFLCN/Camping/Scripts/Camping%201'))();
end)
jajajha:Button("露营2",function()
print("114514");loadstring(game:HttpGet('https://raw.githubusercontent.com/xFLCN/Camping/Scripts/Camping%202'))();
end)
jajajha:Button("露营3",function()
print("114514");loadstring(game:HttpGet('https://raw.githubusercontent.com/xFLCN/Camping/Scripts/Camping%203'))();
end)
ALQKNA:Toggle("自动举重","text",false,function(s)
toggle = Value
while toggle do wait()
local ohTable1 = {
	[1] = "GainMuscle"
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
    end
end)
ALQKNA:Toggle("自动卖","text",false,function(s)
tog = Value
   while tog do wait()
local ohTable1 = {
	[1] = "SellMuscle"
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
    end
end)
ALQKNA:Button("打开商店",function()
game:GetService("Players").LocalPlayer.PlayerGui["Main_Gui"]["UpgradeMenu_Frame"].Visible = true
end)
JABAJA:Toggle("云脚本中心","text",false,function(s)
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/%E6%B8%B8%E6%88%8F/%E4%BF%84%E4%BA%A5%E4%BF%84%E5%B7%9E.lua",true))()
end)
JABAJA:Toggle("自动抢银行","text",false,function(v)
AutoRobBank = v
        
        if AutoRobBank then
            pcall(function()
                AutoRobBankFunc()
            end)
        end
end)
AutoRobBankFunc = function()
    while AutoRobBank and task.wait() do
        local bankthing = game:GetService("Workspace").BankRobbery.BankCash
        if #bankthing.Cash:GetChildren() > 0 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bankthing.Main.CFrame
           task.wait()
           fireproximityprompt(game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt)
        end
    end
end
JABAJA:Toggle("自动收集物品现金","text",false,function(v)
ItemFarm = v
        
        if ItemFarm then
            pcall(function()
                ItemFarmFunc()
            end)
        end
end)

function GetItems()
   local cache = {}
   
   for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
       table.insert(cache,v)
   end
   
   for i,v in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
       table.insert(cache,v)
   end
   
   return cache
end

function Collect(item)
    if item:FindFirstChildOfClass("ClickDetector") then
        fireclickdetector(item:FindFirstChildOfClass("ClickDetector"))
    elseif item:FindFirstChildOfClass("Part") then
        local maincrap = item:FindFirstChildOfClass("Part")
        fireclickdetector(maincrap:FindFirstChildOfClass("ClickDetector"))
    end
end

ItemFarmFunc = function()
    while ItemFarm and task.wait() do
        local allitems = GetItems()
        
        for i,v in pairs(allitems) do
            if ItemFarm == false then break end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.5)
                Collect(v)
                task.wait(0.5)
            end)
            continue
        end
    end
end
Janab:Toggle("跳跃","text",false,function(s)
shared.toggle = State
     if shared.toggle then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMonster:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
Janab:Toggle("自动杀鲨鱼","text",false,function(State)
 shared.toggle = State
     if shared.toggle then
    fuckMonster = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMonster:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
Janab:Toggle("自动钓鱼","text",false,function(bool)
 if bool then
            local rodName = false
            while not rodName do
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:FindFirstChild("FishingRodScript") then
                        rodName = v.Name
                        break
                    end
                end
                wait()
            end

            bBobber = game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber.Fish.Changed:Connect(
                function(fishVal)
                    if fishVal ~= nil then
                        --if not legendToggle then
                            game.Workspace:WaitForChild(tostring(fishVal))
                            wait()
                            game.ReplicatedStorage.CloudClientResources.Communication.Events.FishedDone:FireServer()
                            wait()
                            game.ReplicatedStorage.CloudClientResources.Communication.Events.ResetFishingRod:FireServer()
                            wait()
                        --[[else
                            if game.Workspace:WaitForChild(tostring(fishVal)).RarityLevel.Value >= 5 then
                                game.ReplicatedStorage.CloudClientResources.Communication.Events.FishedDone:FireServer()
                                wait()
                                game.ReplicatedStorage.CloudClientResources.Communication.Events.ResetFishingRod:FireServer()
                                wait()
                            end                                                                                                 
                        end                                                                                                        --]]
					end
					if game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber:FindFirstChild("FishWeld") then
						for p, q in pairs(game.Players.LocalPlayer.Character:WaitForChild(rodName).Bobbers.Bobber:GetChildren()) do
							if q.Name == "FishWeld" then
								q:Destroy()
							end
						end
					end
                end
            )
        else 
            bBobber:Disconnect()
        end
end)
Janab:Toggle("自动杀boss","text",false,function(State)
 shared.toggle = State
     if shared.toggle then
    fuckMobby = RunService.Stepped:Connect(function()
     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "MobbyWood" then
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then


                    for i, getTools in pairs(player.Character:GetChildren()) do
                        if getTools:IsA("Tool") and  getTools:FindFirstChild("GripC1") then
                            plrTools = getTools.Name
                        end
                    end

                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                    wait(1)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
                elseif not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    EquipTool()
               break
            end
        end
     end
     end)
    else
         fuckMobby:Disconnect()
          teleport(CFrame.new(1.8703980445862, 53.57190322876, -188.37982177734))
        end
end)
Janab:Toggle("减少延迟","text",false,function(State)
 toggle = State
     if toggle then
        while toggle do 
            wait(30)
            for i, v in pairs(game.Workspace.DroppedItems:GetChildren()) do
                if v:IsA("Model") then
                    v:Destroy()
                end
            end
        end
      end
end)
Janab:Toggle("自动锁定稀有物品","text",false,function(State)
 toggle = State
     if toggle then
        while toggle do 
            wait(.1)
for i, v in pairs(game.Players.LocalPlayer.PlayerGui.Interface.Inventory.Inventory.Frame.Backpack.List.Container:GetChildren()) do
        if string.match(v.Name, "key") then
            for i, model in pairs(v:GetDescendants()) do
                if model:IsA("Tool") then
                    if model.RarityLevel.Value >= 5 then

                        if v.DraggableComponent.Contents.LockIcon.Visible == false then
                            print(v.Name, model.Name, model.RarityLevel.Value)
                        local args = {
                            [1] = "Tools",
                            [2] = v.Name,
                            [3] = true
                        }
                        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetInventoryItemLock:InvokeServer(unpack(args))

                        end
                    end
                end
            end
        end
end

        end
      end
end)
Janab:Toggle("自动抓捕","text",false,function(State)
 toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
    end
end)
Janab:Toggle("自动售卖","text",false,function(State)
 toggle = State
    while toggle do
        wait(2.6)
        game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
    end
end)
Janab:Toggle("每日宝箱","text",false,function(State)
 toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.Islands:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)
Janab:Toggle("随机宝箱","text",false,function(State)
 toggle = State
        while toggle do
                for i, v in pairs(game.Workspace.RandomChests:GetDescendants()) do
                    if v:IsA("Model") and string.match(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        wait(1)
                        fireproximityprompt(v.HumanoidRootPart.ProximityPrompt)
                    end
                end            
        end
end)
local wood_types = {"选择", "Earth Egg","Alien Egg","Dominus Egg","Ice Egg","Lava Egg","Heavens Egg","Toy Egg","Mine Egg"}
if not game.workspace:FindFirstChild("PFA") then 
    local part = Instance.new("Part") 
    part.Name = "PFA" 
    part.Parent = game.workspace 
    part.CFrame = CFrame.new(-1087, -40, 1670) 
    part.Size = Vector3.new(50, 0, 50) 
    part.Anchored = true 
    part.Reflectance = 1 
end

function C() 
    spawn(function () 
        while getgenv().C do
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                TPCFrame(CFrame.new(-1087, -35, 1670))
                if v.ToolTip == "Weight" then 
                    v.Parent = game.Players.LocalPlayer.Character 
                end
                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then 
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate() 
                end
            end 
            wait()
        end
    end)
end

function U() 
    spawn(function () 
        while getgenv().U do
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Damage_Multiplier"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Health_Multiplier"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Jump_Power"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Walk_Speed"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Pet_Space"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            local args = {[1] = "S_Controller_Upgrades_Upgrade",[2] = {[1] = "Pet_Inventory"}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function R() 
    spawn(function () 
        while getgenv().R do
            local args = {[1] = "S_Controller_Rebirth_Rebirth",[2] = {}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function H(E) 
    spawn(function () 
        while getgenv().H do
            local args = {[1] = "S_Controller_Eggs_Buy",[2] = {[1] = E}}
            game:GetService("ReplicatedStorage").Shared.Services:FindFirstChild("3 | Network").RemoteFunction:InvokeServer(unpack(args))
            wait()
        end
    end)
end

Janb:Button("TP到游戏！",function()
    game:GetService("TeleportService"):Teleport(11224587399) 
end)

Janb:Button("删除无用的用户界面！",function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("AutoClicker") then 
        game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("AutoClicker"):Destroy() 
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Limited") then 
        game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Limited"):Destroy() 
    end
    -- 添加其他界面的删除
end)

Janb:Toggle("Inf力量","text",false,function(val)
    getgenv().C = val
    C()
end)

Janb:Toggle("Inf再生","text",false,function(val)
    getgenv().R = val
    R()
end)

Janb:Toggle("提升","text",false,function(val)
    getgenv().U = val
    U()
end)

Janb:Toggle("舱口","text",false,function(val)
    getgenv().H = val
    H(E)
end)
wait(1)
Janb:Dropdown("选择的", "Wood Type", wood_types, function(val)
    E = val
end)

function TPCFrame(Player_CFrame) 
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player_CFrame 
    end
    end

-- 添加其他功能函数
Jan:Button("云脚本中心",function()
--[[
    云脚本 THIEF LIFE SIMULATOR SOURCE

    It should be noted that this script is rather messy and not recommended for learning off because it is many months old and my first script hub ever.
    V2 is being developed, and now that I've had six months of experience with lua, I can create a much better script hub.
    .gg/pethicial

    Credits:
        pethicial
]]

--------------------------------------------------------------------------------------R3THPRIV----------------------------------------------------------------------------------------
repeat wait() until game:IsLoaded()

print("[ 云脚本 ]: 云脚本 THIEF LIFE SIMULATOR LOADING...")

--------------------------------------------------------------------------------------THEME----------------------------------------------------------------------------------------
privateProperties = {
	Color = Color3.fromRGB(138,43,226); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

--------------------------------------------------------------------------------------DEFINE----------------------------------------------------------------------------------------
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/VenyxUI.lua"))()
local R3TH = library.new("小偷模拟器", 5013109572)

local Universal = R3TH:addPage("普遍的", 5012540623)
local Player = Universal:addSection("玩家")
local ESP = Universal:addSection("ESP")
local Fling = Universal:addSection("投掷")
local Game = Universal:addSection("游戏")
local Teleports0 = R3TH:addPage("传送", 5012543481)
local Teleports = Teleports0:addSection("传送功能")
local Main0 = R3TH:addPage("主要的", 5012544944)
local Main = Main0:addSection("主要功能")
local Farm = Main0:addSection("农场")
local Target = Main0:addSection("目标")
local Shop = R3TH:addPage("商店", 5012537936)
local Guns = Shop:addSection("枪")
local Armour = Shop:addSection("装甲")
local Pets = Shop:addSection("宠物")
local Tools = Shop:addSection("工具")
local Settings0 = R3TH:addPage("设置", 5012544372)
local Settings = Settings0:addSection("设置")
local Credits = Settings0:addSection("信息")

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local defualtwalkspeed = 15
local defualtjumppower = 50
local defualtgravity = 196.1999969482422
newwalkspeed = defualtwalkspeed
newjumppower = defualtjumppower
antiafk = true

local newflyspeed = 50
local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

--------------------------------------------------------------------------------------FUNCTIONS----------------------------------------------------------------------------------------
function toggleui()
    wait()
    local Toggle = false
    
    local R3THTOGGLEBUTTON = Instance.new("ScreenGui")
    local Button = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UICorner_2 = Instance.new("UICorner")

    R3THTOGGLEBUTTON.Name = "R3THTOGGLEBUTTON"
    R3THTOGGLEBUTTON.Parent = game.CoreGui
    
    Button.Name = "Button"
    Button.Parent = R3THTOGGLEBUTTON
    Button.BackgroundColor3 = Color3.fromRGB(77, 77, 77) -- CHANGES BUTTON COLOR
    Button.BorderColor3 = Color3.fromRGB(52, 52, 52)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0.942588627, 0, 0.223685458, 0)
    Button.Size = UDim2.new(0.0358672254, 0, 0.0771396905, 0)
    Button.Font = Enum.Font.FredokaOne
    Button.Text = "T"
    Button.TextColor3 = Color3.fromRGB(255, 255, 255) -- CHANGES TEXT COLOR
    Button.TextScaled = true
    Button.TextSize = 33.000
    Button.TextWrapped = true
    Button.Draggable = true
    
    UICorner.Parent = Button
    
    UICorner_2.Parent = Button
    
    Button.MouseButton1Click:connect(function()
        Toggle = not Toggle
    end)
    
    while r3thtoggleui do
        function toggleuifix()
        if Toggle then
            Toggle = false
            R3TH:toggle()
            wait()
        end
    end
    wait()
    pcall(toggleuifix)
    end
end

function sendnotification(notfiicationmessage)
    if R3THDEVICE == "Mobile" then
        StarterGui:SetCore("SendNotification", {
            Title = "第三方特权";
            Text = notfiicationmessage;
            Duration = 5;
        })
    else
        Notification:Notify(
            {Title = "第三方特权", Description = notfiicationmessage},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
        )
    end
end

function loadesp()
    if loadespenabled ~= true then
        loadespenabled = true
        R3THESP = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/ESP.lua"))()
        R3THESP.Box = false
        R3THESP.BoxOutline = false
        R3THESP.HealthBar = false
        R3THESP.Names = false
        R3THESP.NamesOutline = false
    end
end

function startFly()
    if not p.Character or not p.Character.Head or flying then return end
    c = p.Character
    h = c.Humanoid
    h.PlatformStand = true
    cam = workspace:WaitForChild('Camera')
    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head
    flying = true
    h.Died:connect(function() flying = false end)
end
  
function endFly()
    if not p.Character or not flying then return end
    h.PlatformStand = false
    bv:Destroy()
    bav:Destroy()
    flying = false
end

function setVec(vec)
    return vec * (newflyspeed / vec.Magnitude)
end

--------------------------------------------------------------------------------------EXTRA----------------------------------------------------------------------------------------
local VirtualUser = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    if antiafk == true then
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end
end)
wait()

local flinglist = {}

table.insert(flinglist,"All")

for i,v in pairs(game.Players:GetPlayers())do
    if v ~= game.Players.LocalPlayer then
        table.insert(flinglist,v.Name)
    end
end

game.Players.PlayerAdded:Connect(function(player)
    local name = player.Name
    table.insert(flinglist,name)
end)

game.Players.PlayerRemoving:Connect(function(player)
    local name = player.Name
    for i,v in pairs(flinglist)do
        if v == name then  
            table.remove(flinglist,i)
        end
    end
end)

--------------------------------------------------------------------------------------UNIVERSAL----------------------------------------------------------------------------------------
if R3THDEVICE == "Mobile" then
    Player:addTextbox("速度", defualtwalkspeed, function(walkspeed, focusLost)
        newwalkspeed = tonumber(walkspeed)
    end)
else
    Player:addSlider("速度", defualtwalkspeed, 0, 200, function(walkspeed)
        newwalkspeed = tonumber(walkspeed)
    end)
end

if R3THDEVICE == "Mobile" then
    Player:addTextbox("跳跃能力", defualtjumppower, function(jumppower, focusLost)
        newjumppower = tonumber(jumppower)
    end)
else
    Player:addSlider("跳跃能力", defualtjumppower, 0, 500, function(jumppower)
        newjumppower = tonumber(jumppower)
    end)
end

Player:addToggle("启用速度", false, function(enablewalkspeed)
    loopwalkspeed = enablewalkspeed
    while loopwalkspeed do
        LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = (newwalkspeed)
        wait()
    end
    wait()
    LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = (defualtwalkspeed)
    wait()
end)

Player:addToggle("启用跳跃能力", false, function(enablejumppower)
    loopjumppower = enablejumppower
    while loopjumppower do
        LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = (newjumppower)
        wait()
    end
    wait()
    LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = (defualtjumppower)
    wait()
end)

if R3THDEVICE == "Mobile" then
    Player:addTextbox("飞行速度", 50, function(flyspeed, focusLost)
        newflyspeed = tonumber(flyspeed)
    end)
else
    Player:addSlider("飞行速度", 50, 0, 500, function(flyspeed)
        newflyspeed = tonumber(flyspeed)
    end)
end

Player:addToggle("启用飞行", false, function(enablefly)
    if flyfirst ~= true then
        flyfirst = true
        game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
            if GPE then return end
            for i, e in pairs(buttons) do
                if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
                    buttons[i] = true
                    buttons.Moving = true
                end
            end
        end)
          
        game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
            if GPE then return end
            local a = false
            for i, e in pairs(buttons) do
                if i ~= "Moving" then
                    if input.KeyCode == Enum.KeyCode[i] then
                        buttons[i] = false
                    end
                    if buttons[i] then a = true end
                end
            end
            buttons.Moving = a
        end)

        game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
            if flying and c and c.PrimaryPart then
                local p = c.PrimaryPart.Position
                local cf = cam.CFrame
                local ax, ay, az = cf:toEulerAnglesXYZ()
                c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
                if buttons.Moving then
                    local t = Vector3.new()
                    if buttons.W then t = t + (setVec(cf.lookVector)) end
                    if buttons.S then t = t - (setVec(cf.lookVector)) end
                    if buttons.A then t = t - (setVec(cf.rightVector)) end
                    if buttons.D then t = t + (setVec(cf.rightVector)) end
                    c:TranslateBy(t * step)
                end
            end
        end)
    end
    if enablefly == true then
        startFly()
    elseif enablefly == false then
        endFly()
    end
end)

Player:addToggle("穿墙", false, function(noclip)
    loopnoclip = noclip
    while loopnoclip do
        function loopnoclipfix()
        for a, b in pairs(Workspace:GetChildren()) do
            if b.Name == LocalPlayer.Name then
                for i, v in pairs(Workspace[LocalPlayer.Name]:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end 
            end 
        end
        wait()
    end
    wait()
    pcall(loopnoclipfix)
    end
end)

Player:addToggle("游泳", false, function(enableswim)
    loopswim = enableswim
    while loopswim do
        workspace.Gravity = 0
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        wait()
    end
    wait()
    workspace.Gravity = defualtgravity
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
    LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
    LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    wait()
end)

Player:addToggle("X光", false, function(xray)
    local t=false

    local function scan(z,t)
        for _,i in pairs(z:GetChildren()) do
            if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                i.LocalTransparencyModifier=t
            end
            scan(i,t)
        end
    end
    function x(v)
        if v then
            if xray == true then
                scan(workspace,0.9)
            else
                scan(workspace,0)
            end
        else
            scan(workspace,0)
        end
    end
    t=not t
    x(t)
end)

Player:addButton("重生", function()
    LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    wait()
end)

Player:addButton("打开控制台", function()
    game.StarterGui:SetCore("DevConsoleVisible", true)
    wait()
end)

Player:addToggle("启用复位", false, function(enablereset)
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", enablereset)
end)

if R3THDEVICE == "Mobile" then
    Player:addTextbox("FOV", 70, function(FOV, focusLost)
        game:GetService'Workspace'.Camera.FieldOfView = FOV
    end)
else
    Player:addSlider("FOV", 70, 0, 120, function(FOV)
        game:GetService'Workspace'.Camera.FieldOfView = FOV
    end)
end

ESP:addToggle("名称", false, function(names)
    loadesp()
    R3THESP.Names = names
end)

ESP:addToggle("盒子", false, function(boxes)
    loadesp()
    R3THESP.Box = boxes
end)

ESP:addToggle("健康", false, function(health)
    loadesp()
    R3THESP.HealthBar = health
end)

ESP:addToggle("概述", false, function(names)
    loadesp()
    R3THESP.BoxOutline = names
    R3THESP.NamesOutline = names
end)

Fling:addDropdown("选择玩家", flinglist, function(flingplayerselect)
    FLINGTARGET = flingplayerselect
    wait()
end)

Fling:addToggle("投掷", false, function(flingplayer)
    if flingplayer == true then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/Fling.lua'))()
        wait()
    end
    if flingplayer == false then
        getgenv().flingloop = false
        wait()
    end
end)

Game:addToggle("RTX着色器", false, function(rtxshaders)
    if rtxshaders == true then
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/RTX%20Shaders.lua'),true))()
        wait()
    end
    if rtxshaders == false then
        for i,v in pairs(game.Lighting:GetChildren()) do
            if v.Name == "[ 云脚本 ]: 日落" then
                v:Destroy()
            elseif v.Name == "[ 云脚本 ]: 花" then
                v:Destroy()
            elseif v.Name == "[ 云脚本 ]: 伊那里泰莎" then
                v:Destroy()
            elseif v.Name == "[ 云脚本 ]: 简单" then
                v:Destroy()
            elseif v.Name == "[ 云脚本 ]: 阳光" then
                v:Destroy()
            elseif v.Name == "[ 云脚本 ]: 高山" then
                v:Destroy()
            end
        end
        wait()
    end
end)

Game:addToggle("延迟聊天", false, function(lagchat)
    lagchatloop = lagchat
    while lagchatloop do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("　", "All")
        wait(3)
    end
end)

Game:addToggle("闲谈", false, function(chatspy)
    if chatspy == true then
        if chatspyon ~= true then
            chatspyon = true
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/ChatSpy.lua'),true))()
            wait()
        else
            privateProperties.Text = "[间谍启用]"
            StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
            chatspyenabled = true
            wait()
        end
        wait()
    end
    if chatspy == false then
        chatspyenabled = false
        privateProperties.Text = "[间谍禁用]"
        StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
        wait()
    end
end)

Game:addButton("Rejoin", function()
    game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
    wait()
end)

Game:addButton("服务器商店", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/OtherScripts/Serverhop.lua'),true))()
    wait()
end)

--------------------------------------------------------------------------------------TELEPORTS----------------------------------------------------------------------------------------
Teleports:addButton("宠物店", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1367, 13, 65)
    wait()
end)

Teleports:addButton("盔甲商店", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1359, 13, 161)
    wait()
end)

Teleports:addButton("背包商店", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1350, 13, -50)
    wait()
end)

Teleports:addButton("银行", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1372, 13, -138)
    wait()
end)

Teleports:addButton("军械库", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1060, -9, -189)
    wait()
end)

Teleports:addButton("船屋", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-996, -12, -209)
    wait()
end)

Teleports:addButton("度假岛", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(331, 53, 12)
    wait()
end)

Teleports:addButton("卵", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1260, 13, 17)
    wait()
end)

Teleports:addButton("陆军基地", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-560, 2, 4137)
    wait()
end)

Teleports:addButton("地图外", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2604, 12, -636)
    wait()
end)

Teleports:addButton("水晶屋", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1193, -174, 55)
    wait()
end)

Teleports:addButton("下水道", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1249, -8, 100)
    wait()
end)

Teleports:addButton("出售商店", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1358, 13, 9)
    wait()
end)

Teleports:addButton("V.I.P 房间", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1189, -9, -158)
    wait()
end)

Teleports:addButton("甜甜圈房", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1115, -9, -192)
    wait()
end)

Teleports:addButton("金色房间", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1157, -9, -175)
    wait()
end)

Teleports:addButton("秘密房间", function()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-1199, -9, -21)
    wait()
end)

--------------------------------------------------------------------------------------MAIN----------------------------------------------------------------------------------------
Main:addButton("打开保险箱", function()
    game:GetService("ReplicatedStorage").Events.Safe.RequestSafe:FireServer()
    wait()
end)

Main:addButton("抢劫炸药", function()
    game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(math.random(489, 493))
    wait()
end)

Main:addButton("全部出售", function()
    game:GetService("ReplicatedStorage").Events.Shop.RequestSellAll:FireServer(-1)
    wait()
end)

Main:addButton("解锁级别访问", function()
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(0)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(1)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(2)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(3)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(4)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(5)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(6)
    game:GetService("ReplicatedStorage").Events.Access.RequestBuyAccess:FireServer(7)
    wait()
end)

Main:addToggle("杀死所有警察", false, function(killpolice)
    killpoliceloop = killpolice
    while killpoliceloop do
        function killpoliceloopfix()
        if game.workspace.Polices:FindFirstChild("Police") ~= nil then
            game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(workspace.Polices.Police)
        end
        if game.workspace.Polices:FindFirstChild("Police2") ~= nil then
            game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(workspace.Polices.Police2)
        end
        if game.workspace.Polices:FindFirstChild("Swat") ~= nil then
            game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(workspace.Polices.Swat)
        end
        wait()
    end
    wait()
    pcall(killpoliceloopfix)
    end
end)

Main:addTextbox("掠夺等级", "0 - 500", function(lootlevel, focusLost)
    lootlevelnum = tonumber(lootlevel)
end)

Main:addButton("请求抢劫", function()
    if lootlevelnum > -1 and lootlevelnum < 501 then
        game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(lootlevelnum)
    else
        sendnotification("战利品等级需要在0 - 500之间")
    end
    wait()
end)

Farm:addDropdown("选择方法", {"小型金钱农场(需要100美元)", "大农场（需要95000美元）"}, function(farmmethod)
    if farmmethod == "小型金钱农场(需要100美元)" then
        farmgunname = "VIPAK47"
    elseif farmmethod == "大农场（需要95000美元）" then
        farmgunname = "RareM4A1"
    end
end)

Farm:addToggle("启动金钱农场", false, function(startmoneyfarm)
    startmoneyfarmloop = startmoneyfarm
    while startmoneyfarmloop do
        game:GetService("ReplicatedStorage").Events.GunShop.RequestBuy:FireServer(farmgunname)
        game:GetService("ReplicatedStorage").Events.Shop.RequestSellItem:FireServer(1)
        wait()
    end
end)

Farm:addToggle("XP服务器场", false, function(xpfarm)
    xpfarmloop = xpfarm
    while xpfarmloop do
        game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(0)
        wait()
    end
end)

Target:addDropdown("选择玩家", flinglist, function(playername)
    playertarget = playername
    wait()
end)

Target:addButton("击中玩家一次", function()
    if playertarget == "All" then
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(game.Players:FindFirstChild(v.Name).Character)
            end
        end
    else
        game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(game.Players:FindFirstChild(playertarget).Character)
    end
    task.wait()
end)

Target:addToggle("杀死玩家", false, function(killplayer)
    killplayerloop = killplayer
    while killplayerloop do
        function killplayerloopfix()
        if playertarget == "All" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(game.Players:FindFirstChild(v.Name).Character)
                    wait()
                end
            end
        else
            game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(game.Players:FindFirstChild(playertarget).Character)
        end
        task.wait()
    end
    wait()
    pcall(killplayerloopfix)
    end
end)

Target:addToggle("俱乐部标签玩家", false, function(forcejoinclub)
    forcejoinclubloop = forcejoinclub
    while forcejoinclubloop do
        if playertarget == "All" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    local args = {
                        [1] = {
                            ["Status"] = "Request",
                            ["Name"] = v.Name,
                            ["ID"] = v.UserId
                        },
                        [2] = "Member"
                    }
                
                    game:GetService("ReplicatedStorage").Events.Guild.RequestChangeTitle:FireServer(unpack(args))
                end
            end
        else
            local args = {
                [1] = {
                    ["Status"] = "Request",
                    ["Name"] = game.Players[playertarget],
                    ["ID"] = game.Players[playertarget].UserId
                },
                [2] = "Member"
            }
        
            game:GetService("ReplicatedStorage").Events.Guild.RequestChangeTitle:FireServer(unpack(args))
            wait()
        end
        task.wait(0.1)
    end
end)

Target:addToggle("Force Join Club", false, function(forcejoinclub)
    forcejoinclubloop = forcejoinclub
    while forcejoinclubloop do
        if playertarget == "All" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").Events.Guild.SendInvite:FireServer(game:GetService("Players")[v.Name])
                    task.wait()
                    local args = {
                        [1] = {
                            ["Status"] = "Request",
                            ["Name"] = v.Name,
                            ["ID"] = v.UserId
                        },
                        [2] = "Member"
                    }
                
                    game:GetService("ReplicatedStorage").Events.Guild.RequestChangeTitle:FireServer(unpack(args))
                end
            end
        else
            game:GetService("ReplicatedStorage").Events.Guild.SendInvite:FireServer(game:GetService("Players")[playertarget])
            task.wait()
            local args = {
                [1] = {
                    ["Status"] = "Request",
                    ["Name"] = game.Players[playertarget],
                    ["ID"] = game.Players[playertarget].UserId
                },
                [2] = "Member"
            }
        
            game:GetService("ReplicatedStorage").Events.Guild.RequestChangeTitle:FireServer(unpack(args))
            wait()
        end
        task.wait(0.1)
    end
end)

Target:addToggle("垃圾邮件邀请玩家", false, function(forcejoinclub)
    forcejoinclubloop = forcejoinclub
    while forcejoinclubloop do
        if playertarget == "All" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").Events.Guild.SendInvite:FireServer(game:GetService("Players")[v.Name])
                end
            end
        else
            game:GetService("ReplicatedStorage").Events.Guild.SendInvite:FireServer(game:GetService("Players")[playertarget])
            wait()
        end
        task.wait(0.1)
    end
end)

Target:addToggle("杀死宠物", false, function(killpet)
    killpetloop = killpet
    while killpetloop do
        if playertarget == "All" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    if game.workspace.Pets:FindFirstChild(v.Name .."_PET") ~= nil then
                        game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(workspace.Pets[v.Name .."_PET"])
                    end
                end
            end
        else
            if game.workspace.Pets:FindFirstChild(playertarget .."_PET") ~= nil then
                game:GetService("ReplicatedStorage").Events.Weapon.RequestHit:FireServer(workspace.Pets[playertarget .."_PET"])
            else
                Notification:Notify(
                    {Title = "云脚本", Description = "玩家没有装备宠物"},
                    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
                )
                killpetloop = false
            end
        end
        task.wait()
    end
end)

--------------------------------------------------------------------------------------SHOP----------------------------------------------------------------------------------------
Guns:addDropdown("选择枪", {"Glock17", "1911", "TEC9", "Shotgun", "UZI", "AK47", "M4A1", "Golden1911", "GoldenShotgun", "GoldenUZI", "GoldenM4A1", "RareUZI", "RareM4A1"}, function(gunname)
    shopgunname = gunname
    wait()
end)

Guns:addButton("购买项目", function()
    game:GetService("ReplicatedStorage").Events.GunShop.RequestBuy:FireServer(shopgunname)
end)

Guns:addToggle("循环购买项目", false, function(loopbuygun)
    loopbuygunloop = loopbuygun
    while loopbuygunloop do
        game:GetService("ReplicatedStorage").Events.GunShop.RequestBuy:FireServer(shopgunname)
        wait()
    end
end)

Armour:addDropdown("选择爱情", {"LightBulletProofVest1", "LightBulletProofVest2", "LightBulletProofVest3", "HeavyBulletProofVest1", "HeavyBulletProofVest2", "HeavyBulletProofVest3", "HeavyBodyArmour1", "HeavyBodyArmour2", "HeavyBodyArmour3"}, function(amourname)
    shopamourname = amourname
    wait()
end)

Armour:addButton("购买项目", function()
    game:GetService("ReplicatedStorage").Events.ArmourShop.RequestBuy:FireServer(shopamourname)
end)

Armour:addToggle("循环购买项目", false, function(loopbuygun)
    loopbuygunloop = loopbuygun
    while loopbuygunloop do
        game:GetService("ReplicatedStorage").Events.ArmourShop.RequestBuy:FireServer(shopamourname)
        wait()
    end
end)

Pets:addButton("强壮的", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Husky")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Husky")
end)

Pets:addButton("橘猫", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("OrangeCat")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("OrangeCat")
end)

Pets:addButton("奇瓦瓦州", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Chihuahua")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Chihuahua")
end)

Pets:addButton("灰色的猫", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("GreyCat")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("GreyCat")
end)

Pets:addButton("牧牛犬", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Cattledog")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Cattledog")
end)

Pets:addButton("杰克·拉塞尔", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Jackrussel")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Jackrussel")
end)

Pets:addButton("暹罗人", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Siamese")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Siamese")
end)

Pets:addButton("斗牛犬", function()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestBuy:FireServer("Bulldog")
    wait()
    game:GetService("ReplicatedStorage").Events.PetShop.RequestEquip:FireServer("Bulldog")
end)

Tools:addButton("最佳背包", function()
    game:GetService("ReplicatedStorage").Events.BackpackShop.RequestBuy:FireServer("Backpack9")
end)

Tools:addButton("最佳安全工具", function()
    game:GetService("ReplicatedStorage").Events.Toolshop.RequestBuy:FireServer("Stethoscope", "Safetools")
end)

Tools:addButton("最佳电动工具", function()
    game:GetService("ReplicatedStorage").Events.Toolshop.RequestBuy:FireServer("Hackingdevice", "Electricaltools")
end)

Tools:addButton("最佳撬锁工具", function()
    game:GetService("ReplicatedStorage").Events.Toolshop.RequestBuy:FireServer("Automaticpicklock", "Picklocks")
end)

Tools:addButton("最佳标准工具", function()
    game:GetService("ReplicatedStorage").Events.Toolshop.RequestBuy:FireServer("Plasmacutter", "Tools")
end)

--------------------------------------------------------------------------------------SETTINGS----------------------------------------------------------------------------------------
Settings:addToggle("反Afk", true, function(antiafktoggle)
    antiafk = antiafktoggle
end)

Settings:addKeybind("用户界面切换", Enum.KeyCode.LeftControl, function()
	R3TH:toggle()
end, function()
	print("Changed Keybind")
end)

Settings:addToggle("用户界面切换按钮", false, function(uitogglebutton)
    if uitogglebutton == true then
        r3thtoggleui = true
        wait()
        toggleui()
        wait()
    end
    if uitogglebutton == false then
        r3thtoggleui = false
        wait()
        for i,v in pairs (game.CoreGui:GetDescendants()) do
            if v.Name == "R3THTOGGLEBUTTON" then
                v:Destroy()
            end
        end
        wait()
    end
end)

Credits:addButton("pethicial", function()
    print("pethicial")
end)

--------------------------------------------------------------------------------------LOAD----------------------------------------------------------------------------------------
print("[ 云脚本 ]: 成功加载脚本！")
R3TH:SelectPage(R3TH.pages[1], true)
sendnotification("成功加载脚本！")

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "云脚本";
    Text = "欢迎你";
    Duration = 10;
}) 
end)
Java:Button("云脚本中心",function()
-- main boot ui
local Players = game:GetService('Players');
local localplayer = Players.LocalPlayer;
-- semicolon but cool :sunglasses:

local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/HexerMaster1929/CARMLWARE/main/UI/LIBRARY-LATEST.lua"),true))()--require(script.Parent)
local JBENGINE = loadstring(game:HttpGet('https://raw.githubusercontent.com/MrolivesGaming/HexHub/main/GAMES/JAILBREAK/JB-ENGINE.lua'))()
local JB_NOTIFICATIONS = require(game:GetService("ReplicatedStorage").Game.Notification)
Library:Notify({
	Title = "云脚本中心",
	Content = "客户端脚本是最新的！",
	Duration = 6.5,
	Image = 1134693820,
})

JB_NOTIFICATIONS.new({
	Text = "启动云脚本中心，这可能需要一段时间！",
	Duration = 2
})

local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua'))()
local Window = Library:CreateWindow({
	Name = "云脚本中心-越狱",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "CARMLWARE_SAVED_DATA", -- 为你的中枢/游戏创建一个自定义文件夹
		FileName = "JAILBREAK"
	},

})
--Window:AddSettingsTab() -- \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
--Window:SetTabOrder(1)
local Char = Window:CreateTab("主要的",13285102351,true)
local Combat = Window:CreateTab("战斗",14084907641,true)
local VisualTab = Window:CreateTab("画面",6523858394,true)
--local Configs = Window:CreateTab("Settings")

--[[local EvadeSector = Evade:("Character", "left")
local Visuals = Evade:CreateSector("Visuals", "right")
local Credits = Evade:CreateSector("Credits", "left")
local Farms = AutoFarms:CreateSector("Farms", "left")
local FarmStats = AutoFarms:CreateSector("Stats", "right")

local Gamesec = Gamee:CreateSector("Utils", "right")
local World = Gamee:CreateSector("World", "left")]]

Settings = {
	["WS"] = 16,
	["JP"] = 50,
	["FLYSPD"] = 20,
	["NoRagdoll"] = false,
	["NoPara"] = false,
	["WEAPON"] = {
		["NFD"] = false,
		["FAM"] = false,
		["NRC"] = false,
		["NSP"] = false,
		["IRL"] = false,
	},
	ESP = {
		Enabled = false,
		ShowTeam = false,
		ShowEnemy = false,
		TeamColor = Color3.fromRGB(85, 255, 0),
		EnemyColor = Color3.fromRGB(255, 0, 0),
		ShowTracers = false,
		ShowBoxes = false,
		ShowNames = false,
		ShowDistance = false,
		ShowChams = false,
		SHowHealth = false,
		TracerOrigin = "Bottom"

	}
}

wait(1)

Char:CreateSlider({
	Name = "步行速度",
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "SPSlider",
	Range = {16,100},

	Callback = function(JP)
		Settings["WS"] = JP
	end,
})

Char:CreateSlider({
	Name = "跳跃高度",
	Increment = 1,
	Suffix = "Height",
	CurrentValue = 50,
	Flag = "JPSlider",
	Range = {50,200},

	Callback = function(JP)
		Settings["JP"] = JP
	end,
})


Char:CreateToggle({
	Name = "没有布娃娃",
	CurrentValue = Settings["NoRagdoll"],
	Flag = "NRTOGGLE", 
	Callback = function(state)

		Settings["NoRagdoll"] = state
		if state == true then
			for _,v in pairs(getgc(true)) do
				if typeof(v) == "table" then
					if rawget(v, 'Ragdoll') then 
						v.Ragdoll = function(...) 
							return wait(9e9) 
						end 
					end
				end
			end
		else
			for _,v in pairs(getgc(true)) do
				if typeof(v) == "table" then
					if rawget(v, 'Ragdoll') then 
						v.Ragdoll = JBENGINE.Backups.Ragdoll
					end
				end
			end
		end
	end,
})

Char:CreateToggle({
	Name = "坠落时没有降落伞",
	CurrentValue = Settings["NoPara"],
	Flag = "NRTOGGLE", 
	Callback = function(state)

		Settings["NoPara"] = state
		function deadFunction() --Lazy solution
			return false 
		end
		if state then
			require(game:GetService("ReplicatedStorage").Game.Paraglide).IsFlying = deadFunction()
		else
			require(game:GetService("ReplicatedStorage").Game.Paraglide).IsFlying = engine.Backups.IsFlying()
		end
	end,
})

Char:CreateSection("交互修改")

Char:CreateToggle({
	Name = "无交互等待时间",
	CurrentValue = Settings["NoWaitTime"],
	Flag = "NRTOGGLE", 
	Callback = function(state)

		Settings["NoRagdoll"] = state
		if state then
			for i,v in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
				v.Timed = false;
			end
		else
			for i,v in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
				v.Timed = true;
			end
		end
	end,
})

Char:CreateSection("航班修改")

Char:CreateLabel("临时补丁！")

-- MAIN LOOP

Combat:CreateSection("枪支改装")

Combat:CreateToggle({
	Name = "无火灾延迟",
	CurrentValue = Settings["WEAPON"]["NFD"],
	Flag = "NFDTOGGLE", 
	Callback = function(state)
		Settings["WEAPON"]["NFD"] = state
		if state == true then
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.FireFreq = math.huge
			end
		else
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.FireFreq = 1
			end
		end
	end,
})
Combat:CreateToggle({
	Name = "全自动火灾",
	CurrentValue = Settings["WEAPON"]["FAM"],
	Flag = "FAF", 
	Callback = function(state)
		Settings["WEAPON"]["FAM"] = state
		if state == true then
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.FireAuto = true
			end
		else
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.FireAuto = false
			end
		end
	end,
})
Combat:CreateToggle({
	Name = "无反冲效应",
	CurrentValue = Settings["WEAPON"]["NRC"],
	Flag = "NFDTOGGLE", 
	Callback = function(state)
		Settings["WEAPON"]["NRC"] = state
		if state == true then
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.CamShakeMagnitude = 0
			end
		else
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.CamShakeMagnitude = 1
			end
		end
	end,
})
Combat:CreateToggle({
	Name = "没有子弹扩散",
	CurrentValue = Settings["WEAPON"]["NSP"],
	Flag = "NFDTOGGLE", 
	Callback = function(state)
		Settings["WEAPON"]["NSP"] = state
		if state == true then
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.BulletSpread = 0.06
			end
		else
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.BulletSpread = 0
			end
		end
	end,
})
Combat:CreateToggle({
	Name = "即时武器装填",
	CurrentValue = Settings["WEAPON"]["IRL"],
	Flag = "NFDTOGGLE", 
	Callback = function(state)
		Settings["WEAPON"]["IRL"] = state
		if state == true then
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.ReloadTime = 0
			end
		else
			for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
				local gun = require(v)
				gun.ReloadTime = 1
			end
		end
	end,
})

Combat:CreateSection("武器库存")

Combat:CreateButton({
	Name = "获取所有默认武器【给予者方法】",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Loaded_UI.lua", true))()
	end,
})

Combat:CreateButton({
	Name = "获取所有高级武器【点击所有方法】",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				fireclickdetector(v)
			end
		end
	end,
})

-- visuals

VisualTab:CreateSection("ESP")

VisualTab:CreateToggle({
	Name = "ESP",
	CurrentValue = Settings.ESP.Enabled,
	Flag = "EspToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		--[[if EspSettings.FriendlyEnabled then
			Sense.teamSettings.friendly.enabled = Value
		end
		if EspSettings.EnemyEnabled then
			Sense.teamSettings.enemy.enabled = Value
		end]]

		Settings.ESP.Enabled = Value

		if Value then
			Sense.Load()
		elseif not Value then
			Sense.Unload()
		end
	end
})
VisualTab:CreateToggle({
	Name = "显示敌人",
	CurrentValue = Settings.ESP.ShowEnemy,
	Flag = "ShowEnemysToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		Settings.ESP.ShowEnemy = Value

		Sense.teamSettings.enemy.enabled = Value

	end
})

VisualTab:CreateToggle({
	Name = "显示团队成员",
	CurrentValue = Settings.ESP.ShowTeam,
	Flag = "ShowTmMbrToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)


		Settings.ESP.ShowTeam = Value
		Sense.teamSettings.friendly.enabled = Value

	end
})

VisualTab:CreateSection("ESP 设置")

VisualTab:CreateToggle({
	Name = "盒子框",
	CurrentValue = Settings.ESP.ShowBoxes,
	Flag = "ShowBoxesToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)


		Settings.ESP.ShowBoxes = Value
		Sense.teamSettings.friendly.box = Value
		Sense.teamSettings.enemy.box = Value

	end
})

VisualTab:CreateToggle({
	Name = "显示健康栏",
	CurrentValue = Settings.ESP.SHowHealth,
	Flag = "ShowHealthBarToggleESP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)


		Settings.ESP.SHowHealth = Value
		Sense.teamSettings.friendly.healthBar = Value
		Sense.teamSettings.enemy.healthBar = Value

	end
})

VisualTab:CreateToggle({
	Name = "显示名称",
	CurrentValue = Settings.ESP.ShowNames,
	Flag = "ShowNamesESP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		Settings.ESP.ShowNames = Value

		Sense.teamSettings.friendly.name = Value
		Sense.teamSettings.enemy.name = Value

	end
})

VisualTab:CreateToggle({
	Name = "显示距离",
	CurrentValue = Settings.ESP.ShowDistance,
	Flag = "ShowDistance", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		Settings.ESP.ShowDistance = Value

		Sense.teamSettings.friendly.distance = Value
		Sense.teamSettings.enemy.distance = Value

	end
})

VisualTab:CreateToggle({
	Name = "显示跟踪器",
	CurrentValue = Settings.ESP.ShowTracers,
	Flag = "ShowTracers", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)

		Settings.ESP.ShowTracers = Value

		Sense.teamSettings.friendly.tracer = Value
		Sense.teamSettings.enemy.tracer = Value

	end
})

VisualTab:CreateSlider({
	Name = "ESP范围",
	Range = {10, 700},
	Increment = 10,
	Suffix = "Range",
	CurrentValue = 10,
	Flag = "EspRangeSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		Sense.sharedSettings.maxDistance = Value
	end,
})

VisualTab:CreateDropdown({
	Name = "示踪剂来源",
	Options = {"Bottom","Top"},
	CurrentOption = Sense.teamSettings.enemy.tracerOrigin or "Bottom",
	Flag = "TracerOrigin", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		Sense.teamSettings.enemy.tracerOrigin = Option
		Sense.teamSettings.enemy.tracerOrigin = Option
	end,
})

VisualTab:CreateColorPicker({
	Name = "团队颜色",
	Color = Color3.fromRGB(127, 255, 105),
	Flag = "TeamColorPicker", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		Sense.teamSettings.friendly.boxColor = Value
		Sense.teamSettings.friendly.tracerColor = Value
		Sense.teamSettings.friendly.nameColor = Value
		Sense.teamSettings.friendly.healthTextColor = Value
		Sense.teamSettings.friendly.healthyColor = Value
		Sense.teamSettings.friendly.distanceColor = Value
		Sense.teamSettings.friendly.distanceOutlineColor = Value
	end
})

VisualTab:CreateColorPicker({
	Name = "敌人的颜色",
	Color = Color3.fromRGB(255, 66, 58),
	Flag = "EnemyColorPicker", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		Sense.teamSettings.enemy.boxColor = Value
		Sense.teamSettings.enemy.tracerColor = Value
		Sense.teamSettings.enemy.nameColor = Value
		Sense.teamSettings.enemy.healthTextColor = Value
		Sense.teamSettings.enemy.healthyColor = Value
		Sense.teamSettings.enemy.distanceColor = Value
		Sense.teamSettings.enemy.distanceOutlineColor = Value
	end
})


game:GetService("RunService").RenderStepped:Connect(function()
	if localplayer.Character then
		if localplayer.Character:FindFirstChildWhichIsA("Humanoid") then
			localplayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = Settings["WS"]
			localplayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = Settings["JP"]
		end
	end
		task.wait()
end)


JB_NOTIFICATIONS.new({
	Text = "云脚本中心已成功启动，尽情享受吧！",
	Duration = 2
})
end)
Java:Label("↑是不是BUG，有找小云")
Java:Button("脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Splooshhy/PantherHub/main/main/sexy/script.lua"))()-- KEY DISCORD : https://discord.gg/aZzGyx2W4k
end)
Java:Label("↑密钥：DISCORD")
Java:Button("自动抢动",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/ohascriptnrrewading/main/jbsaxcriptidk1"))();
end)
local aknan = jwjaknj:section("主要功能",true)
local akna = jwjaknj:section("传送功能",true)
aknan:Toggle("自动收集燃料","text",false,function(Value)
isFuelScoopEnabled = Value
end)
aknan:Button("登上火箭！",function()
game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
end)
aknan:Button("将玩家从所有者座位移除！",function()
game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
end)
akna:Button("发射台岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
end)

akna:Button("白云岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
end)

akna:Button("浮漂岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
end)

akna:Button("卫星岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
end)

akna:Button("蜜蜂迷宫岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
end)

akna:Button("月球人救援", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
end)

akna:Button("暗物质岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
end)

akna:Button("太空岩石岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
end)

akna:Button("零号火星岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
end)

akna:Button("太空水晶小行星岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
end)

akna:Button("月球浆果岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
end)

akna:Button("铺路石岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
end)

akna:Button("流星岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
end)

akna:Button("升级岛", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
end)

akn:Toggle("自动使用所有能力","text",false,function(state)
print("s");_G.abilitiestouse = (state and true or false)
    while _G.abilitiestouse do
        wait(0.5)
        pcall(function()
    for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"globalCooldown") ~= nil then
task.wait()
for a,b in pairs(v) do
if a == "ID" then
task.wait(0.1)
game.Players.LocalPlayer.Character.ClientRunner.KaijuControlEvent:FireServer(b)
    end
    end
end
end
end)
end
end)
akn:Toggle("自动使用所有攻击能力","text",false,function(state)
print("s");_G.abilitiestouse2 = (state and true or false)
    while _G.abilitiestouse2 do
        wait(0.5)
        pcall(function()
			for i,v in pairs(getgc(true)) do
				if type(v) == "table" and rawget(v,"globalCooldown") ~= nil then
			task.wait()
			if v.Cooldown < 6.1 then
				wait(0.5)
			game.Players.LocalPlayer.Character.ClientRunner.KaijuControlEvent:FireServer(v.ID)
			end
			end
			end			
end)
end
end)
akn:Toggle("自动传送","text",false,function(state)
print("s");_G.test = (state and true or false)
while _G.test do
wait()
pcall(function()
_G.rat = nil
		local distance = math.huge
		for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
			if v.Name == "BoundingBox" and _G.test == true   and v.Parent:FindFirstChild("bValues") and v.Parent.bValues:FindFirstChild("Health") and v.Parent.bValues:FindFirstChild("Health").Value > v.Parent.bValues:FindFirstChild("MaxHealth").Value/2  and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude < _G.distance then
		local Dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
		if Dist < distance then
		distance = Dist
		_G.rat = v
		end
        task.wait()
			end
	end
repeat wait()
		local location = _G.rat.Position
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local PlayerModule = require(LocalPlayer.PlayerScripts.PlayerModule)
        local ClickToMoveController = PlayerModule:GetClickToMoveController()
        ClickToMoveController:SetShowPath(false)
        ClickToMoveController:SetUserJumpEnabled(false)
        ClickToMoveController:MoveTo(location,true)
until game.Players.LocalPlayer:DistanceFromCharacter(_G.rat.Position) < 60 or _G.test == false
    game.Players.LocalPlayer.Character.ClientRunner.KaijuControlEvent:FireServer(_G.skillname)
end)
end
end)
akn:Toggle("自动重生","text",false,function(state)
print("s");_G.autospawn = (state and true or false)
    while _G.autospawn do
        wait()
        pcall(function()
  if _G.crack ~= nil and game:GetService("Players").LocalPlayer.PlayerGui.newUI.PlayingUI.Visible == false  then
    game:GetService("ReplicatedStorage").Packages.Knit.Services.KaijuService.RF.Morph:InvokeServer(_G.crack, _G.crack1,nil,_G.crack3)
    wait(5)
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"ID") ~= nil then
if type(v.ID) ~= "number" then
local test = v.ID:split("#")
local test2 = _G.skillname:split("#")
if test[1] == test2[1] then
 _G.skillname = v.ID
    end
    end
end
end
    wait(10)
    elseif _G.crack2 ~= nil and game:GetService("Players").LocalPlayer.PlayerGui.newUI.PlayingUI.Visible == false then
    local test = math.random(1,4)
    for i,v in pairs(game:GetService("ReplicatedStorage").ReplicatedAssets.SpawnLocations:GetChildren()) do
     if i == test and game.Players.LocalPlayer.Character.Parent == nil then
    game:GetService("ReplicatedStorage").Packages.Knit.Services.KaijuService.RF.Morph:InvokeServer(_G.crack2,v,nil,_G.crack3)
    wait(5)
for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"ID") ~= nil then
if type(v.ID) ~= "number" then
local test = v.ID:split("#")
local test2 = _G.skillname:split("#")
if test[1] == test2[1] then
 _G.skillname = v.ID
    end
    end
end
end
             end
    end
    wait(1)
    end
end)
end
end)
akn:Toggle("自动隐藏用户","text",false,function(state)
print("s");_G.nametag = (state and true or false)
    while _G.nametag do
    wait()
    pcall(function()
    if game.Players.LocalPlayer.Character.Head:FindFirstChild("Nametag") then
    game.Players.LocalPlayer.Character.Head.Nametag:Destroy()
    wait()
    end
end)
end
end)
if game.PlaceId == 4282985734 then
local gs = function(service)
    return game:GetService(service)
end
_G.Settings = {
    enabled = false,
    antistuck = true,
    esp = false,
    autoequip = false,
    autospawn = false,
    antiparry = false,
    followclosest = false,
    autohit = false,
    antiradgoll = false,
}

function addEsp()
    for m, n in pairs(game.Workspace.PlayerCharacters:GetChildren()) do
        if n.Name ~= game.Players.LocalPlayer.Name then
            if not n.HumanoidRootPart:FindFirstChild("eyeesspee") then
                local u = Instance.new("BillboardGui", n:WaitForChild("Head"))
                u.LightInfluence = 0
                u.Size = UDim2.new(40, 40, 1, 1)
                u.StudsOffset = Vector3.new(0, 3, 0)
                u.ZIndexBehavior = "Global"
                u.ClipsDescendants = false
                u.AlwaysOnTop = true
                u.Name = "Head"
                local v = Instance.new("BillboardGui", n:WaitForChild("HumanoidRootPart"))
                v.LightInfluence = 0
                v.Size = UDim2.new(3, 3, 5, 5)
                v.StudsOffset = Vector3.new(0, 0, 0)
                v.ZIndexBehavior = "Global"
                v.ClipsDescendants = false
                v.AlwaysOnTop = true
                v.Name = "eyeesspee"
                local w = Instance.new("TextBox", u)
                w.BackgroundTransparency = 1
                w.ClearTextOnFocus = false
                w.MultiLine = true
                w.Size = UDim2.new(1, 1, 1, 1)
                w.Font = "GothamBold"
                w.Text = n.Name
                w.TextScaled = true
                w.TextYAlignment = "Top"
                w.TextColor3 = Color3.fromRGB(255, 55, 55)
                local x = Instance.new("TextBox", v)
                x.BackgroundTransparency = 1
                x.ClearTextOnFocus = false
                x.MultiLine = true
                x.Size = UDim2.new(1, 1, 1, 1)
                x.Font = "GothamBold"
                x.Text = " "
                x.BackgroundTransparency = 0.85
                x.TextScaled = true
                x.TextYAlignment = "Top"
                x.BackgroundColor3 = Color3.fromRGB(126, 0, 0)
            end
        end
    end
end
function removeEsp()
    for m, n in pairs(game.Workspace.PlayerCharacters:GetChildren()) do
        if n.Name ~= game.Players.LocalPlayer.Name then
            if n.HumanoidRootPart:FindFirstChild("eyeesspee") then
                n.HumanoidRootPart:FindFirstChild("eyeesspee"):Destroy()
                n.Head.Head:Destroy()
            end
        end
    end
end
function randomPlayer()
    math.randomseed(os.time())
    local y = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    return y.DisplayName
end
local z = {""}
local function A(B)
    return B[math.random(1, #B)]
end
function remLine(q)
    if q.Parent.Torso:FindFirstChild("Beam") then
        q.Parent.Torso:FindFirstChild("Beam"):Destroy()
    end
end
function walkToClosest()
    local C = nil
    local D = 999999
    local p = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart")
    for m, n in pairs(game:GetService("Workspace").PlayerCharacters:GetChildren()) do
        if n.Name ~= game.Players.LocalPlayer.Name then
            if n.Humanoid.Health ~= 0 then
                local q = n:FindFirstChild("HumanoidRootPart")
                if (p.Position - q.Position).Magnitude < D then
                    if q.Parent.Humanoid.Health ~= 0 then
                        D = (p.Position - q.Position).Magnitude
                        C = q
                    end
                end
            end
        end
    end
    if _G.Settings.autojump == true then
    end
    game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid").WalkToPoint = C.Position
end
function getClosestHrp()
    local C = nil
    local D = 999999
    local p = game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart")
    for m, n in pairs(game:GetService("Workspace").PlayerCharacters:GetChildren()) do
        if n.Name ~= game.Players.LocalPlayer.Name then
            if n.Humanoid.Health ~= 0 then
                local q = n:FindFirstChild("HumanoidRootPart")
                if (p.Position - q.Position).Magnitude < D then
                    if (p.Position - q.Position).Magnitude <= _G.Settings.range and q.Parent.Humanoid.Health ~= 0 then
                        D = (p.Position - q.Position).Magnitude
                        C = q
                        addLine(p, q)
                    else
                        remLine(q)
                    end
                end
            end
        end
    end
    return C
end
function setAttachmentWorldCFrame(E, F)
    E.CFrame = E.Parent.CFrame:toObjectSpace(F)
end
local G = 0
local H = 0
local I = 0
local J = 0
local K = false
local L = 0
game:GetService("RunService").RenderStepped:connect(
    function()
        if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("RoactUI") and _G.Settings.autospawn == true then
            keypress(0x20)
            keyrelease(0x20)
        end
        if _G.Settings.autoequip == true then
            if
                not game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool") and
                    not game.Players.LocalPlayer.PlayerGui.RoactUI:FindFirstChild("MainMenu")
             then
                keypress(0x31)
                keyrelease(0x31)
            end
        end
        if I == 60 then
            if _G.Settings.esp == true then
                addEsp()
            else
                removeEsp()
            end
            I = 0
        end
        I = I + 1
        J = J + 1
        L = L + 1
        if H == 10 then
            if _G.Settings.followclosest == true then
                walkToClosest()
            end
            H = 0
        end
        H = H + 1
        if
            game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").Hitboxes:FindFirstChild(
                "Hitbox2"
            )
         then
            game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").Hitboxes:FindFirstChild(
                "Hitbox2"
            ):Destroy()
        end
        local M =
            game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool"):FindFirstChild(
            "ClientEquipProgress"
        )
        local q = getClosestHrp()
        if _G.Settings.usemethod2 == false then
            if J == _G.Settings.loopspeed or J > _G.Settings.loopspeed then
                J = 0
                for m, n in pairs(
                    game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").Hitboxes.Hitbox:GetChildren(

                    )
                ) do
                    if m <= _G.Settings.usehitbox then
                        if n.Name == "DmgPoint" then
                            if _G.Settings.antiparry == true then
                                if q.Parent.SemiTransparentShield.Transparency == 1 then
                                    M.Value = 1
                                    if _G.Settings.enabled == true then
                                        setAttachmentWorldCFrame(
                                            n,
                                            CFrame.new(
                                                q.Position +
                                                    Vector3.new(
                                                        math.random(-1, 1),
                                                        math.random(-1, 1),
                                                        math.random(-1, 1)
                                                    )
                                            )
                                        )
                                    end
                                else
                                    setAttachmentWorldCFrame(n, CFrame.new(q.Position + Vector3.new(123, 123, 123)))
                                    M.Value = 0
                                end
                            else
                                if _G.Settings.enabled == true then
                                    setAttachmentWorldCFrame(
                                        n,
                                        CFrame.new(
                                            q.Position +
                                                Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                                        )
                                    )
                                end
                            end
                        end
                    else
                        setAttachmentWorldCFrame(
                            n,
                            CFrame.new(
                                game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name]:FindFirstChild("Head").Position +
                                    Vector3.new(0, 10, 0)
                            )
                        )
                    end
                end
            end
            if _G.Settings.stompaura == true then
                for m, N in pairs(
                    game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name].Stomp.Hitboxes.RightLegHitbox:GetChildren(

                    )
                ) do
                    if N.Name == "DmgPoint" then
                        N.Visible = true
                        if m <= _G.Settings.usehitbox then
                            if q.Parent.Humanoid.Health <= 15 then
                                setAttachmentWorldCFrame(
                                    N,
                                    CFrame.new(
                                        q.Position +
                                            Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                                    )
                                )
                                if L >= 30 then
                                    keypress(0x51)
                                    keyrelease(0x51)
                                    L = 0
                                end
                            end
                        end
                    end
                end
            end
        else
            local O =
                game:GetService("Workspace").PlayerCharacters:FindFirstChild(
                game:GetService("Players").LocalPlayer.Name
            )
            local P = O:FindFirstChildOfClass("Tool").Hitboxes.Hitbox
            local Q = O:FindFirstChildOfClass("Tool").Hitboxes
            local R = O:FindFirstChildOfClass("Tool")
            local M = R:FindFirstChild("ClientEquipProgress")
            if Q:FindFirstChild("Hitbox2") then
                Q:FindFirstChild("Hitbox2"):Destroy()
            end
            if _G.Settings.stompaura == true then
                for m, N in pairs(
                    game.Workspace.PlayerCharacters[game.Players.LocalPlayer.Name].Stomp.Hitboxes.RightLegHitbox:GetChildren(

                    )
                ) do
                    if N.Name == "DmgPoint" then
                        N.Visible = true
                        if m <= _G.Settings.usehitbox then
                            if q.Parent.Humanoid.Health <= 15 then
                                setAttachmentWorldCFrame(
                                    N,
                                    CFrame.new(
                                        q.Position +
                                            Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                                    )
                                )
                                if L >= 30 then
                                    keypress(0x51)
                                    keyrelease(0x51)
                                    L = 0
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
local ak = jwjak:section("主要功能",true)
ak:Toggle("自动行走","text",false,function(Y)
_G.Settings.followclosest = Y
         saveSettings()
end)
ak:Toggle("自动重生","text",false,function(Y)
_G.Settings.autospawn = Y
         saveSettings()
end)
ak:Toggle("自动装备","text",false,function(Y)
_G.Settings.autoequip = Y
         saveSettings()
end)
ak:Toggle("自动攻击","text",false,function(Y)
_G.Settings.autohit = Y
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autohit then
                            break
                        end
                        mouse1click()
                    end
                end
            )
end)
wait(1)
ak:Toggle("玩家透视","text",false,function(Y)
_G.Settings.esp = Y
         saveSettings()
end)
ak:Toggle("反辐射","text",false,function(Y)
_G.Settings.antiradgoll = Y
            saveSettings()
            task.spawn(
                function()
                    while task.wait() do
                        if not _G.Settings.antiradgoll then
                            break
                        end
                        game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
                    end
                end
            )
end)
ak:Toggle("反招架","text",false,function(Y)
_G.Settings.antiparry = Y
         saveSettings()
end)
else
end
jwj:Toggle("门-透视","text",false,function(state)
if state == true then
getgenv().DoorESP = false
	spawn(function()
		--single doors
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v.Door
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Door.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Door.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
						if getgenv().DoorESP == true then
						    break;
						end
						wait(0.1)
					end
				end)
				
				
			end
		end
		
	end)
	--double doors
	spawn(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
                        if getgenv().DoorESP == true then
                             print("Stopped itLop!2")
                             break
                        end
                        wait(0.1)
					end
				end)
			end
		end
	end)
else
getgenv().DoorESP = true
	--signle door
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "SingleDoor" then
			pcall(function()
				v.Door.Highlight:Destroy()
			end)

		end
	end

	--double doors
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "DoubleDoor" then
			pcall(function()
				v.Highlight:Destroy()
			end)

		end
	end
end
end)
jwj:Toggle("电脑透视","text",false,function(state)
    if state == true then
getgenv().StopComputerESP = false
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end

spawn(function()
while true do
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "ComputerTable" then
        if v.Screen.BrickColor == BrickColor.new("Bright blue") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,0,1)
            end)
        elseif v.Screen.BrickColor == BrickColor.new("Dark green") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,1,0)
            end)
        end
        if getgenv().StopComputerESP == true then
          print("Stopped itLop!PC")
          break
        end
    end
end
wait(1)
end
end)
else
getgenv().StopComputerESP = true
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
end)

jwj:Toggle("冷冻舱透视","text",false,function(state)
    if state == true then
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end
else
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
end)

jwj:Toggle("加速","text",false,function(Value)
    function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

jwj:Toggle("黑客永不失败","text",false,function(Value)
    spawn(function()
while wait() do
game.ReplicatedStorage.RemoteEvent:FireServer("SetPlayerMinigameResult",true)
end
end)
end)

jwj:Toggle("抓捕范围","text",false,function(Value)
    if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game:GetService("Players").LocalPlayer.TempPlayerStatsModule.DisableCrawl.Value = false
end
end)
local AANAN = AJAKAK:section("主要功能",true)

AANAN:Button("子弹范围",function()
print("114514");local CurrentCamera = workspace.CurrentCamera

local Players = game.Players

local LocalPlayer = Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

function ClosestPlayer()

    local MaxDist, Closest = math.huge

    for I,V in pairs(Players.GetPlayers(Players)) do

        if V == LocalPlayer then continue end

        if V.Team == LocalPlayer then continue end

        if not V.Character then continue end

        local Torso = V.Character.FindFirstChild(V.Character, "Torso")

        if not Torso then continue end

        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Torso.Position)

        if not Vis then continue end

        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)

        local Dist = (TheirPos - MousePos).Magnitude

        if Dist < MaxDist then

            MaxDist = Dist

            Closest = V

        end

    end

    return Closest

end

local MT = getrawmetatable(game)

local OldNC = MT.__namecall

local OldIDX = MT.__index

setreadonly(MT, false)

MT.__namecall = newcclosure(function(self, ...)

    local Args, Method = {...}, getnamecallmethod()

    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then

        local CP = ClosestPlayer()

        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then

            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)

            return OldNC(self, unpack(Args))

        end

    end

    return OldNC(self, ...)

end)

MT.__index = newcclosure(function(self, K)

    if K == "Clips" then

        return workspace.Map

    end

    return OldIDX(self, K)

end)

setreadonly(MT, true)
end)
AANAN:Button("快速射击！",function()
local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do

   if v.Name == "Auto" then

       v.Value = true

   end

   if v.Name == "RecoilControl" then

       v.Value = 0

   end

   if v.Name == "MaxSpread" then

       v.Value = 0

   end

   if v.Name == "ReloadTime" then

      v.Value = 0

   end

   if v.Name == "FireRate" then

       v.Value = 0.05

   end

   if v.Name == "Crit" then

       v.Value = 20

   end

end
end)
AANAN:Button("透视",function()
print("114514");_G.FriendColor = Color3.fromRGB(0, 0, 255)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.UseTeamColor = true

--------------------------------------------------------------------
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(1, 2, 1)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = false
Box.Visible = false

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 15
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
	b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

if _G.Reantheajfdfjdgs then
    return
end

_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

local players = game:GetService("Players")
local plr = players.LocalPlayer

function esp(target, color)
    if target.Character then
        if not target.Character:FindFirstChild("GetReal") then
            local highlight = Instance.new("Highlight")
            highlight.RobloxLocked = true
            highlight.Name = "GetReal"
            highlight.Adornee = target.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Parent = target.Character
        else
            target.Character.GetReal.FillColor = color
        end
    end
end

while task.wait() do
    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
        end
    end
end
end)
AANAN:Button("无限子弹",function()
print("114514");while wait() do

        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999

        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999

    end
end)
--[[
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIIIIIIIIIIIIIIIIllll/IIIlllllIIIIIIlllllllllllllllllllllllllllllllllllllllllIIllIIIlllllIIIIIIl/main/%E5%8E%9F%E7%89%88.lua", true))()
print("ui library加载成功！")
----------------------------------------------------------------------------------------------------------------------------------------
local window = library:new("云脚本中心 V2.1.2")
----------------------------------------------------------------------------------------------------------------------------------------
local main = window:Tab("主要的", "17493876383")
local Tab = main:section("关于脚本信息", true)
Tab:Textbox("输入文本", "这是默认文本", "example_flag", "默认文本", function(value)
    print("用户输入的文本是：" .. value)
end)

Tab:Button("！！",function()
print("114514");
end)

Tab:Textbox("血量设置","请输入",function(Value)
print("Value")
end)
Tab:Toggle("跳跃","text",false,function(s)
print("s")
end)
Tab:Keybind("键绑定",Enum.KeyCode.RightShift,function(Value)
print("Value")
end)
Tab:Slider("名字","",16,16,500,false,function(Value)
print("Value")
end)

Tab:Label("通知")
]]
notifications:notify{
            Title = "云脚本中心",
            Description = "已启用反挂机",
            Icon = 6031302918,
            Accept = {
                Text = "好的",
                Callback = function()
                    print("!!!")
                end
            },
            Length = 30
        }
       