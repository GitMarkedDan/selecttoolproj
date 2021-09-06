stuff = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)
stage = 0
UIS = game:GetService("UserInputService")
pos = Vector3.new(0,0,0)
lastpos = Vector3.new(0,0,0)
Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()
print(pcall(function()
if true then
    if true then
        boxframe = Instance.new("Frame")
        boxframe.Parent = game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object
        boxframe.Name = "boxframe"
        boxframe.Size = UDim2.new(1, 0, 1, 0)
        boxframe.BackgroundTransparency = 1
        boxframe.BorderSizePixel = 0
        boxframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        
        cframe = Instance.new("TextButton")
        cframe.Name = "cframe"
        cframe.Selectable = false
        cframe.ZIndex = 6
        cframe.Size = UDim2.new(0.550885, 0, 0.09, 0)
        cframe.BackgroundTransparency = 1
        cframe.Position = UDim2.new(0.1761235, 0, 0.3364926, 0)
        cframe.Active = false
        cframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        cframe.FontSize = Enum.FontSize.Size14
        cframe.TextSize = 14
        cframe.TextColor3 = Color3.fromRGB(248, 248, 248)
        cframe.Text = "Use CFrame"
        cframe.TextWrap = true
        cframe.Font = Enum.Font.SourceSansBold
        cframe.TextWrapped = true
        cframe.TextScaled = true
        cframe.Parent = boxframe
        
        local on = Instance.new("BoolValue")
        on.Name = "on"
        on.Parent = cframe
        
        local icon = Instance.new("ImageLabel")
        icon.Name = "icon"
        icon.ZIndex = 6
        icon.Size = UDim2.new(1, 0, 1, 0)
        icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
        icon.BackgroundTransparency = 1
        icon.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
        icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        icon.ImageColor3 = Color3.fromRGB(255, 170, 170)
        icon.ImageRectOffset = Vector2.new(128, 0)
        icon.ImageRectSize = Vector2.new(128, 128)
        icon.Image = "rbxassetid://1447370003"
        icon.Parent = cframe
        
        local outline = Instance.new("TextLabel")
        outline.Name = "outline"
        outline.ZIndex = 5
        outline.Size = UDim2.new(1, 0, 1, 0)
        outline.BackgroundTransparency = 1
        outline.Position = UDim2.new(0, 0, 0.05, 0)
        outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline.FontSize = Enum.FontSize.Size14
        outline.TextTransparency = 0.8
        outline.TextSize = 14
        outline.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline.Text = "Use CFrame"
        outline.TextWrap = true
        outline.Font = Enum.Font.SourceSansBold
        outline.TextWrapped = true
        outline.TextScaled = true
        outline.Parent = cframe
        
        resize = Instance.new("TextButton")
        resize.Name = "resize"
        resize.Selectable = false
        resize.ZIndex = 6
        resize.Size = UDim2.new(0.550885, 0, 0.09, 0)
        resize.BackgroundTransparency = 1
        resize.Position = UDim2.new(0.1761235, 0, 0.2426477, 0)
        resize.Active = false
        resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        resize.FontSize = Enum.FontSize.Size14
        resize.TextSize = 14
        resize.TextColor3 = Color3.fromRGB(248, 248, 248)
        resize.Text = "Can Resize"
        resize.TextWrap = true
        resize.Font = Enum.Font.SourceSansBold
        resize.TextWrapped = true
        resize.TextScaled = true
        resize.Parent = boxframe
        
        local outline1 = Instance.new("TextLabel")
        outline1.Name = "outline"
        outline1.ZIndex = 5
        outline1.Size = UDim2.new(1, 0, 1, 0)
        outline1.BackgroundTransparency = 1
        outline1.Position = UDim2.new(0, 0, 0.05, 0)
        outline1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline1.FontSize = Enum.FontSize.Size14
        outline1.TextTransparency = 0.8
        outline1.TextSize = 14
        outline1.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline1.Text = "Can Resize"
        outline1.TextWrap = true
        outline1.Font = Enum.Font.SourceSansBold
        outline1.TextWrapped = true
        outline1.TextScaled = true
        outline1.Parent = resize
        
        local icon1 = Instance.new("ImageLabel")
        icon1.Name = "icon"
        icon1.ZIndex = 6
        icon1.Size = UDim2.new(1, 0, 1, 0)
        icon1.SizeConstraint = Enum.SizeConstraint.RelativeYY
        icon1.BackgroundTransparency = 1
        icon1.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
        icon1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        icon1.ImageColor3 = Color3.fromRGB(170, 255, 170)
        icon1.ImageRectSize = Vector2.new(128, 128)
        icon1.Image = "rbxassetid://1447370003"
        icon1.Parent = resize
        
        local on1 = Instance.new("BoolValue")
        on1.Name = "on"
        on1.Value = true
        on1.Parent = resize
        
        lock = Instance.new("TextButton")
        lock.Name = "lock"
        lock.Selectable = false
        lock.ZIndex = 6
        lock.Size = UDim2.new(0.550885, 0, 0.09, 0)
        lock.BackgroundTransparency = 1
        lock.Position = UDim2.new(0.176, 0, 0.429, 0)
        lock.Active = false
        lock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        lock.FontSize = Enum.FontSize.Size14
        lock.TextSize = 14
        lock.TextColor3 = Color3.fromRGB(248, 248, 248)
        lock.Text = "Lock Position"
        lock.TextWrap = true
        lock.Font = Enum.Font.SourceSansBold
        lock.TextWrapped = true
        lock.TextScaled = true
        lock.Parent = boxframe
        
        local on2 = Instance.new("BoolValue")
        on2.Name = "on"
        on2.Parent = lock
        
        local icon2 = Instance.new("ImageLabel")
        icon2.Name = "icon"
        icon2.ZIndex = 6
        icon2.Size = UDim2.new(1, 0, 1, 0)
        icon2.SizeConstraint = Enum.SizeConstraint.RelativeYY
        icon2.BackgroundTransparency = 1
        icon2.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
        icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        icon2.ImageColor3 = Color3.fromRGB(255, 170, 170)
        icon2.ImageRectOffset = Vector2.new(128, 0)
        icon2.ImageRectSize = Vector2.new(128, 128)
        icon2.Image = "rbxassetid://1447370003"
        icon2.Parent = lock
        
        local outline2 = Instance.new("TextLabel")
        outline2.Name = "outline"
        outline2.ZIndex = 5
        outline2.Size = UDim2.new(1, 0, 1, 0)
        outline2.BackgroundTransparency = 1
        outline2.Position = UDim2.new(0, 0, 0.05, 0)
        outline2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline2.FontSize = Enum.FontSize.Size14
        outline2.TextTransparency = 0.8
        outline2.TextSize = 14
        outline2.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline2.Text = "Lock Position"
        outline2.TextWrap = true
        outline2.Font = Enum.Font.SourceSansBold
        outline2.TextWrapped = true
        outline2.TextScaled = true
        outline2.Parent = lock
        
        rel = Instance.new("TextButton")
        rel.Name = "rel"
        rel.Selectable = false
        rel.ZIndex = 6
        rel.Size = UDim2.new(0.550885, 0, 0.09, 0)
        rel.BackgroundTransparency = 1
        rel.Position = UDim2.new(0.176, 0, 0.522, 0)
        rel.Active = false
        rel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        rel.FontSize = Enum.FontSize.Size14
        rel.TextSize = 14
        rel.TextColor3 = Color3.fromRGB(248, 248, 248)
        rel.Text = "Relative Scaling"
        rel.TextWrap = true
        rel.Font = Enum.Font.SourceSansBold
        rel.TextWrapped = true
        rel.TextScaled = true
        rel.Parent = boxframe
        
        local on3 = Instance.new("BoolValue")
        on3.Name = "on"
        on3.Parent = rel
        
        local icon3 = Instance.new("ImageLabel")
        icon3.Name = "icon"
        icon3.ZIndex = 6
        icon3.Size = UDim2.new(1, 0, 1, 0)
        icon3.SizeConstraint = Enum.SizeConstraint.RelativeYY
        icon3.BackgroundTransparency = 1
        icon3.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
        icon3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        icon3.ImageColor3 = Color3.fromRGB(255, 170, 170)
        icon3.ImageRectOffset = Vector2.new(128, 0)
        icon3.ImageRectSize = Vector2.new(128, 128)
        icon3.Image = "rbxassetid://1447370003"
        icon3.Parent = rel
        
        local outline3 = Instance.new("TextLabel")
        outline3.Name = "outline"
        outline3.ZIndex = 5
        outline3.Size = UDim2.new(1, 0, 1, 0)
        outline3.BackgroundTransparency = 1
        outline3.Position = UDim2.new(0, 0, 0.05, 0)
        outline3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline3.FontSize = Enum.FontSize.Size14
        outline3.TextTransparency = 0.8
        outline3.TextSize = 14
        outline3.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline3.Text = "Relative Scaling"
        outline3.TextWrap = true
        outline3.Font = Enum.Font.SourceSansBold
        outline3.TextWrapped = true
        outline3.TextScaled = true
        outline3.Parent = rel
        
        delete = Instance.new("TextButton")
        delete.Name = "delete"
        delete.Selectable = false
        delete.ZIndex = 6
        delete.Size = UDim2.new(0.625, 0, 0.09, 0)
        delete.BackgroundTransparency = 1
        delete.Position = UDim2.new(0.18, 0, 0.708, 0)
        delete.Active = false
        delete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        delete.FontSize = Enum.FontSize.Size14
        delete.TextSize = 14
        delete.TextColor3 = Color3.fromRGB(248, 0, 4)
        delete.Text = "DELETE ALL SELECTED"
        delete.TextWrap = true
        delete.Font = Enum.Font.SourceSansBold
        delete.TextWrapped = true
        delete.TextScaled = true
        delete.Parent = boxframe
        
        local outline4 = Instance.new("TextLabel")
        outline4.Name = "outline"
        outline4.ZIndex = 5
        outline4.Size = UDim2.new(1, 0, 1, 0)
        outline4.BackgroundTransparency = 1
        outline4.Position = UDim2.new(0, 0, 0.05, 0)
        outline4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline4.FontSize = Enum.FontSize.Size14
        outline4.TextTransparency = 0.8
        outline4.TextSize = 14
        outline4.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline4.Text = "DELETE ALL SELECTED"
        outline4.TextWrap = true
        outline4.Font = Enum.Font.SourceSansBold
        outline4.TextWrapped = true
        outline4.TextScaled = true
        outline4.Parent = delete
        
        key = Instance.new("TextButton")
        key.Name = "key"
        key.Selectable = false
        key.ZIndex = 6
        key.Size = UDim2.new(0.550885, 0, 0.09, 0)
        key.BackgroundTransparency = 1
        key.Position = UDim2.new(0.176, 0, 0.615, 0)
        key.Active = false
        key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        key.FontSize = Enum.FontSize.Size14
        key.TextSize = 14
        key.TextColor3 = Color3.fromRGB(248, 248, 248)
        key.Text = "Enable Keybinds"
        key.TextWrap = true
        key.Font = Enum.Font.SourceSansBold
        key.TextWrapped = true
        key.TextScaled = true
        key.Parent = boxframe
        
        local on4 = Instance.new("BoolValue")
        on4.Name = "on"
        on4.Parent = key
        
        local icon4 = Instance.new("ImageLabel")
        icon4.Name = "icon"
        icon4.ZIndex = 6
        icon4.Size = UDim2.new(1, 0, 1, 0)
        icon4.SizeConstraint = Enum.SizeConstraint.RelativeYY
        icon4.BackgroundTransparency = 1
        icon4.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
        icon4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        icon4.ImageColor3 = Color3.fromRGB(255, 170, 170)
        icon4.ImageRectOffset = Vector2.new(128, 0)
        icon4.ImageRectSize = Vector2.new(128, 128)
        icon4.Image = "rbxassetid://1447370003"
        icon4.Parent = key
        
        local outline5 = Instance.new("TextLabel")
        outline5.Name = "outline"
        outline5.ZIndex = 5
        outline5.Size = UDim2.new(1, 0, 1, 0)
        outline5.BackgroundTransparency = 1
        outline5.Position = UDim2.new(0, 0, 0.05, 0)
        outline5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline5.FontSize = Enum.FontSize.Size14
        outline5.TextTransparency = 0.8
        outline5.TextSize = 14
        outline5.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline5.Text = "Enable Keybinds"
        outline5.TextWrap = true
        outline5.Font = Enum.Font.SourceSansBold
        outline5.TextWrapped = true
        outline5.TextScaled = true
        outline5.Parent = key
    
        for i,v in pairs(boxframe:GetChildren()) do
            v.MouseEnter:Connect(function()
                stuff.textsel = v
            end)
        end
        
        for i,v in pairs(boxframe:GetChildren()) do
            if v:FindFirstChild("icon") then
                v.MouseButton1Click:Connect(function()
                    if v.on.Value then
                        v.icon.ImageColor3 = Color3.fromRGB(255, 170, 170)
                        v.on.Value = false
                        v.icon.ImageRectOffset = Vector2.new(128,0)
                    else
                        v.icon.ImageColor3 = Color3.fromRGB(170, 255, 170)
                        v.on.Value = true
                        v.icon.ImageRectOffset = Vector2.new(0,0)
                    end
                end)
            end
        end
        delete.MouseButton1Click:Connect(function()
            box:Destroy()
            par:Destroy()
            stage = 0
            stuff.pause()
        end)
    end
    func = stuff.toattack
    stuff.toattack = function(a,b,c)
        if stuff.make.near then
            if stuff.make.mode == "create" and stuff.make.near.Name == "selbox" then
                for i,v in ipairs(par:GetChildren()) do
                    clone = v:Clone()
                    clone.Parent = game.workspace.MAKE.place
                    clone.diff:Destroy()
                    clone.rotdiff:Destroy()
                    clone.scalediff:Destroy()
                    clone.cframediff:Destroy()
                end
                return nil
            end
        end
        pcall(func,a,b,c)
        if stuff.map then
            if stuff.map.Name == "MAKE" then
                if stuff.paused and stuff.make.near.Name == "selbox" and stuff.make.mode == "option" then
                    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object:GetChildren()) do
                        if v.ClassName == "Frame" then
            				v.Visible = false
            			end		
                    end
                    boxframe.Visible = true
                end
            end
        end
    end
end

function createmakebutton(name,color,pos,image,cfunc,dfunc)
    button = Instance.new("ImageButton",Player.PlayerGui.UI.MAKE)
    button.BackgroundTransparency = 1
    button.Image = "rbxassetid://1555990934"
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Selectable = true
    button.Position = pos
    button.Name = name
    button.SizeConstraint = Enum.SizeConstraint.RelativeYY
    
    local col = Instance.new("Color3Value",game:GetService("ReplicatedFirst").maps.MAKE.arrow)
    col.Value = color
    col.Name = name
    
    local label = Instance.new("TextLabel",button)
    label.Name = "label"
    label.ZIndex = 2
    label.Size = UDim2.new(1, 0, 0.3, 0)
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0, 0, 1, 0)
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.FontSize = Enum.FontSize.Size14
    label.TextSize = 14
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Text = name
    label.TextWrap = true
    label.Font = Enum.Font.SourceSansBold
    label.TextWrapped = true
    label.TextScaled = true

    local outline = Instance.new("TextLabel")
    outline.Name = "outline"
    outline.Size = UDim2.new(1, 0, 1, 0)
    outline.BackgroundTransparency = 1
    outline.Position = UDim2.new(0, 0, 0.05, 0)
    outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline.FontSize = Enum.FontSize.Size14
    outline.TextTransparency = 0.8
    outline.TextSize = 14
    outline.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline.Text = name
    outline.TextWrap = true
    outline.Font = Enum.Font.SourceSansBold
    outline.TextWrapped = true
    outline.TextScaled = true
    outline.Parent = label
    
    local ImageLabel = Instance.new("ImageLabel",button)
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.Image = image
    ImageLabel.ImageRectOffset = Vector2.new(0, 0)
    ImageLabel.ImageRectSize = Vector2.new(512, 512)
    ImageLabel.Active = true
    
    button.MouseButton1Click:Connect(function()
        stuff.make.mode = name
        for i,v in ipairs(game.workspace.MAKE.place:GetChildren()) do
            v.Parent = game.workspace.MAKE.placeb
        end
    end)
end

other = Instance.new("Folder",game:GetService("ReplicatedFirst").maps.MAKE)
other.Name = "placeb"

UIS.InputBegan:Connect(function(input)
    if stuff.map then
        if stuff.map.Name == "MAKE" then
            if input.KeyCode == Enum.KeyCode.RightBracket then
                if not stuff.paused then
                    stuff.pause(true)
                    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object:GetChildren()) do
                        if v.ClassName == "Frame" then
            				v.Visible = false
            			end		
                    end
                    Player.PlayerGui.UI.pause.bg.Visible = false
                    Player.PlayerGui.UI.pause.bg.Active = false
                    Player.PlayerGui.UI.pause.bg3.Visible = true
                    Player.PlayerGui.UI.pause.bg3.Active = true
                    boxframe.Active = true
                    boxframe.Visible = true
                    boxframe.Parent.Active = true
                    boxframe.Parent.Visible = true
                    boxframe.Parent.Parent.Active = true
                    boxframe.Parent.Parent.Visible = true
                else
                    stuff.pause()
                end
            end
            if box.Parent and key.on.Value then 
                if input.KeyCode == Enum.KeyCode.Z then
                    for i,v in ipairs(par:GetChildren()) do
                        clone = v:Clone()
                        clone.Parent = game.workspace.MAKE.place
                        clone.diff:Destroy()
                        clone.rotdiff:Destroy()
                        clone.scalediff:Destroy()
                        clone.cframediff:Destroy()
                    end
                elseif input.KeyCode == Enum.KeyCode.X then
                    box:Destroy()
                    SelectionBox:Destroy()
                    dat:Destroy()
                    for i,v in ipairs(par:GetChildren()) do
                        v.Parent = game.workspace.MAKE.place
                        v.diff:Destroy()
                        v.rotdiff:Destroy()
                        v.relscalediff:Destroy()
                        v.scalediff:Destroy()
                        v.cframediff:Destroy()
                    end
                    par:Destroy()
                    stage = 0
                elseif input.KeyCode == Enum.KeyCode.C then
                    box:Destroy()
                    par:Destroy()
                    stage = 0
                end
            end
        end
    end
end)

-- If your wondering about why so many functions, I actually make the functions seperately from this project, and I just reused it here
function test()
    if cframeval.Value then
        cframeval.Value = false
        Player.PlayerGui.UI.pause.bg3.pause.cframe.TextColor3 = Color3.fromRGB(255,0,0)
    else
        cframeval.Value = true
        Player.PlayerGui.UI.pause.bg3.pause.cframe.TextColor3 = Color3.fromRGB(0,255,0)
    end
end

function test2()
    if scaleval.Value then
        scaleval.Value = false
        Player.PlayerGui.UI.pause.bg3.pause.scale.TextColor3 = Color3.fromRGB(255,0,0)
    else
        scaleval.Value = true
        Player.PlayerGui.UI.pause.bg3.pause.scale.TextColor3 = Color3.fromRGB(0,255,0)
    end
end

function test3()
    if lockval.Value then
        lockval.Value = false
        Player.PlayerGui.UI.pause.bg3.pause.lock.TextColor3 = Color3.fromRGB(255,0,0)
    else
        lockval.Value = true
        Player.PlayerGui.UI.pause.bg3.pause.lock.TextColor3 = Color3.fromRGB(0,255,0)
    end
end

function test4()
    if relscale.Value then
        relscale.Value = false
        Player.PlayerGui.UI.pause.bg3.pause.rel.TextColor3 = Color3.fromRGB(255,0,0)
    else
        relscale.Value = true
        Player.PlayerGui.UI.pause.bg3.pause.rel.TextColor3 = Color3.fromRGB(0,255,0)
    end
end

createmakebutton("select",Color3.new(150,255,0),UDim2.new(1.2,0,0,0),"rbxassetid://7409871696")

sign = game:GetService("ReplicatedFirst").maps.hub["Sheldon Sign"]
sign.tx.Value = "Ok Imma give you a quick tutorial on how select tool works."
sign.tx.tx.Value = "Select two corners and you can use different tools such as move, scale, or rotate to modify the box."
sign.tx.tx.tx.Value = "When the box is active, cloning it will dupe anything in it, deleting the box or clicking again with the select tool will remove the box."
sign.tx.tx.tx.tx.Value = "You can edit settings by heading to the properties of the box or pressing ]"
sign.tx.tx.tx.tx.beebo:Destroy()
sign.tx.tx.tx.tx.tx.Value = "Inside it is an option to delete all objects, and some other stuff that Poke will explain cuz im out of dialogue"
sign.tx.tx.tx.tx.tx.tx.Value = "did i #ask"

poke = game:GetService("ReplicatedFirst").maps.hub["Poké"]
poke.tx.Value = "Poke but not actually Poke here, I was sent to explain the properties menu"
poke.tx.tx.Value = "There is a Enable Keybinds Option, letting you dupe with Z, remove the select the box with X, and delete everything in the box with C."
poke.tx.tx.tx.Value = "The Can Resize option is probably self explanatory, Use CFrame rotates objects when you rotate the box."
txtt = Instance.new("StringValue", poke.tx.tx.tx)
txtt.Value = "Lock Position locks all objects in their current positions, and relative scaling is just worse scaling, keep it off."
txtt.Name = "tx"
ftxt = Instance.new("StringValue", txtt)
ftxt.Value = "Final note: Always keep a backup of your levels. This mod/exploit could block you from exporting if it bugs out. (Also precise positioning is a lil weird with this, I'm workin on it)"
ftxt.Name = "tx"

Mouse.Button1Down:Connect(function(input)
    if stuff.make.mode == "select" then
        stage = stage + 1
        if stage == 2 then
            par = Instance.new("Folder",game.workspace.MAKE.place)
            ignorelist = {workspace.char,workspace.MAKE.arrow,workspace.MAKE.sel,workspace.MAKE.grid,workspace.MAKE.kill}
            for i,v in ipairs(game.Workspace:FindPartsInRegion3WithIgnoreList(Region3.new(box.Position - box.Size * 0.5,box.Position + box.Size * 0.5),ignorelist,math.huge)) do
                -- once all the objects are in par, they can't be selected, making the move tool that it defaults to useless
                if v.Parent == workspace.MAKE.placeb  then
                    --  :IsDescendantOf(workspace.MAKE)
                    v.Parent = par
                    diff = Instance.new("Vector3Value",v)
                    diff.Name = "diff"
                    diff.Value = box.Position - v.Position
                    rotdiff = Instance.new("Vector3Value",v)
                    rotdiff.Name = "rotdiff"
                    rotdiff.Value = box.Orientation - v.Orientation
                    relscalediff = Instance.new("Vector3Value",v)
                    relscalediff.Name = "relscalediff"
                    relscalediff.Value = v.Size / box.Size
                    scalediff = Instance.new("Vector3Value",v)
                    scalediff.Name = "scalediff"
                    scalediff.Value = v.Size - box.Size
                    cframediff = Instance.new("CFrameValue",v)
                    cframediff.Name = "cframediff"
                    cframediff.Value = box.CFrame:ToObjectSpace(v.CFrame)
                end
            end
            par.Name = "grouped"
            -- ^^ that variable is a global variable cuz i was too lazy to change it
            box.Parent = game.workspace.MAKE.place
        elseif stage == 1 then
            box = Instance.new("Part",game.workspace)
            box.Name = "selbox"
            box.BottomSurface = Enum.SurfaceType.Smooth
            box.TopSurface = Enum.SurfaceType.Smooth
            box.Transparency = 1
            box.Color = Color3.fromRGB(172, 0, 143)
            box.Material = Enum.Material.SmoothPlastic
            box.Size = Vector3.new(0,0,0)
            box.Position = game.workspace.MAKE.arrow.Position
            box.Anchored = true
        
            SelectionBox = Instance.new("SelectionBox", box)
            SelectionBox.Color3 = Color3.fromRGB(172, 0, 143)
            SelectionBox.SurfaceColor3 = Color3.fromRGB(13, 105, 172)
            SelectionBox.Adornee = box
            SelectionBox.LineThickness = 0.15
            SelectionBox.Transparency = 1
            
            dat = Instance.new("Folder",box)
            dat.Name = "option"
            
        else
            box:Destroy()
            SelectionBox:Destroy()
            dat:Destroy()
            for i,v in ipairs(par:GetChildren()) do
                v.Parent = game.workspace.MAKE.placeb
                v.diff:Destroy()
                v.rotdiff:Destroy()
                v.relscalediff:Destroy()
                v.scalediff:Destroy()
                v.cframediff:Destroy()
            end
            par:Destroy()
            stage = 0
        end
    end
end)
print("Ran successfully! Warp to hub and talk to sheldon/poké and they'll give advice about this mod/exploit")
while true do
    if stuff.map.Name == "MAKE" then
        if stage == 2 then
            if not box.Parent then
                box:Destroy()
                SelectionBox:Destroy()
                dat:Destroy()
                for i,v in ipairs(par:GetChildren()) do
                    v.Parent = game.workspace.MAKE.place
                    v.diff:Destroy()
                    v.rotdiff:Destroy()
                    v.relscalediff:Destroy()
                    v.scalediff:Destroy()
                    v.cframediff:Destroy()
                end
                par:Destroy()
                stage = 0
            else
                --does box transformations
                for i,v in ipairs(par:GetChildren()) do
                    if not lock.on.Value then 
                        if cframe.on.Value then
                            v.CFrame = box.CFrame:ToWorldSpace(v.cframediff.Value)
                        else
                            v.Position = box.Position - v.diff.Value
                            v.Orientation = box.Orientation + v.rotdiff.Value
                        end
                    end
                    if resize.on.Value then
                        if rel.on.Value then
                            v.Size = box.Size * v.relscalediff.Value
                        else
                            v.Size = box.Size + v.scalediff.Value
                        end
                    end
                end
            end
        end
        if stuff.make.mode ~= "select" and next(game.workspace.MAKE.placeb:GetChildren()) ~= nil then
            --if not select and placeb has stuff
            for i,v in ipairs(game.workspace.MAKE.placeb:GetChildren()) do
                v.Parent = game.workspace.MAKE.place
            end
        elseif stage ~= 2 then
            truepos = game.workspace.MAKE.arrow.Position - Vector3.new(0,3,0)
            if stuff.make.mode == "select" then
                if stage == 1 then
                    truepos = game.workspace.MAKE.arrow.Position - Vector3.new(0,3,0)
                    SelectionBox.Transparency = 0
                    box.Transparency = 0.6
                    size = pos - truepos
                    box.Size = Vector3.new(math.abs(size.X),math.abs(size.Y),math.abs(size.Z))
                    box.Position = (pos + truepos)/2
                else
                    pos = truepos
                end
            elseif stage ~= 0 then
                box:Destroy()
                stage = 0
            end
        end
    end
    wait()
end
end))
-- Hey 3dg your probably reading this hi
-- I added in some comments to make this easier to read
