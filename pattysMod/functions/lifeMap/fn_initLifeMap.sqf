private _lifeMap = createHashmapObject [[]];
missionNamespace setVariable ["PTTY_lifeMap", _lifeMap, true];

call PTTY_fnc_updateLifeMap;

true;