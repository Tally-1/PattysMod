class CfgFunctions {
	class PSA {
		
		class actions {
			file = "\PATTY_ABILITIES\functions\actions";
			class aceActionPlaceCrate                {};
			class aceActionRetrieveCrate             {};
			class setPlayerActionsACE                {};
			class retrieveCrateAction                {};
			class placeCrateAction                   {};
			class setPlayerActions                   {};
			class selfActionCategoryACE              {};
			class simpleSelfActionACE                {};
		};

		class crate { 
			file = "\PATTY_ABILITIES\functions\crate";
			class cratePlacementKeyHandler {};
			class canPlaceCrate            {};
			class initCratePlacement       {};
			class onEachCrateFrame         {};
			class endCratePlacement        {};
			class initSpecialCrate         {};
			class crateMarker              {};
			class crateDamaged             {};
			class destroyCrate             {};
			class crateKilled              {};
			class globalizeCrateData       {};
			class retrieveCrate            {};
			class crateDeleted             {};
			class canPickupCrate           {};
			class pickupCrate              {};
			class canRetrieveMyCrate       {};
			class retrieveMyCrate          {};
		};

		class init {
			file = "\PATTY_ABILITIES\functions\init";
			class mainInit       {postInit = 1;};
			class clientInit                  {};
			class serverInit                  {};
		};

		class onEachFrame { 
			file = "\PATTY_ABILITIES\functions\onEachFrame";
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
			file = "\PATTY_ABILITIES\functions\rscTimers";
			class addRscTimer           {};
			class getTimerDisplay       {};
			class initTimerDisplay      {};
			class getAllTimerYPositions {};
			class firstAvailYpos        {};
			class getTimerPos           {};
			class updateRscTimer        {};
			class stopRscTimer          {};

			// Task specific timers:
			class crateCoolDownTimer    {};
		};

		class misc {
			file = "\PATTY_ABILITIES\functions\misc";
			class normalizeTextSize  {};
			class spawnCtrlText      {};
			class posMarker          {};
			class getSideMarkerColor {};
			class sideColor          {};
			class debugMessage       {};
			
		};
	};

};