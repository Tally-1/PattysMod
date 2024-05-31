private _placeAction    = call PSA_fnc_aceActionPlaceCrate;
private _retrieveAction = call PSA_fnc_aceActionRetrieveCrate;

// Add the above defined actions to the player.
[player, 1, ["ACE_SelfActions"], _placeAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions"], _retrieveAction] call ace_interact_menu_fnc_addActionToObject;
