params [
	["_player",    player,          [objNull]],
	["_targetUid", "",                   [""]]
];
private _display        = uiNamespace getVariable "PTTY_LifeManager";
private _targetUnit     = [_uid] call PTTY_fnc_findPlayerByUID;
private _canTransfer    = [_player, _targetUnit] call PTTY_fnc_canTransfer;
private _transferButton = ([_display] call PTTY_fnc_lifeGUIComponents)#3;
if(_canTransfer)
exitWith{_transferButton ctrlEnable true};

_transferButton ctrlEnable false;

true;