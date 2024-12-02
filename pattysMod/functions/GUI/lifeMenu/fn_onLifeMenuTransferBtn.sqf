params[
	["_ctrl",nil,[controlNull]]
];
(_this call PTTY_fnc_onLifeMenuBtnClick)
params["_actionMenu", "_man", "_isAi"];

[player,-1] call BIS_fnc_respawnTickets;

if(_isAi)
then{[_man,1] call PTTY_fnc_addLifeToAi  }
else{[_man,1] call BIS_fnc_respawnTickets};

private _title = "New Life!";   
private _icon  = "\pattysMod\images\Medic2.paa";
private _txt   = [name player, " has transferred a life to you"] joinString "";	
[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];

[["Life transferred to ", name _man]]call PTDBG;

_actionMenu call ["updateManMenu"];

true;