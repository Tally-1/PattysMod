for "_i" from 0 to (lbSize _listbox)-1 do { 
	private _uid        = _listbox lbData _i; 

	if  (_uid isEqualTo "")
	then{_uid = _listbox lbText _i;};
	
	private _unit       = [_uid] call PTTY_fnc_findPlayerByUID;
	private _isAi       = !(_unit in allPlayers);
	private _unitsLives = [_unit] call PTTY_fnc_getLives;
	private _default    = PTTY_defaultLives;
	private _isMedic    = [_unit] call PTTY_fnc_isMedic;

	if(_isMedic)then{_default=_default+1};

	if (_unitsLives isNotEqualTo _default) then {
		
		if(_isAi)
		then{_unit setVariable ["PTTY_aiLives", PTTY_defaultLives]}
		else{[_unit,_default - _unitsLives] call BIS_fnc_respawnTickets};

		_listbox lbSetTextRight [_i,str(_default)];
		_listbox lbSetColorRight [_i,[0,1,0,1]];

		private _color = [0.99, 0.89,0.77, 1];
		private _icon  = "\pattysMod\images\Notification.paa";
		private _title = "Alert!";
		private _txt   = ["Admin has reset all lives for all players."] joinString "";
		[false, _title, _txt, _icon, _color] remoteExecCall ["PTTY_fnc_livesLeftNotification", -clientOwner];
	};
};