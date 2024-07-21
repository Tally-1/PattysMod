_self set ["status", "available"];
_self call ["enableRP"];

publicVariable "PSA_allRallypoints";

"Rally point is no longer contested" call p_dbg;

true;