fx_version 'cerulean'
game 'gta5'

author 'Drazox'
description 'Egyedi hangos, Interact-sound és QB-target rendszert használó bíró kalapács! ESX= Hát igazából csak a harmadik szem a lényeges! Hangot a fájlokban megtaláljátok!'
version 'NINCS'
dependency {
	'PolyZone',
	'qb-target',
	'interact-sound',
	'qb-core',
}
shared_scripts {
--még nincs
}

client_scripts {
	'client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
}
