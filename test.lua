RegisterNetEvent('kickAllPlayers') -- שם האירוע
AddEventHandler('kickAllPlayers', function(reason)
    if reason == nil then reason = "You have been kicked from the server." end

    -- לולאה על כל השחקנים המחוברים
    for _, playerId in ipairs(GetPlayers()) do
        DropPlayer(playerId, reason)
    end
end)
