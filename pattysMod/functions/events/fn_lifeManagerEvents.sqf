["PTTY_initLives", 
    {
        _this call PTTY_fnc_reAssignLives;
        call PTTY_fnc_updateLifeMap;
    }
] call CBA_fnc_addEventHandler;

["PTTY_livesChanged", {call PTTY_fnc_updateLifeMap}] call CBA_fnc_addEventHandler;
