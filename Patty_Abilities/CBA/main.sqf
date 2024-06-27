PSA_Version = 0.27;

private _categoryName                    = ["PA - Abilities ", PSA_Version] joinString "";
private _subCategoryAbilities_Keybinds = "Abilities Keybindings";
private _subCategoryAbilities_Settings = "General Settings";

[
	"PSA_debug",
	"CHECKBOX",
	["Debug Mode", "Shows debug messages as system chat."],
	[_categoryName, _subCategoryAbilities_Settings],
	false
] call cba_settings_fnc_init;

#include "\PATTY_ABILITIES\CBA\crateSettings.sqf"