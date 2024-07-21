private _enemiesPresent = count (_self call ["nearEnemies"]) > 0;
if(_enemiesPresent)exitWith{true};
false;