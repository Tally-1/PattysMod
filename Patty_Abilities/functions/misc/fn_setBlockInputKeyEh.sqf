params[
	["_display",nil,[displayNull]]
];
private _keyEh = _display getVariable "PSA_keyBlocker";
if(!isNil "_keyEh")exitWith{};

_keyEh = _display displayAddEventHandler 
["KeyDown", {
	params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];	
	true;
}];

_display getVariable ["PSA_keyBlocker", _keyEh];

true;