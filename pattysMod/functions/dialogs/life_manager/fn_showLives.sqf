private _lives = [player] call PTTY_fnc_getLives;
private _txt   = [_lives, " Lives remaining"]joinString"";

hint _txt;

true;