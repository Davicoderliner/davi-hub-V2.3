-- Create a ScreenGui to hold the credits
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Credits"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Acesse o objeto PlayerGui do jogador local
local playerGui = game.Players.LocalPlayer.PlayerGui

--contador de vida mais melhor do que o atual

-- Crie uma nova variável para a quantidade de saúde do jogador
local health = 100

-- Crie uma nova tela GUI para o GUI de saúde
local healthGui = Instance.new("ScreenGui")
healthGui.Name = "HealthGui"
healthGui.Parent = playerGui

-- Crie uma nova moldura para o GUI de saúde
local healthFrame = Instance.new("Frame")
healthFrame.Name = "HealthFrame"
healthFrame.Size = UDim2.new(0, 150, 0, 20)
healthFrame.Position = UDim2.new(1, -170, 0, 20)
healthFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
healthFrame.BorderSizePixel = 0
healthFrame.Parent = healthGui

-- Crie uma nova barra de progresso para o GUI de saúde
local healthBar = Instance.new("Frame")
healthBar.Name = "HealthBar"
healthBar.Size = UDim2.new(1, 0, 1, 0)
healthBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
healthBar.BorderSizePixel = 0
healthBar.Parent = healthFrame

-- Crie uma função para atualizar o GUI de saúde com a quantidade de saúde atual
local function updateHealthGUI()
   -- Defina o tamanho da barra de progresso com base na quantidade de saúde atual
   healthBar.Size = UDim2.new(health / 100, 0, 1, 0)
end

-- Chame a função de atualização de GUI de saúde uma vez para configurar o GUI inicialmente
updateHealthGUI()

-- Conecte a função de atualização de GUI de saúde ao evento Changed de saúde, para que a GUI de saúde seja atualizada automaticamente quando a quantidade de saúde mudar
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function(newHealth)
   health = newHealth
   updateHealthGUI()
end)

--contador de fps bonitão
-- Acesse o objeto PlayerGui do jogador local
local playerGui = game.Players.LocalPlayer.PlayerGui

-- Crie uma nova tela GUI para o contador de FPS
local fpsGui = Instance.new("ScreenGui")
fpsGui.Name = "FpsGui"
fpsGui.Parent = playerGui

-- Crie uma nova etiqueta para exibir o contador de FPS
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FpsLabel"
fpsLabel.Size = UDim2.new(0, 100, 0, 20)
fpsLabel.Position = UDim2.new(0, 20, 0, 20)
fpsLabel.BackgroundColor3 = Color3.new(0, 0, 0)
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.Font = Enum.Font.SourceSans
fpsLabel.FontSize = Enum.FontSize.Size14
fpsLabel.Text = "FPS: "
fpsLabel.Parent = fpsGui

-- Crie uma variável para armazenar o tempo desde a última atualização
local lastUpdate = tick()

-- Crie uma variável para armazenar a contagem de quadros por segundo atual
local fps = 0

-- Crie uma função para atualizar o contador de FPS
local function updateFpsCounter()
    -- Calcule o tempo decorrido desde a última atualização
    local deltaTime = tick() - lastUpdate
    lastUpdate = tick()
    
    -- Calcule a contagem de quadros por segundo atual
    fps = math.floor(1 / deltaTime)
    
    -- Atualize a etiqueta do contador de FPS com a contagem de quadros por segundo atual
    fpsLabel.Text = "FPS: " .. fps
end

-- Conecte a função de atualização de FPS ao evento RenderStepped para que ela seja chamada a cada quadro
game:GetService("RunService").RenderStepped:Connect(updateFpsCounter)


-- Create an ImageLabel to display the image
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "Image"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
ImageLabel.Size = UDim2.new(0.2, 0, 0.2, 0)
ImageLabel.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=1117607358&thumbnailFormat=png&width=420&height=420&fit=bounds"
ImageLabel.Parent = ScreenGui

-- Create a TextLabel to display the text
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Text"
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0)
TextLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.Text = "made by daviscripts"
TextLabel.Parent = ScreenGui

-- Create a function to animate the credits
local function animateCredits()
    -- Move the ImageLabel and TextLabel up
    local TweenService = game:GetService("TweenService")
    local imageTween = TweenService:Create(ImageLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.2, 0)})
    local textTween = TweenService:Create(TextLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.1, 0)})
    imageTween:Play()
    textTween:Play()
    
    -- Wait for the animation to finish
    wait(10)
    
    -- Reset the ImageLabel and TextLabel positions
    ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
    TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0)
    
    -- Remove the ScreenGui
    ScreenGui:Destroy()
end

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




--script


local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/Mb49kKTP"))()


		MAINTTL = "DAVI HUB V1" 

local win = VLib:Window("daviscripts", Color3.fromRGB(196, 40, 28))

local ss1 = win:Tab("HOW TO USE")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

ss1:Button("destruir o gui",function()
game.CoreGui["Library"]:Destroy()
end)

ss:Button("gui para jogos",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TakeModzz/Games-Hub-Script/main/Games%20Hub%20(Always%20updated)"))()
end)
   
 ss:Button("prison life fe weapon",function()
loadstring(game:HttpGet("https://pastebin.com/raw/AZVi2tuK"))()
end)

ss:Button("arceus x ",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
end)

ss:Button("ghost hub com 100 scripts",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

ss:Button("translate gui ",function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/ChatTranslator.lua"))()
--[[ local languages = {
        auto = "Automatic",
        af = "Afrikaans",
        sq = "Albanian",
        am = "Amharic",
        ar = "Arabic",
        hy = "Armenian",
        az = "Azerbaijani",
        eu = "Basque",
        be = "Belarusian",
        bn = "Bengali",
        bs = "Bosnian",
        bg = "Bulgarian",
        ca = "Catalan",
        ceb = "Cebuano",
        ny = "Chichewa",
        ['zh-cn'] = "Chinese Simplified",
        ['zh-tw'] = "Chinese Traditional",
        co = "Corsican",
        hr = "Croatian",
        cs = "Czech",
        da = "Danish",
        nl = "Dutch",
        en = "English",
        eo = "Esperanto",
        et = "Estonian",
        tl = "Filipino",
        fi = "Finnish",
        fr = "French",
        fy = "Frisian",
        gl = "Galician",
        ka = "Georgian",
        de = "German",
        el = "Greek",
        gu = "Gujarati",
        ht = "Haitian Creole",
        ha = "Hausa",
        haw = "Hawaiian",
        iw = "Hebrew",
        hi = "Hindi",
        hmn = "Hmong",
        hu = "Hungarian",
        is = "Icelandic",
        ig = "Igbo",
        id = "Indonesian",
        ga = "Irish",
        it = "Italian",
        ja = "Japanese",
        jw = "Javanese",
        kn = "Kannada",
        kk = "Kazakh",
        km = "Khmer",
        ko = "Korean",
        ku = "Kurdish (Kurmanji)",
        ky = "Kyrgyz",
        lo = "Lao",
        la = "Latin",
        lv = "Latvian",
        lt = "Lithuanian",
        lb = "Luxembourgish",
        mk = "Macedonian",
        mg = "Malagasy",
        ms = "Malay",
        ml = "Malayalam",
        mt = "Maltese",
        mi = "Maori",
        mr = "Marathi",
        mn = "Mongolian",
        my = "Myanmar (Burmese)",
        ne = "Nepali",
        no = "Norwegian",
        ps = "Pashto",
        fa = "Persian",
        pl = "Polish",
        pt = "Portuguese",
        pa = "Punjabi",
        ro = "Romanian",
        ru = "Russian",
        sm = "Samoan",
        gd = "Scots Gaelic",
        sr = "Serbian",
        st = "Sesotho",
        sn = "Shona",
        sd = "Sindhi",
        si = "Sinhala",
        sk = "Slovak",
        sl = "Slovenian",
        so = "Somali",
        es = "Spanish",
        su = "Sundanese",
        sw = "Swahili",
        sv = "Swedish",
        tg = "Tajik",
        ta = "Tamil",
        te = "Telugu",
        th = "Thai",
        tr = "Turkish",
        uk = "Ukrainian",
        ur = "Urdu",
        uz = "Uzbek",
        vi = "Vietnamese",
        cy = "Welsh",
        xh = "Xhosa",
        yi = "Yiddish",
        yo = "Yoruba",
        zu = "Zulu"]]
      end)

ss:Button("doors script",function()
  -- made by cutscene
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cutsences/SteepSteps/main/DoorsMods"))()
  end)

ss:Button("murder vs sheriff made by ismael",function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/MurderVsSheriff/main/IceHub"))()
  end)

ss:Button("hitbox hub",function()
  
  loadstring(game:HttpGet('https://pastebin.com/raw/JgtddWA3'))()
end)

ss:Button("anti lag script",function() 
  game.StarterGui:SetCore("SendNotification", {

    Title = "Lag script ";

    Text = "discord.gg/arceus | lixbo";

})

local FarmGUI = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")
local Bot = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Text = Instance.new("TextButton")

FarmGUI.Name = "FarmGUI"
FarmGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Button.Name = "Button"
Button.Parent = FarmGUI
Button.BackgroundColor3 = Color3.new(1, 1, 1)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 0.460567832, 0)
Button.Size = UDim2.new(0, 122, 0, 36)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.new(0, 0, 0)
Button.TextSize = 14

Bot.Name = "Bot"
Bot.Parent = Button
Bot.BackgroundColor3 = Color3.new(1, 1, 1)
Bot.BackgroundTransparency = 1
Bot.Size = UDim2.new(1, 0, 1, 0)
Bot.Image = "rbxassetid://2851926732"
Bot.ImageColor3 = Color3.new(0, 0.709804, 0)
Bot.ScaleType = Enum.ScaleType.Slice
Bot.SliceCenter = Rect.new(12, 12, 12, 12)

Top.Name = "Top"
Top.Parent = Button
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, -0.25, 0)
Top.Size = UDim2.new(1, 0, 1, 0)
Top.Image = "rbxassetid://2851926732"
Top.ImageColor3 = Color3.new(0, 0.866667, 0)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(12, 12, 12, 12)

Text.Name = "Text"
Text.Parent = Button
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0, 0, -0.25, 0)
Text.Size = UDim2.new(0, 122, 0, 36)
Text.Font = Enum.Font.GothamBlack
Text.Text = "Place 1"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 25

function SCRIPT_NVTH90_FAKESCRIPT()
	local script = Instance.new('LocalScript')
	script.Parent = Text
	db = 1
	check = true
	local plr = game.Players.LocalPlayer
	repeat wait() until plr.Character
	local hum = plr.Character:WaitForChild("Humanoid")
	local root = plr.Character:WaitForChild("HumanoidRootPart")
	local keyboard = game:GetService("UserInputService")
	
	script.Parent.MouseButton1Down:Connect(function()
		if db == 1 and script.Parent.Text == "Place 1" then
			db = 2
			local part = Instance.new("Part")
			part.Parent = workspace
			part.Name = "ExploitPart"
			part.Size = Vector3.new(10,50,1)
			part.CanCollide = false
			part.Anchored = true
			part.Transparency = 0.5
			part.Material = "Neon"
			part.BrickColor = BrickColor.Random()
			part.Position = root.Position
			script.Parent.Text = "Place 2"
		elseif db == 2 and script.Parent.Text == "Place 2" then
			db = 3
			local part1 = Instance.new("Part")
			part1.Parent = workspace
			part1.Name = "ExploitPart1"
			part1.Size = Vector3.new(10,50,1)
			part1.CanCollide = false
			part1.Material = "Neon"
			part1.Transparency = 0.5
			part1.Anchored = true
			part1.BrickColor = BrickColor.Random()
			part1.Position = root.Position
			script.Parent.Text = "Start"
		elseif db == 3 and script.Parent.Text == "Start" then
			check = true
			script.Parent.Text = "Stop"
			while check == true do
			root.CFrame = workspace.ExploitPart.CFrame
			hum:MoveTo(workspace.ExploitPart1.Position)
			hum.MoveToFinished:Wait()
			root.CFrame = workspace.ExploitPart.CFrame
			end
			wait()
			script.Parent.Text = "Place 1"
			workspace.ExploitPart:Destroy()
			workspace.ExploitPart1:Destroy()
			db = 1
		end
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		if script.Parent.Text == "Stop" then
			check = false
			root.CFrame = root.CFrame * CFrame.new(0,10,0)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NVTH90_FAKESCRIPT))
function SCRIPT_DZKB78_FAKESCRIPT()
	local script = Instance.new('LocalScript')
	script.Parent = Text
	local top = script.Parent.Parent:WaitForChild("Top")
	local text = script.Parent
	
	
	text.MouseEnter:Connect(function()
		top.ImageColor3 = Color3.fromRGB(63, 231, 2)
	end)
	
	text.MouseLeave:Connect(function()
		top.ImageColor3 = Color3.fromRGB(0, 221, 0)
	end)
	
	text.MouseButton1Down:Connect(function()
		top:TweenPosition(UDim2.new(0,0,0,0),"In","Quad",0.25,true)
		text:TweenPosition(UDim2.new(0,0,0,0),"In","Quad",0.25,true)
		wait(0.25)
		top:TweenPosition(UDim2.new(0,0,-0.25,0),"In","Quad",0.25,true)
		text:TweenPosition(UDim2.new(0,0,-0.25,0),"In","Quad",0.25,true)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DZKB78_FAKESCRIPT))
function SCRIPT_DJTF86_FAKESCRIPT()
	local script = Instance.new('LocalScript')
	script.Parent = FarmGUI
	local NotificationBindable = Instance.new("BindableFunction")
	NotificationBindable.OnInvoke = callback
	game.StarterGui:SetCore("SendNotification", {
		Title = "Script loaded";
		Text = "Made by Alpenidze, Enjoy";
		Icon = "http://www.roblox.com/asset/?id=817367645";
		Duration = 3;
		Callback = NotificationBindable;
	})	

end
coroutine.resume(coroutine.create(SCRIPT_DJTF86_FAKESCRIPT))
function SCRIPT_SUTP88_FAKESCRIPT()
	local script = Instance.new('LocalScript')
	script.Parent = FarmGUI
	local keyboard = game:GetService("UserInputService")
	local plr = game.Players.LocalPlayer
	repeat wait() until plr.Character
	local hum = plr.Character:WaitForChild("Humanoid")
	local running = false
	
	keyboard.InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode.F3 then
			if not running then
				running = true
				hum.WalkSpeed = 26
			else
				running = false
				hum.WalkSpeed = 16
			end
		end
	end)
end
coroutine.resume(coroutine.create(SCRIPT_SUTP88_FAKESCRIPT))
  end)

ss:Button("deluxe hub",function()
loadstring(game:HttpGet(('https://pastebin.com/raw/dApTQQ51'),true))()
end)

ss:Button("infinite yield", function()
loadstring(game:HttpGet('https://pastebin.com/raw/MjBzRjmT'))()
end)

ss:Button("água hd", function()
loadstring(game:HttpGet(('https://pastefy.ga/xXkUxA0P/raw'),true))()
end)

ss:Button("natherZ para blox fruit", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/natherzx/Nethez-Project/main/Security'))()
end)

ss:Button("doors scripts ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Doors"))()
end)

ss:Button("zeehub", function()
loadstring(game:HttpGet("https://scriptdee.com/free/ZeeHubNew.lua"))()
end)
ss:Button("rbx hub ", function()
loadstring(game:GetObjects("rbxassetid://9827584846")[1].Source)()
end)
ss:Button("zeus hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/ZeusHub/main/Loading_Ui"))()
end)

cred:Label("MADE BY davi.scripts")
cred:Label("validated by arceus x | tw.piece zeltales and waza and Ismael")
cred:Label("se quiser fazer video do meu script me marque que eu te coloco na proxima atualização")
cred:Label(" eu :), obrigada por testa o script  ")
