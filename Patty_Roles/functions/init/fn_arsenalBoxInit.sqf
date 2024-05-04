/*
The actual init of the Ammo-box is done client side via "fn_clientInit.sqf".
This function only registers an ammo box placed in editor with
"this call PTG_fnc_arsenalBoxInit" in the init field.
*/
if(!isServer)exitWith{};
if(isNil "PTG_arsenalBoxes")
then{PTG_arsenalBoxes = []};

PTG_arsenalBoxes pushBackUnique _this;

missionNamespace setVariable ["PTG_arsenalBoxes", PTG_arsenalBoxes];
true;