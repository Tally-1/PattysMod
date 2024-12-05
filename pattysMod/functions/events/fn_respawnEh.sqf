addMissionEventHandler ["EntityRespawned", {
    params ["_man", "_corpse"];
    private _isPlayer = ([_man] call PTTY_fnc_isPlayer)||{[_corpse] call PTTY_fnc_isPlayer};
    if(!_isPlayer)exitWith{};

    [true] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];
    [true] remoteExec     ["PTTY_fnc_remoteLifeMenuUpdate"];
    
    call PTTY_fnc_updateLifeMap;
}];