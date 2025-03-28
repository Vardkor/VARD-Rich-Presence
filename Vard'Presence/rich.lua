Config = config or {}
dofile("config.lua")



Citizen.CreateThread(function()
    while true do 
        
        local playerName = GetPlayerName(PlayerId())
        local playerId = GetPlayerServerId(PlayerId())


        SetDiscordAppId(Config.DiscordAppID)
        

        SetRichPresence('Username: '.. playerName .. 'Server ID: ' .. playerId)
        SetRichPresence('Server Id:' .. playerId)


        SetDiscordRichPresenceAsset(Config.BigImage)
        SetDiscordRichPresenceAssetText(Config.BigImageText)
        SetDiscordRichPresenceAssetSmall(Config.SmallImage)
        SetDiscordRichPresenceAssetSmallText(Config.SmallImageText)

        
        for i, button in ipairs(Config.Buttons) do 
            SetDiscordRichPresenceAction(i -1, button.label, button.url)
        end
        
        SetRichPresence(Config.SetRichPresenceText)

        Citizen.Await(Config.RefreshTime)
    end
end)


Citizen.CreateThread(function ()

    while true do 
        Citizen.Await(Config.RefreshPlayerOnline)  
        

        if Config.ShowPlayerCount then 
            local PlayerCount = GetActivePlayers()
            local PlayerText = string.format(Config.PlayerOnlineText, PlayerCount)
            SetRichPresence(playerText)
        end
    end
end)