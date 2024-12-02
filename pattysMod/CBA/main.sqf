PTTY_Version = 0.45;

private _categoryName                    = ["PA - Life Manager ", PTTY_Version] joinString "";
private _subCategoryLifeManager_Keybinds = "Life Manager Keybindings";
private _subCategoryLifeManager_Settings = "Life Manager Settings";

#include "\a3\editor_f\Data\Scripts\dikCodes.h"
#include "\pattysMod\CBA\keybinds.sqf"
#include "\pattysMod\CBA\lifeManager.sqf"

diag_log ([_categoryName, " is running"] joinString "");