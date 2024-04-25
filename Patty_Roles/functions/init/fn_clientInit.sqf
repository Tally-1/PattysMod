/*
	File: initPlayerLocal.sqf
	Author: Dom
	Requires: Start us up
*/

PTG_isACEEnabled = isClass (configFile >> "CfgPatches" >> "ace_common");

if(isNil "PTG_arsenalBoxes")
then{PTG_arsenalBoxes = []};

player addEventHandler ["Respawn",PTG_fnc_onRespawn];

if (PTG_isACEEnabled) then {
	private _groupCategory = [
		"groupCategory",
		"Group Menu",
		"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",
		{[] call PTG_fnc_initGroupMenu},
		{
			isNull objectParent player &&
			{(PTG_arsenalBoxes findIf {(player distance _x) < 50}) isNotEqualTo -1}
		}
	] call ace_interact_menu_fnc_createAction;

	[player,1,["ACE_SelfActions"],_groupCategory] call ace_interact_menu_fnc_addActionToObject;

	private _arsenalCategory = [
		"arsenalCategory",
		"Arsenal",
		"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\armor_ca.paa",
		{[player,player,false] call ace_arsenal_fnc_openBox},
		{
			isNull objectParent player &&
			{player getVariable ["ace_arsenal_virtualItems",[]] isNotEqualTo [] && 
			{(PTG_arsenalBoxes findIf {(player distance _x) < 50}) isNotEqualTo -1}}
		}
	] call ace_interact_menu_fnc_createAction;
	[player,1,["ACE_SelfActions"],_arsenalCategory] call ace_interact_menu_fnc_addActionToObject;

	["ace_arsenal_displayClosed",{
		PTG_savedLoadout = getUnitLoadout player;
	}] call CBA_fnc_addEventHandler;
} else {
	{
		_x addAction ["Open Group Menu",PTG_fnc_initGroupMenu];
	} forEach PTG_arsenalBoxes;

	[missionNamespace,"arsenalClosed",{
		PTG_savedLoadout = getUnitLoadout player;
	}] call BIS_fnc_addScriptedEventHandler;
};