/*
	File: fn_onGroupMenuTvSelectChange.sqf
	Author: Dom & Tally
	Description: Updates the group menu
*/
params [
	["_control",controlNull,[controlNull]],
	["_selectionPath",[],[[]]]
];
private _display = findDisplay 9702;
private _textBox = _display displayCtrl 1100;
private _button  = _display displayCtrl 2400;

_selectionPath params ["_groupIndex",["_unitIndex",-1]];

if (_unitIndex isEqualTo -1) exitWith {
	_button ctrlEnable false;
	private _text = format ["
		<t align='center' font='PuristaBold' size='1.6'>%1</t>
		",
		((PTG_dynamicGroups select _groupIndex) select 0)
	];
	_textBox ctrlSetStructuredText parseText _text;
};

parseSimpleArray (_control tvData _selectionPath)
params["_role", "_limitCount"];

private _roleHolders  = [_role] call PTG_fnc_getPlayersByRole;
private _count        = count _roleHolders;
private _limitReached = _count >= _limitCount;
private _playerRole   = player in _roleHolders;
private _roleText     = [_roleName,": ", "(",_count,"/",_limitCount,")"]joinString"";

_tree tvSetText [[_selectionPath], _roleText];

if(_limitReached or _playerRole)
then{_button ctrlEnable false}
else{_button ctrlEnable true};

private _roleData = missionConfigFile >> "Dynamic_Roles" >> _role;
private _roleName = getText(_roleData >> "name");
private _roleRank = getText(_roleData >> "rank");
private _roleDesc = getText(_roleData >> "description");
private _infoArr  = [_roleData] call PTG_fnc_getLoadoutInfo;
private _text     = [_infoArr] call PTG_fnc_roleDescriptionText;

_textBox ctrlSetStructuredText _text;

(ctrlPosition _textBox) params ["_xPos","_yPos","_width"];
private _height = ctrlTextHeight _textBox;
_textBox ctrlSetPosition [_xPos,_yPos,_width,_height];

_textBox ctrlCommit 0;