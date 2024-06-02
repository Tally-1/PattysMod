params[
    ["_man", nil,[objNull]],
    ["_pos", nil,     [[]]],
    ["_dir", nil,      [0]]
];
private _crate     = "Box_NATO_Equip_F" createVehicle _pos;
private _side      = side group _man;
private _3dColor   = [_side] call PSA_fnc_sideColor;
private _marker    = [_crate, _side] call PSA_fnc_crateMarker;
private _allCrates = missionNamespace getVariable "PSA_specialCrates";


_crate setDir _dir;
_crate setPosATL [_pos#0,_pos#1,(_pos#2)+0.1];
_crate setVectorUp surfaceNormal _pos;

// So it doesnt get destroyed on spawn because of some random glitch.
_crate allowDamage false;


_crate addEventHandler ["Killed",      {_this spawn PSA_fnc_crateKilled}];
_crate addEventHandler ["Deleted",     {_this call  PSA_fnc_crateDeleted}];
_crate addEventHandler ["HandleDamage",{_this call  PSA_fnc_crateDamaged}];


private _dataArr = [
    ["owner",                                _man],
    ["side",                                _side],
    ["marker",                            _marker],
    ["crate",                              _crate],
    ["color",                            _3dColor],
	["zone",      [_pos, PSA_crateProxDestrTimer]],
	["destroyed",                           false],
	["retrieved",                           false],
	["contested",                           false],
	["lastDamage",                              0],

    ["timeSinceDamage",              {time - (_self get "lastDamage")}],
	["destroy",                                   PSA_fnc_destroyCrate],
	["globalizeData",                       PSA_fnc_globalizeCrateData],
	["nearEnemies",                           PSA_fnc_nearCrateEnemies],
	
	["toggleContested",                   PSA_fnc_toggleContestedCrate],
	["contestedNow",    {(_self call ["nearEnemies"]) isNotEqualTo []}],
	["onContestedStart",                 PSA_fnc_onContestedCrateStart],
	["onContestedEnd",    {"Crate is no longer contested!" call p_dbg}]
];

private _crateData = createhashmapObject [_dataArr];

_crate setVariable ["PSA_crateData", _crateData, true];
_man setVariable   ["PSA_myCrate",   _crate,     true];

_allCrates pushBackUnique _crate;
missionNamespace setVariable ["PSA_specialCrates",_allCrates,true];

getPos _crate;

_crate spawn{
	sleep 0.1; 
	_this setVelocityModelSpace [0,0,0];
	sleep 0.5;
	_this setVelocityModelSpace [0,0,0];
	_this allowDamage true;
};

true;