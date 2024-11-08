private _oldWbkWpn     = player getVariable ["PSA_WBK_secondWeapon",[objNull,[]]];
private _newWbkWpn     = player getVariable ["WBK_SecondWeapon",    [objNull,[]]];
private _newLoadOut    = getUnitLoadout player;
private _oldLoadOut    = player getVariable ["PSA_tempLoadOut", getUnitLoadout player];
private _mainLoChanged = _newLoadOut isNotEqualTo _oldLoadOut;
private _wbkWpnChanged = _newWbkWpn  isNotEqualTo _oldWbkWpn;
private _askToSave     = _mainLoChanged || {_wbkWpnChanged};

if(_mainLoChanged) then     {systemChat "Loadout changed"};
if(_wbkWpnChanged) then     {systemChat "Second weapon changed"};
if(!_askToSave)    exitWith {systemChat "No change in loadout"};

call PSA_fnc_arsenalSaveDialog;