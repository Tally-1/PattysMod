You will now be creating a Drone Deployment Ability.
The reason behind this is mostly because vanilla Drones require backpack usage which is not feasible in my group.
I'd like to create an ability where the player can deploy 3 different drone types using the Special Abilities tab.

There should be an ACE interaction for each drone and below is the text for each drone:

Deploy Recon Drone
Deploy Combat Drone
Deploy Bomb Drone

Here is the icon for all three ACE interactions: DroneAbility.png

Each of these Drones will have different functions and have cooldowns when destroyed.
Each drone is explained below.

Use the Placement GUI you made for the Resupply Crate.

Each Drone has their own cooldown so to make sure it all connects have them appear in a list from top to bottom in the top right.
Make sure to adjust the text so the player can see which drone is on how long of a cooldown

Text example: Recon Drone avaliable in: TIME
Text example: Combat Drone avaliable in: TIME
Text example: Bomb Drone avaliable in: TIME

( Recon Drone )

Drone Classname: B_UAV_01_F
Drone Screenshot: https://gyazo.com/f03e8b83e7e4faab3785d3491f7ba052

Recon Drone that is invisible to enemies above 100m. ( Customisable up to 500m and down to 50m )
If Recon Drone is below its invisible altitude make it so the drone will swap between the civilian side and Blufor side every few seconds.
Or setcaptive. Not sure if the swapping of sides may break the drone controls somehow.

If the Recon Drone is destroyed it will enter a 5min cooldown before it can be deployed again. ( Customisable up to 20m and down to 5m )
The same Cooldown timer is in the top left as the Resupply Crate.

Image file for the Cooldown icon: DroneAbility.png

Placing down/Picking up the Drone takes 6s. ( Customisable up to 10s and down to 1s )
Needs to be picked up to be deployed again.

The player should hear a sound play when the Recon Drone is placed. ( Same as Resupply Crate )
The player should hear a sound when the Recon Drone is picked up. ( Same as Resupply Crate )
The player should get a notification when the Recon Drone has been Destroyed.

Recon Drone Destroyed Image: DroneCooldown.png
Recon Drone Available Image: DroneAvaliable.png

( Combat Drone )

Drone Classname: B_UAV_02_lxWS
Drone Screenshot: https://gyazo.com/2e1bcdacf788ebcb51b28a6d9c8e869c
Combat Drone Editor Screenshot: https://gyazo.com/af94758c3eb600d91d81d87c581a6fe4

The bottom screenshot shows you that the weapon on the Combat Drone can be customized.
I'd like for you to allow me to define the weapon attached to the drone.
Basically by putting the classname of the weapon into a text bar within the Addon Options.

If this is not possible or you can't figure it out then change the default weapon attached to the drone to this: MMG_02_black_F

Combat Drone that is invisible to enemies above 150m. ( Customisable up to 500m and down to 50m )
Combat Drone becomes visible to the enemy upon firing and will remain visible for 10s. ( Customisable up to 20s and down to 5s )

If the Combat Drone is destroyed it will enter a 10min cooldown before it can be deployed again. ( Customisable up to 20m and down to 5m )
The same Cooldown timer is in the top left as the Resupply Crate.

Image file for the Cooldown icon: DroneAbility.png

Placing down/Picking up the Drone takes 6s. ( Customisable up to 10s and down to 1s )
Needs to be picked up to be deployed again.

The player should hear a sound play when the Combat Drone is placed. ( Same as Resupply Crate )
The player should hear a sound when the Combat Drone is picked up. ( Same as Resupply Crate )
The player should get a notification when the Combat Drone has been Destroyed.

Combat Drone Destroyed Image: DroneCooldown.png
Combat Drone Available Image: DroneAvaliable.png

( Bomb Drone )

Bomb Drone Classname:

Bomb drones can be flown into groups of Infantry or light vehicles to neutralize them.
The player can detonate the drone themselves with the action menu or they can fly it into something as the moment the drone is destroyed it will blow up.
Explosion triggered by the drone must be strong enough to Kill cluster of Infantry and potentially disable light vehicles.
Nothing higher than that to keep it balanced.

If the Bomb Drone is destroyed it will enter a 5min cooldown before it can be deployed again. ( Customisable up to 20m and down to 5m )
The same Cooldown timer is in the top left as the Resupply Crate.

Image file for the Cooldown icon: DroneAbility.png

Placing down/Picking up the Drone takes 6s. ( Customisable up to 10s and down to 1s )
Needs to be picked up to be deployed again.

The player should hear a sound play when the Combat Drone is placed. ( Same as Resupply Crate )
The player should hear a sound when the Combat Drone is picked up. ( Same as Resupply Crate )
The player should get a notification when the Combat Drone has been Destroyed.

Combat Drone Destroyed Image: DroneCooldown.png
Combat Drone Available Image: DroneAvaliable.png

------

Not sure if this still occurs during gameplay but when a player dies they lose connection to their Drone.
This means if they deploy the Recon Drone or the Combat Drone they won't be able to reconnect to it if they have died and respawned.

Make sure that the Ability owner always has a connection to their drone so they don't lose access to the drone itself after respawning.

--

I forgot to mention but do add a Map Marker for each Drone deployed.

Map Marker Icon: DroneAbility.png

And just like the other Map Markers if the player hovers over the Drone it will have text next to it telling the name of the Drone.

Text Example: Recon Drone
Text Example: Combat Drone
Text Example: Bomb Drone

--

If the drone runs out of fuel count it as destroyed and put it on cooldown.
Bomb drones might blow up in some rare cases so make sure it's properly deleted without blowing up in the process should it run out of fuel.