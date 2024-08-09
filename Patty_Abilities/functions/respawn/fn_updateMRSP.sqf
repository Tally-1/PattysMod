private _time        = _self call ["timeSinceUpdate"];
if(_time < 1)exitWith{};


private _owner       = _self get "owner";
private _module      = _self get "module";
private _abilities   = _owner getVariable ["PSA_abilities",[]];
private _hasAbility  = "mobile_respawn" in _abilities;
private _hasModule   = !isNull _module;
private _dead        = !alive _owner;
private _unconscious = [_owner] call PSA_fnc_unconscious;
private _delete      = _hasAbility isEqualTo false;
private _deactivate  = (_dead || {_unconscious})&&{_hasModule};
private _activate    = _hasModule isEqualTo false &&{_deactivate isEqualTo false && {_delete isEqualTo false && {_unconscious isEqualTo false}}};
private _functioning = _deactivate isEqualTo false&&{_activate isEqualTo false && {_hasAbility &&{_hasModule}}};

if(_functioning)            exitWith {"functioning"};
if(_delete)                 exitWith {_self call ["delete"];         "deleted"};
if(_deactivate)             exitWith {_self call ["deactivate"]; "deactivated"};
if(PSA_counterAttackActive) exitWith {"Counter-Attack Active"};
if(_activate)               exitWith {_self call ["activate"];     "activated"};

"functioning exit"