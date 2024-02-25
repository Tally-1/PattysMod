params[
	["_man", nil, [objNull]]
];
private _DT_Medic = (_man getVariable ["DT_role","rifleman"]) isEqualTo "medic";
private _hasTrait = _man getUnitTrait "medic";

if(_DT_Medic) exitWith {true;};
if(_hasTrait) exitWith {true;};

false;