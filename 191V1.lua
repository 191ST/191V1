local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.Name = "TP_Hub_191"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

-- Loading Screen
local LoadingFrame = Instance.new("Frame")
LoadingFrame.Parent = ScreenGui
LoadingFrame.Size = UDim2.new(1,0,1,0)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
LoadingFrame.BackgroundTransparency = 0.5
LoadingFrame.Visible = false
LoadingFrame.ZIndex = 10

local LoadingCorner = Instance.new("UICorner")
LoadingCorner.Parent = LoadingFrame
LoadingCorner.CornerRadius = UDim.new(0,0)

local LoadingMain = Instance.new("Frame")
LoadingMain.Parent = LoadingFrame
LoadingMain.Size = UDim2.new(0,400,0,200)
LoadingMain.Position = UDim2.new(0.5,-200,0.5,-100)
LoadingMain.BackgroundColor3 = Color3.fromRGB(25,25,35)
LoadingMain.BackgroundTransparency = 0.1
LoadingMain.BorderSizePixel = 0
LoadingMain.ZIndex = 11

local LoadingMainCorner = Instance.new("UICorner")
LoadingMainCorner.Parent = LoadingMain
LoadingMainCorner.CornerRadius = UDim.new(0,20)

local LoadingTitle = Instance.new("TextLabel")
LoadingTitle.Parent = LoadingMain
LoadingTitle.Size = UDim2.new(1,0,0,60)
LoadingTitle.Position = UDim2.new(0,0,0,20)
LoadingTitle.BackgroundTransparency = 1
LoadingTitle.Text = "191 ONTOP"
LoadingTitle.TextColor3 = Color3.fromRGB(100,200,255)
LoadingTitle.Font = Enum.Font.GothamBold
LoadingTitle.TextSize = 40
LoadingTitle.ZIndex = 12

local LoadingBarBg = Instance.new("Frame")
LoadingBarBg.Parent = LoadingMain
LoadingBarBg.Size = UDim2.new(0.8,0,0,20)
LoadingBarBg.Position = UDim2.new(0.1,0,0,100)
LoadingBarBg.BackgroundColor3 = Color3.fromRGB(40,40,50)
LoadingBarBg.BorderSizePixel = 0
LoadingBarBg.ZIndex = 12

local LoadingBarBgCorner = Instance.new("UICorner")
LoadingBarBgCorner.Parent = LoadingBarBg
LoadingBarBgCorner.CornerRadius = UDim.new(0,10)

local LoadingBar = Instance.new("Frame")
LoadingBar.Parent = LoadingBarBg
LoadingBar.Size = UDim2.new(0,0,1,0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(0,200,255)
LoadingBar.BorderSizePixel = 0
LoadingBar.ZIndex = 13

local LoadingBarCorner = Instance.new("UICorner")
LoadingBarCorner.Parent = LoadingBar
LoadingBarCorner.CornerRadius = UDim.new(0,10)

local LoadingPercent = Instance.new("TextLabel")
LoadingPercent.Parent = LoadingMain
LoadingPercent.Size = UDim2.new(1,0,0,30)
LoadingPercent.Position = UDim2.new(0,0,0,130)
LoadingPercent.BackgroundTransparency = 1
LoadingPercent.Text = "0%"
LoadingPercent.TextColor3 = Color3.fromRGB(255,255,255)
LoadingPercent.Font = Enum.Font.GothamBold
LoadingPercent.TextSize = 20
LoadingPercent.ZIndex = 12

local LoadingStatus = Instance.new("TextLabel")
LoadingStatus.Parent = LoadingMain
LoadingStatus.Size = UDim2.new(1,0,0,30)
LoadingStatus.Position = UDim2.new(0,0,0,160)
LoadingStatus.BackgroundTransparency = 1
LoadingStatus.Text = "MEMPERSIAPKAN TELEPORT..."
LoadingStatus.TextColor3 = Color3.fromRGB(200,200,200)
LoadingStatus.Font = Enum.Font.Gotham
LoadingStatus.TextSize = 14
LoadingStatus.ZIndex = 12

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,400,0,600)
Frame.Position = UDim2.new(0.5,-200,0.5,-300)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,35)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true

-- Rounded Corners
local Corner = Instance.new("UICorner")
Corner.Parent = Frame
Corner.CornerRadius = UDim.new(0,10)

-- Stroke
local Stroke = Instance.new("UIStroke")
Stroke.Parent = Frame
Stroke.Color = Color3.fromRGB(45,45,55)
Stroke.Thickness = 2

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = Frame
TitleBar.Size = UDim2.new(1,0,0,60)
TitleBar.BackgroundColor3 = Color3.fromRGB(35,35,45)
TitleBar.BorderSizePixel = 0

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = TitleBar
TitleCorner.CornerRadius = UDim.new(0,10)

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.Size = UDim2.new(1,-40,0,30)
Title.Position = UDim2.new(0,10,0,5)
Title.BackgroundTransparency = 1
Title.Text = "191 STORE"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20

-- Billboard Text
local BillboardText = Instance.new("TextLabel")
BillboardText.Parent = TitleBar
BillboardText.Size = UDim2.new(1,-40,0,20)
BillboardText.Position = UDim2.new(0,10,0,30)
BillboardText.BackgroundTransparency = 1
BillboardText.Text = "Mau join 191 store? https://discord.gg/h5CWN2sP4y"
BillboardText.TextColor3 = Color3.fromRGB(100,200,255)
BillboardText.TextXAlignment = Enum.TextXAlignment.Left
BillboardText.Font = Enum.Font.Gotham
BillboardText.TextSize = 12
BillboardText.TextWrapped = true

-- Minimize Button
local MinBtn = Instance.new("TextButton")
MinBtn.Parent = TitleBar
MinBtn.Size = UDim2.new(0,30,0,30)
MinBtn.Position = UDim2.new(1,-35,0,15)
MinBtn.BackgroundColor3 = Color3.fromRGB(60,60,70)
MinBtn.Text = "−"
MinBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinBtn.TextSize = 20
MinBtn.Font = Enum.Font.GothamBold

local MinCorner = Instance.new("UICorner")
MinCorner.Parent = MinBtn
MinCorner.CornerRadius = UDim.new(0,8)

-- Billboard changer
local billboardMessages = {
    {text = "Mau join 191 store? https://discord.gg/h5CWN2sP4y", color = Color3.fromRGB(100,200,255)},
    {text = "Mau Kasih saran? ke dc ajaa", color = Color3.fromRGB(255,255,100)},
    {text = "ada bug? lapor di dc", color = Color3.fromRGB(255,150,200)}
}
local currentBillboard = 1

task.spawn(function()
    while true do
        task.wait(60)
        currentBillboard = (currentBillboard % #billboardMessages) + 1
        BillboardText.Text = billboardMessages[currentBillboard].text
        BillboardText.TextColor3 = billboardMessages[currentBillboard].color
    end
end)

-- Tab Buttons
local TabFrame = Instance.new("Frame")
TabFrame.Parent = Frame
TabFrame.Size = UDim2.new(1,0,0,40)
TabFrame.Position = UDim2.new(0,0,0,60)
TabFrame.BackgroundColor3 = Color3.fromRGB(30,30,40)
TabFrame.BorderSizePixel = 0

-- TP Tab Button
local TPTabBtn = Instance.new("TextButton")
TPTabBtn.Parent = TabFrame
TPTabBtn.Size = UDim2.new(0.333,-3,1,-8)
TPTabBtn.Position = UDim2.new(0,4,0,4)
TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
TPTabBtn.Text = "🚀 TP"
TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
TPTabBtn.Font = Enum.Font.GothamBold
TPTabBtn.TextSize = 14

local TPTabCorner = Instance.new("UICorner")
TPTabCorner.Parent = TPTabBtn
TPTabCorner.CornerRadius = UDim.new(0,8)

-- MS Loop Tab Button
local MSLoopTabBtn = Instance.new("TextButton")
MSLoopTabBtn.Parent = TabFrame
MSLoopTabBtn.Size = UDim2.new(0.333,-3,1,-8)
MSLoopTabBtn.Position = UDim2.new(0.333,0,0,4)
MSLoopTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
MSLoopTabBtn.Text = "🔄 MS AUTO"
MSLoopTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
MSLoopTabBtn.Font = Enum.Font.GothamBold
MSLoopTabBtn.TextSize = 14

local MSLoopTabCorner = Instance.new("UICorner")
MSLoopTabCorner.Parent = MSLoopTabBtn
MSLoopTabCorner.CornerRadius = UDim.new(0,8)

-- MS SAFETY Tab Button
local MSSafetyTabBtn = Instance.new("TextButton")
MSSafetyTabBtn.Parent = TabFrame
MSSafetyTabBtn.Size = UDim2.new(0.333,-3,1,-8)
MSSafetyTabBtn.Position = UDim2.new(0.666,0,0,4)
MSSafetyTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
MSSafetyTabBtn.Text = "🛡️ MS SAFETY"
MSSafetyTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
MSSafetyTabBtn.Font = Enum.Font.GothamBold
MSSafetyTabBtn.TextSize = 14

local MSSafetyTabCorner = Instance.new("UICorner")
MSSafetyTabCorner.Parent = MSSafetyTabBtn
MSSafetyTabCorner.CornerRadius = UDim.new(0,8)

-- Content Container
local Content = Instance.new("Frame")
Content.Parent = Frame
Content.Size = UDim2.new(1,0,1,-100)
Content.Position = UDim2.new(0,0,0,100)
Content.BackgroundColor3 = Color3.fromRGB(25,25,35)
Content.BorderSizePixel = 0
Content.BackgroundTransparency = 0.1

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = Content
ContentCorner.CornerRadius = UDim.new(0,10)

-- TP Tab Content
local TPContent = Instance.new("ScrollingFrame")
TPContent.Parent = Content
TPContent.Size = UDim2.new(1,0,1,0)
TPContent.BackgroundTransparency = 1
TPContent.Visible = true
TPContent.ScrollBarThickness = 6
TPContent.CanvasSize = UDim2.new(0,0,0,200)

-- MS Loop Tab Content
local MSLoopContent = Instance.new("ScrollingFrame")
MSLoopContent.Parent = Content
MSLoopContent.Size = UDim2.new(1,0,1,0)
MSLoopContent.BackgroundTransparency = 1
MSLoopContent.Visible = false
MSLoopContent.ScrollBarThickness = 6
MSLoopContent.CanvasSize = UDim2.new(0,0,0,600)

-- MS SAFETY TAB CONTENT
local MSSafetyContent = Instance.new("ScrollingFrame")
MSSafetyContent.Parent = Content
MSSafetyContent.Size = UDim2.new(1,0,1,0)
MSSafetyContent.BackgroundTransparency = 1
MSSafetyContent.Visible = false
MSSafetyContent.ScrollBarThickness = 6
MSSafetyContent.CanvasSize = UDim2.new(0,0,0,400)

-- Title MS Safety
local MSSafetyTitle = Instance.new("TextLabel")
MSSafetyTitle.Parent = MSSafetyContent
MSSafetyTitle.Size = UDim2.new(1,-20,0,40)
MSSafetyTitle.Position = UDim2.new(0,10,0,20)
MSSafetyTitle.BackgroundTransparency = 1
MSSafetyTitle.Text = "🛡️ MS SAFETY DARI RK"
MSSafetyTitle.TextColor3 = Color3.fromRGB(100,200,255)
MSSafetyTitle.TextXAlignment = Enum.TextXAlignment.Left
MSSafetyTitle.Font = Enum.Font.GothamBold
MSSafetyTitle.TextSize = 24

-- Description
local MSSafetyDesc = Instance.new("TextLabel")
MSSafetyDesc.Parent = MSSafetyContent
MSSafetyDesc.Size = UDim2.new(1,-20,0,30)
MSSafetyDesc.Position = UDim2.new(0,10,0,60)
MSSafetyDesc.BackgroundTransparency = 1
MSSafetyDesc.Text = "Blink Masuk Meja"
MSSafetyDesc.TextColor3 = Color3.fromRGB(200,200,200)
MSSafetyDesc.TextXAlignment = Enum.TextXAlignment.Left
MSSafetyDesc.Font = Enum.Font.Gotham
MSSafetyDesc.TextSize = 14

-- ===== BLINK KE BAWAH =====
local BlinkDownFrame = Instance.new("Frame")
BlinkDownFrame.Parent = MSSafetyContent
BlinkDownFrame.Size = UDim2.new(1,-20,0,80)
BlinkDownFrame.Position = UDim2.new(0,10,0,100)
BlinkDownFrame.BackgroundColor3 = Color3.fromRGB(35,35,45)
BlinkDownFrame.BorderSizePixel = 0

local BlinkDownCorner = Instance.new("UICorner")
BlinkDownCorner.Parent = BlinkDownFrame
BlinkDownCorner.CornerRadius = UDim.new(0,10)

-- Icon
local BlinkDownIcon = Instance.new("TextLabel")
BlinkDownIcon.Parent = BlinkDownFrame
BlinkDownIcon.Size = UDim2.new(0,50,1,0)
BlinkDownIcon.Position = UDim2.new(0,10,0,0)
BlinkDownIcon.BackgroundTransparency = 1
BlinkDownIcon.Text = "⬇️"
BlinkDownIcon.TextSize = 40
BlinkDownIcon.Font = Enum.Font.GothamBold
BlinkDownIcon.TextColor3 = Color3.fromRGB(255,255,255)

-- Title
local BlinkDownTitle = Instance.new("TextLabel")
BlinkDownTitle.Parent = BlinkDownFrame
BlinkDownTitle.Size = UDim2.new(1,-120,0,30)
BlinkDownTitle.Position = UDim2.new(0,70,0,10)
BlinkDownTitle.BackgroundTransparency = 1
BlinkDownTitle.Text = "BLINK KE BAWAH"
BlinkDownTitle.TextColor3 = Color3.fromRGB(255,255,255)
BlinkDownTitle.TextXAlignment = Enum.TextXAlignment.Left
BlinkDownTitle.Font = Enum.Font.GothamBold
BlinkDownTitle.TextSize = 18

-- Description
local BlinkDownDesc = Instance.new("TextLabel")
BlinkDownDesc.Parent = BlinkDownFrame
BlinkDownDesc.Size = UDim2.new(1,-120,0,20)
BlinkDownDesc.Position = UDim2.new(0,70,0,40)
BlinkDownDesc.BackgroundTransparency = 1
BlinkDownDesc.Text = "Turun kiahh"
BlinkDownDesc.TextColor3 = Color3.fromRGB(180,180,180)
BlinkDownDesc.TextXAlignment = Enum.TextXAlignment.Left
BlinkDownDesc.Font = Enum.Font.Gotham
BlinkDownDesc.TextSize = 12

-- Button Blink Down
local BlinkDownBtn = Instance.new("TextButton")
BlinkDownBtn.Parent = BlinkDownFrame
BlinkDownBtn.Size = UDim2.new(0,40,0,40)
BlinkDownBtn.Position = UDim2.new(1,-50,0.5,-20)
BlinkDownBtn.BackgroundColor3 = Color3.fromRGB(0,150,200)
BlinkDownBtn.Text = "▶️"
BlinkDownBtn.TextColor3 = Color3.fromRGB(255,255,255)
BlinkDownBtn.TextSize = 20
BlinkDownBtn.Font = Enum.Font.GothamBold

local BlinkDownBtnCorner = Instance.new("UICorner")
BlinkDownBtnCorner.Parent = BlinkDownBtn
BlinkDownBtnCorner.CornerRadius = UDim.new(0,8)

-- ===== BLINK MAJU (DEPAN) =====
local BlinkMajuFrame = Instance.new("Frame")
BlinkMajuFrame.Parent = MSSafetyContent
BlinkMajuFrame.Size = UDim2.new(1,-20,0,80)
BlinkMajuFrame.Position = UDim2.new(0,10,0,190)
BlinkMajuFrame.BackgroundColor3 = Color3.fromRGB(35,35,45)
BlinkMajuFrame.BorderSizePixel = 0

local BlinkMajuCorner = Instance.new("UICorner")
BlinkMajuCorner.Parent = BlinkMajuFrame
BlinkMajuCorner.CornerRadius = UDim.new(0,10)

-- Icon
local BlinkMajuIcon = Instance.new("TextLabel")
BlinkMajuIcon.Parent = BlinkMajuFrame
BlinkMajuIcon.Size = UDim2.new(0,50,1,0)
BlinkMajuIcon.Position = UDim2.new(0,10,0,0)
BlinkMajuIcon.BackgroundTransparency = 1
BlinkMajuIcon.Text = "⬆️"
BlinkMajuIcon.TextSize = 40
BlinkMajuIcon.Font = Enum.Font.GothamBold
BlinkMajuIcon.TextColor3 = Color3.fromRGB(255,255,255)

-- Title
local BlinkMajuTitle = Instance.new("TextLabel")
BlinkMajuTitle.Parent = BlinkMajuFrame
BlinkMajuTitle.Size = UDim2.new(1,-120,0,30)
BlinkMajuTitle.Position = UDim2.new(0,70,0,10)
BlinkMajuTitle.BackgroundTransparency = 1
BlinkMajuTitle.Text = "BLINK MAJU"
BlinkMajuTitle.TextColor3 = Color3.fromRGB(255,255,255)
BlinkMajuTitle.TextXAlignment = Enum.TextXAlignment.Left
BlinkMajuTitle.Font = Enum.Font.GothamBold
BlinkMajuTitle.TextSize = 18

-- Description
local BlinkMajuDesc = Instance.new("TextLabel")
BlinkMajuDesc.Parent = BlinkMajuFrame
BlinkMajuDesc.Size = UDim2.new(1,-120,0,20)
BlinkMajuDesc.Position = UDim2.new(0,70,0,40)
BlinkMajuDesc.BackgroundTransparency = 1
BlinkMajuDesc.Text = "Maju kenok sikok"
BlinkMajuDesc.TextColor3 = Color3.fromRGB(180,180,180)
BlinkMajuDesc.TextXAlignment = Enum.TextXAlignment.Left
BlinkMajuDesc.Font = Enum.Font.Gotham
BlinkMajuDesc.TextSize = 12

-- Button Blink Maju
local BlinkMajuBtn = Instance.new("TextButton")
BlinkMajuBtn.Parent = BlinkMajuFrame
BlinkMajuBtn.Size = UDim2.new(0,40,0,40)
BlinkMajuBtn.Position = UDim2.new(1,-50,0.5,-20)
BlinkMajuBtn.BackgroundColor3 = Color3.fromRGB(0,200,100)
BlinkMajuBtn.Text = "▶️"
BlinkMajuBtn.TextColor3 = Color3.fromRGB(255,255,255)
BlinkMajuBtn.TextSize = 20
BlinkMajuBtn.Font = Enum.Font.GothamBold

local BlinkMajuBtnCorner = Instance.new("UICorner")
BlinkMajuBtnCorner.Parent = BlinkMajuBtn
BlinkMajuBtnCorner.CornerRadius = UDim.new(0,8)

-- ===== BLINK MUNDUR (BELAKANG) =====
local BlinkMundurFrame = Instance.new("Frame")
BlinkMundurFrame.Parent = MSSafetyContent
BlinkMundurFrame.Size = UDim2.new(1,-20,0,80)
BlinkMundurFrame.Position = UDim2.new(0,10,0,280)
BlinkMundurFrame.BackgroundColor3 = Color3.fromRGB(35,35,45)
BlinkMundurFrame.BorderSizePixel = 0

local BlinkMundurCorner = Instance.new("UICorner")
BlinkMundurCorner.Parent = BlinkMundurFrame
BlinkMundurCorner.CornerRadius = UDim.new(0,10)

-- Icon
local BlinkMundurIcon = Instance.new("TextLabel")
BlinkMundurIcon.Parent = BlinkMundurFrame
BlinkMundurIcon.Size = UDim2.new(0,50,1,0)
BlinkMundurIcon.Position = UDim2.new(0,10,0,0)
BlinkMundurIcon.BackgroundTransparency = 1
BlinkMundurIcon.Text = "⬇️"
BlinkMundurIcon.TextSize = 40
BlinkMundurIcon.Font = Enum.Font.GothamBold
BlinkMundurIcon.TextColor3 = Color3.fromRGB(255,255,255)

-- Title
local BlinkMundurTitle = Instance.new("TextLabel")
BlinkMundurTitle.Parent = BlinkMundurFrame
BlinkMundurTitle.Size = UDim2.new(1,-120,0,30)
BlinkMundurTitle.Position = UDim2.new(0,70,0,10)
BlinkMundurTitle.BackgroundTransparency = 1
BlinkMundurTitle.Text = "BLINK MUNDUR"
BlinkMundurTitle.TextColor3 = Color3.fromRGB(255,255,255)
BlinkMundurTitle.TextXAlignment = Enum.TextXAlignment.Left
BlinkMundurTitle.Font = Enum.Font.GothamBold
BlinkMundurTitle.TextSize = 18

-- Description
local BlinkMundurDesc = Instance.new("TextLabel")
BlinkMundurDesc.Parent = BlinkMundurFrame
BlinkMundurDesc.Size = UDim2.new(1,-120,0,20)
BlinkMundurDesc.Position = UDim2.new(0,70,0,40)
BlinkMundurDesc.BackgroundTransparency = 1
BlinkMundurDesc.Text = "Mundur kita kampangg"
BlinkMundurDesc.TextColor3 = Color3.fromRGB(180,180,180)
BlinkMundurDesc.TextXAlignment = Enum.TextXAlignment.Left
BlinkMundurDesc.Font = Enum.Font.Gotham
BlinkMundurDesc.TextSize = 12

-- Button Blink Mundur
local BlinkMundurBtn = Instance.new("TextButton")
BlinkMundurBtn.Parent = BlinkMundurFrame
BlinkMundurBtn.Size = UDim2.new(0,40,0,40)
BlinkMundurBtn.Position = UDim2.new(1,-50,0.5,-20)
BlinkMundurBtn.BackgroundColor3 = Color3.fromRGB(200,100,0)
BlinkMundurBtn.Text = "▶️"
BlinkMundurBtn.TextColor3 = Color3.fromRGB(255,255,255)
BlinkMundurBtn.TextSize = 20
BlinkMundurBtn.Font = Enum.Font.GothamBold

local BlinkMundurBtnCorner = Instance.new("UICorner")
BlinkMundurBtnCorner.Parent = BlinkMundurBtn
BlinkMundurBtnCorner.CornerRadius = UDim.new(0,8)

-- Status Label
local BlinkStatus = Instance.new("TextLabel")
BlinkStatus.Parent = MSSafetyContent
BlinkStatus.Size = UDim2.new(1,-20,0,30)
BlinkStatus.Position = UDim2.new(0,10,0,370)
BlinkStatus.BackgroundColor3 = Color3.fromRGB(40,40,50)
BlinkStatus.Text = "klik aja ngab fitur nya"
BlinkStatus.TextColor3 = Color3.fromRGB(100,255,100)
BlinkStatus.Font = Enum.Font.GothamBold
BlinkStatus.TextSize = 14

local BlinkStatusCorner = Instance.new("UICorner")
BlinkStatusCorner.Parent = BlinkStatus
BlinkStatusCorner.CornerRadius = UDim.new(0,8)

-- TP Buttons
local BtnBahan = Instance.new("TextButton")
BtnBahan.Parent = TPContent
BtnBahan.Size = UDim2.new(1,-20,0,70)
BtnBahan.Position = UDim2.new(0,10,0,20)
BtnBahan.BackgroundColor3 = Color3.fromRGB(50,50,70)
BtnBahan.Text = ""
BtnBahan.BorderSizePixel = 0

local BtnBahanCorner = Instance.new("UICorner")
BtnBahanCorner.Parent = BtnBahan
BtnBahanCorner.CornerRadius = UDim.new(0,8)

local BahanIcon = Instance.new("TextLabel")
BahanIcon.Parent = BtnBahan
BahanIcon.Size = UDim2.new(0,40,1,0)
BahanIcon.Position = UDim2.new(0,10,0,0)
BahanIcon.BackgroundTransparency = 1
BahanIcon.Text = "⚒️"
BahanIcon.TextSize = 30
BahanIcon.Font = Enum.Font.GothamBold
BahanIcon.TextColor3 = Color3.fromRGB(255,255,255)

local BahanText = Instance.new("TextLabel")
BahanText.Parent = BtnBahan
BahanText.Size = UDim2.new(1,-60,0,30)
BahanText.Position = UDim2.new(0,50,0,10)
BahanText.BackgroundTransparency = 1
BahanText.Text = "TP MS BAHAN"
BahanText.TextColor3 = Color3.fromRGB(255,255,255)
BahanText.TextXAlignment = Enum.TextXAlignment.Left
BahanText.Font = Enum.Font.GothamBold
BahanText.TextSize = 16

local BahanDesc = Instance.new("TextLabel")
BahanDesc.Parent = BtnBahan
BahanDesc.Size = UDim2.new(1,-60,0,20)
BahanDesc.Position = UDim2.new(0,50,0,35)
BahanDesc.BackgroundTransparency = 1
BahanDesc.Text = "Material Storage"
BahanDesc.TextColor3 = Color3.fromRGB(180,180,180)
BahanDesc.TextXAlignment = Enum.TextXAlignment.Left
BahanDesc.Font = Enum.Font.Gotham
BahanDesc.TextSize = 12

local BtnRS = Instance.new("TextButton")
BtnRS.Parent = TPContent
BtnRS.Size = UDim2.new(1,-20,0,70)
BtnRS.Position = UDim2.new(0,10,0,100)
BtnRS.BackgroundColor3 = Color3.fromRGB(70,50,50)
BtnRS.Text = ""
BtnRS.BorderSizePixel = 0

local BtnRSCorner = Instance.new("UICorner")
BtnRSCorner.Parent = BtnRS
BtnRSCorner.CornerRadius = UDim.new(0,8)

local RSIcon = Instance.new("TextLabel")
RSIcon.Parent = BtnRS
RSIcon.Size = UDim2.new(0,40,1,0)
RSIcon.Position = UDim2.new(0,10,0,0)
RSIcon.BackgroundTransparency = 1
RSIcon.Text = "🏥"
RSIcon.TextSize = 30
RSIcon.Font = Enum.Font.GothamBold
RSIcon.TextColor3 = Color3.fromRGB(255,255,255)

local RSText = Instance.new("TextLabel")
RSText.Parent = BtnRS
RSText.Size = UDim2.new(1,-60,0,30)
RSText.Position = UDim2.new(0,50,0,10)
RSText.BackgroundTransparency = 1
RSText.Text = "TP RS"
RSText.TextColor3 = Color3.fromRGB(255,255,255)
RSText.TextXAlignment = Enum.TextXAlignment.Left
RSText.Font = Enum.Font.GothamBold
RSText.TextSize = 16

local RSDesc = Instance.new("TextLabel")
RSDesc.Parent = BtnRS
RSDesc.Size = UDim2.new(1,-60,0,20)
RSDesc.Position = UDim2.new(0,50,0,35)
RSDesc.BackgroundTransparency = 1
RSDesc.Text = "Hospital"
RSDesc.TextColor3 = Color3.fromRGB(180,180,180)
RSDesc.TextXAlignment = Enum.TextXAlignment.Left
RSDesc.Font = Enum.Font.Gotham
RSDesc.TextSize = 12

-- MS LOOP CONTENT
local MSLoopTitle = Instance.new("TextLabel")
MSLoopTitle.Parent = MSLoopContent
MSLoopTitle.Size = UDim2.new(1,-20,0,30)
MSLoopTitle.Position = UDim2.new(0,10,0,10)
MSLoopTitle.BackgroundTransparency = 1
MSLoopTitle.Text = "🔄 MS LOOP (AUTO TOOLS)"
MSLoopTitle.TextColor3 = Color3.fromRGB(100,255,100)
MSLoopTitle.TextXAlignment = Enum.TextXAlignment.Left
MSLoopTitle.Font = Enum.Font.GothamBold
MSLoopTitle.TextSize = 16

local MSLoopStatus = Instance.new("TextLabel")
MSLoopStatus.Parent = MSLoopContent
MSLoopStatus.Size = UDim2.new(1,-20,0,40)
MSLoopStatus.Position = UDim2.new(0,10,0,45)
MSLoopStatus.BackgroundColor3 = Color3.fromRGB(40,40,50)
MSLoopStatus.Text = "⏹️ LOOP STOPPED"
MSLoopStatus.TextColor3 = Color3.fromRGB(255,100,100)
MSLoopStatus.Font = Enum.Font.GothamBold
MSLoopStatus.TextSize = 16

local MSLoopStatusCorner = Instance.new("UICorner")
MSLoopStatusCorner.Parent = MSLoopStatus
MSLoopStatusCorner.CornerRadius = UDim.new(0,8)

-- INDICATOR BELI TOOLS
local BuyIndicatorFrame = Instance.new("Frame")
BuyIndicatorFrame.Parent = MSLoopContent
BuyIndicatorFrame.Size = UDim2.new(1,-20,0,160)
BuyIndicatorFrame.Position = UDim2.new(0,10,0,95)
BuyIndicatorFrame.BackgroundColor3 = Color3.fromRGB(35,35,45)
BuyIndicatorFrame.BorderSizePixel = 0

local BuyIndicatorCorner = Instance.new("UICorner")
BuyIndicatorCorner.Parent = BuyIndicatorFrame
BuyIndicatorCorner.CornerRadius = UDim.new(0,10)

local BuyIndicatorTitle = Instance.new("TextLabel")
BuyIndicatorTitle.Parent = BuyIndicatorFrame
BuyIndicatorTitle.Size = UDim2.new(1,-20,0,30)
BuyIndicatorTitle.Position = UDim2.new(0,10,0,5)
BuyIndicatorTitle.BackgroundTransparency = 1
BuyIndicatorTitle.Text = "🛒 INDIKATOR PEMBELIAN"
BuyIndicatorTitle.TextColor3 = Color3.fromRGB(255,255,100)
BuyIndicatorTitle.TextXAlignment = Enum.TextXAlignment.Left
BuyIndicatorTitle.Font = Enum.Font.GothamBold
BuyIndicatorTitle.TextSize = 16

-- Water Indicator
local WaterIndicator = Instance.new("TextLabel")
WaterIndicator.Parent = BuyIndicatorFrame
WaterIndicator.Size = UDim2.new(1,-20,0,25)
WaterIndicator.Position = UDim2.new(0,10,0,40)
WaterIndicator.BackgroundTransparency = 1
WaterIndicator.Text = "💧 WATER: ❌ BELUM"
WaterIndicator.TextColor3 = Color3.fromRGB(255,100,100)
WaterIndicator.TextXAlignment = Enum.TextXAlignment.Left
WaterIndicator.Font = Enum.Font.GothamBold
WaterIndicator.TextSize = 14

-- Sugar Indicator
local SugarIndicator = Instance.new("TextLabel")
SugarIndicator.Parent = BuyIndicatorFrame
SugarIndicator.Size = UDim2.new(1,-20,0,25)
SugarIndicator.Position = UDim2.new(0,10,0,65)
SugarIndicator.BackgroundTransparency = 1
SugarIndicator.Text = "🍚 SUGAR: ❌ BELUM"
SugarIndicator.TextColor3 = Color3.fromRGB(255,100,100)
SugarIndicator.TextXAlignment = Enum.TextXAlignment.Left
SugarIndicator.Font = Enum.Font.GothamBold
SugarIndicator.TextSize = 14

-- Gelatin Indicator
local GelatinIndicator = Instance.new("TextLabel")
GelatinIndicator.Parent = BuyIndicatorFrame
GelatinIndicator.Size = UDim2.new(1,-20,0,25)
GelatinIndicator.Position = UDim2.new(0,10,0,90)
GelatinIndicator.BackgroundTransparency = 1
GelatinIndicator.Text = "🧪 GELATIN: ❌ BELUM"
GelatinIndicator.TextColor3 = Color3.fromRGB(255,100,100)
GelatinIndicator.TextXAlignment = Enum.TextXAlignment.Left
GelatinIndicator.Font = Enum.Font.GothamBold
GelatinIndicator.TextSize = 14

-- Bag Indicator
local BagIndicator = Instance.new("TextLabel")
BagIndicator.Parent = BuyIndicatorFrame
BagIndicator.Size = UDim2.new(1,-20,0,25)
BagIndicator.Position = UDim2.new(0,10,0,115)
BagIndicator.BackgroundTransparency = 1
BagIndicator.Text = "👜 BAG: ❌ BELUM"
BagIndicator.TextColor3 = Color3.fromRGB(255,100,100)
BagIndicator.TextXAlignment = Enum.TextXAlignment.Left
BagIndicator.Font = Enum.Font.GothamBold
BagIndicator.TextSize = 14

-- Function to update buy indicators
local function updateBuyIndicators()
    -- Check Water
    local waterTool = findTool("water")
    if waterTool then
        WaterIndicator.Text = "💧 WATER: ✅ SUDAH (1)"
        WaterIndicator.TextColor3 = Color3.fromRGB(100,255,100)
    else
        WaterIndicator.Text = "💧 WATER: ❌ BELUM"
        WaterIndicator.TextColor3 = Color3.fromRGB(255,100,100)
    end
    
    -- Check Sugar
    local sugarTool = findTool("sugar")
    if sugarTool then
        SugarIndicator.Text = "🍚 SUGAR: ✅ SUDAH (1)"
        SugarIndicator.TextColor3 = Color3.fromRGB(100,255,100)
    else
        SugarIndicator.Text = "🍚 SUGAR: ❌ BELUM"
        SugarIndicator.TextColor3 = Color3.fromRGB(255,100,100)
    end
    
    -- Check Gelatin
    local gelatinTool = findTool("gelatin")
    if gelatinTool then
        GelatinIndicator.Text = "🧪 GELATIN: ✅ SUDAH (1)"
        GelatinIndicator.TextColor3 = Color3.fromRGB(100,255,100)
    else
        GelatinIndicator.Text = "🧪 GELATIN: ❌ BELUM"
        GelatinIndicator.TextColor3 = Color3.fromRGB(255,100,100)
    end
    
    -- Check Bag (Empty bag)
    local bagTool = findTool("empty") or findTool("bag")
    if bagTool then
        BagIndicator.Text = "👜 BAG: ✅ SUDAH (1)"
        BagIndicator.TextColor3 = Color3.fromRGB(100,255,100)
    else
        BagIndicator.Text = "👜 BAG: ❌ BELUM"
        BagIndicator.TextColor3 = Color3.fromRGB(255,100,100)
    end
end

local MSLoopStepLabel = Instance.new("TextLabel")
MSLoopStepLabel.Parent = MSLoopContent
MSLoopStepLabel.Size = UDim2.new(1,-20,0,25)
MSLoopStepLabel.Position = UDim2.new(0,10,0,265)
MSLoopStepLabel.BackgroundTransparency = 1
MSLoopStepLabel.Text = "Step: Waiting..."
MSLoopStepLabel.TextColor3 = Color3.fromRGB(200,200,200)
MSLoopStepLabel.TextXAlignment = Enum.TextXAlignment.Left
MSLoopStepLabel.Font = Enum.Font.Gotham
MSLoopStepLabel.TextSize = 14

local MSLoopTimer = Instance.new("TextLabel")
MSLoopTimer.Parent = MSLoopContent
MSLoopTimer.Size = UDim2.new(1,-20,0,25)
MSLoopTimer.Position = UDim2.new(0,10,0,290)
MSLoopTimer.BackgroundTransparency = 1
MSLoopTimer.Text = "Timer: 0s"
MSLoopTimer.TextColor3 = Color3.fromRGB(200,200,200)
MSLoopTimer.TextXAlignment = Enum.TextXAlignment.Left
MSLoopTimer.Font = Enum.Font.Gotham
MSLoopTimer.TextSize = 14

-- Tool Status
local ToolStatus = Instance.new("TextLabel")
ToolStatus.Parent = MSLoopContent
ToolStatus.Size = UDim2.new(1,-20,0,25)
ToolStatus.Position = UDim2.new(0,10,0,315)
ToolStatus.BackgroundTransparency = 1
ToolStatus.Text = "Tool: -"
ToolStatus.TextColor3 = Color3.fromRGB(200,200,200)
ToolStatus.TextXAlignment = Enum.TextXAlignment.Left
ToolStatus.Font = Enum.Font.GothamBold
ToolStatus.TextSize = 14

-- Informasi Jeda
local JedaInfo = Instance.new("TextLabel")
JedaInfo.Parent = MSLoopContent
JedaInfo.Size = UDim2.new(1,-20,0,20)
JedaInfo.Position = UDim2.new(0,10,0,340)
JedaInfo.BackgroundTransparency = 1
JedaInfo.Text = "⏱️ Jeda 3 detik setelah WATER & GELATIN"
JedaInfo.TextColor3 = Color3.fromRGB(255,255,100)
JedaInfo.TextXAlignment = Enum.TextXAlignment.Left
JedaInfo.Font = Enum.Font.Gotham
JedaInfo.TextSize = 12

local MSLoopStartBtn = Instance.new("TextButton")
MSLoopStartBtn.Parent = MSLoopContent
MSLoopStartBtn.Size = UDim2.new(0.5,-15,0,45)
MSLoopStartBtn.Position = UDim2.new(0,10,0,370)
MSLoopStartBtn.BackgroundColor3 = Color3.fromRGB(50,150,50)
MSLoopStartBtn.Text = "▶️ START LOOP"
MSLoopStartBtn.TextColor3 = Color3.fromRGB(255,255,255)
MSLoopStartBtn.Font = Enum.Font.GothamBold
MSLoopStartBtn.TextSize = 16

local MSLoopStartCorner = Instance.new("UICorner")
MSLoopStartCorner.Parent = MSLoopStartBtn
MSLoopStartCorner.CornerRadius = UDim.new(0,8)

local MSLoopStopBtn = Instance.new("TextButton")
MSLoopStopBtn.Parent = MSLoopContent
MSLoopStopBtn.Size = UDim2.new(0.5,-15,0,45)
MSLoopStopBtn.Position = UDim2.new(0.5,5,0,370)
MSLoopStopBtn.BackgroundColor3 = Color3.fromRGB(150,50,50)
MSLoopStopBtn.Text = "⏹️ STOP LOOP"
MSLoopStopBtn.TextColor3 = Color3.fromRGB(255,255,255)
MSLoopStopBtn.Font = Enum.Font.GothamBold
MSLoopStopBtn.TextSize = 16

local MSLoopStopCorner = Instance.new("UICorner")
MSLoopStopCorner.Parent = MSLoopStopBtn
MSLoopStopCorner.CornerRadius = UDim.new(0,8)

-- Refresh Indicators Button
local RefreshBtn = Instance.new("TextButton")
RefreshBtn.Parent = MSLoopContent
RefreshBtn.Size = UDim2.new(1,-20,0,30)
RefreshBtn.Position = UDim2.new(0,10,0,425)
RefreshBtn.BackgroundColor3 = Color3.fromRGB(60,60,80)
RefreshBtn.Text = "🔄 REFRESH INDIKATOR"
RefreshBtn.TextColor3 = Color3.fromRGB(200,200,255)
RefreshBtn.Font = Enum.Font.GothamBold
RefreshBtn.TextSize = 14

local RefreshBtnCorner = Instance.new("UICorner")
RefreshBtnCorner.Parent = RefreshBtn
RefreshBtnCorner.CornerRadius = UDim.new(0,8)

-- Variables
local loopRunning = false

-- Tool functions
function findTool(toolName)
    if not player.Character then return nil end
    for _, child in pairs(player.Character:GetChildren()) do
        if child:IsA("Tool") and string.find(string.lower(child.Name), string.lower(toolName)) then
            return child
        end
    end
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, child in pairs(backpack:GetChildren()) do
            if child:IsA("Tool") and string.find(string.lower(child.Name), string.lower(toolName)) then
                return child
            end
        end
    end
    return nil
end

function equipTool(tool)
    if not tool or not player.Character then return false end
    if tool.Parent == player.Character then return true end
    if tool.Parent == player:FindFirstChild("Backpack") then
        local humanoid = player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:EquipTool(tool)
            task.wait(0.2)
            return tool.Parent == player.Character
        end
    end
    return false
end

function pressE()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.1)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- FUNGSI BLINK
function blinkDown()
    local character = player.Character
    if not character then 
        BlinkStatus.Text = "❌ ERROR: Character tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then 
        BlinkStatus.Text = "❌ ERROR: HumanoidRootPart tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    BlinkStatus.Text = "⬇️ Blink ke bawah 4 studs..."
    BlinkStatus.TextColor3 = Color3.fromRGB(255,255,0)
    
    local blinkDistance = 4
    hrp.CFrame = hrp.CFrame * CFrame.new(0, -blinkDistance, 0)
    
    BlinkStatus.Text = "✅ Sudah pindah 4 studs ke bawah!"
    BlinkStatus.TextColor3 = Color3.fromRGB(100,255,100)
end

function blinkMaju()
    local character = player.Character
    if not character then 
        BlinkStatus.Text = "❌ ERROR: Character tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then 
        BlinkStatus.Text = "❌ ERROR: HumanoidRootPart tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    BlinkStatus.Text = "⬆️ Blink maju 5 studs..."
    BlinkStatus.TextColor3 = Color3.fromRGB(255,255,0)
    
    local blinkDistance = 5
    local lookVector = hrp.CFrame.LookVector
    hrp.CFrame = hrp.CFrame + (lookVector * blinkDistance)
    
    BlinkStatus.Text = "✅ Sudah maju 5 studs!"
    BlinkStatus.TextColor3 = Color3.fromRGB(100,255,100)
end

function blinkMundur()
    local character = player.Character
    if not character then 
        BlinkStatus.Text = "❌ ERROR: Character tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then 
        BlinkStatus.Text = "❌ ERROR: HumanoidRootPart tidak ditemukan!"
        BlinkStatus.TextColor3 = Color3.fromRGB(255,100,100)
        return 
    end
    
    BlinkStatus.Text = "⬇️ Blink mundur 5 studs..."
    BlinkStatus.TextColor3 = Color3.fromRGB(255,255,0)
    
    local blinkDistance = 5
    local lookVector = hrp.CFrame.LookVector
    hrp.CFrame = hrp.CFrame - (lookVector * blinkDistance)
    
    BlinkStatus.Text = "✅ Sudah mundur 5 studs!"
    BlinkStatus.TextColor3 = Color3.fromRGB(100,255,100)
end

-- MS LOOP
function startMSLoop()
    if loopRunning then return end
    
    loopRunning = true
    MSLoopStatus.Text = "▶️ LOOP RUNNING"
    MSLoopStatus.TextColor3 = Color3.fromRGB(100,255,100)
    
    while loopRunning do
        -- Update indicators at start of each loop
        updateBuyIndicators()
        
        -- WATER
        if not loopRunning then break end
        local waterTool = findTool("water")
        if waterTool and equipTool(waterTool) then
            ToolStatus.Text = "Tool: WATER"
            MSLoopStepLabel.Text = "Step 1: WATER - 20 seconds"
            pressE()
            local startTime = tick()
            while loopRunning and (tick() - startTime) < 20 do
                local remaining = 20 - (tick() - startTime)
                MSLoopTimer.Text = string.format("Timer: %d/20s - WATER", math.floor(20 - remaining))
                task.wait(0.1)
            end
        else
            MSLoopStepLabel.Text = "ERROR: Water tool not found!"
            break
        end
        
        -- Update indicators
        updateBuyIndicators()
        
        -- JEDA 3 DETIK
        if loopRunning then
            MSLoopStepLabel.Text = "Jeda 3 detik setelah WATER..."
            local jedaStart = tick()
            while loopRunning and (tick() - jedaStart) < 3 do
                local remaining = 3 - (tick() - jedaStart)
                MSLoopTimer.Text = string.format("Jeda: %d/3s", math.floor(3 - remaining))
                task.wait(0.1)
            end
        end
        
        if not loopRunning then break end
        
        -- Update indicators
        updateBuyIndicators()
        
        -- SUGAR
        local sugarTool = findTool("sugar")
        if sugarTool and equipTool(sugarTool) then
            ToolStatus.Text = "Tool: SUGAR"
            MSLoopStepLabel.Text = "Step 2: SUGAR - 2 seconds"
            pressE()
            local startTime = tick()
            while loopRunning and (tick() - startTime) < 2 do
                local remaining = 2 - (tick() - startTime)
                MSLoopTimer.Text = string.format("Timer: %d/2s - SUGAR", math.floor(2 - remaining))
                task.wait(0.1)
            end
        else
            MSLoopStepLabel.Text = "ERROR: Sugar tool not found!"
            break
        end
        
        task.wait(0.2)
        if not loopRunning then break end
        
        -- Update indicators
        updateBuyIndicators()
        
        -- GELATIN
        local gelatinTool = findTool("gelatin")
        if gelatinTool and equipTool(gelatinTool) then
            ToolStatus.Text = "Tool: GELATIN"
            MSLoopStepLabel.Text = "Step 3: GELATIN - 45 seconds"
            pressE()
            local startTime = tick()
            while loopRunning and (tick() - startTime) < 45 do
                local remaining = 45 - (tick() - startTime)
                MSLoopTimer.Text = string.format("Timer: %d/45s - GELATIN", math.floor(45 - remaining))
                task.wait(0.1)
            end
        else
            MSLoopStepLabel.Text = "ERROR: Gelatin tool not found!"
            break
        end
        
        -- Update indicators
        updateBuyIndicators()
        
        -- JEDA 3 DETIK
        if loopRunning then
            MSLoopStepLabel.Text = "Jeda 3 detik setelah GELATIN..."
            local jedaStart = tick()
            while loopRunning and (tick() - jedaStart) < 3 do
                local remaining = 3 - (tick() - jedaStart)
                MSLoopTimer.Text = string.format("Jeda: %d/3s", math.floor(3 - remaining))
                task.wait(0.1)
            end
        end
        
        if not loopRunning then break end
        
        -- Update indicators
        updateBuyIndicators()
        
        -- EMPTY BAG
        local emptyTool = findTool("empty") or findTool("bag")
        if emptyTool and equipTool(emptyTool) then
            ToolStatus.Text = "Tool: EMPTY BAG"
            MSLoopStepLabel.Text = "Step 4: EMPTY BAG - 2 seconds (HASIL)"
            pressE()
            local startTime = tick()
            while loopRunning and (tick() - startTime) < 2 do
                local remaining = 2 - (tick() - startTime)
                MSLoopTimer.Text = string.format("Timer: %d/2s - HASIL", math.floor(2 - remaining))
                task.wait(0.1)
            end
        else
            MSLoopStepLabel.Text = "ERROR: Empty Bag tool not found!"
            break
        end
        
        task.wait(0.2)
        if not loopRunning then break end
        
        -- Update indicators
        updateBuyIndicators()
        
        if loopRunning then
            MSLoopStepLabel.Text = "Loop complete! Restarting from WATER..."
            task.wait(1)
        end
    end
    
    loopRunning = false
    MSLoopStatus.Text = "⏹️ LOOP STOPPED"
    MSLoopStatus.TextColor3 = Color3.fromRGB(255,100,100)
    MSLoopStepLabel.Text = "Step: Stopped"
    MSLoopTimer.Text = "Timer: 0s"
    ToolStatus.Text = "Tool: -"
    updateBuyIndicators()
end

-- ===== SMOOTH TP FUNCTION DENGAN ANTI FLING, NAIK 65 STUDS, JALAN, LALU TURUN =====
function smoothTeleport(targetCFrame, duration)
    -- Cek karakter
    local character = player.Character
    if not character then
        warn("Character not found!")
        return
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then
        warn("HumanoidRootPart not found!")
        return
    end
    
    -- MATIKAN SEMUA BAN/RODA (VEHICLE LOCK)
    local function lockAllWheels()
        local vehicle = character:FindFirstChildOfClass("VehicleSeat")
        if vehicle and vehicle:FindFirstChild("Wheels") then
            for _, wheel in pairs(vehicle.Wheels:GetChildren()) do
                if wheel:IsA("Part") or wheel:IsA("MeshPart") then
                    wheel.Anchored = true
                end
            end
        end
        
        -- Lock semua part yang mungkin jadi roda
        for _, child in pairs(character:GetDescendants()) do
            if child:IsA("Part") or child:IsA("MeshPart") or child:IsA("CylinderPart") or child:IsA("WedgePart") then
                if string.find(string.lower(child.Name), "wheel") or 
                   string.find(string.lower(child.Name), "roda") or
                   string.find(string.lower(child.Name), "ban") or
                   string.find(string.lower(child.Name), "tire") then
                    child.Anchored = true
                    child.CanCollide = false
                end
            end
        end
    end
    
    -- UNLOCK SEMUA BAN
    local function unlockAllWheels()
        local vehicle = character:FindFirstChildOfClass("VehicleSeat")
        if vehicle and vehicle:FindFirstChild("Wheels") then
            for _, wheel in pairs(vehicle.Wheels:GetChildren()) do
                if wheel:IsA("Part") or wheel:IsA("MeshPart") then
                    wheel.Anchored = false
                end
            end
        end
        
        for _, child in pairs(character:GetDescendants()) do
            if child:IsA("Part") or child:IsA("MeshPart") or child:IsA("CylinderPart") or child:IsA("WedgePart") then
                if string.find(string.lower(child.Name), "wheel") or 
                   string.find(string.lower(child.Name), "roda") or
                   string.find(string.lower(child.Name), "ban") or
                   string.find(string.lower(child.Name), "tire") then
                    child.Anchored = false
                end
            end
        end
    end
    
    -- ANTI FLING: BodyPosition & BodyGyro
    local bp = Instance.new("BodyPosition")
    bp.MaxForce = Vector3.new(1e9, 1e9, 1e9)
    bp.P = 1e5
    bp.D = 1e3
    bp.Parent = hrp
    
    local bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
    bg.P = 1e5
    bg.D = 1e3
    bg.Parent = hrp
    
    -- Lock semua ban
    lockAllWheels()
    
    -- Matikan physics sementara
    for _, child in pairs(character:GetDescendants()) do
        if child:IsA("BasePart") then
            child.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
        end
    end
    
    -- Show loading screen
    LoadingFrame.Visible = true
    LoadingBar.Size = UDim2.new(0,0,1,0)
    LoadingPercent.Text = "0%"
    
    -- POSISI AWAL
    local startCF = hrp.CFrame
    
    -- HITUNG TITIK PERTENGAHAN (NAIK 65 STUDS)
    local riseHeight = 65
    local upCF = startCF + Vector3.new(0, riseHeight, 0)
    
    -- HITUNG TITIK HORIZONTAL (POSISI TARGET TAPI TINGGI SAMA DENGAN upCF)
    local horizontalCF = CFrame.new(targetCFrame.X, upCF.Y, targetCFrame.Z) * CFrame.Angles(0, targetCFrame.Rotation.Y, 0)
    
    -- BAGI DURASI MENJADI 3 BAGIAN: NAIK (30%), JALAN (40%), TURUN (30%)
    local riseDuration = duration * 0.3  -- 30% waktu untuk naik 65 studs
    local travelDuration = duration * 0.4 -- 40% waktu untuk jalan horizontal
    local descendDuration = duration * 0.3 -- 30% waktu untuk turun ke target
    
    local totalSteps = 300 -- Total steps untuk semua fase
    local riseSteps = math.floor(totalSteps * 0.3)
    local travelSteps = math.floor(totalSteps * 0.4)
    local descendSteps = totalSteps - riseSteps - travelSteps
    
    local stepTime = duration / totalSteps
    
    LoadingStatus.Text = "FASE 1: NAIK 65 STUDS KE ATAS..."
    
    -- FASE 1: NAIK 65 STUDS
    for i = 1, riseSteps do
        if not hrp or not hrp.Parent then break end
        
        local alpha = i / riseSteps
        local currentCF = startCF:Lerp(upCF, alpha)
        
        bp.Position = currentCF.Position
        bg.CFrame = currentCF
        
        -- Update loading
        local percent = math.floor((i / totalSteps) * 100)
        LoadingBar.Size = UDim2.new(percent/100,0,1,0)
        LoadingPercent.Text = percent .. "%"
        LoadingStatus.Text = string.format("NAIK: %d/65 studs", math.floor(alpha * 65))
        
        task.wait(stepTime)
    end
    
    LoadingStatus.Text = "FASE 2: BERGERAK HORIZONTAL..."
    
    -- FASE 2: BERGERAK HORIZONTAL (JALAN)
    for i = 1, travelSteps do
        if not hrp or not hrp.Parent then break end
        
        local alpha = i / travelSteps
        local currentCF = upCF:Lerp(horizontalCF, alpha)
        
        bp.Position = currentCF.Position
        bg.CFrame = currentCF
        
        -- Update loading
        local stepIndex = riseSteps + i
        local percent = math.floor((stepIndex / totalSteps) * 100)
        LoadingBar.Size = UDim2.new(percent/100,0,1,0)
        LoadingPercent.Text = percent .. "%"
        
        local distance = (currentCF.Position - upCF.Position).Magnitude
        local totalDistance = (horizontalCF.Position - upCF.Position).Magnitude
        LoadingStatus.Text = string.format("JALAN: %.1f/%.1f studs", distance, totalDistance)
        
        task.wait(stepTime)
    end
    
    LoadingStatus.Text = "FASE 3: TURUN DARI 65 STUDS KE WAYPOINT..."
    
    -- FASE 3: TURUN KE TARGET
    for i = 1, descendSteps do
        if not hrp or not hrp.Parent then break end
        
        local alpha = i / descendSteps
        local currentCF = horizontalCF:Lerp(targetCFrame, alpha)
        
        bp.Position = currentCF.Position
        bg.CFrame = currentCF
        
        -- Update loading
        local stepIndex = riseSteps + travelSteps + i
        local percent = math.floor((stepIndex / totalSteps) * 100)
        LoadingBar.Size = UDim2.new(percent/100,0,1,0)
        LoadingPercent.Text = percent .. "%"
        LoadingStatus.Text = string.format("TURUN: %d/65 studs", math.floor((1 - alpha) * 65))
        
        task.wait(stepTime)
    end
    
    -- Final position
    bp.Position = targetCFrame.Position
    bg.CFrame = targetCFrame
    
    -- Hide loading
    LoadingBar.Size = UDim2.new(1,0,1,0)
    LoadingPercent.Text = "100%"
    LoadingStatus.Text = "TELEPORT SELESAI!"
    task.wait(0.5)
    
    -- Cleanup
    bp:Destroy()
    bg:Destroy()
    
    -- Unlock semua ban
    unlockAllWheels()
    
    -- Kembalikan physics
    for _, child in pairs(character:GetDescendants()) do
        if child:IsA("BasePart") then
            child.CustomPhysicalProperties = nil
        end
    end
    
    LoadingFrame.Visible = false
end

-- TP Functions dengan smooth teleport (NAIK 65 STUDS, JALAN, TURUN)
function TP_MS_BAHAN()
    smoothTeleport(CFrame.new(521.32,47.79,617.25), 10)
end

function TP_RS()
    smoothTeleport(CFrame.new(1065.19,28.47,420.76), 10)
end

-- Button Connections
BtnBahan.MouseButton1Click:Connect(TP_MS_BAHAN)
BtnRS.MouseButton1Click:Connect(TP_RS)

MSLoopStartBtn.MouseButton1Click:Connect(function()
    if not loopRunning then
        task.spawn(startMSLoop)
    end
end)

MSLoopStopBtn.MouseButton1Click:Connect(function()
    loopRunning = false
end)

-- Refresh button connection
RefreshBtn.MouseButton1Click:Connect(updateBuyIndicators)

-- CONNECT BUTTONS MS SAFETY
BlinkDownBtn.MouseButton1Click:Connect(blinkDown)
BlinkMajuBtn.MouseButton1Click:Connect(blinkMaju)
BlinkMundurBtn.MouseButton1Click:Connect(blinkMundur)

-- Tab Switching
TPTabBtn.MouseButton1Click:Connect(function()
    TPContent.Visible = true
    MSLoopContent.Visible = false
    MSSafetyContent.Visible = false
    
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    MSLoopTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    MSSafetyTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    
    TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
    MSLoopTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    MSSafetyTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
end)

MSLoopTabBtn.MouseButton1Click:Connect(function()
    TPContent.Visible = false
    MSLoopContent.Visible = true
    MSSafetyContent.Visible = false
    
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    MSLoopTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    MSSafetyTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    
    TPTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    MSLoopTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
    MSSafetyTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    
    -- Update indicators when switching to MS AUTO tab
    updateBuyIndicators()
end)

MSSafetyTabBtn.MouseButton1Click:Connect(function()
    TPContent.Visible = false
    MSLoopContent.Visible = false
    MSSafetyContent.Visible = true
    
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    MSLoopTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    MSSafetyTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    
    TPTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    MSLoopTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    MSSafetyTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
end)

-- Minimize
local minimized = false
local openSize = UDim2.new(0,400,0,600)
local closedSize = UDim2.new(0,400,0,60)
local tweenInfo = TweenInfo.new(0.3)

MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        TPContent.Visible = false
        MSLoopContent.Visible = false
        MSSafetyContent.Visible = false
        TabFrame.Visible = false
        MinBtn.Text = "□"
        TweenService:Create(Frame, tweenInfo, {Size = closedSize}):Play()
    else
        TweenService:Create(Frame, tweenInfo, {Size = openSize}):Play()
        task.wait(0.3)
        TPContent.Visible = true
        TabFrame.Visible = true
        MinBtn.Text = "−"
    end
end)

UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.Z then
        minimized = not minimized
        if minimized then
            TPContent.Visible = false
            MSLoopContent.Visible = false
            MSSafetyContent.Visible = false
            TabFrame.Visible = false
            MinBtn.Text = "□"
            TweenService:Create(Frame, tweenInfo, {Size = closedSize}):Play()
        else
            TweenService:Create(Frame, tweenInfo, {Size = openSize}):Play()
            task.wait(0.3)
            TPContent.Visible = true
            TabFrame.Visible = true
            MinBtn.Text = "−"
        end
    end
end)

-- Initial Animation
Frame.Size = UDim2.new(0,0,0,0)
task.wait(0.1)
TweenService:Create(Frame, tweenInfo, {Size = openSize}):Play()

-- Initial update of indicators
task.wait(1)
updateBuyIndicators()

-- Auto refresh every 5 seconds
task.spawn(function()
    while true do
        task.wait(5)
        if MSLoopContent.Visible then
            updateBuyIndicators()
        end
    end
end)
