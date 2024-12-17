private _actionMenu = createHashmapObject [[]];

// Forced unscheduled execution for a slight improvement in speed.
isNil{
	private _menuPos    = [0.442, 0.23, 0.30, 0.42];
	private _frameBckgr = _self call ["initActionFrame", [_menuPos]];

	_actionMenu set ["display",                          (_self get "display")];
	_actionMenu set ["position",                                      _menuPos];
	_actionMenu set ["frame",                                  (_frameBckgr#0)];
	_actionMenu set ["backGround",                             (_frameBckgr#1)];
	_actionMenu set ["frameColor",                     (_self get"frameColor")];
	_actionMenu set ["tempControls",                                        []];

	/******************************{METHODS}**********************************/
	_actionMenu set ["displayData",{_self get"display"getVariable "PTTY_Data"}];
	_actionMenu set ["update",                   PTTY_fnc_updateLifeActionMenu];
	_actionMenu set ["showGroupMenu",               PTTY_fnc_showGroupLifeMenu];
	_actionMenu set ["showManMenu",                   PTTY_fnc_showManLifeMenu];
	_actionMenu set ["initManButtons",             PTTY_fnc_ManLifeMenuButtons];
	_actionMenu set ["initManText",                PTTY_fnc_ManLifeMenuTextBox];
	_actionMenu set ["textMan",                    PTTY_fnc_getManTextLifeMenu];
	_actionMenu set ["updateManMenu",               PTTY_fnc_updateManLifeMenu];
	_actionMenu set ["getRelPos",                PTTY_fnc_lifeActionMenuRelPos];
	_actionMenu set ["currentGroup",                                       nil];
	_actionMenu set ["currentMan",                                         nil];
};

_actionMenu;