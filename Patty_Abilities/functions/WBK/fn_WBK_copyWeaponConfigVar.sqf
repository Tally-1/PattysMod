if(!PSA_debug)exitWith{};
private _index     = [primaryWeapon player, secondaryWeapon player, handgunWeapon player] find currentWeapon player;
private _weapon    = (getUnitLoadout player)#_index;
private _name      = getText (configFile >> "CfgWeapons"  >> (_weapon#0) >> "displayName");
private _strVar    = str ["PSA_secondRifle", _weapon, true];
private _configVar = [[_strVar] call PSA_fnc_replaceBrackets,";"]joinString"";

copyToClipboard _configVar;

[["Copied config-variable for ",_name," to Clipboard."]] call p_dbg;

true;