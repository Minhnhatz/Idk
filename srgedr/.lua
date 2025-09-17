-- FluentWindUI Full + Demo
-- Paste vào LocalScript (StarterPlayerScripts hoặc StarterGui)
-- Tác giả: ChatGPT (tinh chỉnh cho bạn)

-- ====== Dependencies/Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- ====== Helper: create instance, tween, clamp
local function create(class, props)
	local inst = Instance.new(class)
	if props then
		for k,v in pairs(props) do
			-- special-case Parent or AnchorPoint which are userdata
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

local function doTween(obj, props, time, style, dir)
	return TweenService:Create(obj, TweenInfo.new(time or 0.22, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out), props)
end

local function clamp(n, a, b) return math.max(a, math.min(b, n)) end

-- ====== FluentWindUI Module (inline)
local FluentWindUI = {}
FluentWindUI.__index = FluentWindUI

local defaultTheme = {
	Primary = Color3.fromRGB(0, 132, 255),
	Accent  = Color3.fromRGB(255, 170, 0),
	Background = Color3.fromRGB(25,25,25),
	Secondary  = Color3.fromRGB(40,40,40),
	Text = Color3.fromRGB(240,240,240)
}

function FluentWindUI:CreateWindow(opts)
	opts = opts or {}
	local Title = opts.Title or "FluentWindUI"
	local Size  = opts.Size or UDim2.new(0, 700, 0, 460)
	local MinSize = opts.MinSize or Vector2.new(360,240)
	local Theme = opts.Theme or defaultTheme

	-- ScreenGui
	local screenGui = create("ScreenGui", {Parent = player:WaitForChild("PlayerGui"), ResetOnSpawn = false, IgnoreGuiInset = true})
	screenGui.Name = opts.GuiName or "FluentWindUI_Screen"

	-- Main frame
	local Main = create("Frame", {
		Parent = screenGui,
		Size = Size,
		Position = UDim2.new(0.5, -Size.X.Offset/2, 0.5, -Size.Y.Offset/2),
		BackgroundColor3 = Theme.Background,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Active = true
	})
	create("UICorner", {Parent = Main, CornerRadius = UDim.new(0, 18)})

	-- Shadow (soft)
	local shadow = create("ImageLabel", {
		Parent = Main,
		Size = UDim2.new(1,40,1,40),
		Position = UDim2.new(0.5,0,0.5,0),
		AnchorPoint = Vector2.new(0.5,0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://5028857084",
		ImageTransparency = 0.6,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(24,24,276,276),
		ZIndex = 0
	})

	-- Header
	local Header = create("Frame", {Parent = Main, Size = UDim2.new(1,0,0,46), BackgroundColor3 = Theme.Secondary, BorderSizePixel = 0})
	create("UICorner", {Parent = Header, CornerRadius = UDim.new(0,18)})
	local TitleLabel = create("TextLabel", {
		Parent = Header,
		Size = UDim2.new(1, -160, 1, 0),
		Position = UDim2.new(0, 18, 0, 0),
		BackgroundTransparency = 1,
		Text = "  " .. Title,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = Enum.Font.GothamBold,
		TextSize = 18,
		TextColor3 = Theme.Text
	})

	-- Control buttons
	local btnClose = create("TextButton", {Parent = Header, Size = UDim2.new(0, 34, 0, 30), Position = UDim2.new(1, -48, 0.5, -15), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Color3.fromRGB(255,80,80)})
	local btnMax = create("TextButton", {Parent = Header, Size = UDim2.new(0, 34, 0, 30), Position = UDim2.new(1, -92, 0.5, -15), BackgroundTransparency = 1, Text = "⬜", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Theme.Text})
	local btnMin = create("TextButton", {Parent = Header, Size = UDim2.new(0, 34, 0, 30), Position = UDim2.new(1, -136, 0.5, -15), BackgroundTransparency = 1, Text = "—", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Theme.Text})

	-- Sidebar & Content
	local Sidebar = create("Frame", {Parent = Main, Size = UDim2.new(0, 156, 1, -70), Position = UDim2.new(0, 12, 0, 62), BackgroundTransparency = 1})
	create("UIListLayout", {Parent = Sidebar, Padding = UDim.new(0,10), SortOrder = Enum.SortOrder.LayoutOrder})

	local Content = create("Frame", {Parent = Main, Size = UDim2.new(1, -196, 1, -70), Position = UDim2.new(0, 176, 0, 62), BackgroundTransparency = 1})
	local Pages = {}

	-- Resize handle
	local Resizer = create("Frame", {Parent = Main, Size = UDim2.new(0, 18, 0, 18), Position = UDim2.new(1, -20, 1, -20), BackgroundColor3 = Theme.Primary, BorderSizePixel = 0, Active = true})
	create("UICorner", {Parent = Resizer, CornerRadius = UDim.new(0,4)})
	Resizer.Name = "ResizerHandle"

	-- apply theme function (live)
	local function applyTheme(t)
		if not t then return end
		Theme = t
		Main.BackgroundColor3 = t.Background
		Header.BackgroundColor3 = t.Secondary
		TitleLabel.TextColor3 = t.Text
		Resizer.BackgroundColor3 = t.Primary
		-- recolor Buttons in Sidebar
		for _, child in ipairs(Sidebar:GetChildren()) do
			if child:IsA("TextButton") then
				child.TextColor3 = t.Text
			end
		end
		-- recolor active page buttons
		for _, p in ipairs(Pages) do
			if p.Frame.Visible then
				p.Button.BackgroundColor3 = t.Primary
			else
				p.Button.BackgroundColor3 = t.Secondary
			end
		end
	end

	-- dragging
	local dragging, dragStart, startPos
	Header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
		end
	end)
	Header.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)

	-- resize
	local resizing, resizeStart, startSize
	Resizer.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			resizing = true
			resizeStart = input.Position
			startSize = Main.AbsoluteSize
		end
	end)
	Resizer.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then resizing = false end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - resizeStart
			local newW = math.max(MinSize.X, startSize.X + delta.X)
			local newH = math.max(MinSize.Y, startSize.Y + delta.Y)
			Main.Size = UDim2.new(0, newW, 0, newH)
		end
	end)

	-- maximize/restore
	local maximized = false
	local prevPos, prevSize
	btnMax.MouseButton1Click:Connect(function()
		if not maximized then
			prevPos = Main.Position
			prevSize = Main.Size
			doTween(Main, {Position = UDim2.new(0, 12, 0, 12), Size = UDim2.new(1, -24, 1, -24)}, 0.28):Play()
		else
			doTween(Main, {Position = prevPos, Size = prevSize}, 0.28):Play()
		end
		maximized = not maximized
	end)

	-- minimize
	local minimized = false
	btnMin.MouseButton1Click:Connect(function()
		if not minimized then
			doTween(Main, {Size = UDim2.new(Main.Size.X.Scale, Main.Size.X.Offset, 0, 54)}, 0.22):Play()
		else
			doTween(Main, {Size = Size}, 0.22):Play()
		end
		minimized = not minimized
	end)

	-- close
	btnClose.MouseButton1Click:Connect(function()
		doTween(Main, {Size = UDim2.new(0,0,0,0), BackgroundTransparency = 1}, 0.25):Play()
		task.delay(0.26, function() screenGui:Destroy() end)
	end)

	-- Window object (API)
	local Window = {}
	Window.ScreenGui = screenGui
	Window.Main = Main
	Window.Header = Header
	Window.Sidebar = Sidebar
	Window.Content = Content
	Window.Pages = Pages
	Window.Theme = Theme
	Window.ApplyTheme = applyTheme

	-- CreateTab method
	function Window:CreateTab(name, icon)
		icon = icon or ""
		local btn = create("TextButton", {
			Parent = Sidebar,
			Size = UDim2.new(1, -12, 0, 44),
			BackgroundColor3 = Theme.Secondary,
			AutoButtonColor = false,
			Text = (icon .. "   " .. name),
			TextColor3 = Theme.Text,
			Font = Enum.Font.GothamBold,
			TextSize = 15
		})
		create("UICorner", {Parent = btn, CornerRadius = UDim.new(0,10)})
		-- page
		local page = create("ScrollingFrame", {Parent = Content, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, ScrollBarThickness = 6, Visible = (#Pages==0)})
		create("UIListLayout", {Parent = page, Padding = UDim.new(0,12), SortOrder = Enum.SortOrder.LayoutOrder})
		page.CanvasSize = UDim2.new(0,0,0,0)
		page.ChildAdded:Connect(function()
			task.wait(0.03)
			local layout = page:FindFirstChildOfClass("UIListLayout")
			if layout then
				page.CanvasSize = UDim2.new(0,0,0, layout.AbsoluteContentSize.Y + 16)
			end
		end)
		-- hover/select
		btn.MouseEnter:Connect(function() doTween(btn, {BackgroundColor3 = Theme.Primary}, 0.12):Play() end)
		btn.MouseLeave:Connect(function()
			if page.Visible then return end
			doTween(btn, {BackgroundColor3 = Theme.Secondary}, 0.12):Play()
		end)
		btn.MouseButton1Click:Connect(function()
			for _,p in ipairs(Pages) do
				p.Frame.Visible = false
				p.Button.BackgroundColor3 = Theme.Secondary
			end
			page.Visible = true
			btn.BackgroundColor3 = Theme.Primary
		end)

		local tabObj = {Name = name, Button = btn, Frame = page, Elements = {}}
		table.insert(Pages, tabObj)

		-- Methods for controls within tab
		function tabObj:AddLabel(text)
			local lbl = create("TextLabel", {Parent = page, Size = UDim2.new(1,-20,0,24), BackgroundTransparency = 1, Text = text, Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			return lbl
		end

		function tabObj:AddButton(text, callback)
			local b = create("TextButton", {Parent = page, Size = UDim2.new(0, 300, 0, 44), BackgroundColor3 = Theme.Primary, Text = text, Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = Color3.fromRGB(255,255,255)})
			create("UICorner", {Parent = b, CornerRadius = UDim.new(0,10)})
			-- hover
			b.MouseEnter:Connect(function() doTween(b, {Size = UDim2.new(0, 308, 0, 48)}, 0.12):Play() end)
			b.MouseLeave:Connect(function() doTween(b, {Size = UDim2.new(0, 300, 0, 44)}, 0.12):Play() end)
			b.MouseButton1Click:Connect(function()
				if callback then pcall(callback) end
				doTween(b, {Size = UDim2.new(0, 292, 0, 40)}, 0.06):Play()
				task.delay(0.06, function() doTween(b, {Size = UDim2.new(0, 300, 0, 44)}, 0.08):Play() end)
			end)
			return b
		end

		function tabObj:AddToggle(text, default, callback)
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 360, 0, 44), BackgroundTransparency = 1})
			local label = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -80, 1, 0), BackgroundTransparency = 1, Text = text, Font = Enum.Font.Gotham, TextSize = 15, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local box = create("Frame", {Parent = frame, Size = UDim2.new(0, 56, 0, 32), Position = UDim2.new(1, -64, 0.5, -16), BackgroundColor3 = Theme.Secondary})
			create("UICorner", {Parent = box, CornerRadius = UDim.new(1,0)})
			local thumb = create("Frame", {Parent = box, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(0, 4, 0, 2), BackgroundColor3 = Color3.fromRGB(245,245,245)})
			create("UICorner", {Parent = thumb, CornerRadius = UDim.new(1,0)})
			local state = default or false
			if state then
				thumb.Position = UDim2.new(1, -32, 0, 2)
				box.BackgroundColor3 = Theme.Primary
			end
			box.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					state = not state
					if state then
						doTween(thumb, {Position = UDim2.new(1, -32, 0, 2)}, 0.16):Play()
						doTween(box, {BackgroundColor3 = Theme.Primary}, 0.16):Play()
					else
						doTween(thumb, {Position = UDim2.new(0, 4, 0, 2)}, 0.16):Play()
						doTween(box, {BackgroundColor3 = Theme.Secondary}, 0.16):Play()
					end
					if callback then pcall(callback, state) end
				end
			end)
			return {Frame = frame, Get = function() return state end}
		end

		function tabObj:AddSlider(text, min, max, default, callback)
			min = min or 0; max = max or 100; default = default or min
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 420, 0, 56), BackgroundTransparency = 1})
			local label = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -12, 0, 18), BackgroundTransparency = 1, Text = text .. " : " .. tostring(default), Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local bar = create("Frame", {Parent = frame, Size = UDim2.new(1, -12, 0, 10), Position = UDim2.new(0, 6, 0, 30), BackgroundColor3 = Theme.Secondary})
			create("UICorner", {Parent = bar, CornerRadius = UDim.new(0,6)})
			local fill = create("Frame", {Parent = bar, Size = UDim2.new((default-min)/(max-min), 0, 1, 0), BackgroundColor3 = Theme.Primary})
			create("UICorner", {Parent = fill, CornerRadius = UDim.new(0,6)})
			local dragging = false
			bar.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end end)
			bar.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
			UserInputService.InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					local rel = clamp((input.Position.X - bar.AbsolutePosition.X)/bar.AbsoluteSize.X, 0, 1)
					fill.Size = UDim2.new(rel,0,1,0)
					local val = math.floor(min + (max-min)*rel)
					label.Text = text .. " : " .. tostring(val)
					if callback then pcall(callback, val) end
				end
			end)
			return {Frame = frame, Get = function() return min + (max-min)*fill.Size.X.Scale end}
		end

		function tabObj:AddDropdown(text, items, callback)
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 360, 0, 36), BackgroundTransparency = 1})
			local label = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -36, 1, 0), BackgroundTransparency = 1, Text = text, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local btn = create("TextButton", {Parent = frame, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(1, -34, 0.5, -14), Text = "⌄", BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextColor3 = Theme.Text})
			local list = create("Frame", {Parent = page, Size = UDim2.new(0, 360, 0, 0), Position = UDim2.new(0, 20, 0, 0), BackgroundColor3 = Theme.Secondary, Visible = false})
			create("UICorner", {Parent = list, CornerRadius = UDim.new(0,8)})
			create("UIListLayout", {Parent = list, Padding = UDim.new(0,6), SortOrder = Enum.SortOrder.LayoutOrder})
			for _,v in ipairs(items or {}) do
				local it = create("TextButton", {Parent = list, Size = UDim2.new(1, -12, 0, 32), BackgroundColor3 = Theme.Secondary, Text = v, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text, AutoButtonColor = false})
				create("UICorner", {Parent = it, CornerRadius = UDim.new(0,6)})
				it.MouseEnter:Connect(function() doTween(it, {BackgroundColor3 = Theme.Primary}, 0.12):Play() end)
				it.MouseLeave:Connect(function() doTween(it, {BackgroundColor3 = Theme.Secondary}, 0.12):Play() end)
				it.MouseButton1Click:Connect(function()
					label.Text = text .. " : " .. v
					if callback then pcall(callback, v) end
					doTween(list, {Size = UDim2.new(0,360,0,0)}, 0.16):Play()
					task.delay(0.16, function() list.Visible = false end)
				end)
			end
			btn.MouseButton1Click:Connect(function()
				if not list.Visible then
					list.Visible = true
					local count = 0
					for _,c in ipairs(list:GetChildren()) do if c:IsA("TextButton") then count = count + 1 end end
					doTween(list, {Size = UDim2.new(0,360,0, count*38 + 8)}, 0.18):Play()
				else
					doTween(list, {Size = UDim2.new(0,360,0,0)}, 0.16):Play()
					task.delay(0.16, function() list.Visible = false end)
				end
			end)
			return {Frame = frame}
		end

		function tabObj:AddTextbox(placeholder, callback)
			local box = create("TextBox", {Parent = page, Size = UDim2.new(0, 420, 0, 36), BackgroundColor3 = Theme.Secondary, Text = "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = Theme.Text})
			create("UICorner", {Parent = box, CornerRadius = UDim.new(0,8)})
			box.FocusLost:Connect(function(enter)
				if enter and callback then pcall(callback, box.Text) end
			end)
			return box
		end

		function tabObj:AddSpacer(px)
			local s = create("Frame", {Parent = page, Size = UDim2.new(1,0,0, px or 8), BackgroundTransparency = 1})
			return s
		end

		function tabObj:AddCustom(inst)
			inst.Parent = page
			return inst
		end

		-- if it's first tab, mark selected
		if #Pages == 1 then
			btn.BackgroundColor3 = Theme.Primary
		end

		return tabObj
	end

	-- Theme editor (modal)
	function Window:OpenThemeEditor()
		local modal = create("Frame", {Parent = Main, Size = UDim2.new(0, 380, 0, 220), Position = UDim2.new(0.5, -190, 0.5, -110), BackgroundColor3 = Theme.Secondary, ZIndex = 50})
		create("UICorner", {Parent = modal, CornerRadius = UDim.new(0,10)})
		create("TextLabel", {Parent = modal, Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1, Text = "🎨 Theme Editor", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = Theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0,12,0,0)})
		-- sliders
		local function newSlider(name, y, default)
			local lbl = create("TextLabel", {Parent = modal, Size = UDim2.new(0, 52, 0, 18), Position = UDim2.new(0, 12, 0, y), BackgroundTransparency = 1, Text = name, Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.Text})
			local bar = create("Frame", {Parent = modal, Size = UDim2.new(0, 216, 0, 10), Position = UDim2.new(0, 74, 0, y+4), BackgroundColor3 = Theme.Background})
			create("UICorner", {Parent = bar, CornerRadius = UDim.new(0,6)})
			local fill = create("Frame", {Parent = bar, Size = UDim2.new(default/255, 0, 1, 0), BackgroundColor3 = Theme.Primary})
			create("UICorner", {Parent = fill, CornerRadius = UDim.new(0,6)})
			local numBox = create("TextBox", {Parent = modal, Size = UDim2.new(0, 46, 0, 18), Position = UDim2.new(0, 298, 0, y), BackgroundColor3 = Theme.Secondary, Text = tostring(default), Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.Text})
			create("UICorner", {Parent = numBox, CornerRadius = UDim.new(0,6)})
			local dragging = false
			bar.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging = true end end)
			bar.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging = false end end)
			UserInputService.InputChanged:Connect(function(i)
				if dragging and i.UserInputType==Enum.UserInputType.MouseMovement then
					local rel = clamp((i.Position.X - bar.AbsolutePosition.X)/bar.AbsoluteSize.X, 0, 1)
					fill.Size = UDim2.new(rel,0,1,0)
					numBox.Text = tostring(math.floor(rel*255))
				end
			end)
			return {Label=lbl, Bar=bar, Fill=fill, Num=numBox}
		end
		local sliders = {}
		sliders.R = newSlider("R", 44, math.floor(Theme.Primary.R*255))
		sliders.G = newSlider("G", 78, math.floor(Theme.Primary.G*255))
		sliders.B = newSlider("B", 112, math.floor(Theme.Primary.B*255))
		local applyBtn = create("TextButton", {Parent = modal, Size = UDim2.new(0, 110, 0, 34), Position = UDim2.new(1, -126, 1, -42), BackgroundColor3 = Theme.Primary, Text = "Apply", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.fromRGB(255,255,255)})
		create("UICorner", {Parent = applyBtn, CornerRadius = UDim.new(0,6)})
		applyBtn.MouseButton1Click:Connect(function()
			local r = tonumber(sliders.R.Num.Text) or math.floor(Theme.Primary.R*255)
			local g = tonumber(sliders.G.Num.Text) or math.floor(Theme.Primary.G*255)
			local b = tonumber(sliders.B.Num.Text) or math.floor(Theme.Primary.B*255)
			Theme.Primary = Color3.fromRGB(clamp(math.floor(r),0,255), clamp(math.floor(g),0,255), clamp(math.floor(b),0,255))
			Window.ApplyTheme(Theme)
			modal:Destroy()
		end)
		local closeX = create("TextButton", {Parent = modal, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(1, -36, 0, 6), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = Theme.Text})
		closeX.MouseButton1Click:Connect(function() modal:Destroy() end)
		return modal
	end

	return Window
end

-- ====== EXPORT (use by require or inline)
-- We'll build a demo window immediately for convenience.
local UI = FluentWindUI

local win = UI:CreateWindow({Title = "⚡ FluentWindUI - Full Demo", Size = UDim2.new(0, 840, 0, 560)})
-- Create tabs and populate controls
local tabMain = win:CreateTab("Main", "⚡")
tabMain:AddLabel("Welcome! Đây là demo FluentWindUI (full).")
tabMain:AddSpacer(6)
tabMain:AddButton("Nút test", function() warn("Bạn vừa bấm nút test!") end)
tabMain:AddSpacer(6)
local tog = tabMain:AddToggle("Bật Auto", false, function(v) warn("Toggle:", v) end)
tabMain:AddSpacer(6)
tabMain:AddSlider("Âm lượng", 0, 100, 30, function(v) warn("Volume:", v) end)
tabMain:AddSpacer(8)
tabMain:AddTextbox("Nhập tên...", function(txt) warn("Textbox:", txt) end)
tabMain:AddSpacer(6)
tabMain:AddDropdown("Chọn món", {"Táo","Chuối","Cam"}, function(v) warn("Chọn:", v) end)

local tabSettings = win:CreateTab("Settings", "⚙️")
tabSettings:AddLabel("Tùy chỉnh theme")
tabSettings:AddSpacer(6)
tabSettings:AddButton("Mở Theme Editor", function() win:OpenThemeEditor() end)
tabSettings:AddSpacer(6)
tabSettings:AddButton("Preset: Purple", function()
	win.ApplyTheme({Primary = Color3.fromRGB(150, 90, 255), Accent = Color3.fromRGB(255,170,0), Background = Color3.fromRGB(20,20,28), Secondary = Color3.fromRGB(38,38,48), Text = Color3.fromRGB(240,240,255)})
end)
tabSettings:AddButton("Preset: Sunset", function()
	win.ApplyTheme({Primary = Color3.fromRGB(255, 94, 77), Accent = Color3.fromRGB(255,170,0), Background = Color3.fromRGB(28,20,18), Secondary = Color3.fromRGB(44,34,30), Text = Color3.fromRGB(245,235,230)})
end)

-- Default first tab active already (CreateWindow showed first)
-- If you want to persist theme across sessions, implement DataStore or use Player:FindFirstChild("PlayerGui") saving.

-- End of script.
