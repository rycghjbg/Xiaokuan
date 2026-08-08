local success, library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Lunatic-WindRiderQian/TestArea/refs/heads/Feng/Test.lua"))()
end)

if not success then
    print("欢迎使用")  
    return
end

local Window = library:CreateWindow({
    Name = "殺脚本",
    SubName = "内部测试",
    Keybind = Enum.KeyCode.RightShift,
    Logo = 93541172717831,
    Scene = 102597607447167,
    Theme = "Dark"
})

Window.CurrentConfig = "None"

Window:Category({
    Name = "殺脚本功能列表",
    Collapsible = true,
    Opened = true, 
})
Window:TabDivider()

local FengYu = Window:Tab("基础测试", "84830962019412")

local Feng = FengYu:Section({
    Name = "标题",
    SubName = "副标题",
    Logo = "84830962019412",
    open = true
})

Feng:Image({
    Name = "标签",
    SubName = "副标签",
    Description = {"标签一", "标签二", "标签三"},
    Icon = "rbxassetid://84830962019412",
    IconColor = Color3.fromRGB(255, 255, 255),
    StrokeColor = Color3.fromRGB(85, 255, 0),
    Callback = function()
        print("图片项被点击了！")
        Window:Notification("提示", "你点击了 Shadow", "Info", 2)
    end
})

local FengYu = Window:Tab("播放测试", "84830962019412")

local Feng = FengYu:Section({
    Name = "全新的播放功能",
    Logo = "84830962019412",
    open = true
})

Feng:Video({
    Video = "rbxassetid://5670802294",
    Name = "视频哦",
    AutoPlay = true,
    Looped = true,
    Volume = 0.5,
    AspectRatio = "16:9",
    Radius = 8,
})

local Feng = FengYu:Section({
    Name = "全部新的音频播放功能",
    Logo = "84830962019412",
    open = true
})

Feng:Audio({
    Name = "音频测试",
    SubName = "副标签",
    Audio = "rbxassetid://122343512566988",
    Volume = 0.8,
    Looped = true,
    AutoPlay = false,
    PlayOutsideWindow = false
})

local FengYu = Window:Tab("视口测试", "84830962019412")

local Feng = FengYu:Section({
    Name = "3D块使用方法",
    Logo = "84830962019412",
    open = true
})

local demoModel = Instance.new("Part")
demoModel.Shape = Enum.PartType.Ball
demoModel.Size = Vector3.new(4, 4, 4)
demoModel.BrickColor = BrickColor.new("Bright blue")
demoModel.Material = Enum.Material.Neon
demoModel.CFrame = CFrame.new(0, 0, 0)
demoModel.Anchored = true
demoModel.Parent = workspace
local vpCamera = Instance.new("Camera")
vpCamera.CFrame = CFrame.new(Vector3.new(0, 3, 10), Vector3.new(0, 0, 0))

local vp = Feng:Viewport({
    Height = 200,
    AspectRatio = "16:9",
    Object = demoModel,
    Camera = vpCamera,
    Focused = true,
    Interactive = true,
})

Feng:Button({
    Name = "换成红色圆柱体",
    Icon = "solar/refresh-bold",
    Callback = function()
        local np = Instance.new("Part")
        np.Shape = Enum.PartType.Cylinder
        np.Size = Vector3.new(6, 3, 3)
        np.BrickColor = BrickColor.new("Bright red")
        np.Material = Enum.Material.SmoothPlastic
        np.Anchored = true
        np.Parent = workspace
        vp:SetObject(np, false)
        vp:Focus()
        Window:Notification("3D窗口", "对象已替换", "Info", 2)
    end,
})

local FengYu = Window:Tab("按钮", "84830962019412")

local Feng = FengYu:Section({
    Name = "按钮使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Button({
    Name = "按钮",
    Callback = function()
        print("按钮点击")
    end
})

local FengYu = Window:Tab("开关", "84830962019412")

local Feng = FengYu:Section({
    Name = "开关使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Toggle({
    Name = "开关",
    Value = true,
    Callback = function(state)
        print("开关执行:", state)
    end
})

Feng:Checkbox({
    Name = "复选框",
    Default = true,
    Callback = function(val)
        print("复选框值:", val)
    end
})

local FengYu = Window:Tab("进度条", "84830962019412")

local Feng = FengYu:Section({
    Name = "进度条使用方法",
    Logo = "84830962019412",
    open = true
})

local pb = Feng:ProgressBar({
    Name = "进度条",
    Value = {
        Min = 0,
        Max = 100,
        Default = 50,
    },
    ShowPercent = true,
    Callback = function(val)
        print("当前进度:", val)
    end
})

Feng:Button({
    Name = "增加 10",
    Callback = function()
        local newVal = math.min(pb.Value + 10, pb.Max)
        pb:SetValue(newVal)
    end
})

Feng:Button({
    Name = "减少 10",
    Callback = function()
        local newVal = math.max(pb.Value - 10, pb.Min)
        pb:SetValue(newVal)
    end
})

Feng:Button({
    Name = "重置为 50",
    Callback = function()
        pb:SetValue(50)
    end
})

local FengYu = Window:Tab("滑块", "84830962019412")

local Feng = FengYu:Section({
    Name = "滑块使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Slider({
    Name = "滑块",
    Value = {
        Min = 1,
        Max = 100,
        Default = 50,
    },
    Callback = function(value) 
        print("速度:", value)
    end
})

Feng:Slider({
    Name = "小数点.滑块",
    Value = {
        Min = 1,
        Max = 100,
        Default = 50,
    },
    Rounding = 1, --支持两个
    Callback = function(value) 
        print("速度:", value)
    end
})

local FengYu = Window:Tab("下拉式", "84830962019412")

local Feng = FengYu:Section({
    Name = "下拉式使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Dropdown({
    Name = "下拉式",
    Values = { 
        "A", 
        "B", 
        "C", 
        "D" 
    },
    Value = "A", 
    Multi = false,
    Callback = function(choose)
        print("已选择:", choose)
    end
})

Feng:Dropdown({
    Name = "下拉式.多选",
    Values = { 
        "A", 
        "B", 
        "C", 
        "D" 
    },
    Value = { 
        "A", 
        "C" 
    },
    Multi = true,
    Callback = function(val)
        print("已选择:", table.concat(val, ", "))
    end
})

local FengYu = Window:Tab("输入框", "84830962019412")

local Feng = FengYu:Section({
    Name = "输入框使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Textbox({
    Name = "输入名称",
    Placeholder = "请输入...",
    Callback = function(text)
        print("输入:", text)
    end
})

Feng:Input({
    Name = "输入",
    Value = "默认值",
    Placeholder = "输入...",
    Finished = true,
    Numeric = false,
    MaxLength = 20,
    Callback = function(val) 
        print("输入完成:", val) 
    end
})

local FengYu = Window:Tab("标签", "84830962019412")

local Feng = FengYu:Section({
    Name = "标签使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Label({
    Name = "这是一个普通标签"
})

Feng:Divider("分割标题")
Feng:Divider()

local FengYu = Window:Tab("按键绑定", "84830962019412")

local Feng = FengYu:Section({
    Name = "按键绑定使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Keybind({
    Name = "按键绑定",
    Default = Enum.KeyCode.F,
    Mode = "Toggle",
    Callback = function(state)
        print("Keybind state:", state)
    end
})

local FengYu = Window:Tab("颜色选择器", "84830962019412")

local Feng = FengYu:Section({
    Name = "颜色选择器使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:ColorPicker({
    Name = "颜色选择器",
    Default = Color3.fromRGB(80, 140, 255),
    Callback = function(color)
        print("颜色已改变: " .. tostring(color))
    end
})

local FengYu = Window:Tab("通知", "84830962019412")

local Feng = FengYu:Section({
    Name = "通知使用方法",
    Logo = "84830962019412",
    open = true
})

Feng:Button({
    Name = "普通通知",
    Callback = function()
        Window:Notification("我是通知")
    end
})

Feng:Button({
    Name = "成功通知",
    Callback = function()
        Window:Notification("我是通知", "通知成功", "Success", 3)
    end
})

Feng:Button({
    Name = "失败通知",
    Callback = function()
        Window:Notification("我是通知", "错误", "Error", 3)
    end
})

Feng:Button({
    Name = "自定义通知",
    Callback = function()
        Window:Notification("我是通知", "新消息", "Info", 3)
    end
})

Window:Category({
    Name = "UI设置列表",
    Collapsible = true,
    Opened = false, 
})

local FengYu = Window:Tab("配置管理")

local Feng = FengYu:Section({
    Name = "配置设置"
})

local ConfigName = ""
Feng:Textbox({
    Name = "配置名字",
    Placeholder = "输入配置名",
    Callback = function(val)
        ConfigName = val
    end
})

local dropdownObj
local ConfigPaths = {}

local function RefreshConfigs()
    pcall(function()
        if not isfolder(Window.RootFolder) then makefolder(Window.RootFolder) end
        if not isfolder(Window.ConfigFolder) then makefolder(Window.ConfigFolder) end
    end)
    local newList = {"None"}
    local newPaths = {}
    pcall(function()
        for _, file in pairs(listfiles(Window.ConfigFolder)) do
            local name = file:gsub(".*[\/]", ""):gsub("%.json$", "")
            if name ~= "" then
                table.insert(newList, name)
                newPaths[name] = file
            end
        end
    end)
    ConfigPaths = newPaths
    if dropdownObj then
        dropdownObj.Refresh(newList)
        if Window.CurrentConfig ~= "None" and not ConfigPaths[Window.CurrentConfig] then
            Window.CurrentConfig = "None"
            if dropdownObj.SetValue then
                dropdownObj.SetValue("None")
            end
        end
    end
end

dropdownObj = Feng:Dropdown({
    Name = "选择配置",
    Values = {"None"},
    Value = "None",
    Multi = false,
    Callback = function(val)
        Window.CurrentConfig = val
    end
})

Feng:Button({
    Name = "刷新列表",
    Callback = RefreshConfigs
})

Feng:Button({
    Name = "保存配置",
    Callback = function()
        if ConfigName == "" then
            Window:Notification("保存错误", "你他妈倒是写配置名啊", "Error", 2)
            return
        end
        library:SaveConfig(ConfigName, Window.ConfigFolder)
        RefreshConfigs()
        Window:Notification("成功保存", "配置保存为" .. ConfigName, "Success", 2)
    end
})

Feng:Button({
    Name = "加载配置",
    Callback = function()
        if Window.CurrentConfig == "" or Window.CurrentConfig == "None" then
            Window:Notification("加载错误", "你个傻逼会不会选配置", "Error", 2)
            return
        end
        local name = Window.CurrentConfig
        local path = ConfigPaths[name] or (Window.ConfigFolder .. "/" .. name .. ".json")
        Window:Notification("正在加载", "正在载入" .. name .. "配置", "Info", 2)
        local ok = library:LoadConfig(path)
        if ok then
            Window:Notification("加载成功", name .. "已加载配置", "Success", 2)
        else
            Window:Notification("错误", "加载失败" .. name, "Error", 2)
        end
    end
})

Feng:Button({
    Name = "删除配置",
    Callback = function()
        if Window.CurrentConfig == "" or Window.CurrentConfig == "None" then
            Window:Notification("错误", "你没选配置你删个屁啊？", "Error", 2)
            return
        end
        local name = Window.CurrentConfig
        local paths = {
            ConfigPaths[name],
            Window.ConfigFolder .. "/" .. name .. ".json",
            Window.ConfigFolder .. "\\" .. name .. ".json",
        }
        pcall(function()
            for _, path in ipairs(paths) do
                if path and isfile(path) then
                    delfile(path)
                    break
                end
            end
        end)
        Window.CurrentConfig = "None"
        task.wait(0.05)
        RefreshConfigs()
        if dropdownObj and dropdownObj.SetValue then
            dropdownObj.SetValue("None")
        end
        Window:Notification("成功", name .. " 配置成功删除", "Success", 2)
    end
})

RefreshConfigs()

local FengYu = Window:Tab("设置系统")

local Feng = FengYu:Section({
    Name = "界面设置"
})

local rainbowTypeMap = {
    ["线性渐变（实心彩虹）"] = "Linear Gradient (Solid Rainbow)",
    ["动态/循环彩虹"] = "Animated/Cycling Rainbow",
    ["平滑渐变"] = "Smooth Fading Gradient",
    ["分段/条带彩虹"] = "Step/Band Rainbow",
    ["彩虹脉冲"] = "Rainbow Pulse",
    ["径向彩虹"] = "Radial Rainbow",
    ["霓虹/发光彩虹"] = "Neon/Glowing Rainbow",
    ["柔和彩虹"] = "Pastel Rainbow",
    ["垂直/水平渐变"] = "Vertical/Horizontal Fade"
}
local rainbowTypeDisplay = {}
for display, _ in pairs(rainbowTypeMap) do
    table.insert(rainbowTypeDisplay, display)
end

Feng:Toggle({
    Name = "彩虹边框",
    Value = false, 
    Callback = function(v)
        library:ToggleRainbow(v)
    end
})

Feng:Slider({
    Name = "边框速度",
    Value = {
        Min = 0.1,
        Max = 10,
        Default = 1
    },
    Callback = function(v)
        library:SetRainbowSpeed(v)
    end
})

Feng:Dropdown({
    Name = "边框类型",
    Values = rainbowTypeDisplay,
    Value = rainbowTypeDisplay[1],
    Multi = false,
    Callback = function(val)
        library:SetRainbowType(rainbowTypeMap[val])
    end
})

local themeMap = {
    ["暗色"] = "Dark",
    ["白色"] = "White",
    ["紫色"] = "Purple",
    ["蓝色"] = "Blue",
    ["红色"] = "Red",
    ["黄色"] = "Yellow",
    ["绿色"] = "Green"
}
local themeDisplay = {}
for display, _ in pairs(themeMap) do
    table.insert(themeDisplay, display)
end

Feng:Dropdown({
    Name = "主题颜色",
    Values = themeDisplay,
    Value = themeDisplay[1],
    Multi = false,
    Callback = function(v)
        library:SetTheme(themeMap[v])
    end
})

Feng:Toggle({
    Name = "光标",
    Value = false,
    Callback = function(val)
        library:SetCustomCursor(val)
    end
})

Feng:Keybind({
    Name = "菜单键绑定",
    Default = Enum.KeyCode.RightShift,
    Callback = function(v)
        Window:SetKeybind(v)
    end
})

Feng:Button({
    Name = "摧毁界面",
    Callback = function()
        Window:Destroy()
    end
})