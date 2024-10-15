1) Out of fuel Notification text correction ( Tweak )

Title: Recon Drone Out of Battery
Description: Recon drone Unavaliable

Title: Combat Drone Out of Battery
Description: Recon drone Unavaliable

Title: Bomb Drone Out of Battery
Description: Recon drone Unavaliable

https://gyazo.com/669de456717d41714d17022b2d93f6c1

You may also notice within the image that there is a little more space the intended between "Drone" and "well"

2) Disable Map Marker for Drones ( Tweak )

Turns out the drones are properly tracked on the map for everyone.
For now disable the map marker system entirely. 
Might bring it back in the future but for now i wanna see how it plays out first.

3) Prevent drones being accessed by multiple people ( Tweak )

Sounded like a good idea but was not when executed.
Make it impossible for anybody else to use the drones of another person with their own UAV Terminal.
You might also wanna consider hiding the connect to drone action as well on the Drones themselves as that may bypass or crash somebody.

4) Drone visibility ( Tweak )

making some adjustments to the spotting of Drones one more time.
This is also to make sure the Drones are properly visible and not visible.

Recon Drone: Invisible when flown above 100m ( Adjustable 50m - 200m )
Combat Drone: visible upon being flown above 50m ( Adjustable 50m - 200m ) / only visible when it fires. Visiblity is 5s ( Adjustable 1s - 20s )
Bomb Drone: Flicker between visible and invisible every 5s ( Adjustable 1s - 20s )

5) Drone Ability Name ( Tweak )

When Placing the drone and selecting it in the UAV Terminal the name displayed for the Combat Drone is incorrect.

https://gyazo.com/a1ac570ab2da69b22b51215af2caa633

https://gyazo.com/3ff25109f35ba4392ad2dd35139b9232

It should be called "Combat Drone" in this situation.

Since the Drone has its own name now it would be preferable in terms of consistency that the other Drones were also named properly.

"Recon Drone"
"Bomb Drone"

Right now two of the drones have unique, drone-specific names while the Combat Drone is just called Combat Drone.

6) Bomb Drone Not blowing up ( Tweak/Bug? )

This is likely caused by 2 issues.

The Bomb Drone model currently being used is pretty bullet-resistant and usually will be disabled but not destroyed.

Bomb drone wont detonate even when the Drone Operator loses connection to it because of the enemy disabling the drone.
This prevents the drone from blowing up and entering a cooldown about a minute later when the drone runs out of fuel.

A possible solution would be allowing the Operator to blow up the drone at any point even when not in the drone.
Another solution could be just blowing up the drone when it gets close to hostiles but this could cause some rare cases of the drone blowing up upon placement because of enemies close.