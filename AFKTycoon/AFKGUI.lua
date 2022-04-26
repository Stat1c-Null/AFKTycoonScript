wait(0.5)
--Vars
local gui=Instance.new("ScreenGui")
local titleText=Instance.new("TextLabel")
local bg=Instance.new("Frame")
local statusText=Instance.new("TextLabel")
local creditsText=Instance.new("TextLabel")
local textColor = Color3.new(170,0,1)
--Gui creation
gui.Parent=game.CoreGui
gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
titleText.Parent=gui
titleText.Active=true
titleText.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
titleText.Draggable=true
titleText.Position=UDim2.new(0.698610067,0,0.098096624,0)
titleText.Size=UDim2.new(0,370,0,52)
titleText.Font=Enum.Font.Bangers;
titleText.Text="AFK Tycoon Farm Script"
titleText.TextColor3=textColor
titleText.TextSize=22;
bg.Parent=titleText
bg.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)
bg.Position=UDim2.new(0,0,1.0192306,0)
bg.Size=UDim2.new(0,400,0,200)
statusText.Parent=bg
statusText.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
statusText.Position=UDim2.new(0,0,0.800455689,0)
statusText.Size=UDim2.new(0,370,0,21)
statusText.Font=Enum.Font.Bangers;
statusText.Text="created by Stat1c-Null"
statusText.TextColor3=textColor
statusText.TextSize=20
creditsText.Parent=bg
creditsText.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
creditsText.Position=UDim2.new(0,0,0.158377,0)
creditsText.Size=UDim2.new(0,370,0,44)
creditsText.Font=Enum.Font.Bangers
creditsText.Text="Status: Active"
creditsText.TextColor3=textColor
creditsText.TextSize=20;
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()
	bb:ClickButton2(Vector2.new())
	creditsText.Text="Roblox tried to kick u but i kicked him instead"
	wait(2)
	creditsText.Text="Status : Active"
end)