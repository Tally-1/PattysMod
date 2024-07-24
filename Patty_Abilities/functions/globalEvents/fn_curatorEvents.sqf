{
	_x addEventHandler ["CuratorObjectEdited", {
		params ["_curator", "_entity"];
		if(_entity getVariable ["PSA_isRallyPoint",false])
		then{["PSA_RallypointModuleMoved",[_entity, false]] call CBA_fnc_serverEvent};
	}];
	
} forEach allCurators;

true;