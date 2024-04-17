params[
	["_listbox", nil, [controlNull]]
];

private _players = [] call PTTY_fnc_getPlayers;
private _myIndex = 0;

// Just an extra security
_players insert [0,allPlayers,true];

{
	private _index = _listbox lbAdd (name _x);
	private _lives = [_x] call PTTY_fnc_getLives;
	private _icon  = "";
	private _color = [];

	_listbox lbSetData [_index, getPlayerUID _x];

	if(_x isEqualTo player)then{_myIndex = _index;};

	if ([_x] call PTTY_fnc_isAdmin) then {
		_icon  = "a3\ui_f\data\GUI\Cfg\Ranks\general_gs.paa";
		if(PTTY_AdminBlue)
		then{_color = [0, 0.627, 1, 1]};
	};

	if ([_x] call PTTY_fnc_isMedic) then { 
		_icon  = "a3\ui_f\data\map\vehicleicons\pictureHeal_ca.paa";
		if(PTTY_MedicGreen)
		then{_color = [0,1,0,1]};
	};

	if(_icon isNotEqualTo "")  then{_listbox lbSetPicture [_index,_icon]};
	if(_color isNotEqualTo []) then{_listbox lbSetColor   [_index,_color]};
	
	_listbox lbSetTextRight [_index,str(_lives)];

	[_lives,_x,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;
	
} forEach _players;

_listbox lbSetCurSel _myIndex;