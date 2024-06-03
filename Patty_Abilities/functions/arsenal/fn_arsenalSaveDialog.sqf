disableSerialization;
(call PSA_fnc_arsenalSaveDialogElements)
params[
	["_display",   nil, [displayNull]],
	["_textCtrl",  nil, [controlNull]],
	["_yesButton", nil, [controlNull]],
	["_noButton",  nil, [controlNull]]
];
private _text = parseText([
	"<t shadow='2' align='center'>",
	"Save your loadout to the Resupply crate?",
	"</t>"
]joinString"");

_textCtrl ctrlSetBackgroundColor [0,0,0,0.5];
_textCtrl ctrlSetStructuredText _text;

_yesButton ctrlSetText "Yes";
_noButton  ctrlSetText "No";

_yesButton ctrlAddEventHandler ["ButtonClick", PSA_fnc_arsenalSaveYes];
_noButton  ctrlAddEventHandler ["ButtonClick", PSA_fnc_arsenalSaveNo];