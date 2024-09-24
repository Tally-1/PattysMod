_subCategoryCrate_Settings = "Drone Settings";
[
	"PSA_dronePlacementTime",
	"SLIDER",
	["Drone Placement Time","Time in seconds it takes to place a Drone"],
	[_categoryName, _subCategoryCrate_Settings],
	[1,600,3,0]

] call CBA_fnc_addSetting;

[
	"PSA_reconDroneCoolDown",
	"SLIDER",
	["Recon Drone Cooldown","How long from a Recon Drone is destroyed until the player can place another"],
	[_categoryName, _subCategoryCrate_Settings],
	[1,600,20,0]

] call CBA_fnc_addSetting;

[
	"PSA_combatDroneCoolDown",
	"SLIDER",
	["Combat Drone Cooldown","How long from a Combat Drone is destroyed until the player can place another"],
	[_categoryName, _subCategoryCrate_Settings],
	[1,600,20,0]

] call CBA_fnc_addSetting;

[
	"PSA_bombDroneCoolDown",
	"SLIDER",
	["Bomb Drone Cooldown","How long from a Bomb Drone is destroyed until the player can place another"],
	[_categoryName, _subCategoryCrate_Settings],
	[1,600,20,0]

] call CBA_fnc_addSetting;
