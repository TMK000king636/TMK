local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local BackgroundDecalId = "rbxassetid://91887554484766"
local buttonNames = {
    [1]  = "Get Admin: OFF",
    [2]  = "Panic: OFF",
    [3]  = "Auto Re: OFF",
    [4]  = "Reset Admin: OFF",
    [5]  = "Reset yourself",
    [6]  = "Reset others",
    [7]  = "Explode others",
    [8]  = "Punish others",
    [9]  = "Respawn other",
    [10] = "Freeze others",
    [11] = "Bring others",
    [12] = "skydive others",
    [13] = "Kill others",
    [14] = "blind others",
    [15] = "Custom Message",
    [16] = "Music Box",
    [17] = "perm f3x",
    [18] = "char all",
    [19] = "ungear others"
}
local PURE_RED = Color3.fromRGB(255, 0, 0) 
local DARK_BG = Color3.fromRGB(10, 10, 10)
local BTN_BLACK = Color3.fromRGB(15, 15, 15)
local gui = Instance.new("ScreenGui")
gui.Name = "KohlsGuiTMK"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = playerGui
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 320, 0, 280)
frame.Position = UDim2.new(0.5, -160, 0.5, -140)
frame.BackgroundColor3 = DARK_BG
frame.BackgroundTransparency = 0.05
frame.BorderSizePixel = 0
frame.Active = true
frame.ZIndex = 1
frame.Parent = gui
local backgroundImage = Instance.new("ImageLabel")
backgroundImage.Name = "BackgroundDecal"
backgroundImage.Size = UDim2.new(1, 0, 1, 0)
backgroundImage.Position = UDim2.new(0, 0, 0, 0)
backgroundImage.BackgroundTransparency = 1
backgroundImage.Image = BackgroundDecalId
backgroundImage.ImageTransparency = 0.5
backgroundImage.ScaleType = Enum.ScaleType.Crop
backgroundImage.BorderSizePixel = 0
backgroundImage.ZIndex = 1
backgroundImage.Parent = frame
local overlay = Instance.new("Frame")
overlay.Name = "BackgroundOverlay"
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.Position = UDim2.new(0, 0, 0, 0)
overlay.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
overlay.BackgroundTransparency = 0.35
overlay.BorderSizePixel = 0
overlay.ZIndex = 2
overlay.Parent = frame
local frameStroke = Instance.new("UIStroke")
frameStroke.Color = PURE_RED
frameStroke.Thickness = 2.5
frameStroke.Transparency = 0
frameStroke.Parent = frame
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, -80, 0, 35)
title.Position = UDim2.new(0, 12, 0, 5)
title.BackgroundTransparency = 1
title.Text = "kohls-GUI-TMK"
title.TextColor3 = PURE_RED
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left
title.ZIndex = 4
title.Parent = frame
local line = Instance.new("Frame")
line.Name = "TitleLine"
line.Size = UDim2.new(1, -24, 0, 1)
line.Position = UDim2.new(0, 12, 0, 40)
line.BackgroundColor3 = PURE_RED
line.BackgroundTransparency = 0.2
line.BorderSizePixel = 0
line.ZIndex = 4
line.Parent = frame
local closeBtn = Instance.new("TextButton")
closeBtn.Name = "CloseButton"
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -36, 0, 6)
closeBtn.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
closeBtn.BackgroundTransparency = 0.2
closeBtn.BorderSizePixel = 0
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 16
closeBtn.ZIndex = 5
closeBtn.Parent = frame
local deleteBtn = Instance.new("TextButton")
deleteBtn.Name = "DeleteButton"
deleteBtn.Size = UDim2.new(0, 32, 0, 28)
deleteBtn.Position = UDim2.new(1, -72, 0, 6)
deleteBtn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
deleteBtn.BackgroundTransparency = 0.2
deleteBtn.BorderSizePixel = 0
deleteBtn.Text = "DEL"
deleteBtn.TextColor3 = Color3.new(1, 1, 1)
deleteBtn.Font = Enum.Font.SourceSansBold
deleteBtn.TextSize = 12
deleteBtn.ZIndex = 5
deleteBtn.Parent = frame
local container = Instance.new("ScrollingFrame")
container.Name = "ButtonContainer"
container.Size = UDim2.new(1, -24, 0.75, 0)
container.Position = UDim2.new(0, 12, 0, 52)
container.BackgroundTransparency = 1
container.BorderSizePixel = 0
container.ScrollBarThickness = 4
container.ScrollBarImageColor3 = PURE_RED
container.CanvasSize = UDim2.new(0, 0, 0, 0)
container.AutomaticCanvasSize = Enum.AutomaticSize.Y
container.ScrollingDirection = Enum.ScrollingDirection.Y
container.ZIndex = 4
container.Parent = frame
local layout = Instance.new("UIGridLayout")
layout.CellSize = UDim2.new(0, 68, 0, 42)
layout.CellPadding = UDim2.new(0, 6, 0, 6)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
layout.VerticalAlignment = Enum.VerticalAlignment.Top
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.FillDirection = Enum.FillDirection.Horizontal
layout.Parent = container
local buttons = {}
for i = 1, #buttonNames do
    local btn = Instance.new("TextButton")
    btn.Name = "Button_" .. i
    btn.LayoutOrder = i
    btn.BackgroundColor3 = BTN_BLACK
    btn.BackgroundTransparency = 0.2
    btn.BorderSizePixel = 0
    btn.Text = buttonNames[i]
    btn.TextColor3 = PURE_RED
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 11
    btn.TextWrapped = true
    btn.TextXAlignment = Enum.TextXAlignment.Center
    btn.TextYAlignment = Enum.TextYAlignment.Center
    btn.AutoButtonColor = true
    btn.ZIndex = 5
    btn.Parent = container
    local btnStroke = Instance.new("UIStroke")
    btnStroke.Color = PURE_RED
    btnStroke.Thickness = 1
    btnStroke.Transparency = 0.4
    btnStroke.Parent = btn
    buttons[i] = btn
end
local function makeDraggable(object)
    local dragging = false
    local dragStart, startPosition, dragInput
    object.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPosition = object.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    object.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            object.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
        end
    end)
end
makeDraggable(frame)
local openBtn = Instance.new("TextButton")
openBtn.Name = "OpenButton"
openBtn.Size = UDim2.new(0, 90, 0, 42)
openBtn.Position = UDim2.new(0, 15, 0.5, -21)
openBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
openBtn.BackgroundTransparency = 0
openBtn.BorderSizePixel = 0
openBtn.Text = "OPEN"
openBtn.TextColor3 = PURE_RED
openBtn.Font = Enum.Font.SourceSansBold
openBtn.TextSize = 18
openBtn.Visible = false
openBtn.Active = true
openBtn.ZIndex = 10
openBtn.Parent = gui
local openStroke = Instance.new("UIStroke")
openStroke.Color = PURE_RED
openStroke.Thickness = 2.5
openStroke.Transparency = 0
openStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
openStroke.Parent = openBtn
local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0, 6)
openCorner.Parent = openBtn
makeDraggable(openBtn)
local isVisible = true
local deleted = false
local function showGUI()
    if deleted then return end
    isVisible = true
    frame.Visible = true
    openBtn.Visible = false
end
local function hideGUI()
    if deleted then return end
    isVisible = false
    frame.Visible = false
    openBtn.Visible = true
end
closeBtn.MouseButton1Click:Connect(hideGUI)
openBtn.MouseButton1Click:Connect(showGUI)
deleteBtn.MouseButton1Click:Connect(function()
    deleted = true
    gui:Destroy()
end)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.M then
        if isVisible then hideGUI() else showGUI() end
    end
end)
local function sendChat(msg)
    local chatEvents = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
    local sayMessage = chatEvents and chatEvents:FindFirstChild("SayMessageRequest")
    if sayMessage then
        sayMessage:FireServer(msg, "System")
    end
end
local autoAdminEnabled = false
buttons[1].MouseButton1Click:Connect(function()
    autoAdminEnabled = not autoAdminEnabled
    if autoAdminEnabled then
        buttons[1].Text = "Get Admin: ON"
        buttons[1].TextColor3 = Color3.fromRGB(0, 255, 100)
        task.spawn(function()
            while autoAdminEnabled do
                local character = player.Character
                local rootPart = character and (character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("LeftFoot") or character:FindFirstChild("RightFoot"))
                if rootPart and firetouchinterest then
                    for _, v in ipairs(workspace:GetDescendants()) do
                        if v:IsA("Part") and v.Name == "Head" and v.Parent and v.Parent.Name == "Touch to get admin" then
                            firetouchinterest(rootPart, v, 0)
                            task.wait()
                            firetouchinterest(rootPart, v, 1)
                        end
                    end
                end
                task.wait(0.1)
            end
        end)
    else
        buttons[1].Text = "Get Admin: OFF"
        buttons[1].TextColor3 = PURE_RED
    end
end)
local panicEnabled = false
buttons[2].MouseButton1Click:Connect(function()
    panicEnabled = not panicEnabled
    if panicEnabled then
        buttons[2].Text = "Panic: ON"
        buttons[2].TextColor3 = Color3.fromRGB(0, 255, 100)
        local runService = game:GetService("RunService")
        local commands = {
            "/infect all", "/setmessage 🤑follow war501501🤑", "/respawn all", "/brightness 10000000000",
            "fogend 1", "/sm I am Doom", "/time 0", "/fire all",
            "/smoke all", "/ff all", "/sparkles all", "/trip all",
            "/seizure all", "/music 119409332942387", "/gun all", "/fling all",
            "/dog all", "/flashify all", "/clone all", "/h 🤑follow war501501🤑",
            "/removelimbs all", "/shiny all", "/minihead all", "/bighead all",
            "noobify all", "/creeper all", "/disco", "/damage all 100",
            "/m DEATH!!", "/explode all", "/skydive all", "/freeze all",
            "/blind all", "/jail all", "/stun all", "/kill all"
        }
        task.spawn(function()
            while panicEnabled do
                for _, cmd in ipairs(commands) do
                    if not panicEnabled then break end
                    sendChat(cmd)
                end
                runService.Heartbeat:Wait()
            end
        end)
    else
        buttons[2].Text = "Panic: OFF"
        buttons[2].TextColor3 = PURE_RED
    end
end)
local autoReEnabled = false
local autoReConnections = {}
local function setupAutoRe(character)
    local humanoid = character:WaitForChild("Humanoid")
    if autoReConnections[character] then
        autoReConnections[character]:Disconnect()
        autoReConnections[character] = nil
    end
    autoReConnections[character] = humanoid.Died:Connect(function()
        if autoReEnabled then
            sendChat("!re")
        end
    end)
end
if player.Character then setupAutoRe(player.Character) end
player.CharacterAdded:Connect(setupAutoRe)
buttons[3].MouseButton1Click:Connect(function()
    autoReEnabled = not autoReEnabled
    if autoReEnabled then
        buttons[3].Text = "Auto Re: ON"
        buttons[3].TextColor3 = Color3.fromRGB(0, 255, 100)
    else
        buttons[3].Text = "Auto Re: OFF"
        buttons[3].TextColor3 = PURE_RED
    end
end)
local resetAdminEnabled = false
local function clickRegen()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj.Name == "Regen" and obj:FindFirstChildOfClass("ClickDetector") then
            local cd = obj:FindFirstChildOfClass("ClickDetector")
            if fireclickdetector then
                fireclickdetector(cd)
            end
        end
    end
end
buttons[4].MouseButton1Click:Connect(function()
    resetAdminEnabled = not resetAdminEnabled
    if resetAdminEnabled then
        buttons[4].Text = "Reset Admin: ON"
        buttons[4].TextColor3 = Color3.fromRGB(0, 255, 100)
        task.spawn(function()
            while resetAdminEnabled do
                clickRegen()
                task.wait(0.1)
            end
        end)
    else
        buttons[4].Text = "Reset Admin: OFF"
        buttons[4].TextColor3 = PURE_RED
    end
end)
buttons[5].MouseButton1Click:Connect(function() sendChat("!re") end)
buttons[6].MouseButton1Click:Connect(function() sendChat("!reset others") end)
buttons[7].MouseButton1Click:Connect(function() sendChat("!explode others") end)
buttons[8].MouseButton1Click:Connect(function() sendChat("!punish others") end)
buttons[9].MouseButton1Click:Connect(function() sendChat("!respawn others") end)
buttons[10].MouseButton1Click:Connect(function() sendChat("!freeze others") end)
buttons[11].MouseButton1Click:Connect(function() sendChat("!bring others") end)
buttons[12].MouseButton1Click:Connect(function() sendChat("!skydive others") end)
buttons[13].MouseButton1Click:Connect(function() sendChat("!kill others") end)
buttons[14].MouseButton1Click:Connect(function() sendChat("!blind others") end)
local customMessageBox = Instance.new("TextBox")
customMessageBox.Name = "CustomMessageBox"
customMessageBox.Size = UDim2.new(0, 260, 0, 45)
customMessageBox.Position = UDim2.new(0.5, -130, 0.5, -22)
customMessageBox.BackgroundColor3 = DARK_BG
customMessageBox.BackgroundTransparency = 0.05
customMessageBox.BorderSizePixel = 0
customMessageBox.PlaceholderText = "Type your message..."
customMessageBox.PlaceholderColor3 = Color3.fromRGB(180, 100, 100)
customMessageBox.Text = ""
customMessageBox.TextColor3 = Color3.new(1, 1, 1)
customMessageBox.Font = Enum.Font.SourceSans
customMessageBox.TextSize = 14
customMessageBox.ClearTextOnFocus = false
customMessageBox.Visible = false
customMessageBox.ZIndex = 20
customMessageBox.Parent = gui
local customStroke = Instance.new("UIStroke")
customStroke.Color = PURE_RED
customStroke.Thickness = 2
customStroke.Parent = customMessageBox
buttons[15].MouseButton1Click:Connect(function()
    customMessageBox.Visible = not customMessageBox.Visible
    if customMessageBox.Visible then customMessageBox:CaptureFocus() end
end)
customMessageBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    local message = customMessageBox.Text
    if message ~= "" then
        sendChat("!sm " .. message)
    end
    customMessageBox.Text = ""
    customMessageBox.Visible = false
end)
local musicBox = Instance.new("Frame")
musicBox.Name = "MusicBox"
musicBox.Size = UDim2.new(0, 270, 0, 145)
musicBox.Position = UDim2.new(0.5, -135, 0.5, -72)
musicBox.BackgroundColor3 = DARK_BG
musicBox.BackgroundTransparency = 0.05
musicBox.BorderSizePixel = 0
musicBox.Visible = false
musicBox.ZIndex = 20
musicBox.Parent = gui
local musicStroke = Instance.new("UIStroke")
musicStroke.Color = PURE_RED
musicStroke.Thickness = 2
musicStroke.Parent = musicBox
local musicTitle = Instance.new("TextLabel")
musicTitle.Size = UDim2.new(1, -20, 0, 30)
musicTitle.Position = UDim2.new(0, 10, 0, 5)
musicTitle.BackgroundTransparency = 1
musicTitle.Text = "MUSIC BOX"
musicTitle.TextColor3 = PURE_RED
musicTitle.Font = Enum.Font.SourceSansBold
musicTitle.TextSize = 16
musicTitle.ZIndex = 21
musicTitle.Parent = musicBox
local musicIdBox = Instance.new("TextBox")
musicIdBox.Name = "MusicIdBox"
musicIdBox.Size = UDim2.new(1, -20, 0, 35)
musicIdBox.Position = UDim2.new(0, 10, 0, 42)
musicIdBox.BackgroundColor3 = BTN_BLACK
musicIdBox.BackgroundTransparency = 0.2
musicIdBox.BorderSizePixel = 0
musicIdBox.PlaceholderText = "Enter Music ID"
musicIdBox.PlaceholderColor3 = Color3.fromRGB(180, 100, 100)
musicIdBox.Text = ""
musicIdBox.TextColor3 = Color3.new(1, 1, 1)
musicIdBox.Font = Enum.Font.SourceSans
musicIdBox.TextSize = 14
musicIdBox.ClearTextOnFocus = false
musicIdBox.ZIndex = 21
musicIdBox.Parent = musicBox
local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0.45, -5, 0, 32)
playButton.Position = UDim2.new(0, 10, 1, -42)
playButton.BackgroundColor3 = BTN_BLACK
playButton.BackgroundTransparency = 0.2
playButton.BorderSizePixel = 0
playButton.Text = "PLAY"
playButton.TextColor3 = PURE_RED
playButton.Font = Enum.Font.SourceSansBold
playButton.TextSize = 14
playButton.ZIndex = 21
playButton.Parent = musicBox
local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0.45, -5, 0, 32)
stopButton.Position = UDim2.new(0.55, -5, 1, -42)
stopButton.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
stopButton.BackgroundTransparency = 0.2
stopButton.BorderSizePixel = 0
stopButton.Text = "STOP"
stopButton.TextColor3 = Color3.new(1, 1, 1)
stopButton.Font = Enum.Font.SourceSansBold
stopButton.TextSize = 14
stopButton.ZIndex = 21
stopButton.Parent = musicBox
buttons[16].MouseButton1Click:Connect(function()
    musicBox.Visible = not musicBox.Visible
    if musicBox.Visible then musicIdBox:CaptureFocus() end
end)
playButton.MouseButton1Click:Connect(function()
    local id = musicIdBox.Text:gsub("%s+", ""):gsub("rbxassetid://", "")
    if id ~= "" and tonumber(id) then
        sendChat("!music " .. id)
    end
end)
stopButton.MouseButton1Click:Connect(function()
    sendChat("!stopmusic")
end)
buttons[17].MouseButton1Click:Connect(function() sendChat("!startergive") end)
buttons[18].MouseButton1Click:Connect(function() sendChat("!char all war501501") end)
buttons[19].MouseButton1Click:Connect(function() sendChat("!ungear others") end)
