private _display = uiNamespace getVariable ["PTTY_LifeManager",displayNull];
if(isNull _display)exitWith{};

private _list = _display displayCtrl 1500;

for "_index" from 0 to (lbSize _list)-1 do {
	private _uid    = _list lbData _index;
	private _player = [_uid] call PTTY_fnc_findPlayerByUid;
	private _lives  = [_player] call PTTY_fnc_getLives;

	[
		_lives,
		_player,
		_list,
		_index
	
	] call PTTY_fnc_lifeGUIListColorAndIcon;

};

true;