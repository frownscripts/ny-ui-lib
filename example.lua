local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/frownscripts/ny-ui-lib/refs/heads/main/ui.lua", true))()

local Main = lib:Create("KK Example", UDim2.new(0, 700, 0, 600), Enum.KeyCode.RightShift)

local Tab = Main:Tab("DEMO", 0, "Demo", "Control showcase")
local Sub = Tab:SubTab("Main", 0)

Sub:Label("Left", "Buttons")
Sub:Button("Left", "Notify", function()
	if lib.Notify then
		lib:Notify("KK Example", "Hello from kkexample.lua", 3)
	end
end)

Sub:Label("Left", "Toggles")
Sub:Toggle("Left", "Example Toggle", false, function(v)
	print("Toggle:", v)
end)

Sub:Label("Right", "Dropdown")
Sub:Dropdown("Right", "Example Dropdown", "A", { "A", "B", "C" }, function(v)
	print("Dropdown:", v)
end)

Sub:Label("Right", "Slider")
Sub:Slider("Right", "Example Slider", 50, 0, 100, 1, function(v)
	print("Slider:", v)
end)

Sub:Label("Right", "Color Picker")
Sub:Colorpicker("Right", "Example Color", Color3.fromRGB(110, 110, 255), function(c)
	print("Color:", c)
end)

getgenv().library = lib
return lib
