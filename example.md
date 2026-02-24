# kk.lua

## Load

```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/frownscripts/ny-ui-lib/refs/heads/main/ui.lua", true))()
```

## lib:Create

```lua
local Main = lib:Create("KK Example", UDim2.new(0, 700, 0, 600), Enum.KeyCode.RightShift)
```

## lib:Destroy

```lua
lib:Destroy()
```

## lib:Notify

```lua
lib:Notify("Title", "Description", 3)
```

## Main:Tab

```lua
local Tab = Main:Tab("DEMO", 0, "Demo", "Control showcase")
```

## Tab:SubTab

```lua
local Sub = Tab:SubTab("Main", 0)
```

## Sub:Label

```lua
Sub:Label("Left", "Label")
```

## Sub:CounterLabel

```lua
local c = Sub:CounterLabel("Left", "Counter", true)
c:update("Counter (updated)")
```

## Sub:Toggle

```lua
Sub:Toggle("Left", "Toggle", false, function(v)
	print("Toggle:", v)
end)
```

## Sub:Button

```lua
Sub:Button("Left", "Button", function()
	print("clicked")
end)
```

## Sub:Button (Prompt)

```lua
Sub:Button("Left", "Prompt", function()
	print("yes")
end, function()
	print("no")
end, "Title", "Message")
```

## Sub:Bind

```lua
Sub:Bind("Left", "Bind", "Toggle", function(v)
	print("Bind:", v)
end)
```

## Sub:Textbox

```lua
Sub:Textbox("Left", "Textbox", "Type...", true, function(t)
	print("Textbox:", t)
end)
```

## Sub:Slider

```lua
Sub:Slider("Right", "Slider", 50, 0, 100, 1, function(v)
	print("Slider:", v)
end)
```

## Sub:Dropdown

```lua
Sub:Dropdown("Right", "Dropdown", "A", {"A", "B", "C"}, function(v)
	print("Dropdown:", v)
end)
```

## Sub:Colorpicker

```lua
Sub:Colorpicker("Right", "Color", Color3.fromRGB(110, 110, 255), function(c3)
	print("Color:", c3)
end)
```
