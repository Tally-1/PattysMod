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

	class PSA_progressBar 
	{
		idd              = -1;
		name             = "PSA_progressBar";
		movingEnable     = 0;
		enableSimulation = 1;
		enableDisplay    = 1;
		fadein           = 0;
		fadeout          = 0;
		duration         = 10000;
		onLoad           = "with uiNameSpace do { PSA_progressBar = _this select 0 }";
		onUnLoad         = "with uiNameSpace do { PSA_progressBar = displayNull }";

		class Controls{};
	};

	class PSA_hintDisplay 
	{
		idd              = -1;
		name             = "PSA_hintDisplay";
		movingEnable     = 0;
		enableSimulation = 1;
		enableDisplay    = 1;
		fadein           = 0;
		fadeout          = 0;
		duration         = 10000;
		onLoad           = "with uiNameSpace do { PSA_hintDisplay = _this select 0 }";
		onUnLoad         = "with uiNameSpace do { PSA_hintDisplay = displayNull }";

		class Controls{};
	};

	
};