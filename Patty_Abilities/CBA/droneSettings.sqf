private _subCategory = "Drone Settings";
[
	"PSA_dronePlacementTime",
	"SLIDER",
	["Drone Placement Time","Time in seconds it takes to place a Drone"],
	[_categoryName, _subCategory],
	[1,60,3,0]

] call CBA_fnc_addSetting;

[
	"PSA_dronePickupTime",
	"SLIDER",
	["Drone Pickup Time","Time in seconds it takes to pick up a Drone"],
	[_categoryName, _subCategory],
	[1,60,3,0]

] call CBA_fnc_addSetting;

[
	"PSA_reconDroneCoolDown",
	"SLIDER",
	["Recon Drone Cooldown","How long from a Recon Drone is destroyed until the player can place another"],
	[_categoryName, _subCategory],
	[5,3000,20,0]

] call CBA_fnc_addSetting;

[
	"PSA_combatDroneCoolDown",
	"SLIDER",
	["Combat Drone Cooldown","How long from a Combat Drone is destroyed until the player can place another"],
	[_categoryName, _subCategory],
	[5,3000,20,0]

] call CBA_fnc_addSetting;

[
	"PSA_bombDroneCoolDown",
	"SLIDER",
	["Bomb Drone Cooldown","How long from a Bomb Drone is destroyed until the player can place another"],
	[_categoryName, _subCategory],
	[5,3000,20,0]

] call CBA_fnc_addSetting;

[
	"PSA_combatDroneGun",
	"EDITBOX",
	["Combat Drone Weapon","The weapon a Combat drone starts with"],
	[_categoryName, _subCategory],
	"MMG_02_black_F"

] call CBA_fnc_addSetting;

[
	"PSA_combatDroneMagazine",
	"EDITBOX",
	["Combat Drone Magazine","The Magazine a Combat drone starts with. Make sure it is compatible."],
	[_categoryName, _subCategory],
	"130Rnd_338_Mag"

] call CBA_fnc_addSetting;


[
	"PSA_reconDroneVisibilityHeight",
	"SLIDER",
	["Recon Drone Visibility Height","Above this altitude(m) the recon-drone is hidden from AI."],
	[_categoryName, _subCategory],
	[1,600,50,0]

] call CBA_fnc_addSetting;

[
	"PSA_combatDroneVisibilityHeight",
	"SLIDER",
	["Combat Drone Visibility Height","Above this altitude(m) the combat-drone is hidden from AI."],
	[_categoryName, _subCategory],
	[1,600,50,0]

] call CBA_fnc_addSetting;


[
	"PSA_bombDroneVisibilityTime",
	"SLIDER",
	["Bomb Drone Visibility Time","The bomb-drone switches between visible/invisible every time this amount of seconds pass."],
	[_categoryName, _subCategory],
	[1,600,5,0]

] call CBA_fnc_addSetting;


[
	"PSA_droneVisibilityCooldown",
	"SLIDER",
	["Combat Drone Visibility Cooldown","How many seconds from a combat-drone fires until it is invisible again"],
	[_categoryName, _subCategory],
	[1,20,5,0]

] call CBA_fnc_addSetting;