params[
	["_display",nil,[displayNull]]
];
private _keyEh = _display getVariable "PSA_keyBlocker";
if(!isNil "_keyEh")exitWith{};

_display displayRemoveEventHandler _keyEh;

_display getVariable ["PSA_keyBlocker", nil];

true;