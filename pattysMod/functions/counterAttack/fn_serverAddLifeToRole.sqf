// ["medic"] call PTTY_fnc_serverAddLifeToRole;
params[
	["_role",nil,[""]]
];
if(!isServer)exitWith{};

private _holders = allPlayers select {
	private _thisRole = _x getVariable ["PTG_role",""];
	_thisRole == _role;
};
if(_holders isEqualTo [])exitWith{};

{[_x,1] call BIS_fnc_respawnTickets} forEach _holders;
["PTTY_livesChanged"] call CBA_fnc_serverEvent;

true;