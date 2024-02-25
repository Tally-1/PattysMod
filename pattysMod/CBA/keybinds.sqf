private _categoryName        = "Pattys Mod 0.1";
private _subCategoryLifeManager_Keybinds = "Life Manager Keybindings";
private _subCategoryLifeManager_Settings = "Life Manager Settings";
[
	[_categoryName, _subCategoryLifeManager_Keybinds],
	"hintLives",
	"PTTY_showLives",
	{[] call PTTY_fnc_showLives},
	"",
	[DIK_H, [false,false,false]]

] call CBA_fnc_addKeybind;

[
	[_categoryName, _subCategoryLifeManager_Keybinds],
	"openLifeMenu",
	"PTTY_openMenu",
	{[] call PTTY_fnc_openLifeGUI},
	"",
	[DIK_H, [true,false,false]]

] call CBA_fnc_addKeybind;