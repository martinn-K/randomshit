local lib = {}

function lib.Window()
    local ActzLib = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    ActzLib.Name = "ActzLib"
    ActzLib.Parent = game:GetService("CoreGui")
    ActzLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Frame.Parent = ActzLib
    Frame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    Frame.Position = UDim2.new(0.00841750856, 0, 0.0380368084, 0)
    Frame.Size = UDim2.new(0, 136, 0, 237)
    local UIGridLayout = Instance.new("UIGridLayout")
    UIGridLayout.Parent = Frame
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
    UIGridLayout.CellSize = UDim2.new(1, 0, 0, 20)
    return {
        Button = function(text, callback)
            print(text)
            local TextButton = Instance.new("TextButton")
            TextButton.Parent = Frame
            TextButton.Parent = tostring(text)
            TextButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
            TextButton.Size = UDim2.new(0, 200, 0, 50)
            TextButton.Font = Enum.Font.Arial
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14.000
            TextButton.MouseButton1Click:Connect(function()
                pcall(callback())
            end)
        end
    }
end

return lib
