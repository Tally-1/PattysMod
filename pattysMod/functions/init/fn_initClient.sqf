if(!hasInterface)exitWith{};

private _default    = PTTY_defaultLives;
private _amount     = if(PTTY_ExtraLife)then{_default+1}else{_default};
private _unitsLives = ([player] call PTTY_fnc_getLives);

if(isNil "_unitsLives")
exitWith{"Cannot get lives, check game respawn settings" call PTDBG};

if(_unitsLives > 0)
then{_amount = _amount-_unitsLives};

[player, _amount] call BIS_fnc_respawnTickets;

[] spawn{
	private _timer = time+30;
	waitUntil { 
		sleep 1;
		(isTouchingGround player ||
		time > _timer)
	 };
	
	private _default    = PTTY_defaultLives;
	private _unitsLives = ([player] call PTTY_fnc_getLives);
	private _spawnTime  =  playerRespawnTime;
	if (_unitsLives isNotEqualTo _default) 
	then{[player, _default - _unitsLives] call BIS_fnc_respawnTickets};
	
	["PTTY_initLives", [player]] spawn CBA_fnc_serverEvent;
	localNamespace setVariable ["PTTY_respawnDelay", getMissionConfigValue "RespawnDelay"];
	localNamespace setVariable ["PTTY_respawnDisabled", false];
};

["PTG_roleChanged",{["PTTY_roleChanged", _this] call CBA_fnc_serverEvent}] call CBA_fnc_addEventHandler;

true;