config = {}

Config.DiscordAppID = 123456789012345678 -- Remplace par ton Application ID
Config.BigImage = "big_logo" -- Nom de l'image principale
Config.BigImageText = "Loop RP - Serveur Apocalypse"
Config.SmallImage = "small_logo" -- Nom de l'image secondaire (optionnel)
Config.SmallImageText = "Rejoignez-nous !"

Config.Buttons = {
    {label = "Rejoindre le Discord", url = "https://discord.gg/ton-lien"},
    {label = "Se Connecter", url = "fivem://connect/TON_IP"}
}


Config.SetRichPresenceText = "Survie dans un monde en ruine..." -- Texte sous le pseudo Discord
Config.RefreshTime = 6000 --Temps de mise à jour en millisecondes (60s)


Config.ShowPlayerCount = true -- Afficher le nombre de joueurs connecter sur le serveur 
Config.PlayerOnlineText = "👥 Il y a %s joueurs en ligne"
Config.RefreshPlayerOnline = 6000 --Temps de mise à jour pour les joueurs en ligne en millisecondes pour (60s)