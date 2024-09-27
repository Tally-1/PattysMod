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
	"PSA_droneVisibilityHeight",
	"SLIDER",
	["Visibility Height","Above this altitude(m) the drone is hidden from AI."],
	[_categoryName, _subCategory],
	[1,600,50,0]

] call CBA_fnc_addSetting;


[
	"PSA_droneVisibilityCooldown",
	"SLIDER",
	["Shot Visibility Cooldown","How long in seconds from a drone fires until it can be hidden from AI"],
	[_categoryName, _subCategory],
	[1,60,10,0]

] call CBA_fnc_addSetting;