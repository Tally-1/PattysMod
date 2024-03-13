private _myIndex = -1;
for "_i" from 0 to (lbSize _listbox)-1 do {
	private _uid = _listbox lbData _i; 
	if (_uid isEqualTo (getPlayerUID player)) exitWith {
_myIndex = _i;
	};
};

[player,-1] call BIS_fnc_respawnTickets;

if(_isAi)
then{[_unit,1] call PTTY_fnc_addLifeToAi  }
else{[_unit,1] call BIS_fnc_respawnTickets};


private _myLives = [player] call PTTY_fnc_getLives;
_listbox lbSetTextRight [_myIndex,str(_myLives)];
[_myLives,player,_listbox,_myIndex] call PTTY_fnc_lifeGUIListColorAndIcon;

_unitsLives = _unitsLives + 1;
_listbox lbSetTextRight [_index,str(_unitsLives)];
[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;

private _color = [0.11, 0.87, 0.43, 1];
private _icon  = "\pattysMod\images\Medic2.paa";
private _txt   = [name player, " has transferred a life to you"] joinString "";	
[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];
