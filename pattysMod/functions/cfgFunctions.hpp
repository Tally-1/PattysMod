class CfgFunctions
{
	class PTTY
	{
		class misc
		{
			file = "\pattysMod\functions\misc";
			class findPlayerByUID {};
			class getPlayerUID    {};
			class isAdmin         {};
			class isMedic         {};
			
		};

		class debug
		{
			file = "\pattysMod\functions\debug";
			class debugMessage {};

		};

		class dialogs_misc
		{
			file = "\pattysMod\functions\dialogs\misc";
			class normalizeTextSize  {};
			class setCtrlArrTxtSizes {};

		};

		class life_manager
		{
			file = "\pattysMod\functions\dialogs\life_manager";
			class openLifeGUI               {};
			class initLifeGUI               {};
			class initLifeGUIFrame          {};
			class initLifeGUIList           {};
			class initLifeGUIButtons        {};
			class lifeGUIComponents         {};
			class LifeManagerDisableButtons {};
			class lifeGUIListColorAndIcon   {};
			class addPlayerTolifeGUIList    {};
			class lifeGUIalterLives         {};
			class transferLifes             {};
			class getLives                  {};
			class showLives                 {};
			class getPlayers                {};
		};

		class init
		{
			file = "\pattysMod\functions\init";
			class initPatty {postInit = 1;};


		};
	};

};