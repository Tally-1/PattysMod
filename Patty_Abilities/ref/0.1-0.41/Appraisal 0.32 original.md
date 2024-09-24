| Rally Point |

Rally Point = Placeable Respawn Point for players

The Player can place the Rally Point. 
The Player will not get a Placement menu. Instead, the Rally Point will spawn exactly where the player is standing with the same Elevation and everything to avoid placement issues on objects and within buildings.
Maybe have it placed center mass of the player's bodies?

Placing the Rally Point takes 5s and will put the player into an animation. "AinvPknlMstpSlayWrflDnon_medicOther" ( Timer Customisable )
The Player does not need to pick up the Rally Point and can at any point place it back down again.
This will move the old Rally Point to the new position and provide a notification again for all players.

All Players should get a notification when the Rally Point has been placed.
All Players should be able to see a 3d marker when close enough to the Rally Point. ( Range Customisable )
All Players should be able to see the Rally Point marked on the map.

The Owner should get a Notification when the Rally Point has been moved.
The Owner should get a notification when the Rally Point is Contested.

The Notification for when the Rally Point has been placed down should use the image file called: "RallyPointPlaced.png"

The Notification for when the Rally Point is Contested should use the image file called: "RallyPointContested.png"

The 3D Marker and Map Marker should use the image file called: "RP.png"

The Rally Point marker should be called: "Rally Point"

Rally Point can be disabled by the enemy.
When the enemy gets within 15m of the Rally Point it will be disabled ( Range Customisable )
The Rally Point will work again the moment the enemy goes outside of this Range.

The Rally Point Marker and 3D Marker will turn Red on the map.
The text will also change to: "Rally Point - Role Selected (Contested)"

Rally Point cannot be moved while Disabled and the ability will disappear from the Special Ability Category until it is no longer Contested similar to how the Resupply Crate does not show up until picked up.

| Extra |

In my group, we have something called a Counter-Attack.
During this period all respawns within the mission are disabled temporarily as the players defend their position.

With you implementing the Rally Point I need a way to disable the Rally Point temporarily when a Counter-Attack starts.
I would also need to disable the Team Respawn ability whenever you work on that as it's basically the same thing just on players.

There are three different ways to respawn within the AO. Those are the Rally Point, Respawn on a Player with the Team Respawn Ability, and Respawn on the Default Respawn Point placed in the corner of the AO somewhere.

I would essentially need you to disable all three of those and then also allow me to turn those back on after the Counter-Attack is over.

For extra information, the Counter-Attack is fully controlled in Zeus. But the notifications and such are triggered by executing an SQF file to play those notifications globally for all Players.
So I could easily add your solution into said SQF files to both enable and disable those Respawns.