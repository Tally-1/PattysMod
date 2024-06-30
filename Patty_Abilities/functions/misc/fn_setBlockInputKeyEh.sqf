params[
	["_display",nil,[displayNull]]
];
private _keyEh = _display getVariable "PSA_keyBlocker";
if(!isNil "_keyEh")exitWith{};

_keyEh = _display displayAddEventHandler 
["KeyDown", {
	params ["_display", "_key", "_shift", "_ctrl", "_alt"];
	private _progressBar = uiNameSpace getVariable ["PSA_progressBar",displayNull];

	if(_key isEqualTo 1 &&{!isNull _progressBar})
	then{_progressBar setVariable ["PSA_AbortProgress",true]};

	true;
}];

_display setVariable ["PSA_keyBlocker", _keyEh];

true;