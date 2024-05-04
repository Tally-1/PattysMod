// Define the action to be used to open the group menu.
private _groupCategory = [
	"groupCategory",
	"Roles menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",
	{[] call PTG_fnc_initGroupMenu},
	{
		isNull objectParent player &&
		{(PTG_arsenalBoxes findIf {(player distance _x) < 50}) isNotEqualTo -1}
	}
] call ace_interact_menu_fnc_createAction;

// Add the above defined action to the player.
[
	player,
	1,
	["ACE_SelfActions"],
	_groupCategory

] call ace_interact_menu_fnc_addActionToObject;

// Define Arsenal action.
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


// Add Arsenal action to the player.
[
	player,
	1,
	["ACE_SelfActions"],
	_arsenalCategory

] call ace_interact_menu_fnc_addActionToObject;

[
	"ace_arsenal_displayClosed",
	{PTG_savedLoadout = getUnitLoadout player}

] call CBA_fnc_addEventHandler;