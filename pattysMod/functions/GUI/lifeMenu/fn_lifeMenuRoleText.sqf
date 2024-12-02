#include "\pattysMod\functions\GUI\textIncludes.sqf";
params[
	["_man",nil,[objNull]]
];
private _role     = _man getVariable ["ptg_role",""];
private _roleName = getText(missionConfigFile >> "Dynamic_Roles" >> _role >> "name");
if(_role isEqualTo "")then{_roleName = "none"};

private _roleText = ["Role: ",_roleName,_newLine]joinString"";

_roleText;