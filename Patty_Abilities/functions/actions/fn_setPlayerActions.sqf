if(PSA_isACEEnabled)exitWith PSA_fnc_setPlayerActionsACE;

private _abilities = player getVariable ["PSA_abilities", []];
if("crate" in _abilities)then{
	call PSA_fnc_retrieveCrateAction;
	call PSA_fnc_placeCrateAction;
};

true;