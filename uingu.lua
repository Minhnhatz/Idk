-- FluentWindUI Pro - Full LocalScript
-- Paste into StarterPlayerScripts or StarterGui (LocalScript)
-- All-in-one: module + demo

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- Helpers
local function create(class, props)
	local inst = Instance.new(class)
	if props then
		for k,v in pairs(props) do
			-- special handling for Parent and AnchorPoint
			if k == "Parent" then inst.Parent = v
			elseif k == "AnchorPoint" then inst.AnchorPoint = v
			else inst[k] = v end
		end
	end
	return inst
end

local function tweenPlay(obj, props, time, style, dir)
	local tween = TweenService:Create(obj, TweenInfo.new(time or 0.22, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out), props)
	tween:Play()
	return tween
end

local function clamp(n, a, b) return math.max(a, math.min(b, n)) end
local function lerpColor(a,b,t) return Color3.new(a.R + (b.R-a.R)*t, a.G + (b.G-a.G)*t, a.B + (b.B-a.B)*t) end

-- Default theme
local DefaultTheme = {
	Background = Color3.fromRGB(18,18,20),
	Secondary  = Color3.fromRGB(34,34,40),
	Primary    = Color3.fromRGB(0,132,255),
	Accent     = Color3.fromRGB(255,170,0),
	Text       = Color3.fromRGB(240,240,245)
}

-- Notify system (auto fade)
local function CreateNotify(guiParent, text, duration)
	duration = duration or 3
	local container = guiParent:FindFirstChild("FW_NotifyContainer") or create("Frame", {
		Name = "FW_NotifyContainer",
		Parent = guiParent,
		Size = UDim2.new(0, 340, 0, 200),
		Position = UDim2.new(1, -360, 1, -24),
		AnchorPoint = Vector2.new(0,1),
		BackgroundTransparency = 1,
		ZIndex = 999
	})
	container.Parent = guiParent

	local notif = create("Frame", {
		Parent = container,
		Size = UDim2.new(1,0,0,48),
		BackgroundColor3 = DefaultTheme.Secondary,
		BorderSizePixel = 0,
		ClipsDescendants = true
	})
	create("UICorner", {Parent = notif, CornerRadius = UDim.new(0,10)})
	local lbl = create("TextLabel", {
		Parent = notif,
		Size = UDim2.new(1,-20,1,0),
		Position = UDim2.new(0,10,0,0),
		BackgroundTransparency = 1,
		Text = text,
		TextWrapped = true,
		TextColor3 = DefaultTheme.Text,
		Font = Enum.Font.GothamSemibold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutoLocalize = false
	})
	notif.AnchorPoint = Vector2.new(0,0)

	-- appear
	notif.Position = UDim2.new(0, 0, 1, 60)
	tweenPlay(notif, {Position = UDim2.new(0, 0, 1, -52), BackgroundTransparency = 0}, 0.32)
	task.delay(duration, function()
		tweenPlay(notif, {Position = UDim2.new(0, 0, 1, 60), BackgroundTransparency = 1}, 0.28)
		task.delay(0.32, function() notif:Destroy() end)
	end)
	return notif
end

-- Main UI Framework (inline)
local FluentWindUI = {}
FluentWindUI.__index = FluentWindUI

function FluentWindUI:CreateWindow(opts)
	opts = opts or {}
	local title = opts.Title or "FluentWindUI Pro"
	local size = opts.Size or UDim2.new(0, 820, 0, 520)
	local minSize = opts.MinSize or Vector2.new(360,240)
	local theme = opts.Theme or DefaultTheme

	-- ScreenGui
	local screen = create("ScreenGui", {Parent = player:WaitForChild("PlayerGui"), ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
	screen.Name = "FluentWindUI_Pro"
	screen.IgnoreGuiInset = true

	-- Main window
	local main = create("Frame", {
		Parent = screen,
		Size = size,
		Position = UDim2.new(0.5, -size.X.Offset/2, 0.5, -size.Y.Offset/2),
		BackgroundColor3 = theme.Background,
		BorderSizePixel = 0,
		Active = true,
		ClipsDescendants = true
	})
	create("UICorner", {Parent = main, CornerRadius = UDim.new(0, 18)})

	-- Dual shadow layers to look Fluent-like
	local shadowOuter = create("ImageLabel", {
		Parent = main,
		Size = UDim2.new(1, 60, 1, 60),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5,0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://5028857084",
		ImageTransparency = 0.65,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(24,24,276,276),
		ZIndex = 0
	})
	local shadowInner = create("ImageLabel", {
		Parent = main,
		Size = UDim2.new(1, 20, 1, 20),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5,0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://1316045217", -- soft glass texture
		ImageTransparency = 0.9,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10,10,118,118),
		ZIndex = 1
	})

	-- Titlebar
	local header = create("Frame", {
		Parent = main,
		Size = UDim2.new(1, 0, 0, 52),
		BackgroundColor3 = theme.Secondary,
		BorderSizePixel = 0
	})
	create("UICorner", {Parent = header, CornerRadius = UDim.new(0, 18)})
	local titleLbl = create("TextLabel", {
		Parent = header,
		Size = UDim2.new(1, -220, 1, 0),
		Position = UDim2.new(0, 18, 0, 0),
		BackgroundTransparency = 1,
		Text = "  " .. title,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = Enum.Font.GothamBold,
		TextSize = 18,
		TextColor3 = theme.Text
	})

	-- Control buttons: theme icon, minimize, maximize, close
	local controlContainer = create("Frame", {Parent = header, Size = UDim2.new(0, 200, 1, 0), Position = UDim2.new(1, -220, 0, 0), BackgroundTransparency = 1})
	local btnTheme = create("TextButton", {Parent = controlContainer, Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 8, 0.5, -18), BackgroundTransparency = 1, Text = "🎨", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = theme.Text})
	local btnMin = create("TextButton", {Parent = controlContainer, Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 56, 0.5, -18), BackgroundTransparency = 1, Text = "—", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = theme.Text})
	local btnMax = create("TextButton", {Parent = controlContainer, Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 104, 0.5, -18), BackgroundTransparency = 1, Text = "⬜", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = theme.Text})
	local btnClose = create("TextButton", {Parent = controlContainer, Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 148, 0.5, -18), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 18, TextColor3 = Color3.fromRGB(255,80,80)})

	-- sidebar (left) for tabs
	local sidebar = create("Frame", {Parent = main, Size = UDim2.new(0, 180, 1, -84), Position = UDim2.new(0, 12, 0, 72), BackgroundTransparency = 1})
	create("UIListLayout", {Parent = sidebar, Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder})

	-- content area
	local content = create("Frame", {Parent = main, Size = UDim2.new(1, -216, 1, -84), Position = UDim2.new(0, 204, 0, 72), BackgroundTransparency = 1})
	content.ClipsDescendants = true

	-- resizer handle
	local resizer = create("Frame", {Parent = main, Size = UDim2.new(0, 18, 0, 18), Position = UDim2.new(1, -22, 1, -22), BackgroundColor3 = theme.Primary, Active = true})
	create("UICorner", {Parent = resizer, CornerRadius = UDim.new(0,4)})

	-- underline indicator (top) for tab buttons (optional)
	local underline = create("Frame", {Parent = header, Size = UDim2.new(0,0,0,4), Position = UDim2.new(0,0,1, -4), BackgroundColor3 = theme.Primary})
	create("UICorner", {Parent = underline, CornerRadius = UDim.new(0,2)})

	-- drag/resize logic
	local dragging, dragStart, startPos
	header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = main.Position
		end
	end)
	header.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)

	local resizing, resizeStart, startSize
	resizer.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			resizing = true
			resizeStart = input.Position
			startSize = main.AbsoluteSize
		end
	end)
	resizer.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then resizing = false end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - resizeStart
			local newW = math.max(minSize.X, startSize.X + delta.X)
			local newH = math.max(minSize.Y, startSize.Y + delta.Y)
			main.Size = UDim2.new(0, newW, 0, newH)
		end
	end)

	-- maximize / minimize / close behavior
	local maximized, prevPos, prevSize = false, nil, nil
	btnMax.MouseButton1Click:Connect(function()
		if not maximized then
			prevPos, prevSize = main.Position, main.Size
			tweenPlay(main, {Position = UDim2.new(0, 12, 0, 12), Size = UDim2.new(1, -24, 1, -24)}, 0.26)
		else
			tweenPlay(main, {Position = prevPos, Size = prevSize}, 0.26)
		end
		maximized = not maximized
	end)
	local minimized = false
	btnMin.MouseButton1Click:Connect(function()
		if not minimized then
			tweenPlay(main, {Size = UDim2.new(main.Size.X.Scale, main.Size.X.Offset, 0, 60)}, 0.22)
		else
			tweenPlay(main, {Size = size}, 0.22)
		end
		minimized = not minimized
	end)
	btnClose.MouseButton1Click:Connect(function()
		tweenPlay(main, {BackgroundTransparency = 1, Size = UDim2.new(0,0,0,0)}, 0.26)
		task.delay(0.28, function() screen:Destroy() end)
	end)

	-- Theme editor trigger
	btnTheme.MouseButton1Click:Connect(function()
		-- open inline theme editor
		local modal = create("Frame", {Parent = main, Size = UDim2.new(0, 380, 0, 220), Position = UDim2.new(0.5, -190, 0.5, -110), BackgroundColor3 = theme.Secondary, ZIndex = 120})
		create("UICorner", {Parent = modal, CornerRadius = UDim.new(0,8)})
		create("TextLabel", {Parent = modal, Size = UDim2.new(1,0,0,36), BackgroundTransparency = 1, Text = "🎨 Theme Editor", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0,12,0,0)})
		-- sliders for primary color
		local function makeSlider(labelText, y, default)
			create("TextLabel", {Parent = modal, Position = UDim2.new(0,12,0,y), Size = UDim2.new(0, 50, 0, 18), BackgroundTransparency = 1, Text = labelText, Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = theme.Text})
			local bar = create("Frame", {Parent = modal, Position = UDim2.new(0, 70, 0, y+4), Size = UDim2.new(0, 220, 0, 10), BackgroundColor3 = theme.Background})
			create("UICorner", {Parent = bar, CornerRadius = UDim.new(0, 6)})
			local fill = create("Frame", {Parent = bar, Size = UDim2.new(default/255,0,1,0), BackgroundColor3 = theme.Primary})
			create("UICorner", {Parent = fill, CornerRadius = UDim.new(0, 6)})
			local box = create("TextBox", {Parent = modal, Position = UDim2.new(0, 300, 0, y), Size = UDim2.new(0, 56, 0, 18), BackgroundColor3 = theme.Secondary, Text = tostring(default), Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = theme.Text})
			create("UICorner", {Parent = box, CornerRadius = UDim.new(0,6)})
			local draggingS = false
			bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingS = true end end)
			bar.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingS = false end end)
			UserInputService.InputChanged:Connect(function(i)
				if draggingS and i.UserInputType == Enum.UserInputType.MouseMovement then
					local rel = clamp((i.Position.X - bar.AbsolutePosition.X)/bar.AbsoluteSize.X, 0, 1)
					fill.Size = UDim2.new(rel, 0, 1, 0)
					box.Text = tostring(math.floor(rel*255))
				end
			end)
			return {Bar = bar, Fill = fill, Box = box}
		end

		local sR = makeSlider("R", 48, math.floor(theme.Primary.R*255))
		local sG = makeSlider("G", 80, math.floor(theme.Primary.G*255))
		local sB = makeSlider("B", 112, math.floor(theme.Primary.B*255))

		local applyBtn = create("TextButton", {Parent = modal, Size = UDim2.new(0, 110, 0, 34), Position = UDim2.new(1, -126, 1, -42), BackgroundColor3 = theme.Primary, Text = "Apply", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = Color3.new(1,1,1)})
		create("UICorner", {Parent = applyBtn, CornerRadius = UDim.new(0,6)})
		applyBtn.MouseButton1Click:Connect(function()
			local r = tonumber(sR.Box.Text) or math.floor(theme.Primary.R*255)
			local g = tonumber(sG.Box.Text) or math.floor(theme.Primary.G*255)
			local b = tonumber(sB.Box.Text) or math.floor(theme.Primary.B*255)
			theme.Primary = Color3.fromRGB(clamp(math.floor(r),0,255), clamp(math.floor(g),0,255), clamp(math.floor(b),0,255))
			-- apply live to main pieces
			main.BackgroundColor3 = theme.Background
			header.BackgroundColor3 = theme.Secondary
			titleLbl.TextColor3 = theme.Text
			resizer.BackgroundColor3 = theme.Primary
			underline.BackgroundColor3 = theme.Primary
			-- recolor sidebar buttons
			for _,c in ipairs(sidebar:GetChildren()) do if c:IsA("TextButton") then c.TextColor3 = theme.Text end end
			modal:Destroy()
		end)
		local closeX = create("TextButton", {Parent = modal, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(1, -36, 0, 6), BackgroundTransparency = 1, Text = "✕", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = theme.Text})
		closeX.MouseButton1Click:Connect(function() modal:Destroy() end)
	end)

	-- Pages table + API for adding tabs & controls
	local Pages = {}
	local WindowAPI = {}

	function WindowAPI:CreateTab(name, icon)
		local btn = create("TextButton", {Parent = sidebar, Size = UDim2.new(1, -12, 0, 44), BackgroundColor3 = theme.Secondary, AutoButtonColor = false, Text = (icon and icon.."   " or "")..name, TextColor3 = theme.Text, Font = Enum.Font.GothamBold, TextSize = 15})
		create("UICorner", {Parent = btn, CornerRadius = UDim.new(0,10)})
		local page = create("ScrollingFrame", {Parent = content, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, ScrollBarThickness = 8, Visible = (#Pages==0)})
		create("UIListLayout", {Parent = page, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder})
		page.CanvasSize = UDim2.new(0,0,0,0)
		page.ChildAdded:Connect(function()
			task.wait(0.03)
			local layout = page:FindFirstChildOfClass("UIListLayout")
			if layout then
				page.CanvasSize = UDim2.new(0,0,0, layout.AbsoluteContentSize.Y + 20)
			end
		end)

		-- hover + select behavior
		btn.MouseEnter:Connect(function() tweenPlay(btn, {BackgroundColor3 = theme.Primary}, 0.12) end)
		btn.MouseLeave:Connect(function()
			if page.Visible then return end
			tweenPlay(btn, {BackgroundColor3 = theme.Secondary}, 0.12)
		end)
		btn.MouseButton1Click:Connect(function()
			for _,p in ipairs(Pages) do p.Frame.Visible = false; p.Button.BackgroundColor3 = theme.Secondary end
			page.Visible = true
			btn.BackgroundColor3 = theme.Primary
			-- underline tween
			local worldPos = btn.AbsolutePosition.X - header.AbsolutePosition.X
			tweenPlay(underline, {Position = UDim2.new(0, btn.Position.X.Offset, 1, -4), Size = UDim2.new(0, btn.Size.X.Offset, 0, 4)}, 0.22)
		end)

		local tabObj = {Name = name, Button = btn, Frame = page}
		table.insert(Pages, tabObj)

		-- controls API
		function tabObj:AddLabel(text)
			local lbl = create("TextLabel", {Parent = page, Size = UDim2.new(1, -24, 0, 26), BackgroundTransparency = 1, Text = text, TextColor3 = theme.Text, Font = Enum.Font.GothamSemibold, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left})
			return lbl
		end

		function tabObj:AddParagraph(title, body)
			local wrapText = title .. "\n\n" .. body
			local p = create("TextLabel", {Parent = page, Size = UDim2.new(1, -24, 0, 80), BackgroundTransparency = 1, Text = wrapText, TextWrapped = true, TextColor3 = theme.Text, Font = Enum.Font.Gotham, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top})
			return p
		end

		function tabObj:AddButton(text, callback)
			local b = create("TextButton", {Parent = page, Size = UDim2.new(0, 360, 0, 44), BackgroundColor3 = theme.Primary, Text = text, Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = Color3.fromRGB(255,255,255)})
			create("UICorner", {Parent = b, CornerRadius = UDim.new(0,10)})
			-- hover scale + color
			b.MouseEnter:Connect(function() tweenPlay(b, {Size = UDim2.new(0, 368, 0, 48)}, 0.12) end)
			b.MouseLeave:Connect(function() tweenPlay(b, {Size = UDim2.new(0, 360, 0, 44)}, 0.12) end)
			b.MouseButton1Click:Connect(function()
				if callback then pcall(callback) end
				tweenPlay(b, {Size = UDim2.new(0, 352, 0, 40)}, 0.06)
				task.delay(0.06, function() tweenPlay(b, {Size = UDim2.new(0, 360, 0, 44)}, 0.08) end)
			end)
			return b
		end

		function tabObj:AddToggle(text, default, callback)
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 420, 0, 44), BackgroundTransparency = 1})
			local lbl = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -120,1,0), BackgroundTransparency = 1, Text = text, TextColor3 = theme.Text, Font = Enum.Font.Gotham, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left})
			local box = create("Frame", {Parent = frame, Size = UDim2.new(0, 60, 0, 32), Position = UDim2.new(1, -72, 0.5, -16), BackgroundColor3 = theme.Secondary})
			create("UICorner", {Parent = box, CornerRadius = UDim.new(1,0)})
			local thumb = create("Frame", {Parent = box, Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(0, 4, 0, 2), BackgroundColor3 = Color3.fromRGB(245,245,245)})
			create("UICorner", {Parent = thumb, CornerRadius = UDim.new(1,0)})
			local state = default or false
			if state then
				thumb.Position = UDim2.new(1, -32, 0, 2)
				box.BackgroundColor3 = theme.Primary
			end
			box.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then
				state = not state
				if state then
					tweenPlay(thumb, {Position = UDim2.new(1, -32, 0, 2)}, 0.16)
					tweenPlay(box, {BackgroundColor3 = theme.Primary}, 0.16)
				else
					tweenPlay(thumb, {Position = UDim2.new(0, 4, 0, 2)}, 0.16)
					tweenPlay(box, {BackgroundColor3 = theme.Secondary}, 0.16)
				end
				if callback then pcall(callback, state) end
			end end)
			return {Frame = frame, Get = function() return state end}
		end

		function tabObj:AddSlider(labelText, min, max, default, callback)
			min = min or 0; max = max or 100; default = default or min
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 420, 0, 56), BackgroundTransparency = 1})
			local lbl = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -12, 0, 18), BackgroundTransparency = 1, Text = labelText .. " : " .. tostring(default), Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local bar = create("Frame", {Parent = frame, Size = UDim2.new(1, -12, 0, 10), Position = UDim2.new(0, 6, 0, 30), BackgroundColor3 = theme.Secondary})
			create("UICorner", {Parent = bar, CornerRadius = UDim.new(0,6)})
			local fill = create("Frame", {Parent = bar, Size = UDim2.new((default-min)/(max-min), 0, 1, 0), BackgroundColor3 = theme.Primary})
			create("UICorner", {Parent = fill, CornerRadius = UDim.new(0,6)})

			local draggingFill = false
			bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingFill = true end end)
			bar.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then draggingFill = false end end)
			local connection
			connection = UserInputService.InputChanged:Connect(function(i)
				if draggingFill and i.UserInputType == Enum.UserInputType.MouseMovement then
					local rel = clamp((i.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
					fill.Size = UDim2.new(rel, 0, 1, 0)
					local val = math.floor(min + (max-min)*rel)
					lbl.Text = labelText .. " : " .. tostring(val)
					if callback then pcall(callback, val) end
				end
			end)

			return {Frame = frame, Get = function() return min + (max-min) * fill.Size.X.Scale end}
		end

		function tabObj:AddDropdown(labelText, items, callback)
			local frame = create("Frame", {Parent = page, Size = UDim2.new(0, 420, 0, 36), BackgroundTransparency = 1})
			local label = create("TextLabel", {Parent = frame, Size = UDim2.new(1, -48, 1, 0), BackgroundTransparency = 1, Text = labelText, Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local btn = create("TextButton", {Parent = frame, Size = UDim2.new(0, 36, 0, 28), Position = UDim2.new(1, -44, 0.5, -14), Text = "⌄", BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextColor3 = theme.Text})
			local list = create("Frame", {Parent = page, Size = UDim2.new(0, 420, 0, 0), Position = UDim2.new(0, 20, 0, 0), BackgroundColor3 = theme.Secondary, Visible = false})
			create("UICorner", {Parent = list, CornerRadius = UDim.new(0,8)})
			create("UIListLayout", {Parent = list, Padding = UDim.new(0,6), SortOrder = Enum.SortOrder.LayoutOrder})

			for _,v in ipairs(items or {}) do
				local itemBtn = create("TextButton", {Parent = list, Size = UDim2.new(1, -12, 0, 34), BackgroundColor3 = theme.Secondary, Text = v, Font = Enum.Font.Gotham, TextColor3 = theme.Text, TextSize = 14, AutoButtonColor = false})
				create("UICorner", {Parent = itemBtn, CornerRadius = UDim.new(0,6)})
				itemBtn.MouseEnter:Connect(function() tweenPlay(itemBtn, {BackgroundColor3 = theme.Primary}, 0.12) end)
				itemBtn.MouseLeave:Connect(function() tweenPlay(itemBtn, {BackgroundColor3 = theme.Secondary}, 0.12) end)
				itemBtn.MouseButton1Click:Connect(function()
					label.Text = labelText .. " : " .. v
					if callback then pcall(callback, v) end
					tweenPlay(list, {Size = UDim2.new(0,420,0,0)}, 0.16)
					task.delay(0.16, function() list.Visible = false end)
				end)
			end

			btn.MouseButton1Click:Connect(function()
				if not list.Visible then
					list.Visible = true
					local count = 0
					for _,c in ipairs(list:GetChildren()) do if c:IsA("TextButton") then count = count + 1 end end
					tweenPlay(list, {Size = UDim2.new(0,420,0,count*40 + 8)}, 0.18)
				else
					tweenPlay(list, {Size = UDim2.new(0,420,0,0)}, 0.16)
					task.delay(0.16, function() list.Visible = false end)
				end
			end)
			return {Frame = frame}
		end

		function tabObj:AddTextbox(placeholder, callback)
			local box = create("TextBox", {Parent = page, Size = UDim2.new(0, 420, 0, 36), BackgroundColor3 = theme.Secondary, Text = "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextSize = 14, TextColor3 = theme.Text})
			create("UICorner", {Parent = box, CornerRadius = UDim.new(0,6)})
			box.FocusLost:Connect(function(enter) if enter and callback then pcall(callback, box.Text) end end)
			return box
		end

		function tabObj:AddColorPicker(labelText, defaultColor, callback)
			local cbtn = create("TextButton", {Parent = page, Size = UDim2.new(0, 360, 0, 36), BackgroundColor3 = defaultColor or theme.Primary, Text = labelText, TextColor3 = theme.Text, Font = Enum.Font.Gotham, TextSize = 14})
			create("UICorner", {Parent = cbtn, CornerRadius = UDim.new(0,6)})
			cbtn.MouseButton1Click:Connect(function()
				-- simple color pick: random sample for demo OR you can open slider modal
				local newC = Color3.fromHSV(math.random(), 1, 1)
				cbtn.BackgroundColor3 = newC
				if callback then pcall(callback, newC) end
			end)
			return cbtn
		end

		function tabObj:AddParagraph(titleText, bodyText)
			local h = create("TextLabel", {Parent = page, Size = UDim2.new(1,-24,0,22), BackgroundTransparency = 1, Text = titleText, Font = Enum.Font.GothamSemibold, TextSize = 14, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left})
			local p = create("TextLabel", {Parent = page, Size = UDim2.new(1,-24,0,96), BackgroundTransparency = 1, Text = bodyText, TextWrapped = true, Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top})
			return p
		end

		function tabObj:AddSpacer(px)
			local s = create("Frame", {Parent = page, Size = UDim2.new(1,0,0, px or 8), BackgroundTransparency = 1})
			return s
		end

		return tabObj
	end

	function WindowAPI:Notify(message, duration)
		return CreateNotify(screen, message, duration)
	end

	-- expose apply theme live
	function WindowAPI:ApplyTheme(newTheme)
		if not newTheme then return end
		theme = newTheme
		main.BackgroundColor3 = theme.Background
		header.BackgroundColor3 = theme.Secondary
		titleLbl.TextColor3 = theme.Text
		resizer.BackgroundColor3 = theme.Primary
		underline.BackgroundColor3 = theme.Primary
		for _,c in ipairs(sidebar:GetChildren()) do if c:IsA("TextButton") then c.TextColor3 = theme.Text end end
	end

	-- return window API
	return WindowAPI
end

-- Build demo GUI automatically
local UI = FluentWindUI
local win = UI:CreateWindow({Title = "⚡ FluentWindUI Pro+ Demo", Size = UDim2.new(0, 920, 0, 600)})

-- Create tabs and controls
local mainTab = win:CreateTab("Home", "🏠")
mainTab:AddLabel("Welcome to FluentWindUI Pro+")
mainTab:AddSpacer(6)
mainTab:AddButton("Show Notification", function() win:Notify("This is a fluent-style notification — auto hide in 3s", 3) end)
mainTab:AddSpacer(6)
mainTab:AddToggle("Enable Awesome Mode", false, function(v) warn("Awesome Mode:", v) end)
mainTab:AddSpacer(6)
mainTab:AddSlider("Volume", 0, 100, 40, function(v) warn("Volume:", v) end)
mainTab:AddSpacer(8)
mainTab:AddTextbox("Enter your name...", function(txt) warn("Name entered:", txt) end)
mainTab:AddSpacer(8)
mainTab:AddDropdown("Select Fruit", {"Apple","Banana","Orange"}, function(v) warn("Selected:", v) end)
mainTab:AddSpacer(8)
mainTab:AddColorPicker("Pick Accent Color", DefaultTheme.Primary, function(c) win:ApplyTheme({Background = DefaultTheme.Background, Secondary = DefaultTheme.Secondary, Primary = c, Accent = DefaultTheme.Accent, Text = DefaultTheme.Text}) end)
mainTab:AddSpacer(10)
mainTab:AddParagraph("About FluentWindUI", "FluentWindUI Pro+ is a polished GUI framework designed to be visually modern (glassmorphism + soft shadows) and functionally complete. Components are animated and responsive. Use for tools, hubs, or admin panels.")

local setTab = win:CreateTab("Settings", "⚙️")
setTab:AddLabel("Appearance")
setTab:AddSpacer(6)
setTab:AddButton("Open Theme Editor", function()
	-- We reuse the Theme editor button in header by simulating click:
	-- But for demo we show a quick notify:
	win:Notify("Open Theme Editor from top-left paint icon", 4)
end)
setTab:AddSpacer(10)
setTab:AddParagraph("Notes", "This demo implements a full set of controls: Button, Toggle, Slider (drag), Dropdown (tween), Textbox (FocusLost), ColorPicker (sample), Paragraph, and Notifications with auto-dismiss.")

local helpTab = win:CreateTab("Help", "❓")
helpTab:AddParagraph("Shortcuts", "• Drag the header to move the window.\n• Drag the bottom-right corner to resize.\n• Use the Theme icon to open the color editor.\n• Use 'Show Notification' to see auto-fading notifications.")

-- End of LocalScript
