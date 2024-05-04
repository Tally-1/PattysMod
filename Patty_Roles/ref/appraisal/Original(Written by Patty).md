| Life System |

A life system where the Admin can easily set the number of default lives for each player in the addon options. All players should be able to open a menu to see the lives of all players including their own and should be able to also press a button to simply be notified about the amount of lives they have left.

The life menu itself should have 4 buttons that all players can see but may be grayed out depending on the role the player is playing.

Add - Give the selected player a life

Remove -  Remove 1 life from the selected player

Transfer - Transfer one life from yourself to the selected player

Reset -  Reset all lives for all players back to the Default Life amount

Add/Remove/Reset can only be used by Admin.

Transfer can be used by the Combat Medic Which I'll talk about more below.

The Life menu should also display who the Combat Medic is with an icon that represents a Medic.

EXTRA NOTE

The old system used the ingame Ticket system to give each of us 5 lives. I would prefer using that again but if you believe there is a better System you can implement feel free to do that instead after explaining it to me first.

Below is a gyazo link to show you a screenshot of our old menu style. I'd like to mimic it but I'm of course completely fine with looking at some other styles if you have some to offer.

https://gyazo.com/dbfce8f835fcab819e669577dcf48fb6

https://gyazo.com/4416d0ff216e5b35b2d6af17f390195f

| Role System |

The role system should be only accessible when within a certain range of named objects such as the arsenal. You access the role menu by pressing the "Role Selection" button within the ACE Self-interaction when close to said crate.

"We can consider using the default action menu if needed but in terms of gameplay my group would prefer it done in ACE"

Inside the menu. players will be able to see a short description of whatever role they have selected and the default loadout they will be provided after choosing said role.

I'd also like the ability for the Admin to choose how many people can pick the same role and to be easily able to customize said roles on a whim. I make a lot of balance changes here and there which may include specific role equipment so if it could be as easy as copy-paste the loadout from the arsenal that would be preferable.

And of course, I'd like the ability to easily write the description for said roles and add/remove roles, change the icons etc, etc.

Below is a picture of the old Menu style for you to mimic or improve on. 

https://gyazo.com/1613baca82393fc20661899f9fbb0626

| Role Specific Abilities |

Upon selecting a role with the role selection menu they may be given some special abilities for use during gameplay. I've listed the roles that gain some abilities when selected below.

If not too complicated I'd like these features implemented in the ACE Self-interactions and maybe even coloring of said options to show the status of certain abilities. Simplex Support Services does something like that so it may be worth looking at that as an example.

| Squad Leader |

( Rally Point )

Can place a Rally Point ( Respawn Point for Infantry )
Can move the Rally Point from anywhere

2D Map Marker for Rally Point
3D Marker if close enough to the Rally Point

Sound for placing Rallypoint
Sound for moving Rallypoint

Cant spawn on Rally Point if the enemy is close to it.
2D and 3D Markers will turn Red when the enemy is close to it.
Rally Point cannot be moved if the enemy is within proximity to it.

( Teammate Respawning )

Squad Leader can be spawned on by other players
Squad Leader cannot be spawned on if unconscious/Dead



| Radio Operator |

Same Exact abilities as the Squad Leader but they function separately from each other meaning there can be 2 rally points and both the SL and RO can be spawned on.

| Autorifleman |

( Resupply Crate )

Can place Resupply crate
Can pickup Resupply Crate

5-minute cooldown when picked up
10 minute cooldown if destroyed

3D Marker when close to Resupply Crate
Map Marker for Resupply Crate

Sound for Placing Resupply Crate
Sound for Picking up Resupply Crate
Animation for Placing Resupply Crate
Animation for Picking up Resupply Crate

Animation for Rearming at Resupply Crate
Sound for Rearming at Resupply Crate

If enemies get close enough to the Resupply crate it will start a timer of 1 minute that will destroy the create once complete. This timer will not start if players are also close enough to the crate.

Resupplying should take 10 seconds but I'll likely adjust this depending on how it plays during gameplay.

EXTRA NOTE

The previous system let us save our loadouts using the Arsenal crate at the base which if the Resupply crate is placed could be used to "Resupply" by loading that saved loadout onto the player in question. 

A similar system would be preferable.

| Grenadier |

Will not activate Mines

EXTRA NOTE

I currently use the ZEUS Enhanced Create IED Module to turn explosives into proximity-detonated explosives. I've been unable to find a working jammer for human players so I'd like for you to potentially find a solution for this where the the Grenadier will not activate any proximity mines and can easily walk up and defuse them if close enough.

| Combat Medic |

Start with 1 extra life compared to the rest
Can use the transfer feature in the Life menu

EXTRA NOTE

The Medic also gains one life with each sector captured by the players. These sectors are placed in Zeus during the mission prep stage using the Attack & Defend Module so I have no idea how you could detect these. You don't have to implement this feature but if there is a way for you to detect when Blufor captures a sector I'd love it if you made it give  a life to the Combat Medic

| Engineer |

Same ability as Grenadier

Ability to place down a Deployable Shield as cover
Ability to pick up the Deployable Shield
5 Second timer to place Deployable Shield
5 Second timer to pickup Deployable Shield

EXTRA NOTE

Below is a picture of the Deployable shield and how it should be set up when used. The object is the Deployable Shield from Western Sahara Clasname "B_shield_lxWS"

In the picture, it is also scaled up to 1.2 as the normal size is a little too small to be of effective use. But if scaling is impossible keep it normal size.

https://gyazo.com/1ec3d1b28f2e83b390e0a9e3718795ec

https://gyazo.com/7ab2528afc5f78c7bc6d51691a99392c

| Marksman |

Not sure about this feature and I have no idea how complex it is to integrate into the game but I'll mention it regardless.

If the Marksman is wearing a ghillie suit and is prone they can't be targeted by AI. If they stand up or go crouched they will return to normal. This only works within a set range of the enemy so if the Marksman is close enough this won't work no matter what.

To avoid spam and potential AI Confusion they won't be able to go back into "Stealth Mode" instantly and there will be a 60-second cooldown in the area they originally went prone. maybe a radius of 50 meters? If they go beyond that and try it will work again

This also won't work if the Marksman is firing a rifle with no suppressor on. I'm currently leaning on two methods.

Method 1 = Start a timer when the Marksman fires without a suppressor which will lead to eventually becoming compromised.

Method 2 = Marksman can fire a certain amount of rounds unsuppressed before being compromised

| That's Everything |

Most of the mechanics in Asfalis are managed by me in Zeus and I'm trying to automate as much as possible so I can make my life easier players won't have to "Ask Zeus" to have their crate placed anymore and make this feel more official as I believe its a really fun experience held back by the lack of scripted systems.

