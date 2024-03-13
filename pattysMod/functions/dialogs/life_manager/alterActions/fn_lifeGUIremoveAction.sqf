if(_isAi)
then{[_unit,1] call PTTY_fnc_removeLifeFromAi}
else{[_unit,-1] call BIS_fnc_respawnTickets  };


_unitsLives = _unitsLives - 1;
_listbox lbSetTextRight [_index,str(_unitsLives)];
[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;

private _color = [0.83,0.4,0.08,1];
private _icon  = "\pattysMod\images\Notification.paa";
private _title = "Alert!";
private _txt   = ["One of your lives was removed by Admin"] joinString "";

[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];