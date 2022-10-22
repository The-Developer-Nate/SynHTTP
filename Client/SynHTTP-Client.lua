-- Gui to Lua
-- Version: 3.2

-- Instances:

local SynHTTP = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Top = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Bottom = Instance.new("ImageLabel")
local Search = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Request = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

SynHTTP.Name = "SynHTTP"
syn.protect_gui(SynHTTP)
SynHTTP.Parent = game.Players.LocalPlayer.PlayerGui
SynHTTP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SynHTTP
Frame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Frame.Position = UDim2.new(0.217183769, 0, 0.274038464, 0)
Frame.Size = UDim2.new(0, 467, 0, 256)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(228, 228, 228)
Top.BackgroundTransparency = 1.000
Top.Size = UDim2.new(0, 467, 0, 30)
Top.Image = "http://www.roblox.com/asset/?id=11336355321"
Top.ImageColor3 = Color3.fromRGB(24, 24, 24)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(33, 24, 103, 56)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0232558139, 0, 0.100000001, 0)
TextLabel.Size = UDim2.new(0, 192, 0, 24)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "SynHTTP"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Bottom.Name = "Bottom"
Bottom.Parent = Frame
Bottom.BackgroundColor3 = Color3.fromRGB(228, 228, 228)
Bottom.BackgroundTransparency = 1.000
Bottom.Position = UDim2.new(0, 0, 0.862245798, 0)
Bottom.Size = UDim2.new(0, 467, 0, 35)
Bottom.Image = "http://www.roblox.com/asset/?id=11336467741"
Bottom.ImageColor3 = Color3.fromRGB(24, 24, 24)
Bottom.ScaleType = Enum.ScaleType.Slice
Bottom.SliceCenter = Rect.new(33, 24, 103, 56)

Search.Name = "Search"
Search.Parent = Bottom
Search.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Search.Position = UDim2.new(0.0232558325, 0, 0.131612718, 0)
Search.Size = UDim2.new(0, 113, 0, 25)
Search.Font = Enum.Font.Ubuntu
Search.Text = "Search"
Search.TextColor3 = Color3.fromRGB(255, 255, 255)
Search.TextScaled = true
Search.TextSize = 14.000
Search.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Search

Clear.Name = "Clear"
Clear.Parent = Bottom
Clear.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Clear.Position = UDim2.new(0.284497797, 0, 0.131612718, 0)
Clear.Size = UDim2.new(0, 113, 0, 25)
Clear.Font = Enum.Font.Ubuntu
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Clear

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.1171875, 0)
ScrollingFrame.Size = UDim2.new(0, 467, 0, 190)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 0

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Request.Name = "Request"
Request.Parent = game.StarterGui.SynHTTP.Frame.LocalScript
Request.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Request.BackgroundTransparency = 1.000
Request.BorderColor3 = Color3.fromRGB(27, 42, 53)
Request.Size = UDim2.new(1, 0, -0.042105265, 29)
Request.Font = Enum.Font.Ubuntu
Request.Text = "GET Request to \"https://example.com/\""
Request.TextColor3 = Color3.fromRGB(255, 255, 255)
Request.TextScaled = true
Request.TextSize = 14.000
Request.TextWrapped = true
Request.RichText = true
Request.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_2.Parent = game.StarterGui.SynHTTP.Frame.LocalScript
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

-- Scripts:

local function OJWW_fake_script() -- Frame.LocalScript

	local Request = Request
	local Search = Search
	local Clear = Clear

	function AddText(text)
		local e = Request:Clone()
		e.Text = "<font color='#6cd1ff'>[Info]</font> "..text
		e.Parent = ScrollingFrame
	end

	function AddError(text)
		local e = Request:Clone()
		e.Text = "<font color='#FF0000'>[Error]</font> "..text
		e.Parent = ScrollingFrame
	end

	Search.MouseButton1Click:Connect(function()
		local httpserver = game.ReplicatedStorage:FindFirstChild("http_error")
		if httpserver then
			AddText("SynHTTP-Server "..httpserver:InvokeServer("getversion"))
			AddText("Initializing, Might freeze the game.")
			httpserver.OnClientInvoke = function(dict)
				AddText((dict.Method or "GET").." Request to ".. dict.Url)
				local response = syn.request(dict)
				return response
			end
		else
			AddError("Couldn't find SynHTTP-Server")
		end
	end)

	Clear.MouseButton1Click:Connect(function()
		ScrollingFrame:ClearAllChildren()
		UIListLayout:Clone().Parent = ScrollingFrame
	end)

	AddText("Welcome "..game.Players.LocalPlayer.Name.."!")
end
coroutine.wrap(OJWW_fake_script)()
local function JVNR_fake_script() -- Frame.DragScript

	--Not made by me, check out this video: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
	--Put this inside of your Frame and configure the speed if you would like.
	--Enjoy! Credits go to: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s

	local UIS = game:GetService('UserInputService')
	local frame = Frame
	local dragToggle = nil
	local dragSpeed = 0
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Top.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

end
coroutine.wrap(JVNR_fake_script)()
