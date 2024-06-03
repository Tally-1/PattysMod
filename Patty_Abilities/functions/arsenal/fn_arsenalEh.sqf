// Some weird bug made the game crash when adding these eventhandlers on start.
// The weird solution to the weird problem turned out to be spawn a 
// thread inside a thread inside a thread.
[] spawn{sleep 1;[]spawn{sleep 1;[]spawn{
if(!hasInterface)exitWith{};
waitUntil { time > 1 &&{isTouchingGround player}};

[missionNamespace, "arsenalOpened", {_this call PSA_fnc_arsenalOpened}] call BIS_fnc_addScriptedEventHandler;
[missionNamespace, "arsenalClosed", {_this call PSA_fnc_arsenalClosed}] call BIS_fnc_addScriptedEventHandler;

}}};