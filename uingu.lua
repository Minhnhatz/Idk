-- Maru-like FluentWindUI (Full, LocalScript)
-- Paste vào LocalScript (StarterGui / StarterPlayerScripts)
-- Mô tả: Sidebar + Header + Content with Sections and Toggles
-- Tác giả: ChatGPT (tùy chỉnh cho bạn)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- ===== Helpers =====
local function create(class, props)
	local inst = Instance.new(class)
	if props then
		for k,v in pairs(props) do
			-- special-case Parent and AnchorPoint
			if k == "Parent" then inst.Parent = v
			elseif k == "AnchorPoint" then inst.AnchorPoint = v
			else inst[k] = v end
		end
	end
	return inst
end

local function tween(inst, props, t, style, dir)
	local info = TweenInfo.new(t or 0.22, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out)
	local tw = TweenService:Create(inst, info, props)
	tw:Play()
	return tw
end

local function clamp(n, a, b) return math.max(a, math.min(b, n)) end

-- ===== Theme =====
local Theme = {
	Background = Color3.fromRGB(22,22,22),
	Sidebar = Color3.fromRGB(30,30,30),
	Titlebar = Color3.fromRGB(18,18,18),
	Card = Color3.fromRGB(36,36,36),
	Accent = Color3.fromRGB(0, 132, 255),
	Text = Color3.fromRGB(235,235,235),
	SubText = Color3.fromRGB(185,185,185)
}

-- ===== Build GUI =====
local screenGui = create("ScreenGui", {Parent = player:WaitForChild("PlayerGui"), ResetOnSpawn = false})
screenGui.Name = "MaruFluentUI"

-- Main window
local Main = create("Frame", {
	Parent = screenGui,
	Name = "MainWindow",
	Size = UDim2.new(0, 820, 0, 520),
	Position = UDim2.new(0.5, -410, 0.5, -260),
	BackgroundColor3 = Theme.Background,
	BorderSizePixel = 0,
	ClipsDescendants = true,
	Active = true
})
create("UICorner", {Parent = Main, CornerRadius = UDim.new(0, 16)})

-- Outer soft shadow (image slice)
local Shadow = create("ImageLabel", {
	Parent = Main,
	Size = UDim2.new(1, 48, 1, 48),
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
local TitleBar = create("Frame", {
	Parent = Main,
	Size = UDim2.new(1, 0, 0, 42),
	BackgroundColor3 = Theme.Titlebar,
	BorderSizePixel = 0
})
create("UICorner", {Parent = TitleBar, CornerRadius = UDim.new(0, 16)})

local TitleLabel = create("TextLabel", {
	Parent = TitleBar,
	Size = UDim2.new(1, -160, 1, 0),
	Position = UDim2.new(0, 16, 0, 0),
	BackgroundTransparency = 1,
	Text = "Maru Hub Premium  |  [ Blox Fruits ]",
	Font = Enum.Font.GothamBold,
	TextSize = 15,
	TextColor3 = Theme.Text,
	TextXAlignment = Enum.TextXAlignment.Left
})

-- Control buttons (minimize, maximize, close)
local btnContainer = create("Frame", {Parent = TitleBar, Size = UDim2.new(0, 140, 1, 0), Position = UDim2.new(1, -148, 0, 0), BackgroundTransparency = 1})
local minBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 38, 0, 32), Position = UDim2.new(1, -140, 0.5, -16), BackgroundTransparency = 1, Text = "—", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Theme.SubText})
local maxBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 38, 0, 32), Position = UDim2.new(1, -96, 0.5, -16), BackgroundTransparency = 1, Text = "◻", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = Theme.SubText})
local closeBtn = create("TextButton", {Parent = btnContainer, Size = UDim2.new(0, 38, 0, 32), Position = UDim2.new(1, -48, 0.5, -16), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Color3.fromRGB(255,100,100)})

-- Sidebar (left)
local Sidebar = create("Frame", {
	Parent = Main,
	Size = UDim2.new(0, 200, 1, -42),
	Position = UDim2.new(0, 0, 0, 42),
	BackgroundColor3 = Theme.Sidebar,
	BorderSizePixel = 0
})
create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 12)})

local sideLayout = create("UIListLayout", {Parent = Sidebar})
sideLayout.Padding = UDim.new(0, 12)
sideLayout.SortOrder = Enum.SortOrder.LayoutOrder
sideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

-- Logo block
local logoFrame = create("Frame", {Parent = Sidebar, Size = UDim2.new(1, -24, 0, 92), Position = UDim2.new(0, 12, 0, 14), BackgroundTransparency = 1})
local logoImage = create("ImageLabel", {Parent = logoFrame, Size = UDim2.new(0, 72, 0, 72), Position = UDim2.new(0, 0, 0, 10), BackgroundTransparency = 1, Image = "rbxassetid://0"})
-- you can set logoImage.Image to your asset id
local logoTitle = create("TextLabel", {Parent = logoFrame, Size = UDim2.new(1, -80, 1, 0), Position = UDim2.new(0, 86, 0, 18), BackgroundTransparency = 1, Text = "Maru", Font = Enum.Font.GothamBold, TextSize = 20, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})

-- function to create sidebar entry
local function makeSidebarEntry(iconText, labelText)
	local btn = create("TextButton", {
		Parent = Sidebar,
		Size = UDim2.new(1, -24, 0, 44),
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Font = Enum.Font.Gotham,
		TextSize = 15,
		Text = iconText .. "   " .. labelText,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Theme.Text
	})
	create("UICorner", {Parent = btn, CornerRadius = UDim.new(0, 10)})
	-- left indicator
	local indicator = create("Frame", {Parent = btn, Size = UDim2.new(0,4,1,0), Position = UDim2.new(0,0,0,0), BackgroundColor3 = Color3.fromRGB(0,0,0)})
	indicator.Visible = false
	return btn, indicator
end

-- build sidebar entries
local tabs = {}
local tabOrder = {
	{"📊", "Status"},
	{"⚙️", "Farm Settings"},
	{"🏠", "Main"},
	{"🤖", "Multi Farm"},
	{"🗺️", "Quests"},
	{"🎒", "Items"},
	{"🧬", "Race"},
	{"🌊", "Sea Event"}
}

for i, v in ipairs(tabOrder) do
	local btn, indicator = makeSidebarEntry(v[1], v[2])
	tabs[v[2]] = {Button = btn, Indicator = indicator}
end

-- Content container (right)
local Content = create("Frame", {
	Parent = Main,
	Size = UDim2.new(1, -220, 1, -72),
	Position = UDim2.new(0, 220, 0, 52),
	BackgroundTransparency = 1
})
create("UICorner", {Parent = Content, CornerRadius = UDim.new(0, 10)})

-- pages container
local Pages = {}

local function createPage(name)
	local page = create("ScrollingFrame", {
		Parent = Content,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0,0,0,0),
		BackgroundTransparency = 1,
		ScrollBarThickness = 8,
		Visible = false
	})
	create("UIListLayout", {Parent = page, Padding = UDim.new(0, 14), SortOrder = Enum.SortOrder.LayoutOrder})
	page.CanvasSize = UDim2.new(0,0,0,0)
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

-- Section creator
local function AddSection(page, sectionTitle)
	local secFrame = create("Frame", {Parent = page, Size = UDim2.new(1, -12, 0, 40), BackgroundTransparency = 1})
	local secLabel = create("TextLabel", {Parent = secFrame, Size = UDim2.new(1,0,0,20), Position = UDim2.new(0,0,0,0), BackgroundTransparency = 1, Text = sectionTitle, Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	-- spacer to push following cards
	local spacer = create("Frame", {Parent = page, Size = UDim2.new(1, -12, 0, 8), BackgroundTransparency = 1})
	return secFrame
end

-- Card / item row with toggle
local function AddToggleRow(page, title, subtitle, default)
	local card = create("Frame", {Parent = page, Size = UDim2.new(1, -12, 0, 60), BackgroundColor3 = Theme.Card, BorderSizePixel = 0})
	create("UICorner", {Parent = card, CornerRadius = UDim.new(0, 8)})
	-- title
	local t = create("TextLabel", {Parent = card, Size = UDim2.new(1, -110, 0, 22), Position = UDim2.new(0, 12, 0, 8), BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
	-- subtitle
	local s = create("TextLabel", {Parent = card, Size = UDim2.new(1, -110, 0, 18), Position = UDim2.new(0, 12, 0, 30), BackgroundTransparency = 1, Text = subtitle or "", Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.SubText, TextXAlignment = Enum.TextXAlignment.Left})
	-- right toggle switch
	local toggleBG = create("Frame", {Parent = card, Size = UDim2.new(0, 54, 0, 28), Position = UDim2.new(1, -74, 0.5, -14), BackgroundColor3 = Theme.Sidebar})
	create("UICorner", {Parent = toggleBG, CornerRadius = UDim.new(1,0)})
	local knob = create("Frame", {Parent = toggleBG, Size = UDim2.new(0, 24, 0, 24), Position = UDim2.new(0, 4, 0, 2), BackgroundColor3 = Color3.fromRGB(245,245,245)})
	create("UICorner", {Parent = knob, CornerRadius = UDim.new(1,0)})
	-- initial state
	local state = default and true or false
	if state then
		knob.Position = UDim2.new(1, -28, 0, 2)
		toggleBG.BackgroundColor3 = Theme.Accent
	else
		toggleBG.BackgroundColor3 = Theme.Sidebar
	end
	-- interaction
	toggleBG.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			state = not state
			if state then
				tween(knob, {Position = UDim2.new(1, -28, 0, 2)}, 0.18)
				tween(toggleBG, {BackgroundColor3 = Theme.Accent}, 0.18)
			else
				tween(knob, {Position = UDim2.new(0, 4, 0, 2)}, 0.18)
				tween(toggleBG, {BackgroundColor3 = Theme.Sidebar}, 0.18)
			end
		end
	end)
	return {Card = card, GetState = function() return state end, SetState = function(v)
		state = not not v
		if state then
			knob.Position = UDim2.new(1, -28, 0, 2)
			toggleBG.BackgroundColor3 = Theme.Accent
		else
			knob.Position = UDim2.new(0, 4, 0, 2)
			toggleBG.BackgroundColor3 = Theme.Sidebar
		end
	end}
end

-- Build pages & fill with sample sections/items like your screenshot
local statusPage = createPage("Status")
AddSection(statusPage, "Status")
AddToggleRow(statusPage, "Server Time", "13 Minute(s), 24 Second(s)", false)
AddToggleRow(statusPage, "Elite Progress", "Elite Progress: 132", false)

local farmPage = createPage("Farm Settings")
AddSection(farmPage, "Main")
AddToggleRow(farmPage, "Auto Farm Level", "Tự động farm level", false)
AddSection(farmPage, "World Quest")
AddToggleRow(farmPage, "Auto Dressrosa Quest", "เควสโลก 2", false)
AddToggleRow(farmPage, "Auto Zou Quest", "เควสโลก 3", false)
AddSection(farmPage, "Events")
AddToggleRow(farmPage, "Auto Farm Oni Token", "ฟาร์มกิจกรรม Oni", false)
AddToggleRow(farmPage, "Auto Kill Red Commander", "ฆ่าบอสแดง", false)

local mainPage = createPage("Main")
AddSection(mainPage, "Main")
AddToggleRow(mainPage, "Auto Farm Level", "Auto farm level here", false)
AddSection(mainPage, "Word Quest")
AddToggleRow(mainPage, "Auto Dressrosa Quest", "เควสโลก 2", false)
AddToggleRow(mainPage, "Auto Zou Quest", "เควสโลก 3", false)
AddSection(mainPage, "Events")
AddToggleRow(mainPage, "Auto Farm Oni Token", "ฟาร์มกิจกรรม Oni", false)
AddToggleRow(mainPage, "Auto Kill Red Commander", "ฆ่าบอสแดง", false)

local multiPage = createPage("Multi Farm")
AddSection(multiPage, "Multi Farm")
AddToggleRow(multiPage, "Enable Multi", "Farm multiple targets", false)

local questsPage = createPage("Quests")
AddSection(questsPage, "Quests")
AddToggleRow(questsPage, "Auto Quest", "Auto accept & finish quests", false)

local itemsPage = createPage("Items")
AddSection(itemsPage, "Items")
AddToggleRow(itemsPage, "Auto Sell", "Auto sell items", false)

local racePage = createPage("Race")
AddSection(racePage, "Race")
AddToggleRow(racePage, "Auto Race", "Auto actions for race", false)

local seaPage = createPage("Sea Event")
AddSection(seaPage, "Sea Event")
AddToggleRow(seaPage, "Auto Sea Event", "Auto sea event stuff", false)

-- Connect sidebar buttons to pages with tween animation
local function selectTab(name)
	-- hide all pages & reset sidebar indicators
	for k, p in pairs(Pages) do p.Visible = false end
	for k, v in pairs(tabs) do
		v.Indicator.Visible = false
		v.Button.BackgroundTransparency = 1
	end
	-- show selected
	if Pages[name] then
		Pages[name].Visible = true
		-- find the matching sidebar entry
		local entry = tabs[name]
		if entry then
			entry.Indicator.Visible = true
			-- animate indicator color
			entry.Indicator.BackgroundColor3 = Theme.Accent
			-- visually highlight entire row background (soft)
			tween(entry.Button, {BackgroundColor3 = Theme.Sidebar}, 0.12) -- keep same bg
		end
		-- small entrance tween for content
		local pageFrame = Pages[name]
		pageFrame.ScrollToTop()
		pageFrame.CanvasPosition = Vector2.new(0, 0)
		pageFrame.Transparency = 1
		-- fade / slide effect
		pageFrame.Position = UDim2.new(0, 0, 0, 14)
		tween(pageFrame, {Position = UDim2.new(0, 0, 0, 0)}, 0.26)
	end
end

-- wire up sidebar buttons
for label, obj in pairs(tabs) do
	local name = label
	obj.Button.MouseButton1Click:Connect(function()
		selectTab(name)
	end)
	-- hover visual change
	obj.Button.MouseEnter:Connect(function()
		tween(obj.Button, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(44,44,44)}, 0.12)
	end)
	obj.Button.MouseLeave:Connect(function()
		tween(obj.Button, {BackgroundTransparency = 1, BackgroundColor3 = Theme.Sidebar}, 0.12)
	end)
end

-- default select "Main" (if exists) or first available
if Pages["Main"] then selectTab("Main") else
	for k,_ in pairs(Pages) do selectTab(k) break end
end

-- Draggable Titlebar (smooth)
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

-- Resize handle bottom-right (simple)
local ResizeHandle = create("Frame", {Parent = Main, Size = UDim2.new(0, 18, 0, 18), Position = UDim2.new(1, -22, 1, -22), BackgroundColor3 = Theme.Accent, BorderSizePixel = 0, Active = true})
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
			local w = math.max(480, startSize.X + delta.X)
			local h = math.max(300, startSize.Y + delta.Y)
			Main.Size = UDim2.new(0, w, 0, h)
		end
	end)
end

-- Maximize/minimize/close behavior
local isMax = false
local prev = {Pos = Main.Position, Size = Main.Size}
maxBtn.MouseButton1Click:Connect(function()
	if not isMax then
		prev.Pos = Main.Position
		prev.Size = Main.Size
		tween(Main, {Position = UDim2.new(0, 16, 0, 16), Size = UDim2.new(1, -32, 1, -32)}, 0.28)
	else
		tween(Main, {Position = prev.Pos, Size = prev.Size}, 0.28)
	end
	isMax = not isMax
end)

minBtn.MouseButton1Click:Connect(function()
	tween(Main, {Size = UDim2.new(Main.Size.X.Scale, Main.Size.X.Offset, 0, 52)}, 0.22)
	task.delay(0.22, function() -- toggle restore after another click
		-- naive restore on second click (you can implement toggle state)
	end)
end)

closeBtn.MouseButton1Click:Connect(function()
	tween(Main, {BackgroundTransparency = 1, Size = UDim2.new(0,0,0,0)}, 0.25)
	task.delay(0.25, function() screenGui:Destroy() end)
end)

-- Optional: Theme presets buttons (under settings page)
-- Add a small presets block in Settings tab if exists
if Pages["Farm Settings"] then
	local page = Pages["Farm Settings"]
	local presetFrame = create("Frame", {Parent = page, Size = UDim2.new(1,-24,0,42), BackgroundTransparency = 1})
	local btn1 = create("TextButton", {Parent = presetFrame, Size = UDim2.new(0,140,0,34), Position = UDim2.new(0,0,0,0), BackgroundColor3 = Theme.Accent, Text = "Preset: Blue", Font = Enum.Font.GothamBold, TextColor3 = Color3.fromRGB(255,255,255)})
	create("UICorner", {Parent = btn1, CornerRadius = UDim.new(0,8)})
	btn1.MouseButton1Click:Connect(function()
		Theme.Accent = Color3.fromRGB(0,132,255)
		ResizeHandle.BackgroundColor3 = Theme.Accent
		-- recolor toggles etc (simple approach: recreate or iterate)
	end)
end

-- final: nice entrance
Main.Scale = 1
Main.Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset, Main.Position.Y.Scale, Main.Position.Y.Offset + 8)
tween(Main, {Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset, Main.Position.Y.Scale, Main.Position.Y.Offset - 8)}, 0.28)

-- End of script
