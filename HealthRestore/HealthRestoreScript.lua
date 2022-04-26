local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
--local ff = Instance.new("ForceField", game.Players.LocalPlayer.Character)
local ffOn = false
game:GetService("RunService").RenderStepped:Connect(function()
    
    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == Enum.KeyCode.R then
                local maxhealth = game.Players.LocalPlayer.Humanoid.MaxHealth
                player.Health = maxhealth
            elseif input.KeyCode == Enum.KeyCode.F and ffOn == false then
                ff.Visible = true
                ffOn = true
            elseif input.KeyCode == Enum.KeyCode.F and ffOn == true then
                ff.Visible = false
                ffOn = false
            end 
        end
    end)
    
end)