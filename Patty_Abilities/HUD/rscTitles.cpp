class RscTitles
{
    class Default 
    {
        idd = -1;
        fadein = 0;
        fadeout = 0;
        duration = 0;
    };
    
    class PSA_timers 
	{
		idd              = -1;
		name             = "PSA_timers";
		movingEnable     = 0;
		enableSimulation = 1;
		enableDisplay    = 1;
		fadein           = 0;
		fadeout          = 0;
		duration         = 10000;
		onLoad           = "with uiNameSpace do { PSA_timers = _this select 0 }";
		onUnLoad         = "with uiNameSpace do { PSA_timers = displayNull }";

		class Controls{};
	};
};