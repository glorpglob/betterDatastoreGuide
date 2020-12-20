local DSS = game:GetService("DataStoreService")
local DS = DSS:GetDataStore("Data")

game.Players.PlayerAdded:Connect(function(plr)
    local Success, Error = pcall(function() -- used to "catch" errors
        DS:SetAsync(plr.UserId, "ABC") -- set the key to their userid, with the data being "ABC"
        print(DS:GetAsync(plr.UserId)) --> ABC
    end) 
    if not Success then -- if there was an error
        print("Error saving data: " .. Error) -- print the error
    end
end)
