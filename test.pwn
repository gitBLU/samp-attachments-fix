// generated by "sampctl package generate"

#include "attachment-fix.inc"

main() {
	// Just aim with the sniper you will be spawned with, to test this include.
}

public OnGameModeInit()
{
	SendRconCommand("hostname samp-attachments-fix Test Gamemode");
	SetGameModeText("Testing samp-attachments-fix");
	ShowPlayerMarkers(true);
	ShowNameTags(true);	
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetSpawnInfo(playerid, NO_TEAM, 1, 1530.5607, -1680.9048, 13.3828, 0.1423, 22, 120, 27, 60, 41, 5678);
	SpawnPlayer(playerid);

	SendClientMessage(playerid, -1, "Straight to the point: Aim with the sniper you will be spawned with.");
	return 1;
}


public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid, 0);
	TogglePlayerClock(playerid, 0);
	GivePlayerWeapon(playerid, 34, 100);
	SetPlayerAttachedObject(playerid, 3, 19487, 2, 0.101, -0.0, 0.0, 5.50, 84.60, 83.7, 1.0, 1.0, 1.0, 0xFF00FF00);
	return 1;
}