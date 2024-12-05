1) The Medic icon within the Life Manager does not show up or update

If you are an admin and have the menu open when somebody selects the Medic role.
The medic icon will not show up. The global menu update will not fix the issue, closing the menu and opening it again will not.
Regular players need to reopen the menu to fix the problem.

This was tested with core mods only.
The issue can only be recreated with another player.
I am sending the RPT File to help you narrow it down.

https://gyazo.com/84225b530970fb5344033a2fca69a1f8

2) The player is still able to Respawn despite being eliminated.

Before I start, this does not occur with just the core mods loaded.
The issue is likely caused by one of the mods in my modpack.
Im informing you about its existence since you may know the cause.
The RPT File called "RPTEliminationBug" is where the issue occurred.

This is also an issue carried over from the previous Life Manager.
I assumed the issue was caused by us giving lives using scripts, but that was not the cause.

https://gyazo.com/dc268c42548d9fcb201f47a8e52c8f8b

Important to mention the issue does not occur for Admin.
You may need the RPT file of the player it occurs to but hopefully the Server RPT provides the info.

1) Normal players can still move around when the menu is open. 

When opening the Life Manager, players who are not Admins can run around.
Everyone who opens the menu should be unable to move when the menu is open.

2) Menu does not update when a player is eliminated.

Make a global menu update occur on somebody's death/respawn and elimination.
There may be some rare cases of multiple people dying rapidly which could cause issues.
Consider adding a 5-second cooldown to prevent mass spam of the menu update.

3) Disconnected player notification text correction

Don't change the title to display the name of the user who disconnected it to avoid confusion.
Instead, make sure it just says a player like below.

The description should say the name of the player who disconnected.
Example: Patty had 7 Lives

Title: Player Disconnected
Description: "Player" had 7 Lives

https://gyazo.com/16840506a73a121849699068eea1b327

4) Keep the Player squad expanded after an update

Keep the squad the player is currently assigned to expanded.
If a global update occurs or the player reopens the menu, their squad is always minimized, which can become annoying. So making their assigned squad always expanded can save time and make it more convenient.