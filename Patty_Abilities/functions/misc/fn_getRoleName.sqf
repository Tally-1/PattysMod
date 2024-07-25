params[
    ["_man",nil,[objNull]]
];
private _role     = _man getVariable ["ptg_role", ""];
if(_role isEqualTo "")
exitWith{""};

private _roleData = missionConfigFile >> "Dynamic_Roles" >> _role;
private _roleName = getText(_roleData >> "name");

if(_roleName isEqualTo "")
exitWith{_role};

_roleName;