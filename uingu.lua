-- FluentWindUI Pro - Full Example (LocalScript)
-- Paste into a LocalScript in StarterGui or StarterPlayerScripts
-- Features: Dashboard style, Sidebar, Tabs, Sections, Toggles, Slider, Dropdown, Textbox, Theme Editor, Drag/Resize, Tween

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- ======== Helpers ========
local function create(class, props)
	local inst = Instance.new(class)
	if props then
		for k,v in pairs(props) do
			-- Parent & AnchorPoint special-case
			if k == "Parent" then
				inst.Parent = v
			elseif k == "AnchorPoint" then
				inst.AnchorPoint = v
			else
				inst[k] = v
			end
		end
	end
	return inst
end

local function tween(inst, props, dur, style, dir)
	local info = TweenInfo.new(dur or 0.22, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out)
	local t = TweenService:Create(inst, info, props)
	t:Play()
	return t
end

local function clamp(n, a, b) return math.max(a, math.min(b, n)) end

-- ======== Theme (default) ========
local Theme = {
	Background = Color3.fromRGB(22,22,22),
	Sidebar = Color3.fromRGB(30,30,36),
	Titlebar = Color3.fromRGB(18,18,18),
	Card = Color3.fromRGB(36,36,42),
	Accent = Color3.fromRGB(0,132,255),
	Text = Color3.fromRGB(235,235,235),
	SubText = Color3.fromRGB(170,170,180)
}

-- ======== ScreenGui & Main Window ========
local screenGui = create("ScreenGui", {Parent = player:WaitForChild("PlayerGui"), ResetOnSpawn = false})
screenGui.Name = "FluentWindUI_Pro"

local Main = create("Frame", {
	Parent = screenGui,
	Name = "MainWindow",
	Size = UDim2.new(0, 880, 0, 560),
	Position = UDim2.new(0.5, -440, 0.5, -280),
	BackgroundColor3 = Theme.Background,
	BorderSizePixel = 0,
	Active = true,
})
create("UICorner", {Parent = Main, CornerRadius = UDim.new(0, 18)})

-- Outer soft shadow
local Shadow = create("ImageLabel", {
	Parent = Main,
	Size = UDim2.new(1, 56, 1, 56),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundTransparency = 1,
	Image = "rbxassetid://5028857084",
	ImageTransparency = 0.62,
	ScaleType = Enum.ScaleType.Slice,
	SliceCenter = Rect.new(24,24,276,276),
	ZIndex = 0
})

-- Title bar
local TitleBar = create("Frame", {Parent = Main, Size = UDim2.new(1,0,0,48), BackgroundColor3 = Theme.Titlebar, BorderSizePixel = 0})
create("UICorner", {Parent = TitleBar, CornerRadius = UDim.new(0,18)})
local TitleLabel = create("TextLabel", {
	Parent = TitleBar,
	Size = UDim2.new(1, -220, 1, 0),
	Position = UDim2.new(0, 18, 0, 0),
	BackgroundTransparency = 1,
	Text = "Maru Hub Premium  |  Blox Fruits",
	Font = Enum.Font.GothamBold,
	TextSize = 16,
	TextColor3 = Theme.Text,
	TextXAlignment = Enum.TextXAlignment.Left
})

-- Control buttons
local btnContainer = create("Frame", {Parent = TitleBar, Size = UDim2.new(0, 200, 1, 0), Position = UDim2.new(1, -210, 0, 0), BackgroundTransparency = 1})
local minBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 40, 0, 36), Position = UDim2.new(1, -160, 0.5, -18), BackgroundTransparency = 1, Text = "—", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Theme.SubText})
local maxBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 40, 0, 36), Position = UDim2.new(1, -110, 0.5, -18), BackgroundTransparency = 1, Text = "◻", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Theme.SubText})
local closeBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 40, 0, 36), Position = UDim2.new(1, -60, 0.5, -18), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Color3.fromRGB(255,100,100)})

-- Sidebar
local Sidebar = create("Frame", {Parent = Main, Size = UDim2.new(0, 220, 1, -48), Position = UDim2.new(0,0,0,48), BackgroundColor3 = Theme.Sidebar, BorderSizePixel = 0})
create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 12)})
local sideList = create("UIListLayout", {Parent = Sidebar})
sideList.Padding = UDim.new(0, 12)
sideList.SortOrder = Enum.SortOrder.LayoutOrder
sideList.HorizontalAlignment = Enum.HorizontalAlignment.Left

-- Logo block
local logoFrame = create("Frame", {Parent = Sidebar, Size = UDim2.new(1, -28, 0, 108), Position = UDim2.new(0, 14, 0, 12), BackgroundTransparency = 1})
local logoImage = create("ImageLabel", {Parent = logoFrame, Size = UDim2.new(0, 72, 0, 72), Position = UDim2.new(0, 0, 0, 8), BackgroundTransparency = 1, Image = ""}) -- set logoImage.Image to your asset id
local logoText = create("TextLabel", {Parent = logoFrame, Size = UDim2.new(1, -88, 0, 28), Position = UDim2.new(0, 86, 0, 44), BackgroundTransparency = 1, Text = "Maru", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})

-- Content area (pages)
local Content = create("Frame", {Parent = Main, Size = UDim2.new(1, -240, 1, -64), Position = UDim2.new(0, 240, 0, 56), BackgroundTransparency = 1})
create("UICorner", {Parent = Content, CornerRadius = UDim.new(0, 10)})

-- Pages container map
local Pages = {}
local Tabs = {}

-- helper create page (scrolling)
local function createPage(name)
	local page = create("ScrollingFrame", {Parent = Content, Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1, ScrollBarThickness = 8, Visible = false})
	create("UIListLayout", {Parent = page, Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder})
	page.CanvasSize = UDim2.new(0, 0, 0, 0)
	page.ChildAdded:Connect(function()
		task.wait(0.03)
		local layout = page:FindFirstChildOfClass("UIListLayout")
		if layout then
			page.CanvasSize = UDim2.new(0,0,0, layout.AbsoluteContentSize.Y + 16)
		end
	end)
	Pages[name] = page
	return page
end

-- sidebar entry builder
local function makeSidebarButton(iconText, labelText)
	local btn = create("TextButton", {Parent = Sidebar, Size = UDim2.new(1, -28, 0, 46), BackgroundTransparency = 1, AutoButtonColor = false, Font = Enum.Font.Gotham, TextSize = 16, Text = iconText.."  "..labelText, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	create("UICorner", {Parent = btn, CornerRadius = UDim.new(0,10)})
	local indicator = create("Frame", {Parent = btn, Size = UDim2.new(0, 6, 1, 0), Position = UDim2.new(0, 0, 0, 0), BackgroundColor3 = Theme.Accent, Visible = false})
	return btn, indicator
end

-- tabs data (customize order)
local tabList = {
	{"📊", "Status"},
	{"⚙️", "Farm Settings"},
	{"🏠", "Main"},
	{"🤖", "Multi Farm"},
	{"🗺️", "Quests"},
	{"🎒", "Items"},
	{"🧬", "Race"},
	{"🌊", "Sea Event"}
}

-- create sidebar entries + pages
for i, v in ipairs(tabList) do
	local icon, name = v[1], v[2]
	local btn, ind = makeSidebarButton(icon, name)
	Tabs[name] = {Button = btn, Indicator = ind}
	local page = createPage(name)
	-- default sample content: you'll add real controls later
	Pages[name] = page
end

-- UI components: Section, ToggleRow, SliderRow, DropdownRow, TextboxRow, Card
local function AddSection(page, title)
	local sec = create("Frame", {Parent = page, Size = UDim2.new(1, -24, 0, 36), BackgroundTransparency = 1})
	local txt = create("TextLabel", {Parent = sec, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	return sec
end

local function AddCard(page, title, subtitle)
	local card = create("Frame", {Parent = page, Size = UDim2.new(1, -24, 0, 72), BackgroundColor3 = Theme.Card, BorderSizePixel = 0})
	create("UICorner", {Parent = card, CornerRadius = UDim.new(0, 10)})
	create("TextLabel", {Parent = card, Size = UDim2.new(1, -140, 0, 22), Position = UDim2.new(0, 16, 0, 12), BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	create("TextLabel", {Parent = card, Size = UDim2.new(1, -140, 0, 18), Position = UDim2.new(0, 16, 0, 36), BackgroundTransparency = 1, Text = subtitle or "", Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = Theme.SubText, TextXAlignment = Enum.TextXAlignment.Left})
	return card
end

local function AddToggleRow(page, title, subtitle, default)
	local card = create("Frame", {Parent = page, Size = UDim2.new(1, -24, 0, 64), BackgroundColor3 = Theme.Card, BorderSizePixel = 0})
	create("UICorner", {Parent = card, CornerRadius = UDim.new(0, 10)})
	create("TextLabel", {Parent = card, Size = UDim2.new(1, -140, 0, 22), Position = UDim2.new(0, 16, 0, 8), BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	create("TextLabel", {Parent = card, Size = UDim2.new(1, -140, 0, 18), Position = UDim2.new(0, 16, 0, 32), BackgroundTransparency = 1, Text = subtitle or "", Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = Theme.SubText, TextXAlignment = Enum.TextXAlignment.Left})
	-- toggle control
	local toggleBG = create("Frame", {Parent = card, Size = UDim2.new(0, 56, 0, 32), Position = UDim2.new(1, -84, 0.5, -16), BackgroundColor3 = Theme.Sidebar})
	create("UICorner", {Parent = toggleBG, CornerRadius = UDim.new(1,0)})
	local knob = create("Frame", {Parent = toggleBG, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(0, 4, 0, 2), BackgroundColor3 = Color3.fromRGB(245,245,245)})
	create("UICorner", {Parent = knob, CornerRadius = UDim.new(1,0)})
	local state = default and true or false
	if state then
		knob.Position = UDim2.new(1, -32, 0, 2)
		toggleBG.BackgroundColor3 = Theme.Accent
	end
	toggleBG.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			state = not state
			if state then
				tween(knob, {Position = UDim2.new(1, -32, 0, 2)}, 0.16)
				tween(toggleBG, {BackgroundColor3 = Theme.Accent}, 0.16)
			else
				tween(knob, {Position = UDim2.new(0, 4, 0, 2)}, 0.16)
				tween(toggleBG, {BackgroundColor3 = Theme.Sidebar}, 0.16)
			end
		end
	end)
	return {
		Card = card,
		GetState = function() return state end,
		SetState = function(v)
			state = not not v
			if state then
				knob.Position = UDim2.new(1, -32, 0, 2)
				toggleBG.BackgroundColor3 = Theme.Accent
			else
				knob.Position = UDim2.new(0, 4, 0, 2)
				toggleBG.BackgroundColor3 = Theme.Sidebar
			end
		end
	}
end

local function AddSliderRow(page, title, min, max, default, callback)
	min = min or 0; max = max or 100; default = default or min
	local frame = create("Frame", {Parent = page, Size = UDim2.new(1, -24, 0, 64), BackgroundTransparency = 1})
	create("TextLabel", {Parent = frame, Size = UDim2.new(1, -12, 0, 20), Position = UDim2.new(0, 6, 0, 6), BackgroundTransparency = 1, Text = title.." : "..tostring(default), Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	local bar = create("Frame", {Parent = frame, Size = UDim2.new(1, -24, 0, 10), Position = UDim2.new(0, 12, 0, 34), BackgroundColor3 = Theme.Card, BorderSizePixel = 0})
	create("UICorner", {Parent = bar, CornerRadius = UDim.new(0,6)})
	local fill = create("Frame", {Parent = bar, Size = UDim2.new((default-min)/(max-min), 0, 1, 0), BackgroundColor3 = Theme.Accent})
	create("UICorner", {Parent = fill, CornerRadius = UDim.new(0,6)})
	local dragging = false
	bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end end)
	bar.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
	UserInputService.InputChanged:Connect(function(i)
		if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
			local rel = clamp((i.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
			fill.Size = UDim2.new(rel, 0, 1, 0)
			local value = math.floor(min + (max-min)*rel)
			frame:FindFirstChildOfClass("TextLabel").Text = title.." : "..tostring(value)
			if callback then pcall(callback, value) end
		end
	end)
	return {Frame = frame, Get = function() return min + (max-min)*fill.Size.X.Scale end}
end

local function AddDropdownRow(page, title, items, callback)
	local frame = create("Frame", {Parent = page, Size = UDim2.new(1, -24, 0, 36), BackgroundTransparency = 1})
	create("TextLabel", {Parent = frame, Size = UDim2.new(1, -44, 1, 0), BackgroundTransparency = 1, Text = title, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	local btn = create("TextButton", {Parent = frame, Size = UDim2.new(0, 32, 0, 28), Position = UDim2.new(1, -36, 0.5, -14), BackgroundTransparency = 1, Text = "⌄", Font = Enum.Font.GothamBold, TextColor3 = Theme.Text})
	local list = create("Frame", {Parent = page, Size = UDim2.new(0, 360, 0, 0), Position = UDim2.new(0, 20, 0, 0), BackgroundColor3 = Theme.Card, Visible = false})
	create("UICorner", {Parent = list, CornerRadius = UDim.new(0,8)})
	create("UIListLayout", {Parent = list, Padding = UDim.new(0,6), SortOrder = Enum.SortOrder.LayoutOrder})
	for _, opt in ipairs(items or {}) do
		local it = create("TextButton", {Parent = list, Size = UDim2.new(1, -12, 0, 30), BackgroundColor3 = Theme.Card, Text = opt, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, AutoButtonColor = false})
		create("UICorner", {Parent = it, CornerRadius = UDim.new(0,6)})
		it.MouseEnter:Connect(function() tween(it, {BackgroundColor3 = Theme.Accent}, 0.12) end)
		it.MouseLeave:Connect(function() tween(it, {BackgroundColor3 = Theme.Card}, 0.12) end)
		it.MouseButton1Click:Connect(function()
			if callback then pcall(callback, opt) end
			tween(list, {Size = UDim2.new(0, 360, 0, 0)}, 0.16)
			task.delay(0.16, function() list.Visible = false end)
		end)
	end
	btn.MouseButton1Click:Connect(function()
		if not list.Visible then
			list.Visible = true
			local count = 0
			for _,c in ipairs(list:GetChildren()) do if c:IsA("TextButton") then count = count + 1 end end
			tween(list, {Size = UDim2.new(0, 360, 0, count * 36 + 8)}, 0.18)
		else
			tween(list, {Size = UDim2.new(0, 360, 0, 0)}, 0.16)
			task.delay(0.16, function() list.Visible = false end)
		end
	end)
	return {Frame = frame}
end

local function AddTextboxRow(page, placeholder, callback)
	local box = create("TextBox", {Parent = page, Size = UDim2.new(1, -24, 0, 36), BackgroundColor3 = Theme.Card, Text = "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text})
	create("UICorner", {Parent = box, CornerRadius = UDim.new(0,8)})
	box.FocusLost:Connect(function(enter)
		if enter and callback then pcall(callback, box.Text) end
	end)
	return box
end

-- ======== Populate pages like the sample screenshot ========
-- Status page
AddSection(createPage("Status") or createPage("Status"), "Status") -- ensure exists via createPage
-- Let's actually ensure pages exist earlier (we created them). Use Pages map.
-- Fill content for "Status"
do
	local page = Pages["Status"] or createPage("Status")
	AddCard(page, "Server Time", "13 minutes, 24 seconds")
	AddCard(page, "Players", "Online: " .. tostring(#Players:GetPlayers()))
end

-- Farm Settings
do
	local page = Pages["Farm Settings"] or createPage("Farm Settings")
	AddSection(page, "Main")
	AddToggleRow(page, "Auto Farm Level", "Tự động farm level", false)
	AddSection(page, "World Quest")
	AddToggleRow(page, "Auto Dressrosa Quest", "World 2 Quest", false)
	AddToggleRow(page, "Auto Zou Quest", "World 3 Quest", false)
	AddSection(page, "Events")
	AddToggleRow(page, "Auto Farm Oni Token", "Event farming", false)
	AddToggleRow(page, "Auto Kill Red Commander", "Boss farm", false)
end

-- Main
do
	local page = Pages["Main"] or createPage("Main")
	AddSection(page, "Main")
	AddToggleRow(page, "Auto Farm Level", "Farm your level automatically", false)
	AddSliderRow(page, "Speed", 0, 100, 50, function(v) end)
	AddSection(page, "Word Quest")
	AddToggleRow(page, "Auto Dressrosa Quest", "World 2", false)
	AddToggleRow(page, "Auto Zou Quest", "World 3", false)
end

-- Multi Farm
do
	local page = Pages["Multi Farm"] or createPage("Multi Farm")
	AddSection(page, "Multi Farm")
	AddToggleRow(page, "Enable Multi Farm", "Farm multiple targets", false)
end

-- Quests
do
	local page = Pages["Quests"] or createPage("Quests")
	AddSection(page, "Quests")
	AddToggleRow(page, "Auto Quest", "Auto accept & complete quests", false)
end

-- Items
do
	local page = Pages["Items"] or createPage("Items")
	AddSection(page, "Items")
	AddToggleRow(page, "Auto Sell", "Auto sell low value items", false)
end

-- Race
do
	local page = Pages["Race"] or createPage("Race")
	AddSection(page, "Race")
	AddToggleRow(page, "Auto Race", "Auto race actions", false)
end

-- Sea Event
do
	local page = Pages["Sea Event"] or createPage("Sea Event")
	AddSection(page, "Sea Event")
	AddToggleRow(page, "Auto Sea Event", "Event automation", false)
end

-- ======== Tabs wiring (sidebar button clicks) ========
-- ensure first tab visible
local firstName = tabList[1] and tabList[1][2] or nil
if firstName and Pages[firstName] then
	for nm,_ in pairs(Pages) do Pages[nm].Visible = false end
	Pages[firstName].Visible = true
	for _, t in pairs(Tabs) do t.Indicator.Visible = false end
	if Tabs[firstName] then Tabs[firstName].Indicator.Visible = true end
end

for _, info in ipairs(tabList) do
	local name = info[2]
	local tab = Tabs[name]
	local page = Pages[name]
	if tab and page then
		tab.Button.MouseButton1Click:Connect(function()
			-- hide others
			for k, p in pairs(Pages) do p.Visible = false end
			for k, t in pairs(Tabs) do t.Indicator.Visible = false end
			-- show this
			page.Visible = true
			tab.Indicator.Visible = true
			-- small entrance animation
			page.CanvasPosition = Vector2.new(0, 0)
			page.Position = UDim2.new(0, 0, 0, 12)
			tween(page, {Position = UDim2.new(0, 0, 0, 0)}, 0.26)
		end)
		-- hover visual
		tab.Button.MouseEnter:Connect(function() tween(tab.Button, {BackgroundColor3 = Color3.fromRGB(42,42,48)}, 0.12) end)
		tab.Button.MouseLeave:Connect(function() tween(tab.Button, {BackgroundColor3 = Theme.Sidebar}, 0.12) end)
	end
end

-- ======== Drag window (via TitleBar) ========
do
	local dragging, dragStart, startPos
	TitleBar.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = i.Position
			startPos = Main.Position
		end
	end)
	TitleBar.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	UserInputService.InputChanged:Connect(function(i)
		if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = i.Position - dragStart
			Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

-- ======== Resize handle ========
local ResizeHandle = create("Frame", {Parent = Main, Size = UDim2.new(0, 18, 0, 18), Position = UDim2.new(1, -24, 1, -24), BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, Active = true})
create("UICorner", {Parent = ResizeHandle, CornerRadius = UDim.new(0, 4)})
do
	local resizing, startPos, startSize
	ResizeHandle.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			resizing = true
			startPos = i.Position
			startSize = Main.AbsoluteSize
		end
	end)
	ResizeHandle.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then resizing = false end
	end)
	UserInputService.InputChanged:Connect(function(i)
		if resizing and i.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = i.Position - startPos
			local w = math.max(560, startSize.X + delta.X)
			local h = math.max(360, startSize.Y + delta.Y)
			Main.Size = UDim2.new(0, w, 0, h)
		end
	end)
end

-- ======== Max/Min/Close behavior ========
local isMax = false
local prevPos, prevSize = Main.Position, Main.Size
maxBtn.MouseButton1Click:Connect(function()
	if not isMax then
		prevPos, prevSize = Main.Position, Main.Size
		tween(Main, {Position = UDim2.new(0, 18, 0, 18), Size = UDim2.new(1, -36, 1, -36)}, 0.28)
	else
		tween(Main, {Position = prevPos, Size = prevSize}, 0.28)
	end
	isMax = not isMax
end)
minBtn.MouseButton1Click:Connect(function()
	tween(Main, {Size = UDim2.new(Main.Size.X.Scale, Main.Size.X.Offset, 0, 56)}, 0.22)
end)
closeBtn.MouseButton1Click:Connect(function()
	tween(Main, {BackgroundTransparency = 1, Size = UDim2.new(0,0,0,0)}, 0.22)
	task.delay(0.22, function() screenGui:Destroy() end)
end)

-- ======== Theme Editor Modal ========
local function OpenThemeEditor()
	-- Modal container
	local modal = create("Frame", {Parent = Main, Size = UDim2.new(0, 420, 0, 240), Position = UDim2.new(0.5, -210, 0.5, -120), BackgroundColor3 = Theme.Card, ZIndex = 60})
	create("UICorner", {Parent = modal, CornerRadius = UDim.new(0, 12)})
	create("TextLabel", {Parent = modal, Size = UDim2.new(1, -24, 0, 36), Position = UDim2.new(0, 12, 0, 10), BackgroundTransparency = 1, Text = "🎨 Theme Editor", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	-- sliders for Primary color R/G/B
	local function sliderRow(name, y, default)
		local lbl = create("TextLabel", {Parent = modal, Size = UDim2.new(0, 40, 0, 18), Position = UDim2.new(0, 12, 0, y), BackgroundTransparency = 1, Text = name, Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.Text})
		local bar = create("Frame", {Parent = modal, Size = UDim2.new(0, 280, 0, 10), Position = UDim2.new(0, 64, 0, y+4), BackgroundColor3 = Theme.Background})
		create("UICorner", {Parent = bar, CornerRadius = UDim.new(0, 6)})
		local fill = create("Frame", {Parent = bar, Size = UDim2.new(default/255, 0, 1, 0), BackgroundColor3 = Theme.Accent})
		create("UICorner", {Parent = fill, CornerRadius = UDim.new(0, 6)})
		local num = create("TextBox", {Parent = modal, Size = UDim2.new(0, 52, 0, 18), Position = UDim2.new(0, 356, 0, y), BackgroundColor3 = Theme.Card, Text = tostring(default), Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.Text})
		create("UICorner", {Parent = num, CornerRadius = UDim.new(0, 6)})
		local dragging = false
		bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end end)
		bar.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
		UserInputService.InputChanged:Connect(function(i)
			if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
				local rel = clamp((i.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
				fill.Size = UDim2.new(rel, 0, 1, 0)
				num.Text = tostring(math.floor(rel * 255))
			end
		end)
		return {Label = lbl, Bar = bar, Fill = fill, Num = num}
	end

	local r = math.floor(Theme.Accent.R * 255)
	local g = math.floor(Theme.Accent.G * 255)
	local b = math.floor(Theme.Accent.B * 255)
	local sR = sliderRow("R", 56, r)
	local sG = sliderRow("G", 92, g)
	local sB = sliderRow("B", 128, b)

	local applyBtn = create("TextButton", {Parent = modal, Size = UDim2.new(0, 110, 0, 36), Position = UDim2.new(1, -130, 1, -48), BackgroundColor3 = Theme.Accent, Text = "Apply", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.fromRGB(255,255,255)})
	create("UICorner", {Parent = applyBtn, CornerRadius = UDim.new(0, 8)})
	applyBtn.MouseButton1Click:Connect(function()
		local nr = tonumber(sR.Num.Text) or r
		local ng = tonumber(sG.Num.Text) or g
		local nb = tonumber(sB.Num.Text) or b
		Theme.Accent = Color3.fromRGB(clamp(math.floor(nr),0,255), clamp(math.floor(ng),0,255), clamp(math.floor(nb),0,255))
		-- apply to UI parts
		ResizeHandle.BackgroundColor3 = Theme.Accent
		for _, t in pairs(Tabs) do
			if t.Indicator.Visible then
				t.Indicator.BackgroundColor3 = Theme.Accent
			end
		end
		-- update any toggle accent color by iterating pages children (simple)
		for _, p in pairs(Pages) do
			for _, c in ipairs(p:GetChildren()) do
				if c:IsA("Frame") then
					-- inside card, check for toggle BG children
					for _, cc in ipairs(c:GetChildren()) do
						if cc:IsA("Frame") and cc.AbsoluteSize.X == 56 then
							-- treat as toggle bg
							-- best-effort: leave current state; this just updates color only if active
							-- nothing to change here generally
						end
					end
				end
			end
		end
		modal:Destroy()
	end)
	local closeX = create("TextButton", {Parent = modal, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(1, -36, 0, 8), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = Theme.Text})
	closeX.MouseButton1Click:Connect(function() modal:Destroy() end)

	return modal
end

-- Add a small "Theme" button in Settings page
do
	local pg = Pages["Farm Settings"]
	if pg then
		local frm = create("Frame", {Parent = pg, Size = UDim2.new(1, -24, 0, 44), BackgroundTransparency = 1})
		local btn = create("TextButton", {Parent = frm, Size = UDim2.new(0, 160, 0, 34), Position = UDim2.new(0, 12, 0, 6), BackgroundColor3 = Theme.Accent, Text = "Theme Editor", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.fromRGB(255,255,255)})
		create("UICorner", {Parent = btn, CornerRadius = UDim.new(0, 8)})
		btn.MouseButton1Click:Connect(function() OpenThemeEditor() end)
	end
end

-- ======== Resize handle reference for Theme apply ========
local ResizeHandle = Main:FindFirstChildWhichIsA("Frame", true) -- fallback, will search isn't reliable
for _, child in ipairs(Main:GetChildren()) do
	if child.Name == "ResizerHandle" or (child:IsA("Frame") and child.AbsoluteSize.X <= 20 and child.AbsoluteSize.Y <= 20) then
		ResizeHandle = child
		break
	end
end
-- create explicit ResizeHandle variable if not found earlier
if not ResizeHandle then
	ResizeHandle = create("Frame", {Parent = Main, Size = UDim2.new(0, 18, 0, 18), Position = UDim2.new(1, -24, 1, -24), BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, Active = true})
	create("UICorner", {Parent = ResizeHandle, CornerRadius = UDim.new(0, 4)})
end

-- ======== Final entrance animation ========
Main.Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset, Main.Position.Y.Scale, Main.Position.Y.Offset + 12)
tween(Main, {Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset, Main.Position.Y.Scale, Main.Position.Y.Offset - 12)}, 0.28)

-- ======== End of Script ========
