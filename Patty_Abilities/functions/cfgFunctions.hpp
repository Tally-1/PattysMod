class CfgFunctions {
	class PSA {
		class init {
			file =              "\PATTY_ABILITIES\functions\init";
			class mainInit       {postInit = 1;};
			class clientInit                  {};
			class serverInit                  {};
		};

		class misc {
			file = "\PATTY_ABILITIES\functions\misc";
			class normalizeTextSize {};
			class spawnCtrlText     {};
		};
	};

};