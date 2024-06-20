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
			class updateAceCrateAction               {};
			class updateAcePlayerActions             {};

			class setSpecialCrateActions             {};
			class specialCrateResupplyAction         {};
			class specialCrateResupplyActionACE      {};
			class specialCrateRetrieveAction         {};
			class specialCrateRetrieveActionACE      {};

			class simpleSelfActionACE                {};
			class removeAceSelfAction                {};
			class removeAllAbilitySelfActions        {};
			class simpleObjectActionACE              {};
			class selfActionCategoryACE              {};

			class getAllACESelfActionNames           {};
			class getAbilitySelfActionsACE           {};
		};


		class crate { 
			file = "\PATTY_ABILITIES\functions\crate";
			class addToAllCrates                {};
			class cratePlacementKeyHandler      {};
			class cratePlacementMouseHandler    {};
			class canPlaceCrate                 {};
			class initCratePlacement            {};
			class setLocalCrateDir              {};
			class cratePlacementHint            {};
			class placeCrateAnim                {};
			class endCrateAnim                  {};
			class cratePlacementEffects         {};
			class onEachCrateFrame              {};
			class endCratePlacement             {};
			class initSpecialCrate              {};
			class initResupplyCrate             {};
			class crateMarker                   {};
			class crateDamaged                  {};
			class destroyCrate                  {};
			class destroyCrateRemote            {};
			class crateKilled                   {};
			class globalizeCrateData            {};
			class retrieveCrate                 {};
			class crateDeleted                  {};
			class canPickupCrate                {};
			class canRetrieveThisCrate          {};
			class pickupCrate                   {};
			class canRetrieveMyCrate            {};
			class retrieveMyCrate               {};
			class nearCrateEnemies              {};
			class nearCrateFriends              {};
			class crateContestedNow             {};
			class toggleContestedCrate          {};

			class onContestedCrateStart         {};
			class onContestedCrateEnd           {};

			class handleAllCrates               {};
			class handleCrateMarkers            {};

			class setSpecialCrateData           {};
			class setSpecialCrateEvents         {};
			
			class crateResupplyAnim             {};
			class endResupplyAnim               {};
			class canResupplyOnCrate            {};
			class crateResupplyLoadOut          {};

			class initArsenalCrate              {};
			class setCrateMarkerColor           {};
			
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


		class missionEh {
			file = "\PATTY_ABILITIES\functions\missionEh";
			class entityRespawned {};
			class roleChanged     {};
		};


		class notifications { 
			file = "\PATTY_ABILITIES\functions\notifications";
			class crateDestroyedNotification {};
			class crateReadyNotification     {};
			class contCrateNotification      {};
			class showNotification           {};
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

			class addServer1minuteTask       {};
			class removeServer1minuteTask    {};
			class exec_1minuteTasksServer    {};
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
			class drawCrate3D               {};
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
			class crateIsCountingDestruction {};
			class crateDestructionTimerAbort {};
			class crateDestructionTimerEnd   {};
			class cratePlaceProgressBar      {};
			class crateRetrieveProgressBar   {};
		};

		class progressBar {
			file = "\PATTY_ABILITIES\functions\rscTimers\progressBar";
			class progressBar    {};
			class setProgressBar {};
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
			class RMHintDisplay         {};
			class setBlockInputKeyEh    {};
			class removeBlockInputKeyEh {};
			class formatDir             {};
			class getControlledMan      {};
			class addZ                  {};
			
		};

		class objectDetection { 
			file = "\PATTY_ABILITIES\functions\objectDetection";
			class enemiesInZone   {};
			class friendsInZone   {};
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