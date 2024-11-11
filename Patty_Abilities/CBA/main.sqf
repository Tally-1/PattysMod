PSA_Version = 0.56;
private _categoryName                  = ["PA - Abilities ", PSA_Version] joinString "";
private _subCategoryAbilities_Keybinds = "Abilities Keybindings";
private _subCategoryAbilities_Settings = "General Settings";
#include "\a3\editor_f\Data\Scripts\dikCodes.h"

[
	"PSA_debug",
	"CHECKBOX",
	["Debug Mode", "Shows debug messages as system chat."],
	[_categoryName, _subCategoryAbilities_Settings],
	false
] call cba_settings_fnc_init;

[
	[_categoryName, _subCategoryAbilities_Keybinds],
	"PSA_copyWeaponConfig",
	["Copy Current weapon-config", "Copies players current weapon in a way that can be pasted into the role config inside the customVariables category.<br/> Only fires if debug-mode is on."],
	{call PSA_fnc_WBK_copyWeaponConfigVar},
	"",
	[DIK_Z, [false,true,false]]

] call CBA_fnc_addKeybind;

#include "\PATTY_ABILITIES\CBA\crateSettings.sqf"
#include "\PATTY_ABILITIES\CBA\rallypointSettings.sqf"
#include "\PATTY_ABILITIES\CBA\droneSettings.sqf"