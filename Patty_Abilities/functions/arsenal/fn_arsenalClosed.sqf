private _newLoadOut = getUnitLoadout player;
private _oldLoadOut = player getVariable ["PSA_tempLoadOut", getUnitLoadout player];
if(_newLoadOut isEqualTo _oldLoadOut)exitWith{"No change in gear" call P_dbg;};

[_newLoadOut] spawn PSA_fnc_arsenalSaveDialog;