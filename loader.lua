print("Loading Vision")

-- running
local function fetchAndRunScript(url)
    local success, contentOrError = pcall(function()
        return game:HttpGet(url)
    end)

    if not success then
        print("HttpGet failed:", contentOrError)
        return false
    end

    local func, loadError = loadstring(contentOrError)
    if not func then
        print("loadstring failed:", loadError)
        return false
    end

    local successExec, execError = pcall(func)
    if not successExec then
        print("Script execution failed:", execError)
        return false
    end

    return true
end

-- Game-specific scripts
if game.PlaceId == 12137249458 then
    -- Gun Grounds FFA Script
    if fetchAndRunScript("https://raw.githubusercontent.com/userlibs/Vision/refs/heads/main/src/visionffa.lua") then
        print("Gun Grounds Script Loaded Successfully")
    else
        print("Failed to load Gun Grounds Script")
    end
elseif game.PlaceId == 16732694052 then
    -- Fisch Script
    if fetchAndRunScript("https://raw.githubusercontent.com/userlibs/Vision/refs/heads/main/src/visionfisch.lua") then
        print("Fisch Script Loaded Successfully")
    else
        print("Failed to load Fisch Script")
    end
else
    -- Universal Script
    if fetchAndRunScript("https://raw.githubusercontent.com/userlibs/Vision/refs/heads/main/src/vision.lua") then
        print("Universal Script Loaded Successfully")
    else
        print("Failed to load Universal Script")
    end
end
