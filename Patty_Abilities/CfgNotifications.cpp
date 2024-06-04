class CfgNotifications
{

	class PSA_default
    {
        title              = "%1";        // Title displayed as text on black background. Filled by arguments.
        iconPicture        = "%3";        // Small icon displayed in left part. Colored by "color", filled by arguments.
        iconText           = "%4";        // Short text displayed over the icon. Colored by "color", filled by arguments.
        description        = "%2";        // Brief description displayed as structured text. Colored by "color", filled by arguments.
		color[]            = {1,1,1,1};   // Icon and text color
		colorIconText[]    = {0.5,0.6,0.4,1};
        colorIconPicture[] = {
			"(profilenamespace getvariable ['PSA_nt_RGB_R',1])",
			"(profilenamespace getvariable ['PSA_nt_RGB_G',1])",
			"(profilenamespace getvariable ['PSA_nt_RGB_B',1])",
			"(profilenamespace getvariable ['PSA_nt_RGB_A',1])"
		};
        duration     = 4;                          // How many seconds will the notification be displayed
        priority     = 5;                          // Priority; higher number = more important; tasks in queue are selected by priority
        difficulty[] = {};                         // Required difficulty settings. All listed difficulties has to be enabled 
		sound        = "defaultNotification";      // Sound to be played upon notification is created. (cfgSounds)
		soundClose   = "defaultNotificationClose"; // Sound to be played upon notification is collapsed. (cfgSounds)
    };

    class PSA_defaultWarning:PSA_default
    {
        // color[]         = {1,0.1,0.1,1};
        colorIconText[] = {1,0.1,0.1,1};
    };
};