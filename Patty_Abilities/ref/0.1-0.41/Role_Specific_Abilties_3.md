Some things you should know first.

I would like for all the abilities you are gonna be making to be an addon of sorts that only works if the role system is installed.
Kinda like a content pack that can be optionally installed to well add more content.

What I mean by this is for the entire mod to be something I directly put into the mission file.
Upon doing so if I have the Role Manager installed I should just be able to add the abilities to specific roles in the Config maybe with variables and it should work right out of the box.
And just a small thing but I wanna avoid any clutter in the mission file so try to fit as much as possible into folders if possible.

Abilities must be able to be activated in the ACE Interaction menu.
I would also love if there is also a use ability keybind to instantly use their ability.

These abilities should not be connected to any roles. I'd like to assign these abilities to roles in the config rather than them being implemented directly into each role.
I make adjustments to roles a lot during gameplay and may consider giving some other role a specific ability if I believe it fits.
I wanna make sure that I can easily do so using the config without much issue.

The abilities are explained in detail below.
Anything that says ( Customisable ) is something I'd like to easily be able to adjust on my own without having to rewrite the addon.
I mostly just wanna be able to adjust the values and disable or enable that mechanic.

To make customization easy I would suggest putting each ability that can be customized in the addon options where I can make my adjustments.
I'd prefer to make the Addon options categories look nice and well made so send me some concepts whenever you get that far.

Let's work on one ability first. Once we get it right we move on to the next and continue doing so until we get to the bottom of the list below.

I've written some more details about each ability in the "Extra Information" part of this file all the way down.
Highly suggest you take a look at that as you work on each ability.
---


| Resupply Crate |

Can be placed and picked up by the Player
Placing/picking it up will put the player in an animation that lasts for 10s ( Customisable )
The Resupply Crate needs to be picked up again before the Player can place another one.
The player can only pick up the Resupply Crate when within 5m of the Crate ( Customisable )

The player should hear a sound play when the Resupply Crate is placed.
The player should hear a sound when the Resupply Crate is picked up.
The player should hear a sound and get a notification when the Resupply  Crate is destroyed.

All Players should be able to see a 3d marker when close enough to the Resupply Crate.
All Players should be able to see the Resupply Crate marked on the map.

Resupply Crate can be destroyed by the enemy.
A destruction timer of 60 Seconds will start when the enemy is within 5m of the crate ( Customisable )
When the timer reaches 0 the Resupply Crate will be destroyed.

The Resupply Crate will enter a Cooldown of 10min if destroyed. ( Customisable )

| Mine Jammer |

The Player will not activate Proximity explosives when they get close to them.

You mentioned it can be difficult to do this which is why I will direct you to the Zeus Enhanced Github page.
I've linked what I think you should be looking at to find the answer. I won't have any issues if you decide to explore this and see if you can figure it out.
Give it a read see if it's possible and put a time limit on it so you don't spend too much time trying to figure it out.

https://github.com/zen-mod/ZEN/blob/master/addons/modules/functions/fnc_moduleEquipWithECM.sqf

My best guess that hopefully can help you figure it out is that it's likely related to applying a variable onto an object.
The Zeus Module only allows vehicles and objects to have this ECM applied to them so if you could force apply it that may work.

If you still can't figure it out I'll write up a different solution to the problem.

| Rally Point |

Rally Point = Respawn Point for players

The Player can place the Rally Point.
Placing the Rally Point takes 5s and will put the player into an animation. ( Customisable )
The Player does not need to pick up the Rally Point and can easily move it from anywhere to their current position.

The Player should hear a sound play when Rally Point is placed.
The Player should hear a sound when Rally Point is moved.

All Players should get a notification when the Rally Point has been placed/Moved.
All Players should be able to see a 3d marker when close enough to the Rally Point.
All Players should be able to see the Rally Point marked on the map.

The Rally Point marker should be called "Rally Point - Role Selected"
If the player has not selected a role just display their ingame name.

Rally Point can be disabled by the enemy.
When the enemy gets within 15m of the Rally Point it will be disabled ( Customisable )
Rally Point cannot be moved while Disabled
The Rally Point marker will turn Red when this occurs.

Rally Point will turn blue and can be spawned on again when the enemy is dead or outside its radius.

| Player Respawn |

The player with this Ability can be spawned on by all other players.
The name of the Player Respawn should be the Role of the Player.

Other players cannot spawn on the Player with the Respawn ability if the person is Dead or Unconscious.

( Deployable Shield )

The Player can place down a Deployable Shield.
Placing down and picking up the Deployable Shield takes 5s ( Customisable )
Deployable Shield needs to be picked up again or the ability will remain disabled.

The Player with the ability should be able to see the Deployable Shield marked on their map.

Deployable Shield should be invulnerable to damage and cannot be destroyed under any circumstances.
If by chance it does get destroyed somehow simply act as if the Player picked up the Shield and let them place it again after providing them with a notification.

In the picture below you will see how the Deployable shield should be setup.
The picture is 3 different shields setup to look like one full shield.
They are also scaled up to 1.2 ( From 1.0 ) so that it provides a little more cover.
Classname is provided below so you don't need to go search for that.

Classname: B_shield_lxWS

Picture 1: https://gyazo.com/c8687466c85f2c83507c902f13af4629

Picture 2: https://gyazo.com/bcbbcda8729d753ec1ccf13b682ca73e


( Recon Drone )

Recon Drone that is invisible to enemies above 100m. ( Customisable )
Placing down/Picking up the Drone takes 3s. ( Customisable )
Needs to be picked up to be deployed again.

The player should hear a sound play when the Recon Drone is placed.
The player should hear a sound when the Recon Drone is picked up.
The player should get a notification when the Recon Drone has been Destroyed.

Specific enemies can see the Drone and will fire on it.
If the Recon Drone is destroyed it will enter a 5min cooldown before it can be deployed again. ( Customisable )

( Weapon Drone )

Combat Drone that is invisible to enemies above 150m. ( Customisable )
Combat Drone becomes visible to the enemy upon firing and will remain visible for 10s. ( Customisable )
Combat Drone will become invisible to the enemy again if they don't fire for 10s. ( Customisable )

Placing down/Picking up the Drone takes 5s. ( Customisable )
Needs to be picked up to be deployed again.

The player should hear a sound play when the Combat Drone is placed.
The player should hear a sound when the Combat Drone is picked up.
The player should get a notification when the Combat Drone has been Destroyed.

Specific enemies can see the Drone and will fire on it.
If the Combat Drone is destroyed it will enter a 10min cooldown before it can be deployed again. ( Customisable )

------

| Extra Information |

To avoid some of these abilities conflicting with mechanics from my gamemode I'd like for you to create/write some extra stuff that I can easily use to avoid any potential issues at any point.
I'll explain in more detail for each ability below.


( Resupply Crate )

You need to implement some sort of script that I can apply to the Arsenal that allows the player to save their loadout for the Resupply crate.
I should also be able to trigger this save as well on my own as some players do forget to save their respawn loadout properly.
Once saved they should be able to press Resupply on the crate which will load the saved loadout entirely.

Players should be resupplied on respawn as well.

I'd also like for you to create a similar Resupply crate that I can place as a composition in Zeus and the Editor that functions the same as the ability version.
This Resupply Crate can't be destroyed or picked up by anybody.

Do not add a Map Marker for this version of the crate but a 3D Marker would still be nice to have for this version of the crate.


( Rally Point & Player Respawn )

We have a mechanic called "Counter Attack" When this is triggered all players must defend the objective while an onslaught of enemies attacks our position.
During this situation all respawns within the mission become disabled.

With the Rally Point and Player Respawn they would still be able to respawn upon death and deleting these could cause issues.
That's why I need some sort of line of code that I can add to my counter-attack file that will disable/enable all rally points/Player respawns on their own.



( Deployable Shield )

I highly suggest attaching the Deployable Shields together so that they won't be separated by elevation in weird terrain.
It's also important that you make sure that the placement is as consistent as it can be.
We are currently on Tanoa which means the terrain can be quite spicy and players will likely use the Shield in buildings or on rocks which has failed in the past.
Maybe some sort of visible outline of the deployable shield the player can move up and down to get the proper placement?

( Combat Medic Extra Life )

With the Role Manager posted the Medic no longer gets a life when selected.
Going down the route of just detecting if they have the Medic trait is not an option as there is other Roles with Medic traits that should not be getting any extra lives.

I think the best approach is to allow me to apply some kind of variable onto a role so when selected that role with be given a life automatically.
I could also use this system to achieve the giving a life to the Medic whenever capture a Sector issue you could not solve before.
I usually use a radio trigger to let everyone know we succesfully held a sector so i could easily just add a command you give me to hand over a life to the Medic during that process.

( Recon Drone )

Drone Classname: B_UAV_01_F
Drone Screenshot: https://gyazo.com/f03e8b83e7e4faab3785d3491f7ba052

For me to specify what type of enemy can see the drone I should be able to write in a simple command in the Unit init box in the Editor.
Most units are placed in Zeus as we play and special units are usually saved as a composition.

Not sure if this is still ingame but when a player dies they lose connection to their Drone.
I remember discovering a script that fixed this but that was a long time ago.
This is something I hope you can make sure is not gonna happen before sending me this.

( Combat Drone )

Drone Classname: B_UAV_02_lxWS
Drone Screenshot: https://gyazo.com/2e1bcdacf788ebcb51b28a6d9c8e869c
Drone Screenshot: https://gyazo.com/af94758c3eb600d91d81d87c581a6fe4

Same as the Recon Drone.

--------

That's all I got for you.
This is probably gonna be the most work you will need to do so keep me updated on every step and ask as many questions as you need.
There have been a few misunderstandings between me and you with the other mods so far so I wanna make sure we get it right as much as possible.
Ask away once you reach a crossroads in decisions and if anything doesn't make much sense please do go ahead and ask me right away.

You are also more than welcome to make some improvements here and there if you believe that it should be needed.
Just make sure to double-check with me first!

Good luck!
