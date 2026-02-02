/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
VAR Sword = 0


-> Introduction 

=== Introduction ===
Sunlight slips through the cracks in the wooden shutters, catching dust in the air. Your room smells of old straw and smoke, same as always. Same as everyone else’s. 

The village has known your name your whole life, but never for the reasons you wanted.

You are the son of the blacksmith. The errand runner. The boy who trains at dawn and still isn’t chosen when it matters.

You’ve trained in the shadow of others your entire life.

Stronger warriors. Braver names. Better stories.

But today, you’re done waiting to be chosen.

If the village won’t recognize your worth.

You’ll show them exactly what your capable of!

* [Head to the village] -> Village

=== Village ===
You head to the village to find any useful leads to help you achieve your goal.

You enter the village square and settle beside the fountain, its steady trickle lost beneath the noise of the morning crowd.

Nearby, a group of villagers speak in hushed voices. You lean closer.

“The forest’s worse than ever,” one says. “Monsters everywhere.”

The words hit you like a bolt of lighting.

The forest is crawling with beasts and creatures no one dares face. If you could survive it… if you could defeat one of them...

That’s it.

The forest will be your trial and your proof.
* [Rush straight to the Forest] -> Forest_Entrance

* [Train for a few hours before going to the Forest] -> Training_Grounds

=== Training_Grounds ===
You know it has been quite some time since you last swung a sword and decide it best to train for a while before heading to the forest.
You head back to your home to train on an old training dummy.

But you can't train without your sword
* [Grab your sword] -> Training_Grounds2


=== Training_Grounds2 ===
{ not Sword: You pick up your sword and it feels nice in your hand. }
{not Sword: You train for a little but still feel a little rusty}
{Sword: You swing your sword at the dummy with precision and feel a more comftorble confronting a monster now.}
~ Sword = Sword + 1

+ {Sword > 0} [Train for a While Longer] -> Training_Grounds2
* [Quit Training and go to the forest] -> Forest_Entrance

=== Forest_Entrance ===
You arrive to the entrance of the forest. The forest's edge is seemingly endless and the lack of noise coming from the forest makes you especially nervous.
The forest is definitely as forboding as the villagers described it
{Sword: But you feel Prepared for anything after your training and with your sword in hand. }
{not Sword: You start to feel this might have been a bad idea or you should have atleast grabbed a weapon but you convince yourself you have what it takes and steal yourself for what lies ahead.}
* [Head deeper in to see what you can find] -> Deep_Forest

=== Deep_Forest ===
You push through what feels like endless brush trying to follow a vauge path that hasn't been used in a very long time. You have a faint feeling that your being watched but when you look around you see nothing so you choose to ignore it.

After around half an hour of walking you finally enter a clearing. 

You see a lake and a large oak tree that must have been here longer than the village itself. 

* [Inspect the Lake] -> Lake

=== Lake ===
You aproach the Lake and see footprints of wildlife and what kinda looks like pretty big humanoid footprints but you know your the only person thats been out here in years so you choose to ignore it.

Looking out at the vast lake you take in its beauty and for the first time since you entered this creepy forest you feel a little relaxed.

You notice that water looks so clear you could see your reflection if you wanted to.

* [Look at your reflection] -> Reflection

=== Reflection ===
You lean over to look into the lake and see your reflection perfectly.
You notice you should definitely shave but other than that you see a pretty handsome fella :)

As soon as you lean over to look at your reflection your stomach drops as you hear someone's bloodcurdling scream coming from the large Oak Tree

* [Run to the Oak Tree!]-> Oak_Tree
=== Oak_Tree ===
You sprint as fast as you can to the oak tree and as you get there you run around it to find a Hobgoblin standing over a little boy from the village.
He must have followed you into the forest but that doesent matter now.

The Hobgoblin raises his axe to strike the boy but he doesent see you yet.

*{Sword > 0} [Strike the goblins arm with your sword] -> Good_Combat_Ending

* [Shove the Hobgoblin so the boy can run] -> Bad_Combat_Ending

=== Good_Combat_Ending ===
You go to strike the Hobgoblin's arm but you must have made too much noise because he turns quickly and clashes blades with you! 

The boy see's his chance and runs back to the village as fast as he can.

With the boy gone you are able to put your training to use without worrying but this is no mere training dummy. 
 
You are barely able to clash with this beast but its much slower than you are and you use that to your advantage. 
You dance around the Hobgoblin whos swinging wildly as you plant as many cuts in it as you can. you notice that your cuts arent doing much damage but they are slowing it down even more. 

After 10 minutes of heated combat your body is screaming in pain but the Hobgoblin makes a vertical swing that you are able to dodge and then cleave his head off... 

* [Claim a trophy from the beast] -> Good_Combat_Ending

* [Go back to the village] -> Good_Ending
=== Bad_Combat_Ending ===
You run behind the Hobgoblin to shove it but you must have made to much noise because it turns around and sees you charging.

It swings its axe at you but you barely dodge it.  

With the Hobgoblins attention focused on you the boy sees his chance and runs back to the village as fast as he can. 

You are now locked in a staredown with a Hobgoblin without a weapon and it doesent look good for you. You wish now more then ever that you grabbed your sword from home and maybe even spent some time training but those thoughts cant help you now.

The hobgoblin charges at you and as you go to dodge you trip. Your head thankfully isn't cleaved off but the same cant be said about your left hand. Before you can think to react you hear someone screaming and notice your legs have already started running towards the village. 

You make it to the village healer before colapsing from fatigue and bloodloss. 

* [Wake up] -> Bad_Ending
-> END


=== Good_Ending ===
You finally arrive at the village and collapse from exhaustion.

You wake up back at your house, confused how you got there you look around and as you do the boy you saved enters your room followed by his mother and father. 

They thank you profusely for saving their son. They give you some of the money they have been saving up as thanks and even call you a hero. They then leave your home after making sure you're okay. 

Today was terrifing for you but you lay back in your bed and cant help but smile. 
 You woke up this morning a nobody but tonight you go to bed a Hero. :) 

-> END

=== Bad_Ending ===
You wake up in the village healers house. you feel very faint but you're alive and thats what matters.

You are scolded by the village healer and elder for being so reckless as to enter the forest let alone without even bringing a weapon. 
After they leave the boy enters with his parents who thank you for saving him and apoligise for what happened to you becuase of him. 

When they leave you are left alone with your thoughts and all you can think is how you should have stayed home today. 
You wonder why even though you were thanked for saving the boy, you still feel so empty.

-> END















