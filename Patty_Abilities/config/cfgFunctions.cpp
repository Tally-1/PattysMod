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
			class updateAceRPAction                  {};
			class aceActionPlaceRP                   {};
			class canPlaceRP                         {};
			class setSpecialCrateActions             {};
			class specialCrateResupplyAction         {};
			class specialCrateResupplyActionACE      {};
			class specialCrateRetrieveAction         {};
			class specialCrateRetrieveActionACE      {};
			class arsenalCrateHealActionACE          {};
			class simpleSelfActionACE                {};
			class removeAceSelfAction                {};
			class removeAllAbilitySelfActions        {};
			class simpleObjectActionACE              {};
			class selfActionCategoryACE              {};
			class getAllACESelfActionNames           {};
			class getAbilitySelfActionsACE           {};
			class updateAllCrateActionsACE           {};
			class updateCrateActionsACE              {};
			class getObjectActionsPSA                {};
			class vehicleRearmActionACE              {};
			class aceActionPlaceDrone                {};
			class updateAceDroneActions              {};
			class pickupDroneCondition               {};
			class dronePickupAction                  {};
		};


		class crate { 
			file = "\PATTY_ABILITIES\functions\crate";
			class addToAllCrates                  {};
			class globalCrateUpdate               {};
			class setCrateKeyAndMouseHandlers     {};
			class cratePlacementKeyHandler        {};
			class cratePlacementMouseHandler      {};
			class removeCrateKeyAndMouseHandlers  {};

			class canPlaceCrate                   {};
			class initCratePlacement              {};
			class setLocalCrateDir                {};
			class setLocalCrateZ                  {};
			class cratePlacementHint              {};
			class placeCrateAnim                  {};
			class endCrateAnim                    {};
			class cratePlacementEffects           {};
			class onEachCrateFrame                {};
			class endCratePlacement               {};
			class initSpecialCrate                {};
			class initResupplyCrate               {};
			class crateMarker                     {};
			class crateDamaged                    {};
			class destroyCrate                    {};
			class destroyCrateRemote              {};
			class crateKilled                     {};
			class globalizeCrateData              {};
			class retrieveCrate                   {};
			class crateDeleted                    {};
			class canPickupCrate                  {};
			class canRetrieveThisCrate            {};
			class pickupCrate                     {};
			class canRetrieveMyCrate              {};
			class retrieveMyCrate                 {};
			class nearCrateEnemies                {};
			class nearCrateFriends                {};
			class crateContestedNow               {};
			class toggleContestedCrate            {};

			class onContestedCrateStart           {};
			class onContestedCrateEnd             {};

			class handleAllCrates                 {};
			class handleCrateMarkers              {};

			class setSpecialCrateData             {};
			class setSpecialCrateEvents           {};
			
			class crateResupplyAnim               {};
			class endResupplyAnim                 {};
			class canResupplyOnCrate              {};
			class initArsenalCrate                {};
			class setCrateMarkerColor             {};
			class updateAllCrates                 {};

			class crateDataOnRespawn              {};
			class clearContainerGlobal            {};
		};

		class drones
		{
			file = "\PATTY_ABILITIES\functions\drones";
			class DroneWeapon_lxWS                {description = "A sligthtly rewritten Version of the original init function"};
			class canPlaceDrone                   {};
			class placeDrone                      {};
			class droneTypeToModel                {};
			class deployDrone                     {};
			class safeDroneDeployment             {};
			class safeDroneDeploymentServer       {};
			class initSpecialDrone                {};
			class deleteSpecialDrone              {};
			
			class initDroneOwnerData              {};
			class droDataAddDrone                 {};
			class droDataActiveTypes              {};
			class droDataglobalizeData            {};
			class droDataRemainingCoolDown        {};
			class droDataOnDestruction            {};
			class droDataOnDeletion               {};
			class droDataCooldownComplete         {};

			class specialDroneEvents              {};
			class specialDroneDestroyed           {};
			class specialDroneDeleted             {};
			class specialDroneFuel                {};
			class droneOwnerOnDestruction         {};
			class droneOwnerOnNoFuel              {};
			
			class bombDroneInit                   {};
			class bombDroneCollision              {};
			class setDroneExplosives              {};
			class bombDroneDestroyed              {};
			class bombDroneRemoveEvent            {};
			class detonateDroneCondition          {};
			class detonateDroneAction             {};
			class detonateBombDrone               {};

			class combatDroneReady                {};
			class initCombatDrone                 {};
			class combatDroneFired                {};
			class setDroneWeapon                  {};

			class showSpecialDrone                {};
			class hideSpecialDrone                {};
			class handleAllDrones                 {};
			class handleSpecialDrone              {};
			class handleBombDroneVisibility       {};
			class linkDroneTerminal               {};
			class dronesOnRespawn                 {};
			class playReloadSound                 {};
			class droneReloadComplete             {};
			class droneReloadBarAborted           {};
			class droneReloadBar                  {};
			class droneReloadCondition            {};
			class droneReloadAction               {};
			class droneAutoReload                 {};
			class handleDroneAmmo                 {};
			class hasDroneAbility                 {};
			class hasDroneAction                  {};
			class droneCooldownDisplayActive      {};
			class updateDetonateDroneActionPlayer {};
			class removeDetonateDroneActionPlayer {};
			class addDetonateDroneActionPlayer    {};
			class detonateDronePlayerCondition    {};
			class detonateDronePlayer             {};
		};

		class rallyPoint
		{
			file = "\PATTY_ABILITIES\functions\rallyPoint";
			class setupRallyPoints           {};
			class setRallyPoint              {};
			class removeRallyPoint           {};
			class rallyPointOnRespawn        {};
			class playerSetRallyPoint        {};
			class playerRemoveRallyPoint     {};

			class handleRallyPoints          {};
			class toggleContestedRallyPoint  {};
			class rallyPointContestedNow     {};
			class onContestedRallyPointStart {};
			class onContestedRallyPointEnd   {};
			class enableRP                   {};
			class enableModuleRP             {};
			class disableRP                  {};
			class disableModuleRP            {};
			class nearestRP                  {};
			class getRPIds                   {};
			class onRespawnRP                {};
			class initRespawnModuleRP        {};
			class rallypointModuleEdited     {};
			class rallypointModuleDeleted    {};
			class onRallyPointAborted        {};
			class onRallyPointCompleted      {};
		};

		class respawn 
		{
			file = "\PATTY_ABILITIES\functions\respawn";
			class disablecustomRespawns   {};
			class enableCustomRespawns    {};
			class spawnRespawnModule      {};
			class init3DenSpawnModuleVars {};
			class isRespawnMarker         {};
			class initMobileSpawnPoints   {};
			class deactivateAllMRSPs      {};
			class getMRSPowners           {};
			class handleAllMRSPs          {};
			class updateAllMRSPs          {};
			class canInitMRSP             {};
			class initNewMRSPs            {};
			class onMobileRespawnChanged  {};
			class handleMRSOnRespawn      {};
			class mobileRespawnOnRespawn  {};
			class nearestMRS              {};
			class hasMRSP                 {};
			class initMRSP                {};
			class spawnMRSPModule         {};
			class deactivateMRSP          {};
			class activateMRSP            {};
			class deleteMRSP              {};
			class updateMRSP              {};
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

		class WBK
		{
			file = "\PATTY_ABILITIES\functions\WBK";
			class WBK_applySecondWeapon     {};
			class WBK_reApplySecondWeapon   {};
			class WBK_removeWeapon          {};
			class WBK_removeAllWeaponVars   {};
			class WBK_updateRoleWeapon      {};
			class WBK_copyWeaponConfigVar   {};
			class WBK_deleteWpHolders       {};
		};

		class TFAR
		{
			file = "\PATTY_ABILITIES\functions\TFAR";
			class TFAR_radiosOnRespawn {};
			class TFAR_getUnitRadio    {};

		};


		class init 
		{
			file = "\PATTY_ABILITIES\functions\init";
			class mainInit       {postInit = 1;};
			class clientInit                  {};
			class serverInit                  {};
			class serverVariables             {};
			class serverTasks                 {};
			class serverEvents                {};
		};


		class globalEvents {
			file = "\PATTY_ABILITIES\functions\globalEvents";
			class entityRespawned     {};
			class entityCreated       {};
			class EntityDeleted       {};
			class entityKilled        {};
			class markerCreated       {};
			class roleChanged         {};
			class rallyPointOnRespawn {};
			class curatorEvents       {};
			class counterAttackEvents {};
			class onWakeUp            {};
			class onKnockout          {};
		};


		class notifications { 
			file = "\PATTY_ABILITIES\functions\notifications";
			class showNotification           {};
		};

		class notifications_crate { 
			file = "\PATTY_ABILITIES\functions\notifications\crate";
			class crateDestroyedNotification {};
			class crateReadyNotification     {};
			class contCrateNotification      {};
		};

		class notifications_rallyPoint { 
			file = "\PATTY_ABILITIES\functions\notifications\rallyPoint";
			class notifyContestedRP          {};
			class notifyMovedRP              {};
			class notifyPlacedRP             {};
			class rallyPointNotifications    {};
		};

		class notifications_drone { 
			file = "\PATTY_ABILITIES\functions\notifications\drone";
			class droneDestroyedNotification {};
			class droneDeletionNotification  {};
			class droneAvailableNotification {};
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
			class drawRP3D                  {};
			class rallyPointIcons           {};
			class initMapDrawLoop           {};
			class drawCratesMap             {};
			class drawRallyPointsMap        {};
			class drawCrateOnMap            {};
			class drawRPMap                 {};
			class execPrFrameTasks          {};
			class execPrSecondTasks         {};
			class setCursorObject3D         {};
			class drawSpecialDronesOnMap    {};
			class drawDroneOnMap            {};
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
			class crateCoolDownTimer              {};
			class crateDestructionTimer           {};
			class crateIsCountingDestruction      {};
			class crateDestructionTimerAbort      {};
			class crateDestructionTimerEnd        {};
			class cratePlaceProgressBar           {};
			class crateRetrieveProgressBar        {};
			class cratePlaceProgressBarEnded      {};
			class cratePlaceProgressBarAborted    {};
			class crateRetrieveProgressBarEnded   {};
			class crateRetrieveProgressBarAborted {};
			class resupplyBarCondition            {};
			class resupplyBarAborted              {};
			class crateResupplyLoadOut            {};
			class selfHealProgressBar             {};
			class postProgressAbortMan            {};
			class vehicleRearmBarCondition        {};
			class rearmNearestVehicle             {};
			class vehicleRearmActionCondition     {};
			class droneDeploymentBar              {};
			class dronePickupBar                  {};
			class droneCoolDownTimer              {};
		};

		class progressBar {
			file = "\PATTY_ABILITIES\functions\rscTimers\progressBar";
			class progressBar      {};
			class setProgressBar   {};
			class closeProgressBar {};
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
			class numDiff               {};
			class roundPos              {};
			class getNearest            {};
			class playSoundList         {};
			class setAnimDirAndPosATL   {};
			class delayedModulesInit    {};
			class strIsNumber           {};
			class strIsNumArr           {};
			class capFirstLetter        {};
			class getRoleName           {};
			class objectName            {};
			class replaceBrackets       {};
		};

		class vehicles
		{
			file = "PATTY_ABILITIES\functions\vehicles";
			class nearFriendlyVehicle      {};
			class nearVehicles             {};
			class getVehicleSide           {};
			class rearmVehicle             {};
			
		};

		class objectDetection 
		{ 
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

		class objectPlacement
		{
			file = "\PATTY_ABILITIES\functions\objectPlacement";
			class canPlaceObject                 {};
			class initObjectPlacement            {};
			class objectPlacementHint            {};
			class eachFrameObjPlacement          {};
			class objectPlacementEventsGUI       {};
			class objectPlacementOnKeyDown       {};
			class objectPlacementOnScroll        {};
			
			class endObjectPlacement             {};
			class removeObjectPlacementEventsGUI {};
			class setPlObjectDir                 {};
			class setPlObjectZ                   {};
			class secureObjectOnSpawn            {};
		};
	};
};