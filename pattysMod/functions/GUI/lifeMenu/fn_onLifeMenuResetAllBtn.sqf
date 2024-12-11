params[
	["_ctrl",nil,[controlNull]]
];
(_this call PTTY_fnc_onLifeMenuBtnClick)
params["_actionMenu", "_man", "_isAi"];

private _groups     = call PTTY_fnc_getPlayerGroups;

{
	private _players = [_x] call PTTY_fnc_getPlayersInGroup;
	{[_x]call PTTY_fnc_resetLivesMan} forEach _players;
	
} forEach _groups;

private _icon  = "\pattysMod\images\Notification.paa";
private _title = "Life Status";
private _txt   = ["All Lives have been Reset"] joinString "";
[false, _title, _txt, _icon, _color] remoteExecCall ["PTTY_fnc_livesLeftNotification"];

_actionMenu call ["updateManMenu"];

true;