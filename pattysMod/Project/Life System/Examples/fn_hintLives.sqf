/*
	File: fn_hintLives.sqf
	Author: Dom
	Description: Hints the players current lives
*/
hint format ["Lives remaining: %1.",[player] call DT_fnc_getLives];