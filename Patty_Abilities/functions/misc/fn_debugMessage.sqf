private _showMsg = missionNamespace getVariable ["PSA_debug", false];
params[ 
	["_text",        nil           ],
    ["_print",       _showMsg      ],
    ["_log",         _showMsg      ],
    ["_displayType", 0             ],
    ["_signature",   "Pattys Mod: "]
];

if(typeName _this isEqualTo    "STRING") then{_text = _this};
if(typeName _text isEqualTo    "ARRAY")  then{_text = _text joinString ""};
if(typeName _text isNotEqualTo "STRING") then{_text = str _text};

if(_log)then{diag_log [_signature, _text] joinString ""};

if!(_print)exitWith{_text};

switch (_displayType) 
do {
    case 0: { systemChat _text};
    case 1: { hint _text};
};

_text;