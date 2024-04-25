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
		};

		class init {
			file =              "\PATTY_ROLES\functions\init";
			class initRoleSystem {postInit = 1;};
			class clientInit                  {};
			class serverInit                  {};	
			class arsenalBoxInit		      {};
		};
	};

};
