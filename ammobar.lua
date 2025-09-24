local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

local Componenets = Instance.new("Folder")
Componenets.Name = "Componenets"
Componenets.Parent = ScreenGui

local Ammo = Instance.new("Folder")
Ammo.Name = "Ammo"
Ammo.Parent = Componenets

local Hotbar = Instance.new("Folder")
Hotbar.Name = "Hotbar"
Hotbar.Parent = Componenets

local Inventory = Instance.new("Folder")
Inventory.Name = "Inventory"
Inventory.Parent = Componenets

local MainFrame = Instance.new("Frame")
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Name = "MainFrame"
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Size = UDim2.new(0, 150, 0, 53)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Parent = ScreenGui

local Inline = Instance.new("Frame")
Inline.Interactable = false
Inline.AnchorPoint = Vector2.new(0.5, 0.5)
Inline.Name = "Inline"
Inline.Position = UDim2.new(0.5, 0, 0.5, 0)
Inline.Size = UDim2.new(0, 148, 0, 52)
Inline.ZIndex = 5
Inline.BorderColor3 = Color3.fromRGB(96, 120, 190)
Inline.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Inline.Parent = MainFrame

local Outline = Instance.new("Frame")
Outline.Interactable = false
Outline.AnchorPoint = Vector2.new(0.5, 0.5)
Outline.Name = "Outline"
Outline.Position = UDim2.new(0.5, 0, 0.5, 0)
Outline.Size = UDim2.new(0, 150, 0, 54)
Outline.BorderColor3 = Color3.fromRGB(0, 0, 0)
Outline.BorderSizePixel = 2
Outline.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Outline.Parent = MainFrame

local Holder = Instance.new("Frame")
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.AnchorPoint = Vector2.new(0.5, 1)
Holder.Name = "Holder"
Holder.Position = UDim2.new(0.5, 0, 1, -8)
Holder.Size = UDim2.new(0, 129, 0, 27)
Holder.ZIndex = 25
Holder.BorderSizePixel = 0
Holder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Holder.Parent = MainFrame

local Outline = Instance.new("Frame")
Outline.Interactable = false
Outline.AnchorPoint = Vector2.new(0.5, 0.5)
Outline.Name = "Outline"
Outline.Position = UDim2.new(0.5, 0, 0.5, 0)
Outline.Size = UDim2.new(0, 127, 0, 28)
Outline.ZIndex = 50
Outline.BorderColor3 = Color3.fromRGB(44, 44, 44)
Outline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Outline.Parent = Holder

local Inline = Instance.new("Frame")
Inline.Interactable = false
Inline.AnchorPoint = Vector2.new(0.5, 0.5)
Inline.Name = "Inline"
Inline.Position = UDim2.new(0.5, 0, 0.48148149251937866, 0)
Inline.Size = UDim2.new(0, 125, 0, 26)
Inline.ZIndex = 50
Inline.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Inline.Parent = Holder

local HolderV2 = Instance.new("Frame")
HolderV2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HolderV2.AnchorPoint = Vector2.new(0.5, 0.5)
HolderV2.Name = "HolderV2"
HolderV2.Position = UDim2.new(0.5, 0, 0.5, 0)
HolderV2.Size = UDim2.new(0, 115, 0, 10)
HolderV2.ZIndex = 100
HolderV2.BorderSizePixel = 0
HolderV2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
HolderV2.Parent = Holder

local Outline = Instance.new("Frame")
Outline.Interactable = false
Outline.AnchorPoint = Vector2.new(0.5, 0.5)
Outline.Name = "Outline"
Outline.Position = UDim2.new(0.5, 0, 0.4000000059604645, 0)
Outline.Size = UDim2.new(0, 114, 0, 12)
Outline.ZIndex = 500
Outline.BorderColor3 = Color3.fromRGB(44, 44, 44)
Outline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Outline.Parent = HolderV2

local Inline = Instance.new("Frame")
Inline.Interactable = false
Inline.AnchorPoint = Vector2.new(0.5, 0.5)
Inline.Name = "Inline"
Inline.Position = UDim2.new(0.509782612323761, 0, 0.38412779569625854, 0)
Inline.Size = UDim2.new(0, 111, 0, 10)
Inline.ZIndex = 500
Inline.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Inline.Parent = HolderV2

local Progress_Bar = Instance.new("Frame")
Progress_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Progress_Bar.AnchorPoint = Vector2.new(0, 0)
Progress_Bar.Name = "Progress_Bar"
Progress_Bar.Position = UDim2.new(0, 0, 0, 0)
Progress_Bar.Size = UDim2.new(0, 109, 0, 8)
Progress_Bar.ZIndex = 500
Progress_Bar.BorderSizePixel = 0
Progress_Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Progress_Bar.Parent = HolderV2

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 104)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(43, 43, 181))
}
UIGradient.Parent = Progress_Bar

local CountLabel = Instance.new("TextLabel")
CountLabel.Name = "CountLabel"
CountLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CountLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CountLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CountLabel.Text = "5/5"
CountLabel.AutomaticSize = Enum.AutomaticSize.XY
CountLabel.TextStrokeTransparency = 0
CountLabel.AnchorPoint = Vector2.new(0.5, 0.5)
CountLabel.Size = UDim2.new(0, 1, 0, 1)
CountLabel.BackgroundTransparency = 1
CountLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
CountLabel.BorderSizePixel = 0
CountLabel.ZIndex = 600
CountLabel.TextSize = 12
CountLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CountLabel.Parent = HolderV2

local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "Ammo"
TextLabel.TextStrokeTransparency = 0
TextLabel.AutomaticSize = Enum.AutomaticSize.XY
TextLabel.Size = UDim2.new(0, 1, 0, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 11, 0, 3)
TextLabel.BorderSizePixel = 0
TextLabel.ZIndex = 500
TextLabel.TextSize = 12
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Parent = MainFrame

-- Variables for progress bar animation
local currentAmmo = 5
local maxAmmo = 5
local isAnimating = false
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Enhanced progress bar animation with unique effects
local function updateProgressBar(isRefill)
    local progress = currentAmmo / maxAmmo
	-- Keep center label text updated
	if CountLabel then
		CountLabel.Text = currentAmmo .. "/" .. maxAmmo
	end
    
    -- Create unique animation based on whether it's a refill or depletion
    local tweenInfo
    local gradient = Progress_Bar:FindFirstChild("UIGradient")
    
    if isRefill then
        -- Refill animation: fast, bouncy, with color flash
        tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)
        
        -- Shimmer effect during refill using gradient offset and a brief glow
        if gradient then
            gradient.Offset = Vector2.new(-0.5, 0)
            TweenService:Create(gradient, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                Offset = Vector2.new(0, 0)
            }):Play()
        end
        local glowIn = TweenService:Create(Progress_Bar, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0.1
        })
        glowIn:Play()
        glowIn.Completed:Connect(function()
            TweenService:Create(Progress_Bar, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = 0
            }):Play()
        end)
    else
        -- Depletion animation: smooth, quick, with slight color dimming
        tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
        
        -- Subtle wiggle on gradient offset for depletion feedback
        if gradient then
            local out = TweenService:Create(gradient, TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                Offset = Vector2.new(0.1, 0)
            })
            out:Play()
            out.Completed:Connect(function()
                TweenService:Create(gradient, TweenInfo.new(0.12, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    Offset = Vector2.new(0, 0)
                }):Play()
            end)
        end
    end
    
    -- Animate the progress bar size
    local tween = TweenService:Create(Progress_Bar, tweenInfo, {
        Size = UDim2.new(progress, 0, 0, 8)
    })
    tween:Play()
end

-- Refill function with smooth animation
local function refillAmmo()
    if isAnimating then return end
    
    isAnimating = true
    currentAmmo = maxAmmo
    updateProgressBar(true)
    
    -- Reset animation lock after animation completes
    wait(0.3)
    isAnimating = false
end

-- Dragging functionality
local dragging = false
local dragStart = nil
local startPos = nil

local function updateDrag(input)
    local delta = input.Position - dragStart
    -- Keep original scales; add delta to offsets only
    local sx, sy = startPos.X.Scale, startPos.Y.Scale
    local ox, oy = startPos.X.Offset, startPos.Y.Offset
    MainFrame.Position = UDim2.new(sx, ox + delta.X, sy, oy + delta.Y)
end

-- R key detection for refill
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.R then
        refillAmmo()
    end
end)

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        -- Start progress bar animation when clicked
        if not isAnimating and currentAmmo > 0 then
            isAnimating = true
            currentAmmo = currentAmmo - 1
            updateProgressBar(false)
            
            -- Reset after animation completes
            wait(0.2)
            isAnimating = false
        end
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updateDrag(input)
    end
end)

MainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Initialize the progress bar
updateProgressBar(false)

 
