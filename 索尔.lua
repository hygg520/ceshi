-- ----------------------------------------------------
-- 文件已汉化并修复结构问题
-- 原混淆来源：https://discord.gg/AwGHNh7Z7T
-- ----------------------------------------------------

local v1 = true

local function SolsRngCancelHandler()
    v1 = false
end

local v2
local function performTask12()
    local function waitForChild()
        local function processItems2(v104)
            local function performTask11() end
            if v104.Name == "ErrorPrompt" then
                if v1 then
                    while v1 do end
                    return
                end
            end
        end
        local robloxPromptGui = v2:WaitForChild("RobloxPromptGui", 10)
        if robloxPromptGui then
            return robloxPromptGui, robloxPromptGui:WaitForChild("promptOverlay", 10)
        else
            return robloxPromptGui
        end
    end
end

local function performTask13() end

local v3, v4

local function performTask14()
    local function performTask10()
        v3:JSONEncode(v4)
    end
end

local function runProtected()
    local function readConfigFile()
        return v3:JSONDecode(readfile("sols_farm_config.json"))
    end
    local v104 = isfile
    if isfile then
        v104 = readfile
    end
    local v105
    if v104 then
        local ok, data = pcall(function()
            return v3:JSONDecode(readfile("sols_farm_config.json"))
        end)
        if ok and type(data) == "table" then
            v105 = data
            if v105.farmWatermelons ~= nil then
                v4.farmWatermelons = v105.farmWatermelons
            end
            if v105.autoFishing ~= nil then
                v4.autoFishing = v105.autoFishing
            end
            if v105.autoFarmEnabled ~= nil then
                v4.autoFarmEnabled = v105.autoFarmEnabled
            end
        end
    end
end

local v5
local function processItems3()
    local function performTask8() end
    local function performTask9() end
    local v104, v105, v106
    if getconnections then
        v104 = getconnections(v5.Idled)
        local x1, v106 = next(v104, nil)
        if not (x1 == nil) then
            v105 = x1
            while true do
                x1, v106 = next(v104, v105)
                if x1 ~= nil then
                    v105 = x1
                else
                    break
                end
            end
        end
    end
end

local function performTask15()
    local function performTask6() end
    local function performTask7()
        Vector2.new(0, 0)
        Vector2.new(0, 0)
    end
end

local function performTask16() end

local function processItems4()
    if v1 then
        local v104 = v1
        while not v104 do
            return
        end
    end
end

local v6
local function processItems5()
    local packets = v6:WaitForChild("Packets", 8)
    local v104, v105, v106, v107
    if packets then
        v104, v105, v106 = ipairs(packets:GetChildren())
        local x3, v107 = v104(v105, v106)
        if not (x3 == nil) then
            v106 = x3
            while true do
                if v107:IsA("ModuleScript") then
                    x3, v107 = v104(v105, v106)
                    if not (x3 == nil) then
                        v106 = x3
                    else
                        break
                    end
                else
                    x3, v107 = v104(v105, v106)
                    if x3 == nil then
                        break
                    else
                        v106 = x3
                    end
                end
            end
        end
    end
end

local v7
local function getValue6()
    local v104 = require(v6.Packets.Fishing)
    v7 = v104
    return v104
end

local v8
local function performTask17()
    local function updateState7(v104)
        local v105 = v104.id
        v8.inventory[v104.uid] = v105
    end
end
local function performTask18()
    local function updateState6(v104)
        v8.inventory[v104] = nil
    end
end
local function performTask19()
    local function transformValue6(lastSellRequest)
        v8.lastSellRequest = lastSellRequest
    end
end
local function performTask20()
    local function performTask5() end
end
local function performTask21()
    local function updateState5()
        v8.sellAcknowledged = true
    end
end
local function performTask22()
    local function updateState4()
        v8.fishingBegan = true
    end
end
local function performTask23()
    local function transformValue5(v104)
        v8.gameEndTime = tonumber(v104.endTimestamp)
    end
end

local v9, v10

local function processItems6()
    local v104 = v10
    if v10 then
        v104 = v10.Parent
    end
    local v105, v106, v107
    if not v104 then
        v10 = nil
        v104, v105, v106 = ipairs(v9:GetDescendants())
        local x4, v107 = v104(v105, v106)
        if not (x4 == nil) then
            v106 = x4
            while true do
                if not (v107:IsA("TextLabel") and v107.Text:match("^Inventory% %[%d+ / %d+%]$")) then
                    x4, v107 = v104(v105, v106)
                    if x4 ~= nil then
                        v106 = x4
                    else
                        break
                    end
                else
                    v10 = v107
                    return v107
                end
            end
        end
    end
    return v10
end

local v11
local function processItems7()
    local v104 = v11()
    local v105, v106, inventory, v107, v108
    if v104 then
        v105, v106 = v104.Text:match("^Inventory% %[(%d+) / (%d+)%]$")
        if v105 then
            return tonumber(v105), tonumber(v106)
        else
            v105 = 0
            v106 = next
            inventory = v8.inventory
            v108 = next(inventory, nil)
            if v108 == nil then
                return 0, 20
            else
                v107 = v108
                while true do
                    v105 = v105 + 1
                    v108 = v106(inventory, v107)
                    if v108 == nil then
                        return v105, 20
                    else
                        v105 = v105 + 1
                        v107 = next(inventory, v108)
                    end
                end
            end
        end
    else
        v105 = 0
        v106, inventory, v107 = pairs(v8.inventory)
        v108 = v106(inventory, v107)
        if v108 == nil then
            return 0, 20
        else
            v107 = v108
            while true do
                v105 = v105 + 1
                v108 = next(inventory, v107)
                if v108 ~= nil then
                    v105 = v105 + 1
                    v107 = v106(inventory, v108)
                else
                    break
                end
            end
            return v105, 20
        end
    end
end

local function processItems8()
    local v104 = nil
    local v105, v106, v107
    v105, v106, v107 = ipairs(v9:GetDescendants())
    local v108, v109
    v108, v109 = v105(v106, v107)
    local v110, v111, v112, v113, v114, v115
    if not (v108 == nil) then
        v107 = v108
        while true do
            if not (v109:IsA("TextLabel") and v109.Text:find("Fishing Shop")) then
                v108, v109 = v105(v106, v107)
                if v108 ~= nil then
                    v107 = v108
                else
                    break
                end
            else
                v104 = v109
                break
            end
        end
    end
    if v104 then
        local level = 1
        local parent = v104.Parent
        while parent and level <= 10 do
            local descendants = parent:GetDescendants()
            for _, obj in ipairs(descendants) do
                if obj:IsA("GuiButton") then
                    local text
                    if obj:IsA("TextButton") then
                        text = obj.Text
                    else
                        local lbl = obj:FindFirstChildWhichIsA("TextLabel", true)
                        text = lbl and lbl.Text or ""
                    end
                    if text == "Sell All" then
                        return parent
                    end
                end
            end
            parent = parent.Parent
            level = level + 1
        end
    end
    return nil
end

local v12
local function processItems9()
    local v104 = next
    local inventory2 = v8.inventory
    local v105, v106
    v105, v106 = next(inventory2, nil)
    local v107 = {}
    local v108
    if not (v105 == nil) then
        v107[v106] = true
        v105, v106 = v104(inventory2, v105)
        v108 = v105
        while true do
            v107[v106] = true
            v105, v106 = v104(inventory2, v108)
            if v105 ~= nil then
                v108 = v105
            else
                break
            end
        end
    end
    v104 = v12(inventory2, v105, v105, v106)
    local v109, v110
    if v104 then
        for _, obj in ipairs(v104:GetDescendants()) do
            if obj:IsA("Frame") then
                local vp = obj:FindFirstChildWhichIsA("ViewportFrame", true)
                if vp then
                    v107[obj.Name] = true
                end
            end
        end
    end
    if next(v107) then
        return v107
    end
    for _, obj in ipairs(v9:GetDescendants()) do
        if obj:IsA("Frame") then
            local vp = obj:FindFirstChildWhichIsA("ViewportFrame", true)
            if vp then
                v107[obj.Name] = true
            end
        end
    end
    return v107
end

local v13 = Vector3.new(100.5, 107.5, -296.75)
local v14

local function processItems10()
    local v104 = v14
    if v14 then
        v104 = v14.Parent
    end
    if not v104 then
        pcall(function()
            workspace.Map:FindFirstChild("Miscs")
            workspace.Map.Miscs:FindFirstChild("FishingPoints")
        end)
        v14 = workspace:FindFirstChild("FishingPoints")
    end
    local v105 = nil
    local best = nil
    if v14 then
        for _, v109 in ipairs(v14:GetChildren()) do
            if v109:IsA("Model") then
                local plrLoc = v109:GetAttribute("plrLoc")
                local pos = (typeof(plrLoc) == "CFrame" and plrLoc.Position or plrLoc)
                if pos then
                    local magnitude = (pos - v13).Magnitude
                    if not best or magnitude < best then
                        v105 = v109
                        best = magnitude
                    end
                end
            end
        end
    end
    return v105
end

local v15 = false
local function processItems11()
    -- 保留占位，原逻辑依赖未完全恢复的状态
end

local v16, v17
local function getValue7()
    local clock = os.clock()
    if clock - v16 < 0.25 then
        return v17
    end
    v16 = clock
    local minigameMap = workspace:FindFirstChild("MinigameMap")
    if not minigameMap then
        v17 = false
        return false
    end
    local barriers = minigameMap:FindFirstChild("Barriers")
    if barriers then
        v17 = true
        return true
    end
    local map = minigameMap:FindFirstChild("Map")
    if map then
        local leafygrass = map:FindFirstChild("leafygrass")
        if leafygrass then
            v17 = true
            return true
        end
    end
    v17 = false
    return false
end

local v18
local function checkCondition()
    return not v18()
end

local v19, v20
local function updateState8()
    if v19 then
        v19 = nil
        v20 = nil
    end
end

local vector3
local function addPart(v104)
    if v104 then
        local getChildren = v104:GetChildren()
        for _, v107 in ipairs(getChildren) do
            if v107:IsA("BasePart") then
                local dist = (v107.Position - vector3).Magnitude
                if dist >= 10 then
                    local part = Instance.new("Part")
                    part.Name = "GrassSafetyFloor"
                    part.Size = Vector3.new(v107.Size.X, 40, v107.Size.Z)
                    part.CFrame = v107.CFrame * CFrame.new(0, -20, 0)
                    part.Anchored = true
                    part.CanCollide = true
                    part.Transparency = 1
                    part.CastShadow = false
                    part.Material = Enum.Material.SmoothPlastic
                    part.Parent = v19
                end
            end
        end
    end
end

local v21
local function processItems12(v104, v105, v106, v115, ...)
    if v19 then
        v19:GetAttribute("World")
        return
    end
    local v107 = v18(v106, v115, ...)
    if v107 then
        local v108 = workspace:FindFirstChild("MinigameMap")
        v20 = Instance.new("Folder")
        v20.Name = "ObstacleCollisions"
        v20.Parent = workspace
        for _, v114 in ipairs(v21) do
            local obstacleBlocker = Instance.new("Part")
            obstacleBlocker.Name = "ObstacleBlocker"
            obstacleBlocker.Size = v114.Size
            obstacleBlocker.CFrame = v114.CF
            obstacleBlocker.Anchored = true
            obstacleBlocker.CanCollide = true
            obstacleBlocker.Transparency = 1
            obstacleBlocker.CastShadow = false
            obstacleBlocker.Material = Enum.Material.SmoothPlastic
            obstacleBlocker.Parent = v20
        end
    end
end

local v22
local function computeValue(v104, v105, v106, v109, ...)
    if v19 then
        v19:GetAttribute("World")
        return
    end
    local v107 = v22(v106, v109, ...)
    if v107 then
        local v108 = workspace:FindFirstChild("Map")
        if v108 then
            v108:FindFirstChild("leafygrass")
        end
    end
end

local v23
local function updateState9()
    v23 = v2
end

local v24, v25, v26, v27
local function updateState10()
    v27 = not v27
    if v27 then
        v26.Visible = false
        v24.Size = UDim2.new(0, 280, 0, 38)
        v25.Text = "+"
    else
        v26.Visible = true
        v24.Size = UDim2.new(0, 280, 0, 275)
        v25.Text = "-"
    end
end

local v28, v29, v30
local function transformValue7(v104)
    local mouseButton1 = Enum.UserInputType.MouseButton1
    local isDown = v104.UserInputType == mouseButton1
    if not isDown then
        isDown = v104.UserInputType == Enum.UserInputType.Touch
    end
    if isDown then
        v28 = true
        v29 = v104.Position
        v30 = v24.Position
    end
end

local v31
local function updateState11(v104)
    if v104.UserInputType == Enum.UserInputType.MouseMovement
        or v104.UserInputType == Enum.UserInputType.Touch then
        v31 = v104
    end
end

local function processValues(v104) end

local v32, v33, v34
local function getValue8()
    v32 = not v32
    v4.farmWatermelons = v32
    if v32 then
        v33.Text = "西瓜: 开"
        v33.TextColor3 = Color3.fromRGB(52, 211, 153)
        v34.Color = Color3.fromRGB(16, 185, 129)
    else
        v33.Text = "西瓜: 关"
        v33.TextColor3 = Color3.fromRGB(120, 126, 146)
        v34.Color = Color3.fromRGB(38, 42, 56)
    end
end

local v35, v36, v37
local function getValue9()
    v35 = not v35
    v4.autoFishing = v35
    if v35 then
        v36.Text = "钓鱼: 开"
        v36.TextColor3 = Color3.fromRGB(56, 189, 248)
        v37.Color = Color3.fromRGB(56, 189, 248)
    else
        v36.Text = "钓鱼: 关"
        v36.TextColor3 = Color3.fromRGB(120, 126, 146)
        v37.Color = Color3.fromRGB(38, 42, 56)
    end
end

local raycastParams, v38, v39
local function transformValue8(v104)
    if v5.Character then
    elseif v104 then
        v38.FilterDescendantsInstances = v39
        raycastParams.FilterDescendantsInstances = v39
        return
    else
        v38.FilterDescendantsInstances = v39
        raycastParams.FilterDescendantsInstances = v39
        return
    end
end

local v40 = 0
local function transformValue9(v104)
    if 0.5 < os.clock() - v40 then
        v40 = os.clock()
        v104.Jump = true
    end
end

local function transformValue10(v104)
    local lookVector = v104.CFrame.LookVector
    workspace:Raycast(v104.Position - Vector3.new(0, 1.5, 0), lookVector * 3, raycastParams)
    workspace:Raycast(v104.Position + Vector3.new(0, 0.2, 0), lookVector * 3, raycastParams)
    workspace:Raycast(v104.Position + Vector3.new(0, 2.8, 0), lookVector * 3, raycastParams)
end

local function computeValue2(v104, v105, v106)
    return workspace:Raycast(v104, v105 - v104, v38) == nil or v106
end

local createPath
local function runProtected2(v104, v105)
    local ok = pcall(function() end)
    if ok and createPath and createPath.Status == Enum.PathStatus.Success then
        return createPath:GetWaypoints()
    end
    return nil
end

local v41 = false
local v42

local function checkCondition2(v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116)
    return true
end

local function processItems13() end
local function transformValue11(v104) end

local v43
local function transformValue12(v104)
    if v43 then
        v43.GuiNavigationEnabled = true
        v43.SelectedObject = v104
        v43.SelectedObject = nil
    end
end

local function checkCondition3()
    for _, v107 in ipairs(v9:GetDescendants()) do
        if v107:IsA("TextLabel") or v107:IsA("TextButton") then
            local text = v107.Text:lower()
            if text:find("give%s*up") or text:find("giveup") or text:find("сдаться") then
                if v107:IsA("GuiButton") or v107:FindFirstAncestorWhichIsA("GuiButton") then
                    return true
                end
            end
        end
    end
    return false
end

local function processItems14()
    local dialog = v9:FindFirstChild("MainInterface") and v9.MainInterface:FindFirstChild("Dialog")
    local choices = dialog and dialog:FindFirstChild("Choices")
    if not choices then
        choices = v9:FindFirstChild("Choices", true)
    end
    if choices then
        for _, btn in ipairs(choices:GetChildren()) do
            if btn:IsA("TextButton") then
                if v43 then
                    v43.GuiNavigationEnabled = true
                    v43.SelectedObject = btn
                    v43.SelectedObject = nil
                end
                return
            end
        end
    end
end

local v44, v45
local function findChild()
    if v44 and v44.Parent and v45 and v45.Parent then
        return v44, v45
    end
    workspace:FindFirstChild("Lime")
    return nil, nil
end

local function getValue10()
    if not v18() then
        return nil, nil
    end
    local watermelon = workspace:FindFirstChild("Watermelon")
    if not watermelon then
        local mm = workspace:FindFirstChild("MinigameMap")
        if mm then
            mm:FindFirstChild("Watermelon")
        end
        return nil, nil
    end
    local model = watermelon:IsA("Model") and watermelon or watermelon:FindFirstAncestorOfClass("Model")
    if not model then
        return nil, nil
    end
    local center = model:FindFirstChild("Center") or model:FindFirstChildWhichIsA("BasePart")
    if center then
        return center, model:FindFirstChildWhichIsA("ProximityPrompt", true)
    end
    return nil, nil
end

local v46
local function getHumanoidRootPart(v104, v105, v106, v107, v108, v111, ...)
    if v1 and v41 then
        local character = v5.Character
        if character then
            return character:FindFirstChild("HumanoidRootPart")
        end
    end
end

local v47, v48, v49, v50

local function checkCondition4(v104, v105, v106, v107, v108, v109, v110, v115, ...)
    -- 保留占位
end

local function processItems15() end

local v51, v52, v53

local function checkCondition5(v104, v105, v106, v107, v108, v109, v110, v111, v128, ...)
    -- 保留占位，原逻辑在反混淆中已严重损坏
    return false
end

local function getAttribute(v104, v105, v106, v107, v108, v109, v118, ...)
    -- 保留占位
end

local v54, v55, v56

local function processItems16(v104, v105, v106, v107, v108, v109, v110, v111, v128, ...)
    -- 保留占位
end

local function processItems17(v104, v105, v106, v107, v108, v109, v110)
    -- 保留占位
end

local v57, v58, v59, v60, v61

local function processItems18(v104, v105, v106, v107, v108, v109, v126, ...)
    -- 保留占位
end

local function getValue11()
    v41 = not v41
    v4.autoFarmEnabled = v41
    if v41 then
        v60.Text = "停止多开"
        v60.BackgroundColor3 = Color3.fromRGB(225, 29, 72)
    else
        v15 = false
        v60.Text = "开始多开"
        v60.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
        v59.Text = "正在停止..."
        v59.TextColor3 = Color3.fromRGB(248, 113, 113)
        v58.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
    end
end

local function performTask24() end

v1 = true
_G.SolsRngCancel = SolsRngCancelHandler

local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

v43 = GuiService
v3 = HttpService
v6 = ReplicatedStorage
v2 = GuiService
v5 = Players.LocalPlayer

local playerGui = v5:WaitForChild("PlayerGui", 30)

pcall(function()
    v6:WaitForChild("ByteNetReliable")
end)

v4 = performTask12

local executor = syn or (queue_on_teleport and { queue_on_teleport = queue_on_teleport }) or fluxus

if executor then
    local cfg = { farmWatermelons = true, autoFishing = true, autoFarmEnabled = false }
    v4 = cfg
    v32 = cfg.farmWatermelons
    v35 = cfg.autoFishing
else
    local cfg = { farmWatermelons = true, autoFishing = true, autoFarmEnabled = false }
    v4 = cfg
    v32 = cfg.farmWatermelons
    v35 = cfg.autoFishing
end

v47 = nil

local idled = v5.Idled
v7 = idled
idled = idled.Connect(v7, performTask16)
v7 = nil

v8 = getValue6

local env
if getgenv then
    env = getgenv()
    if not env.AutoFishState then
        env.AutoFishState = {
            inventory = {},
            gameEndTime = nil,
            fishingBegan = false,
            sellAcknowledged = false,
            lastSellRequest = nil,
        }
    end
else
    env = _G
    if not env.AutoFishState then
        env.AutoFishState = {
            inventory = {},
            gameEndTime = nil,
            fishingBegan = false,
            sellAcknowledged = false,
            lastSellRequest = nil,
        }
    end
end
v8 = env.AutoFishState

v11 = processItems6
v51 = processItems7
v12 = processItems8
v52 = processItems9
v14 = nil
v54 = processItems10
v15 = false

local v76
if pcall(function() return Enum.RaycastFilterType.Exclude end) then
    v76 = Enum.RaycastFilterType.Exclude
else
    v76 = Enum.RaycastFilterType.Blacklist
end

v16 = 0
v17 = false
v18 = getValue7
v22 = checkCondition
v19 = nil
v20 = nil
v21 = 541

vector3 = Vector3.new(541, 134.000015, -204)

v57 = {}
v57[1] = { Size = Vector3.new(20, 35, 5.4), CF = CFrame.new(278.136505, 106.000015, 9566.54785, 0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, 0.342042685) }
v57[2] = { Size = Vector3.new(20, 60, 6.6), CF = CFrame.new(255.78595, 91.3500214, 9547.50586, 0.939700544, 0, -0.341998369, 0, 1, 0, 0.341998369, 0, 0.939700544) }
v57[3] = { Size = Vector3.new(13.450897216796875, 5.594482421875, 11.373827934265137), CF = CFrame.new(237.393326, 94.7617188, 9544.90527, -1, 8.74227766e-8, 0, 8.2393431e-10, 0.00942470971, -0.999955595, -8.7418897e-8, -0.999955595, -0.00942470971) }
v57[4] = { Size = Vector3.new(3, 16, 16), CF = CFrame.new(320.899963, 102.000038, 9600.07617, -1, 0, 0, 0, 1, 0, 0, 0, -1) }
v57[5] = { Size = Vector3.new(3, 16, 16), CF = CFrame.new(321.400024, 100.000031, 9617.7002, -1, 0, 0, 0, 0, 1, 0, 1, 0) }
v57[6] = { Size = Vector3.new(14, 20, 16), CF = CFrame.new(345, 97.5000153, 9669.00098, -1, 8.74227766e-8, 0, 8.74227766e-8, 1, 8.74227766e-8, 7.64274186e-15, 8.74227766e-8, -1) }
v57[7] = { Size = Vector3.new(25, 16.5, 11), CF = CFrame.new(240.210144, 91.9284058, 9752.95996, -1, 0, 0, 0, 1, 0, 0, 0, -1) }
v57[8] = { Size = Vector3.new(27, 15, 12), CF = CFrame.new(321.999969, 100.750015, 9764.50098, 0, 0, -1, 0, 1, 0, 1, 0, 0) }
v57[9] = { Size = Vector3.new(12, 15, 15), CF = CFrame.new(308.5, 100.750015, 9772.00098, 0, 0, -1, 0, 1, 0, 1, 0, 0) }
v57[10] = { Size = Vector3.new(35, 60, 25), CF = CFrame.new(485.5, 125.500015, 9596.50098, 1, 0, 0, 0, 1, 0, 0, 0, 1) }
v57[11] = { Size = Vector3.new(6, 40, 9), CF = CFrame.new(353, 117.500015, 9506.50098, -1, 0, 0, 0, 1, 0, 0, 0, -1) }
v21 = v57

v57 = updateState8

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SolsRngAutomationGui"
screenGui.ResetOnSpawn = false

local parentGui
if gethui then
    local ok, hui = pcall(gethui)
    if ok and hui then
        parentGui = hui
    end
end
if not parentGui then
    parentGui = playerGui
end
pcall(function()
    local old = parentGui:FindFirstChild("SolsRngAutomationGui")
    if old then old:Destroy() end
end)
screenGui.Parent = parentGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 280, 0, 275)
mainFrame.Position = UDim2.new(0.5, -140, 0.35, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 20, 26)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui
v24 = mainFrame

local uICorner = Instance.new("UICorner")
uICorner.CornerRadius = UDim.new(0, 10)
uICorner.Parent = mainFrame

local uIStroke = Instance.new("UIStroke")
uIStroke.Color = Color3.fromRGB(48, 52, 68)
uIStroke.Thickness = 1.2
uIStroke.Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 38)
titleBar.BackgroundColor3 = Color3.fromRGB(24, 27, 36)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local uICorner2 = Instance.new("UICorner")
uICorner2.CornerRadius = UDim.new(0, 10)
uICorner2.Parent = titleBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -75, 1, 0)
titleLabel.Position = UDim2.new(0, 12, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "SOL'S RNG <font color=\"#8C91A5\">| 多开挂机</font>"
titleLabel.TextColor3 = Color3.fromRGB(242, 244, 248)
titleLabel.TextSize = 13
titleLabel.RichText = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = titleBar

local versionFrame = Instance.new("Frame")
versionFrame.Size = UDim2.new(0, 32, 0, 18)
versionFrame.Position = UDim2.new(1, -64, 0.5, -9)
versionFrame.BackgroundColor3 = Color3.fromRGB(36, 40, 54)
versionFrame.BorderSizePixel = 0
versionFrame.Parent = titleBar

local uICorner3 = Instance.new("UICorner")
uICorner3.CornerRadius = UDim.new(0, 4)
uICorner3.Parent = versionFrame

local versionLabel = Instance.new("TextLabel")
versionLabel.Size = UDim2.new(1, 0, 1, 0)
versionLabel.BackgroundTransparency = 1
versionLabel.Text = "v3.3"
versionLabel.TextColor3 = Color3.fromRGB(150, 155, 175)
versionLabel.TextSize = 10
versionLabel.Font = Enum.Font.GothamBold
versionLabel.Parent = versionFrame

local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 24, 0, 24)
minimizeButton.Position = UDim2.new(1, -28, 0.5, -12)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(170, 175, 195)
minimizeButton.TextSize = 16
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.Parent = titleBar
v25 = minimizeButton

local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, 0, 1, -38)
contentFrame.Position = UDim2.new(0, 0, 0, 38)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame
v26 = contentFrame

-- 状态卡片
local statusCard = Instance.new("Frame")
statusCard.Name = "StatusCard"
statusCard.Size = UDim2.new(1, -24, 0, 46)
statusCard.Position = UDim2.new(0, 12, 0, 10)
statusCard.BackgroundColor3 = Color3.fromRGB(24, 27, 36)
statusCard.BorderSizePixel = 0
statusCard.Parent = contentFrame

local uICorner4 = Instance.new("UICorner")
uICorner4.CornerRadius = UDim.new(0, 8)
uICorner4.Parent = statusCard

local uIStroke2 = Instance.new("UIStroke")
uIStroke2.Color = Color3.fromRGB(38, 42, 56)
uIStroke2.Thickness = 1
uIStroke2.Parent = statusCard

local statusTitle = Instance.new("TextLabel")
statusTitle.Size = UDim2.new(1, -20, 0, 14)
statusTitle.Position = UDim2.new(0, 10, 0, 6)
statusTitle.BackgroundTransparency = 1
statusTitle.Text = "系统状态"
statusTitle.TextColor3 = Color3.fromRGB(120, 126, 146)
statusTitle.TextSize = 9
statusTitle.Font = Enum.Font.GothamBold
statusTitle.TextXAlignment = Enum.TextXAlignment.Left
statusTitle.Parent = statusCard

local statusDot = Instance.new("Frame")
statusDot.Size = UDim2.new(0, 6, 0, 6)
statusDot.Position = UDim2.new(0, 10, 0, 26)
statusDot.BackgroundColor3 = Color3.fromRGB(140, 145, 160)
statusDot.BorderSizePixel = 0
statusDot.Parent = statusCard

local uICorner5 = Instance.new("UICorner")
uICorner5.CornerRadius = UDim.new(1, 0)
uICorner5.Parent = statusDot

local statusValue = Instance.new("TextLabel")
statusValue.Name = "StatusValue"
statusValue.Size = UDim2.new(1, -30, 0, 16)
statusValue.Position = UDim2.new(0, 22, 0, 21)
statusValue.BackgroundTransparency = 1
statusValue.Text = "空闲"
statusValue.TextColor3 = Color3.fromRGB(210, 214, 224)
statusValue.TextSize = 11
statusValue.Font = Enum.Font.GothamMedium
statusValue.TextXAlignment = Enum.TextXAlignment.Left
statusValue.Parent = statusCard
v59 = statusValue
v58 = statusCard

-- 计数卡片
local counterCard = Instance.new("Frame")
counterCard.Name = "CounterCard"
counterCard.Size = UDim2.new(1, -24, 0, 46)
counterCard.Position = UDim2.new(0, 12, 0, 62)
counterCard.BackgroundColor3 = Color3.fromRGB(24, 27, 36)
counterCard.BorderSizePixel = 0
counterCard.Parent = contentFrame

local uICorner6 = Instance.new("UICorner")
uICorner6.CornerRadius = UDim.new(0, 8)
uICorner6.Parent = counterCard

local uIStroke3 = Instance.new("UIStroke")
uIStroke3.Color = Color3.fromRGB(38, 42, 56)
uIStroke3.Thickness = 1
uIStroke3.Parent = counterCard

local counterTitle = Instance.new("TextLabel")
counterTitle.Size = UDim2.new(1, -20, 0, 14)
counterTitle.Position = UDim2.new(0, 10, 0, 6)
counterTitle.BackgroundTransparency = 1
counterTitle.Text = "已收集西瓜"
counterTitle.TextColor3 = Color3.fromRGB(120, 126, 146)
counterTitle.TextSize = 9
counterTitle.Font = Enum.Font.GothamBold
counterTitle.TextXAlignment = Enum.TextXAlignment.Left
counterTitle.Parent = counterCard

local counterValue = Instance.new("TextLabel")
counterValue.Name = "CounterValue"
counterValue.Size = UDim2.new(1, -20, 0, 20)
counterValue.Position = UDim2.new(0, 10, 0, 20)
counterValue.BackgroundTransparency = 1
counterValue.Text = "0"
counterValue.TextColor3 = Color3.fromRGB(52, 211, 153)
counterValue.TextSize = 15
counterValue.Font = Enum.Font.GothamBold
counterValue.TextXAlignment = Enum.TextXAlignment.Left
counterValue.Parent = counterCard
v48 = counterValue

-- 开关行
local togglesRow = Instance.new("Frame")
togglesRow.Name = "TogglesRow"
togglesRow.Size = UDim2.new(1, -24, 0, 32)
togglesRow.Position = UDim2.new(0, 12, 0, 114)
togglesRow.BackgroundTransparency = 1
togglesRow.Parent = contentFrame

local melonToggle = Instance.new("TextButton")
melonToggle.Name = "MelonToggle"
melonToggle.Size = UDim2.new(0.5, -4, 1, 0)
melonToggle.Position = UDim2.new(0, 0, 0, 0)
melonToggle.BackgroundColor3 = Color3.fromRGB(24, 27, 36)
melonToggle.BorderSizePixel = 0
melonToggle.Text = v32 and "西瓜: 开" or "西瓜: 关"
melonToggle.TextColor3 = v32 and Color3.fromRGB(52, 211, 153) or Color3.fromRGB(120, 126, 146)
melonToggle.TextSize = 12
melonToggle.Font = Enum.Font.GothamMedium
melonToggle.AutoButtonColor = false
melonToggle.Parent = togglesRow
v33 = melonToggle

local uICorner7 = Instance.new("UICorner")
uICorner7.CornerRadius = UDim.new(0, 6)
uICorner7.Parent = melonToggle

local melonStroke = Instance.new("UIStroke")
melonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
melonStroke.Color = v32 and Color3.fromRGB(16, 185, 129) or Color3.fromRGB(38, 42, 56)
melonStroke.Thickness = 1
melonStroke.Parent = melonToggle
v34 = melonStroke

local fishToggle = Instance.new("TextButton")
fishToggle.Name = "FishToggle"
fishToggle.Size = UDim2.new(0.5, -4, 1, 0)
fishToggle.Position = UDim2.new(0.5, 4, 0, 0)
fishToggle.BackgroundColor3 = Color3.fromRGB(24, 27, 36)
fishToggle.BorderSizePixel = 0
fishToggle.Text = v35 and "钓鱼: 开" or "钓鱼: 关"
fishToggle.TextColor3 = v35 and Color3.fromRGB(56, 189, 248) or Color3.fromRGB(120, 126, 146)
fishToggle.TextSize = 12
fishToggle.Font = Enum.Font.GothamMedium
fishToggle.AutoButtonColor = false
fishToggle.Parent = togglesRow
v36 = fishToggle

local uICorner8 = Instance.new("UICorner")
uICorner8.CornerRadius = UDim.new(0, 6)
uICorner8.Parent = fishToggle

local fishStroke = Instance.new("UIStroke")
fishStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
fishStroke.Color = v35 and Color3.fromRGB(56, 189, 248) or Color3.fromRGB(38, 42, 56)
fishStroke.Thickness = 1
fishStroke.Parent = fishToggle
v37 = fishStroke

local actionButton = Instance.new("TextButton")
actionButton.Name = "ActionButton"
actionButton.Size = UDim2.new(1, -24, 0, 38)
actionButton.Position = UDim2.new(0, 12, 0, 152)
actionButton.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
actionButton.BorderSizePixel = 0
actionButton.Text = "开始多开"
actionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
actionButton.TextSize = 12
actionButton.Font = Enum.Font.GothamBold
actionButton.AutoButtonColor = false
actionButton.Parent = contentFrame
v60 = actionButton

local uICorner9 = Instance.new("UICorner")
uICorner9.CornerRadius = UDim.new(0, 8)
uICorner9.Parent = actionButton

local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, -24, 0, 16)
footerLabel.Position = UDim2.new(0, 12, 0, 196)
footerLabel.BackgroundTransparency = 1
footerLabel.Text = "自动保存配置 | 自动重连 | 防挂机"
footerLabel.TextColor3 = Color3.fromRGB(86, 92, 112)
footerLabel.TextSize = 10
footerLabel.Font = Enum.Font.Gotham
footerLabel.Parent = contentFrame

-- 交互连接
melonToggle.MouseButton1Click:Connect(getValue8)
fishToggle.MouseButton1Click:Connect(getValue9)
actionButton.MouseButton1Click:Connect(getValue11)
minimizeButton.MouseButton1Click:Connect(updateState10)

titleBar.InputBegan:Connect(transformValue7)
UserInputService.InputChanged:Connect(updateState11)
UserInputService.InputChanged:Connect(processValues)

-- 拖动逻辑
local dragging = false
local dragStart, startPos

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

titleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 射线/寻路配置
v38 = RaycastParams.new()
v38.FilterType = v76
v39 = {}

raycastParams = RaycastParams.new()
raycastParams.FilterType = v76

local pathParams = {
    AgentRadius = 2,
    AgentHeight = 5,
    AgentCanJump = true,
    AgentCanClimb = true,
    WaypointSpacing = 3.5,
}
v53 = pathParams
createPath = PathfindingService:CreatePath(pathParams)
v42 = runProtected2
v53 = checkCondition2
v61 = checkCondition3
v44 = nil
v45 = nil
v46 = findChild
v50 = getValue10
v55 = checkCondition5
v56 = getAttribute

if v4.autoFarmEnabled then
    v41 = true
    v60.Text = "停止多开"
    v60.BackgroundColor3 = Color3.fromRGB(225, 29, 72)
end

-- https://discord.gg/AwGHNh7Z7T
