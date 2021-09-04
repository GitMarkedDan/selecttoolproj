stuff = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)
stage = 0
UIS = game:GetService("UserInputService")
pos = Vector3.new(0,0,0)
lastpos = Vector3.new(0,0,0)
Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()

--declaration of vars for upcoming funcs
box = nil
doing = nil
once = false
pos = nil
cframe = nil
scaleval = nil
protval = nil

Mouse.Button1Down:Connect(function(input)
    if stuff.make.mode == "select" then
        stage = stage + 1
        if stage == 2 then
            _G.par = Instance.new("Folder",game.workspace.MAKE.place)
            ignorelist = {workspace.char,workspace.MAKE.arrow,workspace.MAKE.sel,workspace.MAKE.grid,workspace.MAKE.kill}
            for i,v in ipairs(game.Workspace:FindPartsInRegion3WithIgnoreList(Region3.new(box.Position - box.Size * 0.5,box.Position + box.Size * 0.5),ignorelist,math.huge)) do
                -- once all the objects are in _G.par, they can't be selected, making the move tool that it defaults to useless
                if v:IsDescendantOf(workspace.MAKE) then
                    v.Parent = _G.par
                    diff = Instance.new("Vector3Value",v)
                    diff.Name = "diff"
                    diff.Value = box.Position - v.Position
                    rotdiff = Instance.new("Vector3Value",v)
                    rotdiff.Name = "rotdiff"
                    rotdiff.Value = box.Orientation - v.Orientation
                    scalediff = Instance.new("Vector3Value",v)
                    scalediff.Name = "scalediff"
                    scalediff.Value = v.Size / box.Size
                    cframediff = Instance.new("CFrameValue",v)
                    cframediff.Name = "cframediff"
                    cframediff.Value = box.CFrame:ToObjectSpace(v.CFrame)
                end
            end
            _G.par.Name = "grouped"
            -- ^^ that variable is a global variable cuz i was too lazy to change it
            box.Parent = game.workspace.MAKE.place
        elseif stage == 1 then
            box = Instance.new("Part",game.workspace)
            box.Name = "P2"
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
            doing = true
        end
    end
end)

other = Instance.new("Folder",game:GetService("ReplicatedFirst").maps.MAKE)
other.Name = "placeb"

UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.Z then
for i,v in ipairs(_G.par:GetChildren()) do
    clone = v:Clone()
    clone.Parent = game.workspace.MAKE.place
    clone.diff:Destroy()
    clone.rotdiff:Destroy()
    clone.scalediff:Destroy()
    clone.cframediff:Destroy()
end
end
end)

function createButton(name,position,text,func,parent)
    parent = parent or game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause
    unloop = false
    Button = Instance.new("TextButton")
    Button.Font = Enum.Font.SourceSansBold
    Button.TextColor3 = Color3.fromRGB(255,0,0)
    Button.Name = name
    Button.Position = position
    Button.Size = UDim2.new(0.2,0,0.2,0)
    Button.Text = text
    Button.ZIndex = 6
    Button.TextSize = 14
    Button.BackgroundTransparency = 1
    Button.Parent = parent
    Button.TextScaled = true

    Outline = Instance.new("TextLabel")
    Outline.Name = "outline"
    Outline.Text = text
    Outline.Position = UDim2.new(0,0,0,3)
    Outline.TextScaled = true
    Outline.Size = UDim2.new(1,0,1,0)
    Outline.TextColor3 = Color3.new(0,0,0)
    Outline.TextTransparency = 0.8
    Outline.BackgroundTransparency = 1
    Outline.TextSize = 14
    Outline.Font = Button.Font
    Outline.Parent = Button
    Button.MouseEnter:Connect(function()
    stuff.textsel = Button
    end)
    Button.MouseButton1Click:Connect(func)
    return Button
end

function createmakebutton(name,color,pos,image,cfunc,dfunc)
    button = Instance.new("ImageButton",game:GetService("Players").Epicminecrafte.PlayerGui.UI.MAKE)
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
    ImageLabel.ImageRectOffset = Vector2.new(128, 0)
    ImageLabel.ImageRectSize = Vector2.new(128, 128)
    ImageLabel.Active = true
    
    button.MouseButton1Click:Connect(function()
        stuff.make.mode = name
        for i,v in ipairs(game.workspace.MAKE.place:GetChildren()) do
            v.Parent = game.workspace.MAKE.placeb
        end
        doing = true
    end)
    
    
end
-- If your wondering about why so many functions, I actually make the functions seperately from this project, and I just reused it here
function test()
if  cframeval.Value then
    cframeval.Value = false
    Player.PlayerGui.UI.pause.bg3.pause.cframe.TextColor3 = Color3.fromRGB(255,0,0)
else
    cframeval.Value = true
    Player.PlayerGui.UI.pause.bg3.pause.cframe.TextColor3 = Color3.fromRGB(0,255,0)
end
end
function test2()
if  scaleval.Value then
    scaleval.Value = false
    Player.PlayerGui.UI.pause.bg3.pause.scale.TextColor3 = Color3.fromRGB(255,0,0)
else
    scaleval.Value = true
    Player.PlayerGui.UI.pause.bg3.pause.scale.TextColor3 = Color3.fromRGB(0,255,0)
end
end
function test3()
if  protval.Value then
    protval.Value = false
    Player.PlayerGui.UI.pause.bg3.pause.prot.TextColor3 = Color3.fromRGB(255,0,0)
else
    protval.Value = true
    Player.PlayerGui.UI.pause.bg3.pause.prot.TextColor3 = Color3.fromRGB(0,255,0)
end
end
createButton("cframe", UDim2.new(0.75,0,0,0),"Rotating box changes object position",test,Player.PlayerGui.UI.pause.bg3.pause)
createButton("scale", UDim2.new(0.1,0,0,0),"Scaling box changes object size",test2,Player.PlayerGui.UI.pause.bg3.pause)
protbut = createButton("prot",UDim2.new(0.4,0,-0.1,0),"Protect important objects",test3,Player.PlayerGui.UI.pause.bg3.pause)
protbut.TextColor3 = Color3.new(0,255,0)
protval = Instance.new("BoolValue", Player.PlayerGui.UI.pause.bg3.pause.prot)
cframeval = Instance.new("BoolValue", Player.PlayerGui.UI.pause.bg3.pause.cframe)
scaleval = Instance.new("BoolValue", Player.PlayerGui.UI.pause.bg3.pause.scale)
cframeval.Value = false
scaleval.Value = false
protval.Value = true
createmakebutton("select",Color3.new(150,255,0),UDim2.new(1.2,0,0,0),"rbxassetid://1556129878")

sign = game:GetService("ReplicatedFirst").maps.hub["Sheldon Sign"]
sign.tx.Value = "Ok Imma give you a quick tutorial on how select tool works."
sign.tx.tx.Value = "Select two corners and you can use different tools such as move, scale, or rotate to modify the box."
sign.tx.tx.tx.Value = "When the box is active, press Z to duplicate anything in it, X to remove the box, or C to remove the box AND everything inside of it."
sign.tx.tx.tx.tx.Value = "How about if I open two boxes"
sign.tx.tx.tx.tx.tx.Value = "I'm pretty sure it deletes objects and stuff, so don't."
sign.tx.tx.tx.tx.tx.tx.Value = 'But I thought you said "' .. "I'm " .. 'not your momma, you do what you want."'

poke = game:GetService("ReplicatedFirst").maps.hub["Poké"]
poke.tx.Value = "Keep in mind this mod/exploit is fairly fragile, so if you're using this to make levels always keep a backup."
poke.tx.tx.Value = "I would not recommend deleting the box, as I havent tested that yet, but if you do, press X."
poke.tx.tx.tx.Value = "Also, if you disable protect important objects you have a chance of softlocking."
ftxt = Instance.new("StringValue", poke.tx.tx.tx)
ftxt.Value = "Oh yeah almost forgot if you press X or C when the box is selected with move/scale/rotate etc, just deselect it."
ftxt.Name = "tx"
print("Ran successfully! Warp to hub and talk to sheldon/poké and they'll give advice about this mod/exploit")
while true do
    if stage == 2 then
        if UIS:IsKeyDown(Enum.KeyCode.X) then
            box:Destroy()
            SelectionBox:Destroy()
            for i,v in ipairs(_G.par:GetChildren()) do
                v.Parent = game.workspace.MAKE.place
                v.diff:Destroy()
                v.rotdiff:Destroy()
                v.scalediff:Destroy()
                v.cframediff:Destroy()
            end
            _G.par:Destroy()
            stage = 0
        elseif UIS:IsKeyDown(Enum.KeyCode.C) then
            box:Destroy()
            SelectionBox:Destroy()
            for i,v in ipairs(_G.par:GetChildren()) do
                v:ClearAllChildren()
                v:Destroy()
            end
            _G.par:Destroy()
            stage = 0
        else
            for i,v in ipairs(_G.par:GetChildren()) do
                if cframeval.Value then
                    v.CFrame = box.CFrame:ToWorldSpace(v.cframediff.Value)
                else
                    v.Position = box.Position - v.diff.Value
                    v.Orientation = box.Orientation + v.rotdiff.Value
                end
                if scaleval.Value then
                    v.Size = box.Size * v.scalediff.Value
                end
            end
        end
    elseif stuff.make.mode == "select" then
        truepos = game.workspace.MAKE.arrow.Position - Vector3.new(0,3,0)
        if stage == 1 then
            SelectionBox.Transparency = 0
            box.Transparency = 0.6
            size = pos - truepos
            box.Size = Vector3.new(math.abs(size.X),math.abs(size.Y),math.abs(size.Z))
            box.Position = (pos + truepos)/2
        else
            pos = truepos
        end
    elseif doing then
        for i,v in ipairs(game.workspace.MAKE.placeb:GetChildren()) do
            v.Parent = game.workspace.MAKE.place
        end
        _G.par:Destroy()
        stage = 0
        doing = false
    end
    wait(0.00000000001)
end
-- Hey 3dg your probably reading this hi
-- I added in some comments to make this easier to read
