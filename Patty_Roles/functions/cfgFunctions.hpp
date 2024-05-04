class CfgFunctions {
	
	class PTG {
		class groups {
			file =          "\PATTY_ROLES\functions\groups";
			class assignPlayer              {};
			
			class handleDisconnect          {};
			class initGroupMenu             {};
			class onGroupMenuTvSelectChange {};
			class onRespawn                 {};
			class removeFromGroup           {};
			class selectPosition            {};
			class setupPlayer               {};
			class updateGroups              {};
			class getLoadoutInfo            {};
			class roleDescriptionText       {};
			class addGroupMenuEntry         {};
			class addRoleEntry              {};
			class groupMenuSettings         {};
			class initRoleHolderList        {};
			class closeRoleHolderList       {};
			class onMouseStill              {};
		};

		class init {
			file =              "\PATTY_ROLES\functions\init";
			class initRoleSystem {postInit = 1;};
			class clientInitACE               {};
			class clientInit                  {};
			class serverInit                  {};	
			class arsenalBoxInit		      {};
		};

		class misc {
			file = "\PATTY_ROLES\functions\misc";
			class normalizeTextSize {};
			class spawnCtrlText     {};
			class getPlayersByRole  {};


		};
	};

};
