local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local RunFr = true
local RunBk = false
local RunLen = 1
local RunSpd = 8
game:GetService("RunService").RenderStepped:Connect(function()
    humanoid.WalkSpeed = RunSpd
    --Constantly Move so you wont get banned
    while RunFr == true do
        humanoid:Move(Vector3.new(0,0,-1), true)
    	wait(RunLen)
    	RunBk = true
    	RunFr = false
    end
    
    while RunBk == true do
        humanoid:Move(Vector3.new(0,0,1), true)
    	wait(RunLen)
    	RunFr = true
    	RunBk = false
    end
end)
