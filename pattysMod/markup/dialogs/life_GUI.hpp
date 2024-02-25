class life_GUI
{ 	
	
	idd    = -1; 
	name   = "life_GUI";
	onLoad = "with uiNameSpace do { life_GUI = _this select 0 }";
	
	class controls
	{
		class lifeFrame: RscFrame
		{
			idc  = 1800;
			text = ""; //--- ToDo: Localize;
			x    = 0.297875 * safezoneW + safezoneX;
			y    = 0.23     * safezoneH + safezoneY;
			w    = 0.407344 * safezoneW;
			h    = 0.4     * safezoneH;
		};

		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.391875 * safezoneW;
			h = 0.264 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Transfer"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Give"; //--- ToDo: Localize;
			x = 0.494844 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Remove"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Reset"; //--- ToDo: Localize;
			x = 0.494844 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Reset All"; //--- ToDo: Localize;
			x = 0.597969 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Close"; //--- ToDo: Localize;
			x = 0.45 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.03 * safezoneH;
		};
	};
};