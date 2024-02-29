/*
	File: fn_alterLives.sqf
	Author: Dom
	Edited by: Tally
	Description: Adjusts the players lives depending on selection
*/
params [
	["_action","",[""]]
];
private _display    = uiNamespace getVariable "PTTY_LifeManager";
private _components = [_display] call PTTY_fnc_lifeGUIComponents;
private _listbox    = _components#1;
private _index      = lbCurSel _listbox;
private _uid        = _listbox lbData _index;
private _unit       = [_uid]  call PTTY_fnc_findPlayerByUID;
private _unitsLives = [_unit] call PTTY_fnc_getLives;
private _title      = "New Life!";                            // For the notification.
private _icon       = "pattysMod\images\SkullBones_Icon.paa"; // For the notification.

switch _action do {
	
	case "transfer": {
		private _myIndex = -1;
		for "_i" from 0 to (lbSize _listbox)-1 do {
			private _uid = _listbox lbData _i; 
			if (_uid isEqualTo (getPlayerUID player)) exitWith {
				_myIndex = _i;
			};
		};

		[player,-1] call BIS_fnc_respawnTickets;
		[_unit,1] call BIS_fnc_respawnTickets;

		private _myLives = [player] call PTTY_fnc_getLives;
		_listbox lbSetTextRight [_myIndex,str(_myLives)];
		[_myLives,player,_listbox,_myIndex] call PTTY_fnc_lifeGUIListColorAndIcon;

		_unitsLives = _unitsLives + 1;
		_listbox lbSetTextRight [_index,str(_unitsLives)];
		[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;

		private _txt   = [name player, " has transferred a life to you"] joinString "";	
		[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];
	};

	case "give": {
		[_unit,1] call BIS_fnc_respawnTickets;
		_unitsLives = _unitsLives + 1;
		_listbox lbSetTextRight [_index,str(_unitsLives)];
		[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;

		private _txt = ["You have been given a life"] joinString "";
		[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];
	};

	case "remove": {
		[_unit,-1] call BIS_fnc_respawnTickets;
		_unitsLives = _unitsLives - 1;
		_listbox lbSetTextRight [_index,str(_unitsLives)];
		[_unitsLives,_unit,_listbox,_index] call PTTY_fnc_lifeGUIListColorAndIcon;
	};

	case "reset": { 
		private _default = PTTY_defaultLives;
		private _isMedic = [_unit] call PTTY_fnc_isMedic;

		if(_isMedic)then{_default=_default+1};

		if (_unitsLives isNotEqualTo _default) then {
			[_unit, _default - _unitsLives] call BIS_fnc_respawnTickets;
			_listbox lbSetTextRight [_index,str(_default)];
			_listbox lbSetColorRight [_index,[0,1,0,1]];
		};
	};

	case "resetAll": {
		for "_i" from 0 to (lbSize _listbox)-1 do { 
			private _uid = _listbox lbData _i; 
			private _unit = [_uid] call PTTY_fnc_findPlayerByUID;
			private _unitsLives = [_unit] call PTTY_fnc_getLives;
			private _default = PTTY_defaultLives;
			private _isMedic = [_unit] call PTTY_fnc_isMedic;

			if(_isMedic)then{_default=_default+1};

			if (_unitsLives isNotEqualTo _default) then {
				[_unit,_default - _unitsLives] call BIS_fnc_respawnTickets;
				_listbox lbSetTextRight [_i,str(_default)];
				_listbox lbSetColorRight [_i,[0,1,0,1]];
			};
		};
	};
};

[] remoteExecCall ["PTTY_fnc_updateLifeManager", -clientOwner];

_listbox lbSetCurSel _index;