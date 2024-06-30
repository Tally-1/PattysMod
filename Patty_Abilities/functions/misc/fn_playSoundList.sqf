params[
	["_soundList",nil,[]] // Array of strings containing sundNames registered in CfgSounds.
];
{
	private _soundObj = playSound _x;
	waitUntil {isNull _soundObj};
	
} forEach _soundList;