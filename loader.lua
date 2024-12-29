print("Loading Vision")
--[ Gun Grounds FFA Script ]--
if game.PlaceId == 12137249458 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/userlibs/Vision/refs/heads/main/src/visionffa.lua"))()
    print("Gun Grounds Script Loading...")
else
    --[ Universal Script ]--
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/userlibs/Vision/refs/heads/main/src/vision.lua"))()
    end)
    
    if not success then
        print("Failed to load Universal Script: " .. tostring(err))
    else
        print("Universal Script Loading...")
    end
end
