params[
    ["_man",  nil,[objNull]],
    ["_type", nil,     [""]]    
];
private _abilityActions  = [_man] call PSA_fnc_getAllACESelfActionNames;
private _hasReconAction  = PSA_droneActionRec in _abilityActions;
private _hasCombatAction = PSA_droneActionGun in _abilityActions;
private _hasBombAction   = PSA_droneActionIED in _abilityActions;

private _anyDroneAction = _type isEqualTo "any" && {(_hasReconAction or{_hasCombatAction or {_hasBombAction}})};
if(_anyDroneAction)exitWith{true};

private _reconDroneAction = _type isEqualTo "recon" && {_hasReconAction};
if(_reconDroneAction)exitWith{true};

private _combatDroneAction = _type isEqualTo "combat" && {_hasCombatAction};
if(_combatDroneAction)exitWith{true};

private _bombDroneAction = _type isEqualTo "bomb" && {_hasBombAction};
if(_bombDroneAction)exitWith{true};

private _allDroneActions = _type isEqualTo "all" && {_hasReconAction &&{_hasCombatAction &&{_hasBombAction}}};
if(_allDroneActions)exitWith{true};

false;