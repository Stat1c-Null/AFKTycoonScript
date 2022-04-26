local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChild("Humanoid")
local JumpKey = Enum.KeyCode.Space

local UIS = game:GetService("UserInputService")

game:GetService("RunService").RenderStepped:Connect(function()
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == JumpKey then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)
end)
