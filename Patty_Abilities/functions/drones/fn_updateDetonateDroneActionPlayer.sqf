params[
	["_player",nil,[objNull]]
];
private _abilities  = _player getVariable ["PSA_abilities", []];
private _actionId   = _player getVariable "PSA_detonatePlayerAction";
private _hasAbility = "drone" in _abilities or {"bomb_drone" in _abilities};
private _hasAction  = !isNil "_actionId";

"Updating drone detonation Action for player" call p_dbg;
if(_hasAbility && {_hasAction})     exitWith{"+ability +action" call p_dbg};
if((!_hasAbility) && {!_hasAction}) exitWith{"-ability -action" call p_dbg};

if(_hasAbility && {!_hasAction})
exitWith{_this call PSA_fnc_addDetonateDroneActionPlayer; "+ability -action" call p_dbg};

if((!_hasAbility) && {_hasAction})
exitWith{_this call PSA_fnc_removeDetonateDroneActionPlayer; "-ability +action" call p_dbg};

true;