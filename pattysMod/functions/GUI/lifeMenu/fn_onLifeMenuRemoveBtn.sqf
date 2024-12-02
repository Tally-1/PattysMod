params[
	["_ctrl",nil,[controlNull]]
];
(_this call PTTY_fnc_onLifeMenuBtnClick)
params["_actionMenu", "_man", "_isAi"];

if(_isAi)
then{[_man,1] call PTTY_fnc_removeLifeFromAi}
else{[_man,-1] call BIS_fnc_respawnTickets  };

private _icon  = "\pattysMod\images\Notification.paa";
private _title = "Alert!";
private _txt   = ["One of your lives was removed by Admin"] joinString "";
[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];

[["Life Removed from ", name _man]]call PTDBG;

_actionMenu call ["updateManMenu"];

true;