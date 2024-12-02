| WebKnight Two Primary Weapons Compatibility |

We have a system that allows certain people to carry two primary weapons.
Perfect for roles like the Grenadier, who in my group can also carry a 6-rounder grenade launcher.

Since we apply their saved loadout upon respawn, if they die with their secondary primary weapon in their main hand upon respawn, they lose said weapon, causing them to have two of the same primary rifle instead.
This forces them to go back to base to grab the second primary weapon again, which discourages the use of the mechanic entirely.

Requirements for Compatibility:

- Saving the respawn loadout will also save the secondary primary weapon
- Upon respawning, the weapon they had in their secondary primary slot should be the weapon they had in their secondary slot when they saved the loadout.
- Role Manager compatibility so I can directly add a secondary primary weapon to default loadouts. ( Not required for completion, but try to make it happen. )

| TFAR Compatibility |

This issue is likely caused by the saving and loading of loadouts we use for the Resupply Crate & Arsenal.
Ive done plenty of research as this is a problem that cant be avoided and will affect everyone upon death.

Their TFAR radio settings are reset to default whenever somebody dies, forcing them to redo them before getting back into the fight.
This is not too big of a problem for an average Infantry soldier, but its a much bigger issue for leaders who use additional channels.

Ive posted a link to the TFAR github that shows all functions for the mod. 
Specifically, look at these functions:

TFAR_fnc_getLrSettings
TFAR_fnc_getSwSettings

TFAR_fnc_setLrSettings
TFAR_fnc_setSwSettings

In theory, these should allow you to copy all the settings the player had on their unique radio and apply them to the same player upon respawn.
Solving the issue entirely. But that is just my theory. Check it out and let me know if its possible.

https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API%3A-Functions

Make sure their Short Range and Long Range Frequencies & settings are applied on respawn
Additional channels also need to be applied. So leaders wont need to set up additional channels to continue communicating with other leaders.

A more straightforward solution is to take the radio of the players corpse and give it back to the same respawned player.
However, this may cause issues if another player grabs the radio from their corpse for whatever reason.
This method may also have issues as bodies get cleaned up every 5 minutes, including player corpses.