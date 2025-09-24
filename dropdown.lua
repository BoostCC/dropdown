function Library:CreateDropdown(config, section)
    if not section then
        if not CurrentTab or not CurrentTab.sections.left[1] and not CurrentTab.sections.right[1] then
            error("No section created. Call CreateSection first.")
            return
        end
        section = CurrentTab.sections.left[1] or CurrentTab.sections.right[1]
    end
    
    local container = section.frame:FindFirstChild(section.position .. "_Container")
    
    local dropdown = {
        text = config.DropdownText or "Example",
        options = config.Options or {"Option 1", "Option 2", "Option 3"},
        callback = config.Callback or function() end,
        value = config.Default or config.Options[1] or "Option 1",
        isOpen = false,
        multiSelect = config.MultiSelect or false,
        selectedValues = config.MultiSelect and {} or nil
    }
    
    -- Initialize multi-select values
    if dropdown.multiSelect then
        if config.Default and type(config.Default) == "table" then
            dropdown.selectedValues = config.Default
        else
            dropdown.selectedValues = {}
        end
        -- Set initial display text for multi-select
        if #dropdown.selectedValues > 0 then
            dropdown.value = table.concat(dropdown.selectedValues, ", ")
        else
            dropdown.value = "Select Options"
        end
    end
    
    -- Create dropdown component
local Dropdown_Component = Instance.new("Frame")
Dropdown_Component.Name = "Dropdown_Component"
Dropdown_Component.BackgroundTransparency = 1
Dropdown_Component.Position = UDim2.new(0, 0, 0.09732360392808914, 0)
Dropdown_Component.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dropdown_Component.Size = UDim2.new(0, 318, 0, 40)
Dropdown_Component.BorderSizePixel = 0
Dropdown_Component.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dropdown_Component.Parent = container

local Dropdown = Instance.new("Frame")
Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
Dropdown.Name = "Dropdown"
Dropdown.Position = UDim2.new(0.4874213933944702, 0, 0.5, 0)
Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dropdown.Size = UDim2.new(0, 279, 0, 40)
Dropdown.BorderSizePixel = 0
Dropdown.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
Dropdown.Parent = Dropdown_Component

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Dropdown

local Dropdown_Value = Instance.new("TextLabel")
Dropdown_Value.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Dropdown_Value.TextColor3 = Color3.fromRGB(109, 109, 109)
Dropdown_Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Dropdown_Value.Text = dropdown.value
Dropdown_Value.Name = "Dropdown_Value"
Dropdown_Value.Size = UDim2.new(0, 1, 0, 1)
Dropdown_Value.BackgroundTransparency = 1
Dropdown_Value.Position = UDim2.new(0.03831060975790024, 0, 0.32499998807907104, 0)
Dropdown_Value.BorderSizePixel = 0
Dropdown_Value.AutomaticSize = Enum.AutomaticSize.XY
Dropdown_Value.TextSize = 14
Dropdown_Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown_Value.Parent = Dropdown

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageColor3 = Color3.fromRGB(109, 109, 109)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Image = "rbxassetid://95652893039727"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.8745519518852234, 0, 0.25, 0)
ImageLabel.Size = UDim2.new(0, 20, 0, 20)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = Dropdown
    
    -- Create dropdown container (initially hidden)
    local Dropdown_Container = Instance.new("Frame")
    Dropdown_Container.Size = UDim2.new(0, 279, 0, 0)
    Dropdown_Container.Name = "Dropdown_Container"
    Dropdown_Container.Position = UDim2.new(0.4874213933944702, 0, 0.5, 20)
    Dropdown_Container.AnchorPoint = Vector2.new(0.5, 0)
    Dropdown_Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Dropdown_Container.BorderSizePixel = 0
    Dropdown_Container.AutomaticSize = Enum.AutomaticSize.Y
    Dropdown_Container.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    Dropdown_Container.Visible = false
    Dropdown_Container.BackgroundTransparency = 1
    Dropdown_Container.ZIndex = 1000
    Dropdown_Container.Parent = Dropdown_Component
    
    local containerCorner = Instance.new("UICorner")
    containerCorner.CornerRadius = UDim.new(0, 4)
    containerCorner.Parent = Dropdown_Container

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = Dropdown_Container
    
    local containerPadding = Instance.new("UIPadding")
    containerPadding.PaddingBottom = UDim.new(0, 8)
    containerPadding.PaddingTop = UDim.new(0, 5)
    containerPadding.Parent = Dropdown_Container
    
    -- Create option frames
    local optionFrames = {}
    for i, option in ipairs(dropdown.options) do
        local Frame = Instance.new("Frame")
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.Size = UDim2.new(0, 276, 0, 20)
        Frame.BorderSizePixel = 0
        Frame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        Frame.ZIndex = 1001
        Frame.Parent = Dropdown_Container
        
        local TextLabel = Instance.new("TextLabel")
        TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        TextLabel.TextColor3 = Color3.fromRGB(52, 52, 52)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = option
        TextLabel.AnchorPoint = Vector2.new(0, 0.5)
        TextLabel.Size = UDim2.new(0, 1, 0, 1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.03584229573607445, 0, 0.5, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.AutomaticSize = Enum.AutomaticSize.XY
        TextLabel.TextSize = 16
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.ZIndex = 1002
        TextLabel.Parent = Frame
        
        local Check_Icon = Instance.new("ImageLabel")
        Check_Icon.ImageColor3 = Library.Accent
        Check_Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Check_Icon.Name = "Check_Icon"
        Check_Icon.AnchorPoint = Vector2.new(0.5, 0.5)
        Check_Icon.Image = "rbxassetid://139958444428790"
        Check_Icon.BackgroundTransparency = 1
        Check_Icon.Position = UDim2.new(0.9070789217948914, 0, 0.5, 0)
        Check_Icon.Size = UDim2.new(0, 15, 0, 16)
        Check_Icon.BorderSizePixel = 0
        Check_Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Check_Icon.ZIndex = 1002
        Check_Icon.Parent = Frame
        
        -- Initially hide check icon and position it to the right
        Check_Icon.ImageTransparency = 1
        Check_Icon.Position = UDim2.new(1.2, 0, 0.5, 0)
        
        -- Click functionality for option
        local optionButton = Instance.new("TextButton")
        optionButton.BackgroundTransparency = 1
        optionButton.Size = UDim2.new(1, 0, 1, 0)
        optionButton.Text = ""
        optionButton.ZIndex = 1003
        optionButton.Parent = Frame
        
        optionButton.MouseButton1Click:Connect(function()
            if dropdown.multiSelect then
                -- Multi-select logic
                local isSelected = table.find(dropdown.selectedValues, option)
                
                if isSelected then
                    -- Remove from selection
                    table.remove(dropdown.selectedValues, isSelected)
                else
                    -- Add to selection
                    table.insert(dropdown.selectedValues, option)
                end
                
                -- Update display text
                if #dropdown.selectedValues > 0 then
                    dropdown.value = table.concat(dropdown.selectedValues, ", ")
                    Dropdown_Value.Text = dropdown.value
                else
                    dropdown.value = "Select Options"
                    Dropdown_Value.Text = dropdown.value
                end
                
                -- Update check icon for this option
                local checkIcon = Frame:FindFirstChild("Check_Icon")
                local textLabel = Frame:FindFirstChild("TextLabel")
                
                if isSelected then
                    -- Unselected - hide check icon with fast fade out
                    textLabel.TextColor3 = Color3.fromRGB(52, 52, 52)
                    
                    local slideOut = createTween(checkIcon, {
                        Position = UDim2.new(1.2, 0, 0.5, 0),
                        ImageTransparency = 1
                    }, 0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
                    slideOut:Play()
                else
                    -- Selected - show check icon with smooth animation
                    textLabel.TextColor3 = Library.Accent
                    
                    local slideIn = createTween(checkIcon, {
                        Position = UDim2.new(0.9070789217948914, 0, 0.5, 0),
                        ImageTransparency = 0
                    }, 0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                    slideIn:Play()
                end
                
                dropdown.callback(dropdown.selectedValues)
            else
                -- Single-select logic
                dropdown.value = option
                Dropdown_Value.Text = option
                
                -- Update all option frames
                for j, frame in ipairs(optionFrames) do
                    local checkIcon = frame:FindFirstChild("Check_Icon")
                    local textLabel = frame:FindFirstChild("TextLabel")
                    
                    if j == i then
                        -- Selected option - show check icon with smooth animation
                        textLabel.TextColor3 = Library.Accent
                        
                        -- Smooth slide in animation for check icon
                        local slideIn = createTween(checkIcon, {
                            Position = UDim2.new(0.9070789217948914, 0, 0.5, 0),
                            ImageTransparency = 0
                        }, 0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                        slideIn:Play()
                    else
                        -- Unselected option - hide check icon with fast fade out
                        textLabel.TextColor3 = Color3.fromRGB(52, 52, 52)
                        
                        -- Fast fade out and slide out animation
                        local slideOut = createTween(checkIcon, {
                            Position = UDim2.new(1.2, 0, 0.5, 0),
                            ImageTransparency = 1
                        }, 0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
                        slideOut:Play()
                    end
                end
                
                -- Close dropdown for single-select
                dropdown.isOpen = false
                Dropdown_Container.Size = UDim2.new(0, 279, 0, 0)
                Dropdown_Container.Visible = false
                
                -- Rotate arrow back
                local arrowTween = createTween(ImageLabel, {
                    Rotation = 0
                }, 0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                arrowTween:Play()
                
                -- Ensure overlay state resets so UI is usable again
                PopupOpenCount = math.max(0, PopupOpenCount - 1)
                if PopupOpenCount == 0 then
                    ModalOverlay.Visible = false
                    BlockDragging = false
                end
                if dropdown._overlayConn then dropdown._overlayConn:Disconnect() dropdown._overlayConn = nil end
                
                dropdown.callback(option)
            end
        end)
        
        table.insert(optionFrames, Frame)
    end
    
    -- Set initial selected options
    if dropdown.multiSelect then
        for i, option in ipairs(dropdown.options) do
            if table.find(dropdown.selectedValues, option) then
                local frame = optionFrames[i]
                local checkIcon = frame:FindFirstChild("Check_Icon")
                local textLabel = frame:FindFirstChild("TextLabel")
                
                textLabel.TextColor3 = Library.Accent
                checkIcon.Position = UDim2.new(0.9070789217948914, 0, 0.5, 0)
                checkIcon.ImageTransparency = 0
            end
        end
    else
        if dropdown.value then
            for i, option in ipairs(dropdown.options) do
                if option == dropdown.value then
                    local frame = optionFrames[i]
                    local checkIcon = frame:FindFirstChild("Check_Icon")
                    local textLabel = frame:FindFirstChild("TextLabel")
                    
                    textLabel.TextColor3 = Library.Accent
                    checkIcon.Position = UDim2.new(0.9070789217948914, 0, 0.5, 0)
                    checkIcon.ImageTransparency = 0
                end
            end
        end
    end
    
    -- Click functionality for dropdown button
    local dropdownButton = Instance.new("TextButton")
    dropdownButton.BackgroundTransparency = 1
    dropdownButton.Size = UDim2.new(1, 0, 1, 0)
    dropdownButton.Text = ""
    dropdownButton.Parent = Dropdown_Component
    
    dropdownButton.MouseButton1Click:Connect(function()
        dropdown.isOpen = not dropdown.isOpen
        
        if dropdown.isOpen then
            -- Open dropdown with ultra-smooth animation
            Dropdown_Container.Visible = true
            Dropdown_Container.Size = UDim2.new(0, 279, 0, 0)
            Dropdown_Container.BackgroundTransparency = 1
            PopupOpenCount = PopupOpenCount + 1
            ModalOverlay.Visible = true
            BlockDragging = true
            
            -- Fade in background first
            local fadeIn = createTween(Dropdown_Container, {
                BackgroundTransparency = 0
            }, 0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            fadeIn:Play()
            
            -- Then expand size with smooth easing
            local openTween = createTween(Dropdown_Container, {
                Size = UDim2.new(0, 279, 0, #dropdown.options * 20 + 13)
            }, 0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            openTween:Play()
            
            -- Rotate arrow with smooth easing
            local arrowTween = createTween(ImageLabel, {
                Rotation = 180
            }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            arrowTween:Play()
            -- Allow clicking overlay to close dropdown
            if dropdown._overlayConn then dropdown._overlayConn:Disconnect() dropdown._overlayConn = nil end
            dropdown._overlayConn = ModalOverlay.MouseButton1Click:Connect(function()
                if not dropdown.isOpen then return end
                dropdown.isOpen = false
                local closeTween = createTween(Dropdown_Container, { Size = UDim2.new(0, 279, 0, 0) }, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In)
                closeTween:Play()
                local fadeOut2 = createTween(Dropdown_Container, { BackgroundTransparency = 1 }, 0.2)
                fadeOut2:Play()
                closeTween.Completed:Connect(function()
                    Dropdown_Container.Visible = false
                    PopupOpenCount = math.max(0, PopupOpenCount - 1)
                    if PopupOpenCount == 0 then
                        ModalOverlay.Visible = false
                        BlockDragging = false
                    end
                end)
                local arrowBack = createTween(ImageLabel, { Rotation = 0 }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
                arrowBack:Play()
                if dropdown._overlayConn then dropdown._overlayConn:Disconnect() dropdown._overlayConn = nil end
            end)
        else
            -- Close dropdown with ultra-smooth animation
            local closeTween = createTween(Dropdown_Container, {
                Size = UDim2.new(0, 279, 0, 0)
            }, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In)
            closeTween:Play()
            
            -- Fade out background
            local fadeOut = createTween(Dropdown_Container, {
                BackgroundTransparency = 1
            }, 0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
            fadeOut:Play()
            
            closeTween.Completed:Connect(function()
                Dropdown_Container.Visible = false
                PopupOpenCount = math.max(0, PopupOpenCount - 1)
                if PopupOpenCount == 0 then
                    ModalOverlay.Visible = false
                    BlockDragging = false
                end
            end)
            
            -- Rotate arrow back with smooth easing
            local arrowTween = createTween(ImageLabel, {
                Rotation = 0
            }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            arrowTween:Play()
            if dropdown._overlayConn then dropdown._overlayConn:Disconnect() dropdown._overlayConn = nil end
        end
    end)
    
    table.insert(section.components, dropdown)
    return dropdown
end
