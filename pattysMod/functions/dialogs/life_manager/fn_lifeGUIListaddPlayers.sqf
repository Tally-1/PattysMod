params[
	["_listbox", nil, [controlNull]]
];

private _players = [] call PTTY_fnc_getPlayers;
private _myIndex = 0;

{
	private _index = _listbox lbAdd (name _x);
	_listbox lbSetData [_index,getPlayerUID _x];

	if (_x isEqualTo player) then {
		_myIndex = _index;
	};

	if (getPlayerUID _x in PTTY_adminUIDs) then {
		_listbox lbSetPicture [_index,"a3\ui_f\data\GUI\Cfg\Ranks\general_gs.paa"];
		_listbox lbSetColor [_index,[0,0.627,1,1]];
	};

	if ([_x] call PTTY_fnc_isMedic) then {
		_listbox lbSetPicture [_index,"a3\ui_f\data\map\vehicleicons\pictureHeal_ca.paa"];
		_listbox lbSetColor [_index,[0,1,0,1]];
	};

	private _lives = [_x] call PTTY_fnc_getLives;
	_listbox lbSetTextRight [_index,str(_lives)];

	[_lives,_x,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;
	
} forEach _players;

_listbox lbSetCurSel _myIndex;