private _display = uiNamespace getVariable "PTTY_LifeManager";
[_display]call PTTY_fnc_lifeGUIComponents
params[
	["_frame",       nil, [controlNull]],
	["_list",        nil, [controlNull]],
	["_giveBtn",     nil, [controlNull]],
	["_transferBtn", nil, [controlNull]],
	["_removeBtn",   nil, [controlNull]],
	["_resetBtn",    nil, [controlNull]],
	["_resetAllBtn", nil, [controlNull]],
	["_closeBtn",    nil, [controlNull]]
	
];

private _myIndex    = -1;
private _index      = lbCurSel _list;
private _uid        = _list lbData _index;
private _unit       = [_uid]  call PTTY_fnc_findPlayerByUID;
private _unitsLives = [_unit] call PTTY_fnc_getLives;

for "_i" from 0 to (lbSize _list)-1 do {
	private _uid = _list lbData _i; 
	if (_uid isEqualTo (getPlayerUID player)) exitWith {
		_myIndex = _i;
	};
};
[player,-1] call BIS_fnc_respawnTickets;
[_unit,1] call BIS_fnc_respawnTickets;

private _myLives = [player] call PTTY_fnc_getLives;
_list lbSetTextRight [_myIndex,str(_myLives)];
[_myLives,player,_list,_myIndex] call PTTY_fnc_setColourAndIcon;

_unitsLives = _unitsLives + 1;
_list lbSetTextRight [_index,str(_unitsLives)];
[_unitsLives,_unit,_list,_index] call PTTY_fnc_setColourAndIcon;