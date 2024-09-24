PSA_crateAction    = [player] call PSA_fnc_aceActionPlaceCrate;
PSA_RPAction       = [player] call PSA_fnc_aceActionPlaceRP;
PSA_droneActionRec = [player, "recon"]  call PSA_fnc_aceActionPlaceDrone;
PSA_droneActionGun = [player, "combat"] call PSA_fnc_aceActionPlaceDrone;
PSA_droneActionIED = [player, "bomb"]   call PSA_fnc_aceActionPlaceDrone;

[player] call PSA_fnc_updateAcePlayerActions;

true;