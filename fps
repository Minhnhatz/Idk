local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local TARGET_FPS = 15
local FRAME_TIME = 1 / TARGET_FPS

local lastTick = tick()

RunService.RenderStepped:Connect(function()
    local now = tick()
    local delta = now - lastTick
    if delta < FRAME_TIME then
        task.wait(FRAME_TIME - delta)
    end
    lastTick = tick()
end)

local function reduceGraphics()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 100000
    lighting.Brightness = 1

    for _, effect in ipairs(lighting:GetChildren()) do
        if effect:IsA("BloomEffect") or
           effect:IsA("BlurEffect") or
           effect:IsA("SunRaysEffect") or
           effect:IsA("ColorCorrectionEffect") or
           effect:IsA("DepthOfFieldEffect") then
            effect.Enabled = false
        end
    end
end

local function reduceAnimations()
    workspace.StreamingEnabled = false 
    
    local camera = workspace.CurrentCamera
    if camera then
        camera.FieldOfView = 70
    end
end

local function cleanupDebris()
    local Debris = game:GetService("Debris")
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            if obj.Transparency == 1 and not obj.CanCollide then
                obj:Destroy()
            end
        end
    end
end

local function reduceSounds()
    local SoundService = game:GetService("SoundService")
    SoundService.RespectFilteringEnabled = true
    -- SoundService:SetListener(Enum.ListenerType.Camera)
end

reduceGraphics()
reduceAnimations()
reduceSounds()

task.spawn(function()
    while task.wait(30) do
        cleanupDebris()
    end
end)
