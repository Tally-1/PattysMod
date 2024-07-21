private _subCategoryCrate_Settings = "Rally Point Settings";

[
	"PSA_rallyPlaceTime",
	"SLIDER",
	["RP placement time","How long it takes to place a Rally Point."],
	[_categoryName, _subCategoryCrate_Settings],
	[1,60,5,0]

] call CBA_fnc_addSetting;


[
	"PSA_rallyDisableDist",
	"SLIDER",
	["RP disable distance","How close to a Rally Point an enemy needs to be in order to disable it"],
	[_categoryName, _subCategoryCrate_Settings],
	[5,200,15,0]
] call CBA_fnc_addSetting;