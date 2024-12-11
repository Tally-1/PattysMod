class CfgFunctions
{
    class PTTY
    {
        class misc
        {
            file = "\pattysMod\functions\misc";
            class findPlayerByUID   {};
            class getPlayerUID      {};
            class isAdmin           {};
            class isCurator         {};
            class isMedic           {};
            class isRealMan         {};
            class isPlayer          {};
            class isEngineer        {};
            class getPlayerGroups   {};
            class getPlayersInGroup {};
            class resetLivesMan     {};
            class rgbToA3           {};
            class capFirst          {};
            class parseNameString   {};
            class enableRespawn     {};
            class disableRespawn    {};
            class handleLifeAdded   {};

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
            class initPatty  {postInit = 1};
            class initClient             {};
        };

        class counterAttack 
        {
            file = "\pattysMod\functions\counterAttack";
            class serverAddLifeToRole          {};
            class serverAddLifeToNoLifePlayers {};
        };

        class GUI
        {
            file = "\pattysMod\functions\GUI";
        };

        class GUI_frameWork
        {
            file = "\pattysMod\functions\GUI\framework";
            class RGBtoA3color              {};
            class initHudDisplay            {};
            class initDisplayData           {};
            class imgCtrlSetText            {};
            class displayCtrlSpawnString    {};
            class ctrlSpawnText             {};
            class setCtrlStructuredText     {};
            class setCtrlStandardText       {};
            class oopCtrlSetPos             {};
            class oopCtrlSetPosSafeSquare   {};
            class oopCtrlGetPosSafe         {};
            class oopCtrlSetPosSafe         {};
            class setTextBoxBackgroundColor {};
            class displayAddTextBox         {};
            class displayAddCtrl            {};
            class displayAddImageCtrl       {};
            class displayAddSlider          {};
            class displayAddCheckBox        {};
            class displayAddButton          {};
            class displayAddFrame           {};
            class btnCtrlAddFunction        {};
            class imgCtrlGetAngle           {};
            class imgCtrlSetAngle           {};
            class formatPosCenterSquare     {};
            class textTexture               {};
            class getCtrlSafePos            {};
            class setCtrlSafePos            {};
            class displayCtrlSetFont        {};
            class displayAddProgressBarV    {};
            class hideProgressBar           {};
            class showProgressBar           {};
            class setProgressOnBar          {};
            class setProgressBarTitle       {};
            class setProgressBarFrameColor  {};
            class setProgressBarFillColor   {};
            class setProgressBarTitleColor  {};

            class hideDisplay               {};
            class showDisplay               {};
            class hideCtrl                  {};
            class showCtrl                  {};
            class deleteCtrl                {};
            class ctrlGetParentData         {};
            class normalizeTextCtrlHeight   {};
            class imgString                 {};
        };

        class GUI_lifeMenu
        {
            file = "\pattysMod\functions\GUI\lifeMenu";
            class initLifeMenu                  {};
            class initLifeMenuDisplay           {};
            class initLifeTreeView              {};
            class initLifeTreeViewFrame         {};
            class initLifeTreeViewList          {};
            class getObjectFromTreePathLifeMenu {};
            class onTreeSelChangedLifeMenu      {};
            class getLifeMenuPath               {};
            class updateLifeActionMenu          {};

            class showGroupLifeMenu             {};
            class buttonApplyGroupName          {};
            class initLifeActionFrame           {};
            class initLifeActionMenu            {};
            class lifeActionMenuRelPos          {};
            class updateManLifeMenu             {};
            class getManTextLifeMenu            {};
            class manLifeMenuTextBox            {};
            class showManLifeMenu               {};

            class manLifeMenuButtons            {};
            class onLifeMenuBtnClick            {};
            class onLifeMenuTransferBtn         {};
            class onLifeMenuRemoveBtn           {};
            class onLifeMenuGiveBtn             {};
            class onLifeMenuResetBtn            {};
            class onLifeMenuResetAllBtn         {};
            
            class remoteLifeMenuUpdate          {};
            class getRankIcon                   {};
            class livesSkullImage               {};
            class livesColorProcedural          {};
            class lifeMenuManLifeIcon           {};
            class lifeMenuRoleText              {};
            class updateLifeTreeViewList        {};
            class lifeMenuUpdateLight           {};

            class lifeMenuAddMan                {};
            class manLifeMenuButtonsEnable      {};
        };

        class events
        {
            file = "\pattysMod\functions\events";
            class respawnEh              {};
            class killedEh               {};
            class onEntityKilled         {};
            class onPlayerKilled         {};
            class lifeManagerEvents      {};
            class onDisconnect           {};
            class handleDisconnect       {};
            class disconnectNotification {};
            class roleChangeEvent        {};
        };
    };

};