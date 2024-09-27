private _drone = _this#0;
private _force = _this#4;
private _alt   = (getPosATLVisual _drone)#2;
// PSA_forceList pushBackUnique _force;

// systemChat str [_force, " Max Force: ", selectMax PSA_forceList, " Speed: ", speed _drone];
if(_force < 100
&&{speed _drone < 12}) exitWith{};
if(_force < 60)        exitWith{};
if(_alt < 0.5)         exitWith{};

[_drone] spawn PSA_fnc_detonateBombDrone;

true;