--Made by Stat1c_Null
--Press LeftControl to sprint until you release it
--Press RightControl to set constant speed
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
--Set Desired speed over here
local Speed = 80
--Change key press for running
local RunKey = Enum.KeyCode.LeftControl
--Key press to set constant speed
local SetKey = Enum.KeyCode.RightControl
local SpeedSet = false
local UIS = game:GetService("UserInputService")

game:GetService("RunService").RenderStepped:Connect(function()
    --Make player run by pressing LEft Control in any game
    UIS.InputBegan:Connect(function(input)
        if input.KeyCode == RunKey then
            humanoid.WalkSpeed = Speed
        end
    end)
    
    UIS.InputEnded:Connect(function(input)
        if input.KeyCode == RunKey then
            humanoid.WalkSpeed = 16
        end
    end)
    --Set and reset constant speed
    UIS.InputEnded:Connect(function(input)
        if input.KeyCode == SetKey and SpeedSet == false then
            humanoid.WalkSpeed = Speed
            SpeedSet = true
        elseif input.KeyCode == SetKey and SpeedSet == true then
            humanoid.WalkSpeed = 16
            SpeedSet = false
        end
    end)
end)
