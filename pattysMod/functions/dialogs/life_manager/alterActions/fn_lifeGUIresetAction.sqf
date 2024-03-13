private _default = PTTY_defaultLives;
private _isMedic = [_unit] call PTTY_fnc_isMedic;

if(_isMedic)then{_default=_default+1};

if (_unitsLives isNotEqualTo _default) then { 

	if(_isAi)
	then{_unit setVariable ["PTTY_aiLives", PTTY_defaultLives]}
	else{[_unit, _default - _unitsLives] call BIS_fnc_respawnTickets};
	
	_listbox lbSetTextRight [_index,str(_default)];
	_listbox lbSetColorRight [_index,[0,1,0,1]];

	private _color = [0.99, 0.89,0.77, 1];
	private _icon  = "\pattysMod\images\Notification.paa";
	private _title = "Alert!";
	private _txt   = ["Your lives was reset by Admin"] joinString "";
	[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _unit];
};