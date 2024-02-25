params [
	["_listBox", controlNull, [controlNull]],
	["_index",   -1,                    [0]]
];

private _display        = uiNamespace getVariable "PTTY_LifeManager";
private _components     = [_display] call PTTY_fnc_lifeGUIComponents;
private _transferButton = _components#3;
private _uid            = _listBox lbData _index;
private _unit           = [_uid] call PTTY_fnc_findPlayerByUID;
private _canTransfer    = _unit isNotEqualTo player && {[player] call PTTY_fnc_isAdmin || {[player] call PTTY_fnc_isMedic || {getPlayerUID player in DT_transferOverrideUIDs}}};

if(_canTransfer)exitWith{_transferButton ctrlEnable true;};

_transferButton ctrlEnable false;

true;