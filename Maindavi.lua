local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(89, 255, 34)
Frame.Parent = ScreenGui

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 180, 0, 30)
TextBox.Position = UDim2.new(0.5, -90, 0.2, 0)
TextBox.PlaceholderText = "Enter code here"
TextBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0, 100, 0, 30)
Button.Position = UDim2.new(0.5, -50, 0.6, 0)
Button.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
Button.TextColor3 = Color3.new(0, 255, 0)
Button.Text = "Submit"
Button.Parent = Frame

-- define the function to check the code
local function checkCode(code)
    -- replace this with your own code verification logic
    if code == "davi123" or code == "davi" then
        return true
    else
        return false
    end
end

-- handle the button click event
Button.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    if checkCode(code) then
        -- code is valid
        ScreenGui:Destroy() -- delete the GUI
        -- execute your script here
    else
        -- code is invalid
        warn("Invalid code")
        Players.LocalPlayer:Kick("Invalid code")
    end
end)
