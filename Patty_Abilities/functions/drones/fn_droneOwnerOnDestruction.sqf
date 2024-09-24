// This function is ran locally, executed remotely from server.
// It is called by the "PSA_fnc_droDataOnDestruction" function.
// It is triggered by the "Killed" event.
params[
    ["_drone",nil,[objNull]],
	["_owner",nil,[objNull]]
];
_this spawn PSA_fnc_droneCoolDownTimer;
_this spawn PSA_fnc_droneDestroyedNotification;

true;