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
			class rgbToA3         {};
			
		};

		class debug
		{
			file = "\pattysMod\functions\debug";
			class debugMessage {};

		};

		class dialogs_misc
		{
			file = "\pattysMod\functions\dialogs\misc";
			class normalizeTextSize        {};
			class setCtrlArrTxtSizes       {};
			class setNotificationIconColor {};

		};

		class life_manager
		{
			file = "\pattysMod\functions\dialogs\life_manager";
			class openLifeGUI                               {};
			class initLifeGUI                               {};
			class initLifeGUIFrame                          {};
			class initLifeGUIList                           {};
			class lifeGUIListaddPlayers                     {};
			class lifeMenuLbChange                          {};
			
			class initLifeGUIButtons                        {};
			class lifeGUIComponents                         {};
			class LifeManagerDisableButtons                 {};
			class lifeGUIListColorAndIcon                   {};
			
			class lifeGUIalterLives                         {};
			class getLives                                  {};
			class showLives                                 {};
			class getPlayers                                {};

			class setDefaultLives                           {};
			class addBotLives                               {};
			class updateLifeManager                         {};
			class livesLeftNotification                     {};
			class livesLeftColor                            {};
		};

		class init
		{
			file = "\pattysMod\functions\init";
			class initPatty  {postInit = 1;};
			class initClient {};


		};
	};

};