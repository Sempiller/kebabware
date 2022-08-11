
local ScreenGui = Instance.new("ScreenGui")
local Ping = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Ping.Name = "Ping"
Ping.Parent = ScreenGui
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.BorderColor3 = Color3.fromRGB(255, 255, 255)
Ping.Position = UDim2.new(0.1000000048, 0, 0, 0)
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(1, 1, 1)
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

local script = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
script.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping
end)
wait()

local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(1,1,1)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

-- Scripts:

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame) -- This will fire every time a frame is rendered
script.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)
wait()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/kavoui/main/uilib.lua"))()
local Window = Library.CreateLib("KebabWare", "Midnight")

local Tab1 = Window:NewTab("Main")
local Tab2 = Window:NewTab("Visuals")
local Tab3 = Window:NewTab("Credits")

local cr7 = Tab3:NewSection("Section Name")
cr7:NewLabel("Creator | Sempiller#6316 aka SupremeDoritos")
cr7:NewLabel("Amongus | engo")

local Fly = Tab1:NewSection("Walk On Void")


local Se = Tab1:NewSection("Infinite Jump")
se:NewButton("Inf Jump", "ButtonInfo", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Fly:NewButton("Walk On Void", "ToggleInfo", function(state)
workspace.Gravity = 0
end)

local items = Tab1:NewSection("Items")
items:NewButton("Heal", "ButtonInfo", function()	game.ReplicatedStorage.Tools.PowerUps.Heal.Parent = game.Players.LocalPlayer.Backpack
end)

items:NewButton("Shield", "ButtonInfo", function()
game.ReplicatedStorage.Tools.PowerUps.Shield.Parent = game.Players.LocalPlayer.Backpack
end)

local Reach = Tab1:NewSection("Reach")
Reach:NewButton("Reach", "ButtonInfo", function()	a=Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Sword.Handle)	a.Adornee=game.Players.LocalPlayer.Backpack.Sword.Handle	game.Players.LocalPlayer.Backpack.Sword.Handle.Size=Vector3.new(1,1,30)
end)

local Teleport = Tab1:NewSection("Teleports")
Teleport:NewButton("Shop", "ButtonInfo", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.9186897, 264, 0.00818219129, 0.0125666363, 2.58190047e-09, 0.999921024, -6.16111384e-10, 1, -2.57436117e-09, -0.999921024, -5.8371169e-10, 0.0125666363)


end)

Teleport:NewButton("Game Store", "ButtonInfo", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.9186897, 264, 0.00818219129, 0.0125666363, 2.58190047e-09, 0.999921024, -6.16111384e-10, 1, -2.57436117e-09, -0.999921024, -5.8371169e-10, 0.0125666363)
end)

Teleport:NewButton("Mega VIP", "ButtonInfo", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.943781853, 264, 68.8041763, -0.95515871, -4.34895284e-08, 0.296094328, -4.27114628e-08, 1, 9.09610431e-09, -0.296094328, -3.9583985e-09, -0.95515871)
end)

Teleport:NewButton("VIP", "ButtonInfo", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.247168869, 264, -69.3129272, 0.999921381, 1.06557989e-08, 0.0125656724, -1.05549374e-08, 1, -8.09296541e-09, -0.0125656724, 7.95969779e-09, 0.999921381)
end)                                                                                                
Teleport:NewButton("Spawn", "ButtonInfo", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.0309376884, 268, -0.224571913, -4.703179e-07, 0, 1, 0, 1, 0, -1, 0, -4.703179e-07)
end)

local hitbox = Tab1:NewSection("Hitbox")
hitbox:NewButton("Hitbox Expander", "ToggleInfo", function()
	_G.HeadSize = 20

	_G.Disabled = true


game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Neon orange")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

hitbox:NewSlider("Size", "SliderInfo", 50, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
_G.HeadSize = s
end)

hitbox:NewColorPicker("Color", "Color Info", Color3.fromRGB(0,0,0), function(col)
v.Character.HumanoidRootPart.BrickColor = BrickColor.new(col)
end)

local AutoC = Tab1:NewSection("AutoClicker")
AutoC:NewButton("Auto Click", "ButtonInfo", function()
--Subscribe To ArceusMODZ--
-- If Any Error Happened Let me Know--

--// Setting \--
local range = 1000

--// Variable \--
local player = game:GetService("Players").LocalPlayer

--// Script \--
game:GetService("RunService").RenderStepped:Connect(function()
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then
                        firetouchinterest(tool.Handle,v,0)
                        firetouchinterest(tool.Handle,v,1)
                    end
                end
            end
        end
    end
end)
end)

local Amongus = Tab2:NewSection("Amongus")

Amongus:NewButton("Amongus Character", "ButtonInfo", function()
function Transparency(number)
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character then
            for _,c in pairs(v.Character:GetDescendants()) do
                if not c.Parent.Name:match("sword") or c.Parent.Name:match("pickaxe") or c.Parent.Name:match("axe") then
                    if c:IsA("BasePart") or c:IsA("Decal") and c.Name ~= "HumanoidRootPart" then
                        c.Transparency = number
                        v.Character.PrimaryPart.Transparency = 1
                    end
                end
            end
        end
    end
end

function addcustommodel(player,Model)
    if Model == "Amogus" then
        if not game.Workspace:FindFirstChild("CustomFolderv") then
            local customfolder = Instance.new("Folder",game:GetService("Workspace"))
            customfolder.Name = "CustomFolderv"
        end
        if not game.Workspace.CustomFolderv:FindFirstChild(player.Name) then
            local customfolder = game.Workspace.CustomFolderv
            local newmesh = Instance.new("MeshPart",customfolder)
            newmesh.CanCollide = false
            newmesh.Massless = true
            newmesh.MeshId = "rbxassetid://8760585445"
            newmesh.Size = Vector3.new(0.1367, 0.1213, 0.133)
            newmesh.CFrame = player.Character.HumanoidRootPart.CFrame
            local weld = Instance.new("WeldConstraint",newmesh)
            weld.Part0 = player.Character.HumanoidRootPart
            weld.Part1 = newmesh
            newmesh.Name = player.Name
        end
    end
end

Transparency(1)
for i,v in pairs(game.Players:GetChildren()) do
    addcustommodel(v,"Amogus")
end
end)

