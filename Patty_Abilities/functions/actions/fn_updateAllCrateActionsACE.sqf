private _crates = [];
{
    private _isCrate = [_x] call PSA_fnc_updateCrateActionsACE;
    if(_isCrate)
    then{_crates pushBackUnique _x};

} forEach vehicles;

_crates;