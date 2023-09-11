local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() 

local Window = Library.CreateLib("tutorial", "DarkTheme") 

local Tab = Window:NewTab("TabName") 

local Section = Tab:NewSection("Section Name") 

Section:UpdateSection("Section New Title") 

label:UpdateLabel("New Text") 

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end) 

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end) 

local Window = Library.CreateLib("tutorial", colors) 

for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end


local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
} 

Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
