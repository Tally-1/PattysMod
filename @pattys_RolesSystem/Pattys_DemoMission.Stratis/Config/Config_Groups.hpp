class Dynamic_Groups { //format: {"Group Name",{"Group","Roles","Matching","Role","Configs"},"Conditions for the group to be shown"}
	faction_name = "CTRG";
	group_setup[] = {
		{"Commanders",    {"officer","squadlead","teamlead"},             "true"},
		{"Grunts",        {"rifleman","AT_Light","AT_Heavy", "operator"}, "true"},
		{"Crew",          {"pilot","crewman", "paratrooper"},             "true"},
		{"Specialists",   {"medic","diver","eod","engineer","uavop"},     "true"},
		{"Sharpshooters", {"sniper","spotter"},                           "true"}
	};
};

class PTG_MenuSettings { 
	//                   red green blue alpha (0-1)
	BackgroundColor[] = {0.1, 0.1, 0.1, 0.5};
	titleColor[]      = {0.68, 0.75, 0.51, 1};

	// Text displayed At the top-right.
	menuTitle         = "Role Manager";

};

#include "Config_Roles.hpp"