private _enemiesPresent = count (_self call ["nearEnemies"]) > 0;
private _friendsPresent = count (_self call ["nearFriends"]) > 0;

if(_friendsPresent) exitWith{false};
if(_enemiesPresent) exitWith{true};

false;