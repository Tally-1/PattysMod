private _subCategoryCrate_Settings = "Crate Settings";

[
	"PSA_crateDestructionCooldown",
	"SLIDER",
	["Crate Cooldown","How long from a crate is destroyed until the player can spawn another one"],
	[_categoryName, _subCategoryCrate_Settings],
	[1,600,300,0]
] call CBA_fnc_addSetting;

[
	"PSA_cratePlacementTime",
	"SLIDER",
	["Crate Placement time","How long it takes for a crate to be placed."],
	[_categoryName, _subCategoryCrate_Settings],
	[5,120,30,0]
] call CBA_fnc_addSetting;

[
	"PSA_crateResupplyTime",
	"SLIDER",
	["Crate Resupply Time","How long it takes to resupply at a crate."],
	[_categoryName, _subCategoryCrate_Settings],
	[3,60,10,0]
] call CBA_fnc_addSetting;

[
	"PSA_crateHealTime",
	"SLIDER",
	["Crate Heal Time","How long it takes to self heal at a arsenal crate."],
	[_categoryName, _subCategoryCrate_Settings],
	[5,60,6,0]
] call CBA_fnc_addSetting;


[
	"PSA_crateProxDestrTimer",
	"SLIDER",
	["Crate Proximity destruction time","How long an enemy needs to be next to a crate for it to be destroyed"],
	[_categoryName, _subCategoryCrate_Settings],
	[5,120,30,0]
] call CBA_fnc_addSetting;

[
	"PSA_crateProxDestrDist",
	"SLIDER",
	["Crate Proximity destruction distance","How close to a crate an enemy needs to be in order to trigger the destruction countDown"],
	[_categoryName, _subCategoryCrate_Settings],
	[5,200,30,0]
] call CBA_fnc_addSetting;


[
	"PSA_cratePickupDistance",
	"SLIDER",
	["Crate pickup distance","How close a player needs to be in order to pick up his own crate."],
	[_categoryName, _subCategoryCrate_Settings],
	[5,100,20,0]
] call CBA_fnc_addSetting;


// [
// 	"PSA_3dCrateMarkerDistance",
// 	"SLIDER",
// 	["Crate 3D marker distance","How far away is a resupply crate 3D marker visible."],
// 	[_categoryName, _subCategoryCrate_Settings],
// 	[10,300,50,0]
// ] call CBA_fnc_addSetting;