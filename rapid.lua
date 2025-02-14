getgenv().rapid = true

local function rp()
    for i = 1, 25 do
        game:GetService("ReplicatedStorage").Events.Punch:FireServer(0, 0.1, 1)
    end
end

game:GetService("UserInputService").InputEnded:Connect(function(inputObject, gameProcessedEvent)
    if not gameProcessedEvent and getgenv().rapid == true then
        if inputObject.UserInputType == Enum.UserInputType.Touch then
            rp()  -- فعال‌سازی Rapid Punch با لمس روی صفحه
        end
    end
end)
