private _largeTxt  = "<t align='left'size='1.5'>";
private _newLine   = "<br/>";
private _end       = "</t>";
private _title     = "Keybinds";
private _text      = [
		"[<t color='#5eff4f'>SPACE</t>] Place crate",_newLine,
        "[<t color='#ff3434'>ESC</t>] Abort"
	]joinString"";

[_title,_text] call PSA_fnc_RMHintDisplay;