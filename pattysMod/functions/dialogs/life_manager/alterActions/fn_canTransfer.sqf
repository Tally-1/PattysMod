params [
	["_player",     player,  [objNull]],
	["_targetUnit", objNull, [objNull]]
];
private _uid   = [_player] call PTTY_fnc_getPlayerUID;
private _lives = [_player] call PTTY_fnc_getLives;

if(isNil "DT_transferOverrideUIDs")
then{DT_transferOverrideUIDs = PTTY_transferOverrideUIDs};

if(_lives < 1)                    exitWith{false};
if(_player isEqualTo _targetUnit) exitWith{false};

if([_player] call PTTY_fnc_isMedic) exitWith{true};
if([_player] call PTTY_fnc_isAdmin) exitWith{true};
if(_uid in DT_transferOverrideUIDs) exitWith{true};

false;