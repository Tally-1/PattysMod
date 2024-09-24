params[
	["_player",         nil,[objNull]],
	["_abilities",      nil,     [[]]],
	["_abilityActions", nil,     [[]]]
];
private _hasDroneAbility = "drone" in _abilities;
private _hasDroneAction  = PSA_droneActionRec in _abilityActions;

// Exit if both ability and action is present.
if(_hasDroneAbility
&&{_hasDroneAction})
exitWith{};

// Exit if neither ability nor action is present.
if(_hasDroneAbility isEqualTo false
&&{_hasDroneAction  isEqualTo false})
exitWith{};

// Apply drone Actions if the Ability is present but not the action.
if(_hasDroneAbility isEqualTo true
&&{_hasDroneAction isEqualTo false})exitWith{
	PSA_droneActionRec = [player, "recon"]  call PSA_fnc_aceActionPlaceDrone;
	PSA_droneActionGun = [player, "combat"] call PSA_fnc_aceActionPlaceDrone;
	PSA_droneActionIED = [player, "bomb"]   call PSA_fnc_aceActionPlaceDrone;

	"Drone actions applied" call P_dbg;
};

// Remove drone actions if the ability is not present(The only remaining option)
[_player, PSA_droneActionRec] call PSA_fnc_removeAceSelfAction;
[_player, PSA_droneActionGun] call PSA_fnc_removeAceSelfAction;
[_player, PSA_droneActionIED] call PSA_fnc_removeAceSelfAction;

"Drone actions removed" call P_dbg;

true;