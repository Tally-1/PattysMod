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

		class lifeMap 
		{
			file = "\pattysMod\functions\lifeMap";
			class initLifeMap     {};
			class updateLifeMap   {};
			class reAssignLives   {};
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
			
			class getLives                                  {};
			class showLives                                 {};
			class getPlayers                                {};

			class setDefaultLives                           {};
			class setBotLives                               {};
			class updateLifeManager                         {};
			class livesLeftNotification                     {};
			class livesLeftColor                            {};
			class livesLeftIcon                             {};
			class lifeMenuToggleTransferButton              {};
		};

		class lifeAlterActions 
		{
			file = "\pattysMod\functions\dialogs\life_manager\alterActions";
			class lifeGUIalterLives     {};
			class addLifeToAi           {};
			class removeLifeFromAi      {};

			class lifeGUItransferAction {};
			class lifeGUIgiveAction     {};
			class lifeGUIremoveAction   {};
			class lifeGUIresetAction    {};
			class lifeGUIresetAllAction {};

			class canTransfer           {};
		};

		class init
		{
			file = "\pattysMod\functions\init";
			class initPatty  {postInit = 1;};
			class initClient {};


		};

		class counterAttack 
		{
			file = "\pattysMod\functions\counterAttack";
			class serverAddLifeToRole          {};
			class serverAddLifeToNoLifePlayers {};
		}

		class events
		{
			file = "\pattysMod\functions\events";
			class respawnEh         {};
			class killedEh          {};
			class lifeManagerEvents {};
		};
	};

};