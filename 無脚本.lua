local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
 
local Window = WindUI:CreateWindow({
    Title = "無脚本",
    Icon = "sparkle",
    Author = "無渡制作必是精品",
    Folder = "GlovSakenScript",
    Size = UDim2.fromOffset(350, 300),
    Transparent = false,
    Theme = "Dark",
    Resizable = false,
    SideBarWidth = 150,
    HideSearchBar = true,
    ScrollBarEnabled = false,
})
 
Window:SetToggleKey(Enum.KeyCode.K)
 
WindUI:SetFont("rbxasset://fonts/families/AccanthisADFStd.json")
 
Window:EditOpenButton({
    Title = "無脚本",
    Icon = "sparkle",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 0,
    Color = ColorSequence.new(
        Color3.fromHex("000000"), 
        Color3.fromHex("000000")
    ),
    OnlyMobile = true,
    Enabled = true,
    Draggable = true,
})
 
local SentinelTab = Window:Tab({
    Title = "通用",
    Icon = "shield",
})

local GuestSection = SentinelTab:Section({
    Title = "通用功能",
    Opened = true,
})  

GuestSection:Button({
    Title = "無",
    Desc = "無",
    Callback = function()  
end
})

GuestSection:Toggle({
    Title = "开关",
    --Image = "bird",
    Value = true,
    Callback = function(abc)
    --输入代码
 end
})

GuestSection:Input({
    Title = "用户名",
    Value = "访客",
    Placeholder = "输入",
    Callback = function(abc) 
    --输入代码
end
})

GuestSection:Dropdown({
    Title = "选择一个选项",
    Values = { "选项 1", "选项 2", "选项 3" },
    Value = "选项 1",
    Callback = function(abc) 
    --输入代码
end
})

GuestSection:Slider({
    Title = "滑块",
    Value = {
        Min = 0,
        Max = 100,
        Default = 50,
    },
    Callback = function(abc) 
    --输入代码
end
})