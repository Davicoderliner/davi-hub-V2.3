local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/astraln/SentinelUILIB/main/UI.lua', true))()

local window = Library:Window('davi hub v2 best script')

local tab = window:Tab('Home')
tab:Button('gui para jogos', function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/TakeModzz/Games-Hub-Script/main/Games%20Hub%20(Always%20updated)"))()
end)

tab:Button('prison life armas ', function()
   loadstring(game:HttpGet("https://pastebin.com/raw/AZVi2tuK"))()
end)


tab:Button('ghosthub', function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)


tab:Button('arceus x ', function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
end)


tab:Button('doors mods', function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Cutsences/SteepSteps/main/DoorsMods"))()
end)


tab:Button('ismael hub sheriff vs murderrers', function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/MurderVsSheriff/main/IceHub"))()
end)


tab:Button('hitbox gui', function()
   loadstring(game:HttpGet('https://pastebin.com/raw/JgtddWA3'))()
end)



tab:Button('deluxe hub', function()
   loadstring(game:HttpGet(('https://pastebin.com/raw/dApTQQ51'),true))()
end)



tab:Button('infinite yield ', function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


tab:Button('hd agua ', function()
   loadstring(game:HttpGet(('https://pastefy.ga/xXkUxA0P/raw'),true))()
end)

tab:Button('doors script nao mod', function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Doors"))()
end)

tab:Button('natherZ', function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/natherzx/Nethez-Project/main/Security'))()
end)

tab:Button('rbx gui', function()
loadstring(game:GetObjects("rbxassetid://9827584846")[1].Source)()
end)

tab:Button('zeehub', function()
loadstring(game:HttpGet("https://scriptdee.com/free/ZeeHubNew.lua"))()
end)

tab:Button('zeus hub', function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/ZeusHub/main/Loading_Ui"))()
end)

tab:Button('ultimate hub', function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox-ScriptsWeAreDevs/Ultimate-Hub/main/CODE.md"))()
end)

tab:Button('procurar mais script ', function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
end)

tab:Button('moonUi', function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
end)


tab:Button('equinox hub', function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Equinox-Hub-6160%22"))()
end)

tab:Button('various thing hub', function()
loadstring(game:HttpGet("https://pastebin.com/raw/gaz0U0XX%22"))()
end)

tab:Button('script x v2 ', function()
loadstring(game:HttpGet("https://pastebin.com/raw/dG1ikLTF"))();
end)

tab:Button('krnl de android', function()
loadstring(game:HttpGet("https://pastebin.com/raw/M3HjLPU7"))()
end)

tab:Button('revp hub', function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/YourLocalNzi/Ye/main/Protected%20"))()
end)

tab:Button('ez hub', function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)

tab:Button('icehub por ismael(icy)', function()
loadstring(game:HttpGet('https://icehub.cf/IceHubLoader'))()
end)

tab:Button('vereus hub', function()
loadstring(game:HttpGet('https://pastebin.com/raw/wC64LrAJ',true))()
end)


--fps gui v2
-- Cria um objeto de GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FPSGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Cria um objeto de texto dentro da GUI
local FpsLabel = Instance.new("TextLabel")
FpsLabel.Name = "FPSLabel"
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0, 10, 0, 10)
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = "FPS: 0"
FpsLabel.TextSize = 20
FpsLabel.TextColor3 = Color3.new(1, 1, 1)
FpsLabel.Parent = ScreenGui

-- Função para atualizar o texto do FPS
function updateFpsLabel()
    local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
    FpsLabel.Text = "FPS: " .. fps
end

-- Conecta a função de atualização com o evento RenderStepped
game:GetService("RunService").RenderStepped:Connect(updateFpsLabel)

-- Adiciona a GUI ao jogador local
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")



--creditos

-- Call the function to start the animation
animateCredits()

-- Define the credit text and duration
local creditText = "Made by DAVISCRIPT"
local creditDuration = 3 -- in seconds

-- Define the list of decal IDs to choose from
local decalIds = {
    5479567228,
    5479565074,
    5479559610,
}

-- Choose a random decal ID from the list
local decalId = decalIds[math.random(#decalIds)]

-- Create the notification GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NotificationCreditsGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

local Frame = Instance.new("Frame")
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(1, -200, 1, -50)
Frame.Size = UDim2.new(0, 200, 0, 50)
Frame.Parent = ScreenGui

local Decal = Instance.new("Decal")
Decal.Texture = "rbxassetid://" .. decalId
Decal.Face = Enum.NormalId.Back
Decal.Parent = Frame

local TextLabel = Instance.new("TextLabel")
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = creditText
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16
TextLabel.Position = UDim2.new(0, 10, 0, 10)
TextLabel.Size = UDim2.new(1, -20, 1, -20)
TextLabel.Parent = Frame

-- Function to animate the notification
local function animateNotification()
    -- Move the notification in from the right
    Frame:TweenPosition(UDim2.new(1, -200, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    wait(creditDuration - 1)
    -- Move the notification out to the left
    Frame:TweenPosition(UDim2.new(1, 0, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    wait(0.5)
    -- Destroy the GUI
    ScreenGui:Destroy()
end

-- Call the animation function
animateNotification()
