class CfgFunctions {
	class PSA {
		
		class actions {
			file = "\PATTY_ABILITIES\functions\actions";
			class setPlayerActions                   {};
			class setPlayerActionsACE                {};
			
			class retrieveCrateAction                {};
			class aceActionRetrieveCrate             {};
			
			class placeCrateAction                   {};
			class aceActionPlaceCrate                {};

			class setSpecialCrateActions             {};
			class specialCrateResupplyAction         {};
			class specialCrateResupplyActionACE      {};

			class simpleSelfActionACE                {};
			class simpleObjectActionACE              {};
			class selfActionCategoryACE              {};
		};

		class crate { 
			file = "\PATTY_ABILITIES\functions\crate";
			class cratePlacementKeyHandler {};
			class canPlaceCrate            {};
			class initCratePlacement       {};
			class cratePlacementHint       {};
			class onEachCrateFrame         {};
			class endCratePlacement        {};
			class initSpecialCrate         {};
			class crateMarker              {};
			class crateDamaged             {};
			class destroyCrate             {};
			class destroyCrateRemote       {};
			class crateKilled              {};
			class globalizeCrateData       {};
			class retrieveCrate            {};
			class crateDeleted             {};
			class canPickupCrate           {};
			class pickupCrate              {};
			class canRetrieveMyCrate       {};
			class retrieveMyCrate          {};
			class nearCrateEnemies         {};

			class toggleContestedCrate     {};
			class onContestedCrateStart    {};
			class handleAllCrates          {};

			class setSpecialCrateData      {};
			class setSpecialCrateEvents    {};
			

		};

		class arsenal
		{
			file = "\PATTY_ABILITIES\functions\arsenal";
			class arsenalEh    {postInit = 1;};
			class arsenalOpened             {};
			class arsenalClosed             {};
			class arsenalSaveDialog         {};
			class arsenalSaveDialogElements {};
			class arsenalSaveYes            {};
			class arsenalSaveNo             {};
			class saveLoadOut               {};
			class applyLoadOut              {};
		};

		class init {
			file = "\PATTY_ABILITIES\functions\init";
			class mainInit       {postInit = 1;};
			class clientInit                  {};
			class serverInit                  {};
		};

		class onEachFrameServer { 
			file = "\PATTY_ABILITIES\functions\onEachFrame\server";
			class onEachFrameServer          {};
			class frameTasksServer           {};
			class addServerFrameTask         {};
			class removeServerFrameTask      {};
			class addServer_1_secondTask     {};
			class removeServer_1_secondTask  {};
			class exec_1_secondTasksServer   {};
		};

		class onEachFrameClient { 
			file = "\PATTY_ABILITIES\functions\onEachFrame\client";
			class frameLoop                 {};
			class onEachFrame               {};
			class 3dIcons                   {};
			class addClientFrameTask        {};
			class removeClientFrameTask     {};
			class addClientSecondTasks      {};
			class removeClientSecondTask    {};
			class 3dCrates                  {};
			class execPrFrameTasks          {};
			class execPrSecondTasks         {};
		};

		class rscTimers {
			file = "\PATTY_ABILITIES\functions\rscTimers\frameWork";
			class addRscTimer           {};
			class getTimerDisplay       {};
			class initTimerDisplay      {};
			class getAllTimerYPositions {};
			class firstAvailYpos        {};
			class getTimerPos           {};
			class updateRscTimer        {};
			class stopRscTimer          {};

		};

		class taskTimers { 
			file = "\PATTY_ABILITIES\functions\rscTimers\taskTimers";
			class crateCoolDownTimer         {};
			class crateDestructionTimer      {};
			class crateDestructionTimerAbort {};
			class crateDestructionTimerEnd   {};
		};

		class misc {
			file = "\PATTY_ABILITIES\functions\misc";
			class normalizeTextSize     {};
			class spawnCtrlText         {};
			class posMarker             {};
			class getSideMarkerColor    {};
			class sideColor             {};
			class debugMessage          {};
			class stopVelocityAndDamage {};
			
			
		};

		class objectDetection { 
			file = "\PATTY_ABILITIES\functions\objectDetection";
			class enemiesInZone   {};
			class hostile         {};
			class validLandEntity {};
			class validVehicle    {};
			class deadCrew        {};
			class functionalMan   {};
			class isRealMan       {};
			class unconscious     {};
		};
	};

};