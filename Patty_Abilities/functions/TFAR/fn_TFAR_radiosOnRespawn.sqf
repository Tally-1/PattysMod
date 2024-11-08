params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
if(isNil "TFAR_fnc_setRadioOwner") exitWith{};
if(_man isNotEqualTo player)       exitWith{};

private _radio = [_corpse] call PSA_fnc_TFAR_getUnitRadio;
if(isNil "_radio")exitWith{};

_man linkItem _radio;
[_radio, getPlayerUID player] call TFAR_fnc_setRadioOwner;

true;