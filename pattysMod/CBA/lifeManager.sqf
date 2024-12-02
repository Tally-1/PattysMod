[
	"PTTY_defaultLives",
	"SLIDER",
	["Default lives","The default amount of lives assigned to each player"],
	[_categoryName, _subCategoryLifeManager_Settings],
	[1,100,5,0]
] call CBA_fnc_addSetting;

[
	"PTTY_ExtraLife",
	"CHECKBOX",
	["Extra Life", "Adds one extra life at start"],
	[_categoryName, _subCategoryLifeManager_Settings],
	true
] call cba_settings_fnc_init;

[
	"PTTY_woundedGreen",
	"SLIDER",
	["Green Wounded Icon","How many (or more) lives left to show a green wounded icon."],
	[_categoryName, _subCategoryLifeManager_Settings],
	[
		0,
		100,
		(missionNamespace getVariable ["PTTY_defaultLives", 5]),
		0
	]
] call CBA_fnc_addSetting;

[
	"PTTY_woundedYellow",
	"SLIDER",
	["Yellow Wounded Icon","How many (or less) lives left to show a yellow wounded icon."],
	[_categoryName, _subCategoryLifeManager_Settings],
	[0,100,4,0]
] call CBA_fnc_addSetting;

[
	"PTTY_woundedOrange",
	"SLIDER",
	["Orange Wounded Icon","How many (or less) lives left to show a Orange wounded icon."],
	[_categoryName, _subCategoryLifeManager_Settings],
	[0,100,3,0]
] call CBA_fnc_addSetting;

[
	"PTTY_woundedRed",
	"SLIDER",
	["Red Wounded Icon","How many (or less) lives left to show a Red wounded icon."],
	[_categoryName, _subCategoryLifeManager_Settings],
	[0,100,1,0]
] call CBA_fnc_addSetting;

[
	"PTTY_adminUIDs",
	"EDITBOX",
	["Full Access UIDs","List of admin UIDs, admins have full access to the life manager."],
	[_categoryName, _subCategoryLifeManager_Settings],
	"[]",
	1
] call CBA_fnc_addSetting;


[
	"PTTY_eliminationText",
	"EDITBOX",
	["Elimination Text","Text on notification shown when a player is killed and has no more lives"],
	[_categoryName, _subCategoryLifeManager_Settings],
	"<name> Has been eliminated",
	1
] call CBA_fnc_addSetting;


[
	"PTTY_transferOverrideUIDs",
	"EDITBOX",
	["Transfer Access UIDs","UIDs in this list can transfer lives without being medic or admin."],
	[_categoryName, _subCategoryLifeManager_Settings],
	"[]",
	1
] call CBA_fnc_addSetting;

// [
// 	"PTTY_AdminBlue",
// 	"CHECKBOX",
// 	["Admin Blue Name", "Admins will be highlighted with blue names."],
// 	[_categoryName, _subCategoryLifeManager_Settings],
// 	true
// ] call cba_settings_fnc_init;

// [
// 	"PTTY_MedicGreen",
// 	"CHECKBOX",
// 	["Medic Green Name", "Medics will be highlighted with green names."],
// 	[_categoryName, _subCategoryLifeManager_Settings],
// 	true
// ] call cba_settings_fnc_init;

[
	"PTTY_Debug",
	"CHECKBOX",
	["Debug mode", "Shows & logs debug messages, Adds bots as players for testing purposes."],
	[_categoryName, _subCategoryLifeManager_Settings],
	false
] call cba_settings_fnc_init;