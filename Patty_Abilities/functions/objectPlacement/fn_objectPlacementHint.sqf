private _largeTxt  = "<t align='left'size='1.5'>";
private _newLine   = "<br/>";
private _end       = "</t>";
private _title     = "Keybinds";
private _text      = [
		"[<t color='#5eff4f'>SPACE</t>] Place ",PSA_objectDisplayName,   _newLine,
        "[<t color='#ff3434'>ESC</t>] Abort",     _newLine,
		"[<t color='#e1e37b'>SCROLL</t>] Rotate", _newLine,
		"[<t color='#00aeff'>CTRL</t>]",
		"<t font='PuristaBold'>+</t>",
		"[<t color='#e1e37b'>SCROLL</t>]"
		," Set Altitude"

	]joinString"";

[_title,_text] call PSA_fnc_RMHintDisplay;