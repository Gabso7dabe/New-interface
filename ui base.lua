-- ============================================================================
-- GS MENU v2 - HEADER BAR + GAP + CONTENT MENU SYSTEM (30% LARGER)
-- Barra Superior + Espaço Transparente + Menu Inferior com 5 Abas
-- ============================================================================

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ============================================================================
-- CORES / COLORS
-- ============================================================================

local COLOR_BACKGROUND = Color3.fromRGB(10, 10, 10)
local COLOR_PURPLE_ACCENT = Color3.fromRGB(94, 23, 235)
local COLOR_WHITE = Color3.fromRGB(255, 255, 255)
local COLOR_CONTENT_BG = Color3.fromRGB(35, 35, 35)

-- ============================================================================
-- CRIAR SCREENGUI / CREATE SCREENGUI
-- ============================================================================

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GSMenuHeaderV2"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

-- ============================================================================
-- CRIAR BARRA SUPERIOR / CREATE HEADER BAR
-- ============================================================================

local headerBar = Instance.new("Frame")
headerBar.Name = "HeaderBar"
headerBar.Size = UDim2.new(0.78, 0, 0, 36)
headerBar.Position = UDim2.new(0.11, 0, 0.05, 20)
headerBar.BackgroundColor3 = COLOR_BACKGROUND
headerBar.BorderSizePixel = 0
headerBar.Parent = screenGui

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0.05, 0)
headerCorner.Parent = headerBar

local headerStroke = Instance.new("UIStroke")
headerStroke.Color = COLOR_PURPLE_ACCENT
headerStroke.Thickness = 0.5
headerStroke.Transparency = 0
headerStroke.LineJoinMode = Enum.LineJoinMode.Round
headerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
headerStroke.Parent = headerBar

local titleContainer = Instance.new("Frame")
titleContainer.Name = "TitleContainer"
titleContainer.Size = UDim2.new(0.4, 0, 1, 0)
titleContainer.Position = UDim2.new(0, 0, 0, 0)
titleContainer.BackgroundTransparency = 1
titleContainer.BorderSizePixel = 0
titleContainer.Parent = headerBar

local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Text = "GS MENU"
titleText.TextColor3 = COLOR_WHITE
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 17
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.TextYAlignment = Enum.TextYAlignment.Center
titleText.BackgroundTransparency = 1
titleText.BorderSizePixel = 0
titleText.Size = UDim2.new(1, 0, 1, 0)
titleText.Position = UDim2.new(0, 0, 0, 0)
titleText.Parent = titleContainer

local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 12)
titlePadding.Parent = titleText

local subtitleText = Instance.new("TextLabel")
subtitleText.Name = "SubtitleText"
subtitleText.Text = "[sintonia rp]"
subtitleText.TextColor3 = COLOR_PURPLE_ACCENT
subtitleText.Font = Enum.Font.Gotham
subtitleText.TextSize = 9
subtitleText.TextXAlignment = Enum.TextXAlignment.Left
subtitleText.TextYAlignment = Enum.TextYAlignment.Center
subtitleText.BackgroundTransparency = 1
subtitleText.BorderSizePixel = 0
subtitleText.Size = UDim2.new(0.3, 0, 1, 0)
subtitleText.Position = UDim2.new(0.20, 0, 0, 0)
subtitleText.Parent = headerBar

local rightContainer = Instance.new("Frame")
rightContainer.Name = "RightContainer"
rightContainer.Size = UDim2.new(0.3, 0, 1, 0)
rightContainer.Position = UDim2.new(0.7, 0, 0, 0)
rightContainer.BackgroundTransparency = 1
rightContainer.BorderSizePixel = 0
rightContainer.Parent = headerBar

local rightPadding = Instance.new("UIPadding")
rightPadding.PaddingRight = UDim.new(0, 12)
rightPadding.Parent = rightContainer

local statusText = Instance.new("TextLabel")
statusText.Name = "StatusText"
statusText.Text = "STATUS: "
statusText.TextColor3 = COLOR_WHITE
statusText.Font = Enum.Font.GothamBold
statusText.TextSize = 8
statusText.TextXAlignment = Enum.TextXAlignment.Right
statusText.TextYAlignment = Enum.TextYAlignment.Center
statusText.BackgroundTransparency = 1
statusText.BorderSizePixel = 0
statusText.Size = UDim2.new(0.1, 0, 1, 0)
statusText.Position = UDim2.new(0.3, 0, 0, 0)
statusText.Parent = rightContainer

local onlineLabel = Instance.new("TextLabel")
onlineLabel.Name = "OnlineLabel"
onlineLabel.Text = "ONLINE"
onlineLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
onlineLabel.Font = Enum.Font.GothamBold
onlineLabel.TextSize = 8
onlineLabel.TextXAlignment = Enum.TextXAlignment.Right
onlineLabel.TextYAlignment = Enum.TextYAlignment.Center
onlineLabel.BackgroundTransparency = 1
onlineLabel.BorderSizePixel = 0
onlineLabel.Size = UDim2.new(0.4, 0, 1, 0)
onlineLabel.Position = UDim2.new(0.23, 0, 0, 0)
onlineLabel.Parent = rightContainer

local hamburgerButton = Instance.new("TextButton")
hamburgerButton.Name = "HamburgerButton"
hamburgerButton.Text = "≡"
hamburgerButton.TextColor3 = COLOR_WHITE
hamburgerButton.Font = Enum.Font.GothamBold
hamburgerButton.TextSize = 17
hamburgerButton.TextXAlignment = Enum.TextXAlignment.Center
hamburgerButton.TextYAlignment = Enum.TextYAlignment.Center
hamburgerButton.BackgroundTransparency = 1
hamburgerButton.BorderSizePixel = 0
hamburgerButton.Size = UDim2.new(0, 30, 1, 0)
hamburgerButton.Position = UDim2.new(1, -30, 0, 0)
hamburgerButton.Parent = rightContainer

hamburgerButton.MouseEnter:Connect(function()
	hamburgerButton.TextColor3 = COLOR_PURPLE_ACCENT
end)

hamburgerButton.MouseLeave:Connect(function()
	hamburgerButton.TextColor3 = COLOR_WHITE
end)

-- ============================================================================
-- CRIAR ESPAÇO TRANSPARENTE / CREATE TRANSPARENT GAP
-- ============================================================================

local gapFrame = Instance.new("Frame")
gapFrame.Name = "TransparentGap"
gapFrame.Size = UDim2.new(0.78, 0, 0, 16)
gapFrame.Position = UDim2.new(0.11, 0, 0.05, 56)
gapFrame.BackgroundTransparency = 1
gapFrame.BorderSizePixel = 0
gapFrame.Parent = screenGui

-- ============================================================================
-- CRIAR MENU INFERIOR / CREATE CONTENT MENU
-- ============================================================================

local contentMenu = Instance.new("Frame")
contentMenu.Name = "ContentMenu"
contentMenu.Size = UDim2.new(0.78, 0, 0.585, 0)
contentMenu.Position = UDim2.new(0.11, 0, 0.05, 76)
contentMenu.BackgroundColor3 = COLOR_BACKGROUND
contentMenu.BorderSizePixel = 0
contentMenu.Parent = screenGui

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0.05, 0)
contentCorner.Parent = contentMenu

local contentStroke = Instance.new("UIStroke")
contentStroke.Color = COLOR_PURPLE_ACCENT
contentStroke.Thickness = 0.5
contentStroke.Transparency = 0
contentStroke.LineJoinMode = Enum.LineJoinMode.Round
contentStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
contentStroke.Parent = contentMenu

local tabsContainer = Instance.new("Frame")
tabsContainer.Name = "TabsContainer"
tabsContainer.Size = UDim2.new(0.22, 0, 1, 0)
tabsContainer.Position = UDim2.new(0, 0, 0, 0)
tabsContainer.BackgroundTransparency = 1
tabsContainer.BorderSizePixel = 0
tabsContainer.Parent = contentMenu

local tabsPadding = Instance.new("UIPadding")
tabsPadding.PaddingTop = UDim.new(0, 13)
tabsPadding.PaddingLeft = UDim.new(0, 13)
tabsPadding.PaddingRight = UDim.new(0, 6)
tabsPadding.Parent = tabsContainer

local dividerLine = Instance.new("Frame")
dividerLine.Name = "DividerLine"
dividerLine.Size = UDim2.new(0, 1, 0.85, 0)
dividerLine.Position = UDim2.new(0.22, 0, 0.075, 0)
dividerLine.BackgroundColor3 = COLOR_PURPLE_ACCENT
dividerLine.BorderSizePixel = 0
dividerLine.Parent = contentMenu

local contentContainer = Instance.new("Frame")
contentContainer.Name = "ContentContainer"
contentContainer.Size = UDim2.new(0.78, 0, 1, 0)
contentContainer.Position = UDim2.new(0.22, 0, 0, 0)
contentContainer.BackgroundTransparency = 1
contentContainer.BorderSizePixel = 0
contentContainer.Parent = contentMenu

local contentPadding = Instance.new("UIPadding")
contentPadding.PaddingTop = UDim.new(0, 13)
contentPadding.PaddingBottom = UDim.new(0, 13)
contentPadding.PaddingLeft = UDim.new(0, 19)
contentPadding.PaddingRight = UDim.new(0, 19)
contentPadding.Parent = contentContainer

-- ============================================================================
-- DADOS DAS ABAS / TABS DATA (6 OPÇÕES EM CADA LADO = 12 TOTAL)
-- ============================================================================

local tabsData = {
	HOME = {
		left = {"FLY", "NOCLIP", "SPEED", "FLING", "TELEPORT", "GODMODE"},
		right = {"JUMP", "DASH", "FLIGHT", "WALK", "RUN", "SPRINT"}
	},
	COMBATE = {
		left = {"AIMBOT", "FOV", "WALLHACK", "FRIENDCHECK", "AUTO SHOOT", "LOCK"},
		right = {"DAMAGE", "SPEED ATTACK", "COMBO", "RAGE", "CLEAN", "PRECISION"}
	},
	VISUAL = {
		left = {"ESP NAME", "ESP LIFE", "ESP TRACE", "ESP BOX", "ESP HEAD", "ESP DISTANCE"},
		right = {"ESP BAG", "ESP RAGE", "ESP STAFF", "ESP PLAYERS", "GLOW", "OUTLINE"}
	},
	CAR = {
		left = {"ESP CAR", "FLY CAR", "NOCLIP CAR", "SPEED CAR", "TELEPORT CAR", "INVISIBLE CAR"},
		right = {"CAR GODMODE", "NO DAMAGE", "FAST ACCEL", "DRIFT", "BOOST", "RESPAWN"}
	},
	TROLL = {
		left = {"KICK ALL", "FREEZE", "CHATSPAM", "CRASH", "SPAM SOUND", "SPAM EMOJI"},
		right = {"MOVE PLAYER", "FLIP", "SPIN", "SIZE", "COLOR", "EFFECT"}
	}
}

local allTabs = {"HOME", "COMBATE", "VISUAL", "CAR", "TROLL"}
local selectedTab = "HOME"
local tabReferences = {}
local tabContentFrames = {}

-- ============================================================================
-- FUNÇÃO PARA CRIAR TOGGLE / FUNCTION TO CREATE TOGGLE (REDUZIDO)
-- ============================================================================

local function createToggle(parent, featureName, yOffset)
	local toggleContainer = Instance.new("Frame")
	toggleContainer.Name = featureName .. "Container"
	toggleContainer.Size = UDim2.new(1, 0, 0, 24)
	toggleContainer.Position = UDim2.new(0, 0, 0, yOffset)
	toggleContainer.BackgroundTransparency = 1
	toggleContainer.BorderSizePixel = 0
	toggleContainer.Parent = parent

	local toggleLabel = Instance.new("TextLabel")
	toggleLabel.Name = featureName .. "Label"
	toggleLabel.Text = featureName
	toggleLabel.TextColor3 = COLOR_WHITE
	toggleLabel.Font = Enum.Font.GothamBold
	toggleLabel.TextSize = 12
	toggleLabel.BackgroundTransparency = 1
	toggleLabel.BorderSizePixel = 0
	toggleLabel.Size = UDim2.new(0.55, 0, 1, 0)
	toggleLabel.Position = UDim2.new(0, 0, 0, 0)
	toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
	toggleLabel.TextYAlignment = Enum.TextYAlignment.Center
	toggleLabel.Parent = toggleContainer

	-- Toggle Button (sem bolinha)
	local toggleButton = Instance.new("Frame")
	toggleButton.Name = featureName .. "Button"
	toggleButton.Size = UDim2.new(0, 42, 0, 18)
	toggleButton.Position = UDim2.new(0.5, 0, 0.2, 0)
	toggleButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
	toggleButton.BorderSizePixel = 0
	toggleButton.Parent = toggleContainer

	local toggleCorner = Instance.new("UICorner")
	toggleCorner.CornerRadius = UDim.new(0, 9)
	toggleCorner.Parent = toggleButton

	local isEnabled = false

	local clickableButton = Instance.new("TextButton")
	clickableButton.Name = featureName .. "Clickable"
	clickableButton.Text = ""
	clickableButton.BackgroundTransparency = 1
	clickableButton.BorderSizePixel = 0
	clickableButton.Size = UDim2.new(0.5, 0, 1, 0)
	clickableButton.Position = UDim2.new(0.5, 0, 0, 0)
	clickableButton.Parent = toggleContainer

	clickableButton.MouseButton1Click:Connect(function()
		isEnabled = not isEnabled

		if isEnabled then
			toggleButton.BackgroundColor3 = COLOR_PURPLE_ACCENT
			print("[GS MENU] " .. featureName .. " ✓ ATIVADO")
		else
			toggleButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
			print("[GS MENU] " .. featureName .. " ✗ DESATIVADO")
		end
	end)

	return toggleContainer
end

-- ============================================================================
-- FUNÇÃO PARA CRIAR CONTEÚDO DE ABA / FUNCTION TO CREATE TAB CONTENT
-- ============================================================================

local function createTabContent(tabName)
	local tabContent = Instance.new("Frame")
	tabContent.Name = tabName .. "Content"
	tabContent.Size = UDim2.new(1, 0, 1, 0)
	tabContent.Position = UDim2.new(0, 0, 0, 0)
	tabContent.BackgroundTransparency = 1
	tabContent.BorderSizePixel = 0
	tabContent.Visible = (tabName == "HOME")
	tabContent.Parent = contentContainer

	local contentWrapper = Instance.new("Frame")
	contentWrapper.Name = "Wrapper"
	contentWrapper.Size = UDim2.new(1, 0, 1, 0)
	contentWrapper.Position = UDim2.new(0, 0, 0, 0)
	contentWrapper.BackgroundColor3 = COLOR_CONTENT_BG
	contentWrapper.BorderSizePixel = 0
	contentWrapper.Parent = tabContent

	local wrapperCorner = Instance.new("UICorner")
	wrapperCorner.CornerRadius = UDim.new(0.02, 0)
	wrapperCorner.Parent = contentWrapper

	local leftColumn = Instance.new("Frame")
	leftColumn.Name = "LeftColumn"
	leftColumn.Size = UDim2.new(0.5, 0, 1, 0)
	leftColumn.Position = UDim2.new(0, 0, 0, 0)
	leftColumn.BackgroundTransparency = 1
	leftColumn.BorderSizePixel = 0
	leftColumn.Parent = contentWrapper

	local leftPadding = Instance.new("UIPadding")
	leftPadding.PaddingTop = UDim.new(0, 10)
	leftPadding.PaddingBottom = UDim.new(0, 10)
	leftPadding.PaddingLeft = UDim.new(0, 12)
	leftPadding.PaddingRight = UDim.new(0, 6)
	leftPadding.Parent = leftColumn

	local rightColumn = Instance.new("Frame")
	rightColumn.Name = "RightColumn"
	rightColumn.Size = UDim2.new(0.5, 0, 1, 0)
	rightColumn.Position = UDim2.new(0.5, 0, 0, 0)
	rightColumn.BackgroundTransparency = 1
	rightColumn.BorderSizePixel = 0
	rightColumn.Parent = contentWrapper

	local rightPadding = Instance.new("UIPadding")
	rightPadding.PaddingTop = UDim.new(0, 10)
	rightPadding.PaddingBottom = UDim.new(0, 10)
	rightPadding.PaddingLeft = UDim.new(0, 6)
	rightPadding.PaddingRight = UDim.new(0, 12)
	rightPadding.Parent = rightColumn

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.Size = UDim2.new(0, 1, 0.9, 0)
	divider.Position = UDim2.new(0.5, 0, 0.05, 0)
	divider.BackgroundColor3 = COLOR_WHITE
	divider.BackgroundTransparency = 0.5
	divider.BorderSizePixel = 0
	divider.Parent = contentWrapper

	local tabData = tabsData[tabName]
	if tabData then
		-- Left column (6 options)
		for i = 1, #tabData.left do
			createToggle(leftColumn, tabData.left[i], (i - 1) * 26)
		end

		-- Right column (6 options)
		for i = 1, #tabData.right do
			createToggle(rightColumn, tabData.right[i], (i - 1) * 26)
		end
	end

	return tabContent
end

-- ============================================================================
-- CRIAR TODAS AS ABAS / CREATE ALL TABS
-- ============================================================================

for _, tabName in ipairs(allTabs) do
	tabContentFrames[tabName] = createTabContent(tabName)
end

-- ============================================================================
-- CRIAR BOTÕES DE ABAS / CREATE TAB BUTTONS
-- ============================================================================

for index, tabName in ipairs(allTabs) do
	local yOffset = (index - 1) * 42

	local tabFrame = Instance.new("Frame")
	tabFrame.Name = tabName .. "TabFrame"
	tabFrame.Size = UDim2.new(1, 0, 0, 33)
	tabFrame.Position = UDim2.new(0, 0, 0, yOffset)
	tabFrame.BackgroundTransparency = 1
	tabFrame.BorderSizePixel = 0
	tabFrame.Parent = tabsContainer

	local tabButton = Instance.new("TextButton")
	tabButton.Name = tabName .. "Button"
	tabButton.Text = tabName
	tabButton.TextColor3 = COLOR_WHITE
	tabButton.Font = Enum.Font.GothamBold
	tabButton.TextSize = 16
	tabButton.BackgroundTransparency = 1
	tabButton.BorderSizePixel = 0
	tabButton.Size = UDim2.new(1, 0, 1, 0)
	tabButton.TextXAlignment = Enum.TextXAlignment.Right
	tabButton.TextYAlignment = Enum.TextYAlignment.Center
	tabButton.Parent = tabFrame

	local tabPadding = Instance.new("UIPadding")
	tabPadding.PaddingRight = UDim.new(0, 8)
	tabPadding.Parent = tabButton

	local indicator = Instance.new("Frame")
	indicator.Name = tabName .. "Indicator"
	indicator.Size = UDim2.new(0, 4, 0.6, 0)
	indicator.Position = UDim2.new(0, 0, 0.2, 0)
	indicator.BackgroundColor3 = COLOR_PURPLE_ACCENT
	indicator.BorderSizePixel = 0
	indicator.Visible = (tabName == "HOME")
	indicator.Parent = tabFrame

	tabReferences[tabName] = {
		button = tabButton,
		indicator = indicator
	}

	tabButton.MouseEnter:Connect(function()
		if selectedTab ~= tabName then
			tabButton.TextColor3 = COLOR_PURPLE_ACCENT
		end
	end)

	tabButton.MouseLeave:Connect(function()
		if selectedTab ~= tabName then
			tabButton.TextColor3 = COLOR_WHITE
		end
	end)

	tabButton.MouseButton1Click:Connect(function()
		selectedTab = tabName

		for tabNameKey, ref in pairs(tabReferences) do
			ref.indicator.Visible = false
			ref.button.TextColor3 = COLOR_WHITE
			if tabContentFrames[tabNameKey] then
				tabContentFrames[tabNameKey].Visible = false
			end
		end

		indicator.Visible = true
		tabButton.TextColor3 = COLOR_PURPLE_ACCENT
		if tabContentFrames[tabName] then
			tabContentFrames[tabName].Visible = true
		end

		print("[GS MENU] Aba selecionada: " .. tabName)
	end)
end

-- ============================================================================
-- SISTEMA DE DRAG / DRAG SYSTEM
-- ============================================================================

local UserInputService = game:GetService("UserInputService")

local dragState = {
	isDragging = false,
	dragStart = nil,
	startPos = nil,
	dragInput = nil
}

headerBar.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragState.isDragging = true
		dragState.dragStart = input.Position
		dragState.startPos = headerBar.Position

		dragState.dragInput = input.Changed:Connect(function()
			if dragState.isDragging then
				local delta = input.Position - dragState.dragStart
				headerBar.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y)
				contentMenu.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y + 56)
				gapFrame.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y + 36)
			end
		end)
	end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if dragState.isDragging then
			dragState.isDragging = false
			if dragState.dragInput then
				dragState.dragInput:Disconnect()
				dragState.dragInput = nil
			end
		end
	end
end)

print("[GS MENU v2] ✓ Menu completo com 12 opções por sessão!")
print("[GS MENU v2] ✓ 6 opções lado ESQUERDO | 6 opções lado DIREITO")
print("[GS MENU v2] ✓ HOME | COMBATE | VISUAL | CAR | TROLL")