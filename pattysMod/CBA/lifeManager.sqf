[
	"PTTY_defaultLives",
	"SLIDER",
	["Default lives","The default amount of lives assigned to each player"],
	[_categoryName, _subCategoryLifeManager_Settings],
	[1,100,5,0],
	1
] call CBA_fnc_addSetting;

[
	"PTTY_adminUIDs",
	"EDITBOX",
	["Admin UIDs","List of admin UIDs, admins have full access to the life manager."],
	[_categoryName, _subCategoryLifeManager_Settings],
	"[76561198034951030]",
	1
] call CBA_fnc_addSetting;

[
	"PTTY_transferOverrideUIDs",
	"EDITBOX",
	["Priviliged UIDs","UIDs in this list can transfer lives without being medic or admin."],
	[_categoryName, _subCategoryLifeManager_Settings],
	"[]",
	1
] call CBA_fnc_addSetting;

[
	"PTTY_AdminBlue",
	"CHECKBOX",
	["Admin Blue Name", "Admins will be highlighted with blue names."],
	[_categoryName, _subCategoryLifeManager_Settings],
	true
] call cba_settings_fnc_init;

[
	"PTTY_MedicGreen",
	"CHECKBOX",
	["Medic Green Name", "Medics will be highlighted with green names."],
	[_categoryName, _subCategoryLifeManager_Settings],
	true
] call cba_settings_fnc_init;

[
	"PTTY_Debug",
	"CHECKBOX",
	["Debug mode", "Shows & logs debug messages, Adds bots as players for testing purposes."],
	[_categoryName, _subCategoryLifeManager_Settings],
	false
] call cba_settings_fnc_init;