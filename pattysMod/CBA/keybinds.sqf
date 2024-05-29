
[
	[_categoryName, _subCategoryLifeManager_Keybinds],
	"hintLives",
	"PTTY_showLives",
	{[] call PTTY_fnc_showLives},
	"",
	[DIK_J, [false,false,false]]

] call CBA_fnc_addKeybind;

[
	[_categoryName, _subCategoryLifeManager_Keybinds],
	"openLifeMenu",
	"PTTY_openMenu",
	{[] call PTTY_fnc_openLifeGUI},
	"",
	[DIK_J, [true,false,false]]

] call CBA_fnc_addKeybind;