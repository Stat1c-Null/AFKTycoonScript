--Made by Stat1c-Null
--Place your character in an open area and execute script.
-- Player will start moving back and forth and won't be banned for inactivity
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local RunFr = true
local RunBk = false
local RunLen = 1--Length of walking
local RunSpd = 8--Speed of walking
game:GetService("RunService").RenderStepped:Connect(function()
    humanoid.WalkSpeed = RunSpd
    --Move forward 
    while RunFr == true do
        humanoid:Move(Vector3.new(0,0,-1), true)
    	wait(RunLen)
    	RunBk = true
    	RunFr = false
    end
    --Move backwards
    while RunBk == true do
        humanoid:Move(Vector3.new(0,0,1), true)
    	wait(RunLen)
    	RunFr = true
    	RunBk = false
    end
end)
