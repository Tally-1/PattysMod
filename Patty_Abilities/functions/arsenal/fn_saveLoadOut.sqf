player  setVariable ["PSA_loadOut", getUnitLoadout player, true];
[player, ["PSA_loadOut", getUnitLoadout player]] remoteExecCall ["setVariable"];

private _exitMessage  = "Saved loadout";
private _secondWeapon = player getVariable "WBK_SecondWeapon";
private _onExit       = {
	player setVariable ["PSA_WBK_secondWeapon",nil,true];
	systemChat _exitMessage;
};

if(isNil "_secondWeapon")             exitWith _onExit;
if(typeName _secondWeapon != "ARRAY") exitWith _onExit;
if(count _secondWeapon < 2)           exitWith _onExit;

player setVariable ["PSA_WBK_secondWeapon",[_secondWeapon#0, _secondWeapon#1], true];
[player, ["PSA_WBK_secondWeapon", [_secondWeapon#0, _secondWeapon#1]]] remoteExecCall ["setVariable"];

systemChat "Saved loadout & second weapon";
systemChat _exitMessage;

true;