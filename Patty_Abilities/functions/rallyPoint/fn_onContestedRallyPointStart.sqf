_self set ["status", "contested"];
_self call ["sendNotifications"];
_self call ["disableRP"];

publicVariable "PSA_allRallypoints";

"Rally point is contested" call p_dbg;

true;