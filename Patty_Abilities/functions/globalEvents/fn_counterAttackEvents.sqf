["PSA_counterAttackStart", {_this spawn{
	private _activated = call PSA_fnc_disablecustomRespawns;
	
	if(_activated)then{
		PSA_counterAttackActive = true;
		publicVariable "PSA_counterAttackActive";
	};

}}] call CBA_fnc_addEventHandler;


["PSA_counterAttackEnd",{_this spawn{
	private _deactivated = call PSA_fnc_enableCustomRespawns;
	
	if(_deactivated)then{
		PSA_counterAttackActive = false;
		publicVariable "PSA_counterAttackActive";
	};

}}] call CBA_fnc_addEventHandler;