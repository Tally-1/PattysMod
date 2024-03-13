if(_isAi)
then{[_unit,1] call PTTY_fnc_addLifeToAi  }
else{[_unit,1] call BIS_fnc_respawnTickets};

_unitsLives = _unitsLives + 1;
_listbox lbSetTextRight [_index,str(_unitsLives)];
[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;

private _color = [0.11, 0.87, 0.43, 1];
private _icon  = "\pattysMod\images\Notification.paa";
private _title = "Alert!";
private _txt   = ["You have been given a life by Admin"] joinString "";
[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];