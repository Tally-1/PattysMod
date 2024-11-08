| New Feature |

1) Rework of the 3D and Map Marker design for both the Resupply Crate and Arsenal Crate.

I've decided to try to mimic the old design we had with our old Resupply and Arsenal Crate more as it looked better.
The old design had a neat look on the map where if you are not hovering over the Resupply or Arsenal Crate icon you would not see the Resupply Crate/Arsenal Crate Text and only the Icon.
I've provided some pictures below and described more what I'm looking for.

https://gyazo.com/d792b23e8991e283ab302f82ab370ff0

To explain the image the icons to the left are if the player is not actively hovering over the icon with their cursor.
It will simply just display the icon only.

The icons to the right with the text are how they should look if the player hovers over the icon with their cursor.
The text should appear next to the icon exactly as shown in the image.

Make sure to mimic what I've shown you in the image above. Same color and design same icons exactly.
You should already have those icons so no need to ask for them.

You can also delete the entire color change for the Owner feature I had you make.
I want the 3D Marker and Map Marker to look the same for all players now as I believe the Owner of the crate should remember which one they placed.

As for the icon that can be seen in 3D:

Mimic the design shown in the image below.

https://gyazo.com/c915de253556a5aeba4a54afbb37919d

In this case, the Arsenal icon and Resupply icon would both be below the text.
The text itself would be yellow like in the image and would say Arsenal Crate/Resupply Crate depending on which Crate the player is looking at.

Both the Text and Icon do not show up in 3D unless the player is directly looking at the Crate itself.
So make sure that is in there as well.

2) Add a Heal Option for the Arsenal Crate

A simple ACE option that when pressed by the player will heal them entirely. (Compatible with ACE)
This option should only be available for the Arsenal Crate that only appears back at our base.

When the action is pressed I want this animation to play "AinvPknlMstpSlayWrflDnon_medic"
During this period I want the loading bar text to say healing

I've provided you with the icon you should use for the Heal option within the ACE interactions for the Arsenal Crate.
It's called ACH.png and should have come with this text file message.

3) Change/Rework of the Beeping Sounds.

I want you to change/add beeping sounds for certain actions.

I've explained which sound should be played for the different stages of each action that should have a sound.
If you know of any beeping sounds that play that I've not mentioned below make sure to remove those entirely.

This is how it should be for all actions listed below.

( Resupply Crate )

Play "beep_target" and after "hintExpand" when the player opens up the Placement GUI for the Resupply Crate.
Play "hintCollapse" when the player has fully placed the Resupply Crate.

Play "hintCollapse" if the player closes the Placement GUI instead of placing the Crate.

When the Player is picking up the Crate play "beep_target" and after "hintExpand"
When the Crate is picked up play "hintCollapse"

When the player presses the Resupply option play "beep_target" and after "hintExpand"
When the action is fully complete play "hintCollapse"

( Arsenal Crate )

Play "beep_target" and after "hintExpand" when the player uses the heal option for the Arsenal Crate.
Play "hintCollapse" when the healing is fully completed.

---

Overall if you want a reference here is a link to the Resupply Crate we used previously as a composition on the workshop.
You can place it in the Editor or in Zeus and try it out for yourself to see how it works.

https://steamcommunity.com/sharedfiles/filedetails/?id=3056005195

| Bugs |

1) Resupply Crate placed down in Zeus did not have the option to Resupply.

To be more clear I usually place down a Resupply Crate near one of our default respawn points within the mission.
I do this in Zeus for the most part. When the players tried to interact with it they were unable to see the option to Resupply at all.
I was still able to see the option completely fine and was able to use the Crate as intended.

https://gyazo.com/eb3a125449277a850f3b830dde0f91e8

I was able to see this icon, but the others were not able to see it.

Hopefully, this helps but I usually build my mission in Zeus an hour or two before people join.
So the Resupply Option may never have been created for the other players as they were not on the server when this box was placed.

2) Wrong icon for the Resupply ACE interaction

That one is meant to use the RC icon (Image Below)

https://gyazo.com/946bfb864f3b436ebaa247e6c5cfdec3

3) Players will lose access to using the Resupply Crate randomly

Well not exactly Randomly. For some reason, I could not figure out why players would lose the option to Resupply at the Crate.
I have a picture below but I doubt it will tell you anything. I think the best solution is to do a check to make sure all players regardless of the situation have the option to resupply at the crate.

https://gyazo.com/c10f959e4699ef18ceaa47ff3696f3c4

If it helps it may have had something to do with people going unconscious and then waking up again.
I doubt it has anything to do with respawning as I never died in our last operation but still lost the option.

Picking up the Crate and placing it again seemed to fix the Crate entirely. But to be safe you may also wanna make sure this issue does not appear for the pickup crate option.

3) Players cant cancel their interaction with the Resupply Crate

Players are unable to interrupt their resupply or pick up of the crate forcing them in a full animation.
If they press ESC they should instantly stop trying to Resupply or Pick up the Crate entirely.

4) The Owner of the Resupply Crate will still be able to pick up the crate even when knocked unconscious

Similar to the point above. If the Owner of the Crate was in the process of picking up the Crate and then is knocked unconscious (ACE) the action will still try to complete and not canceled entirely.
If the player is knocked unconscious they should not be able to pick up the crate and if they are in the process of picking it up it should cancel entirely.

5) Players already Resupplying won't have their action Canceled when the Crate is Destroyed/Picked up

If a player is in the process of Resupplying their loadout if the owner picks up the Crate they will still be able to finish resupplying their loadout.
This is not how it's meant to be if the Crate is picked up all players currently Resupplying should have their Resupply instantly canceled.

I was unable to test if Destruction of the Crate caused the same thing but It likely has the same issue.