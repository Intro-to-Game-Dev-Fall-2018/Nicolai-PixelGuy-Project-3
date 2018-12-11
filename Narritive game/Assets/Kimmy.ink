//Beginning of Story: Part 1

VAR KimmyDice = false
VAR KimmyChalk = false
VAR DiceCost = 4
VAR ChalkCost = 6
VAR StoreDice = true
VAR StoreChalk = true
VAR wallet = 25


Dana: Mom! Look! God sent me a baby!
Mom: ...Excuse me?
#TestTag

        + [Her name is Kimmy!] 
        -> KimmyName
        
        
        === KimmyName
        Dana: Her name is Kimmy!

Kimmy: ...
Mom: That… No, Dana. God did not send you a baby.
//Dana:			

        + [What do you mean…?] 
        -> YouSaidThat
        
        === YouSaidThat
Dana: What do you mean…? You said God sends people babies sometimes! You told me that.
Mom: Well… nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.
#TestTag2
        + [What! Why?]
        -> Why
        
        === Why
Dana: What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?
Mom: Where did you find this little girl? Honey, where’s your house?
Kimmy: ...
Mom: Kimmy, can you tell me where your parents are?
Kimmy: I can go home later if I want…

    	+ [Well maybe God didn’t send her.]
    	-> WellMaybe
    	
    	=== WellMaybe
Dana: Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just… appeared, right? Where did you come from?

Kimmy: Ferry Street... I untied myself from the porch so I could go for a walk…
Dana: ...
Mom: It’s ok dear, let’s go to your house Kimmy… you said it’s on Ferry Street? Your parents are probably worried.

        + [Next scene]
        -> NextScene1
        
        
        === NextScene1
Dana: I’m sorry… I thought God sent me a baby and I got so excited…
Kimmy Mom: Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?

//Testing Different Diolouge.
    	+ [I’m Dana…]
    	->SayName
    	+ [(Stay Silent)] 
    	-> DontSayName
    	
    	===SayName 
Dana: I’m Dana…
    	->Responsible
    	
    	===DontSayName
Dana: ...
    	-> TellLater
    	
    	===TellLater
Kimmy Mom: It's ok, you can tell me later
Dana: Ok...
        -> Responsible
    
    
	===Responsible
Kimmy Mom: I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.
Kimmy: My… friend?

		+ [Yes! I’d love to be friends!] 
		->YesFriends
	
	
		===YesFriends
Dana: Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?
Kimmy Mom: I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she… well, she can’t anymore. Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that… If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.

        + [Wow! Yes, please! I’d love to!] 
        -> IdLoveTo
        
        === IdLoveTo
Dana: Wow! Yes, please! I’d love to!
        
Kimmy Mom: My work schedule is a little… hectic. It’d be great to have you by in the morning.
        + [	I’ll be here first thing!] 
        ->FirstThing
        
        ===FirstThing
Dana: I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!
        
Mom: Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.

        + [Ok. Bye bye Kimmy, and Mrs...?] 
        ->Goodbye1
        
        ===Goodbye1
Dana: Ok. Bye bye Kimmy, and Mrs...?
Mrs. Munro: Mrs. Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.
Mom: Likewise.
Kimmy: Bye bye.
        + [Next Scene]
        ->NextScene2

//Next Scene

=== NextScene2
Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
Kimmy: My mommy’s not inside. She left already.

        + [Oh, ok…]
        -> AnythingYoudLikeToDo
        
        ===AnythingYoudLikeToDo
Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
Kimmy: No… I don’t know.
        + [That’s ok]
        ->ThatsOK

    ===ThatsOK
Dana: That’s ok, do you have a friend you’d like to visit?
Kimmy: No...

        + [Should we...?]
        ->ShouldWe
        
        ===ShouldWe
Dana: Should we watch TV or something in your house?
Kimmy: We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.

        + [Ok then!]
        ->OkThen
        
        ===OkThen
Dana: Ok then! Want to walk around and play some games with the other kids?
Kimmy: Other kids…?
Dana: You know, the neighborhood kids. Like...

        + [Like Donna.]
        ->LikeDonna
        
        === LikeDonna
Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?
Kimmy:Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
Dana: Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.
Dana: Come on, let’s go!
Kimmy: ...!
+[Show Map]
->OverworldMap
   //     + [Next Scene]
   //     ->NextScene3
        
//Have Map Option to return to Home World Always Avalible. 

//Map Scene

==== OverworldMap
    
Where Would You Like To Go?

    + [DOWNTOWN]
    ->DownTownScene
    + [THE KIMMY HOUSE]
    ->KimmyHouseScene1
    + [THE DANA HOUSE]
    ->DanaHouseScene
    + [PLAYGROUND]
    ->PlaygroundScene
    
//Downtown
=== DownTownScene
Who Do You Want To Talk To?

    +[JIMMY]
    ->JimmyScene1P1
    +[ANTHONY AND AMBER]
    ->AnthonyScene1P1
    +[CHECK MAP]
    ->OverworldMap
    
->DONE
    

=== JimmyScene1P1

Jimmy: ...Hi Kimmy.
Kimmy: Hi Jimmy…
Dana: ...
    +[Whatcha reading there?]
    ->JimmyScene1P2


=== JimmyScene1P2
Dana: Whatcha reading there, Jimmy? Looks neat.
Jimmy: M-my comic… Archie...
Dana: Some of my friends at school read that! Did you get it at the bookstore?
Jimmy: Yeah!
Kimmy: I’ve never read a comic before.
Jimmy: Y-you can borrow one of mine whenever you like, Kimmy! And then we can uh…
Jimmy: We can talk about it and pick our--our favorite characters!
    +[Wow! That’s so nice of you, Jimmy!]
    ->JimmyScene1P3

===JimmyScene1P3
Dana: Wow! That’s so nice of you, Jimmy! Guess you have a new friend, Kimmy!
Kimmy: I think… that sounds fun...
Jimmy: A-anytime, anytime… um…
    +[Say, are you free to play a game with us?]
    ->JimmyScene1P4
    
    
=== JimmyScene1P4
Dana: Say, are you free to play a game with us, Jimmy? We’ll teach you something new!
Jimmy: I’m not very good at games… b-but, if Kimmy wants me to...
    +[I’m teaching Kimmy!]
    ->JimmyScene1P5


=== JimmyScene1P5
Dana: I’m teaching Kimmy games and helping her make friends this summer.
Jimmy: If you’re learning games, can I play games with you on the playground sometimes too, Kimmy? Once school starts?
Kimmy: ...Ok. I don’t play much at school but I will with you if you want.
Jimmy: What! Oh! Yes… yes please…



PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->JimmyDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->JimmyChalkScene0
    +[NO GAMES]
    ->NoGames3
//If Have No Games

===JimmyDiceScene0
(play with the dice for an hour.)
    +[AN HOUR LATER]
    ->JimmyFriendScene1

===JimmyChalkScene0
(play with the chalk for an hour.)
    +[AN HOUR LATER]
    ->JimmyFriendScene1

===JimmyFriendScene1
Kimmy: You’re not bad at games Jimmy... I think you were good.
Jimmy: Oh! Thank you…
Jimmy: Did you get those toys at the corner store, Dana?
    +[Yup!]
    ->JimmyFriendScene2
    
=== JimmyFriendScene2
Dana: Yup! I had a little money saved up.
Jimmy: I save up my money for comics, but I’ve been saving up money for a Yo-yo lately.
Kimmy: I don’t have any money but my mom said that’s ok. I do sometimes wish I could buy more toys though...
Jimmy: You don’t get an allowance?
Kimmy: What’s an allowance?
    +[An allowance is...]
    -> JimmyFriendScene3

=== JimmyFriendScene3
Dana: A little money that your parents give you every week, usually.
Kimmy: Oh…
Dana: Don’t worry, not everyone gets allowance, Kimmy. Friends are better than money anyways, and we’re going to make lots of friends for you!
Kimmy: Ok…
     +[GO BACK]
    ->DownTownScene

=== NoGames3
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->DownTownScene

    

=== AnthonyScene1P1
Dana: Hey Anthony.
Anthony: Hi Dana. It’s so weird seeing you outside of school, haha.
Amber: I’m Amber!
Anthony: This is my little sister, Amber. Is that your sister, Dana? I didn’t know you had a little sister.
    +[Oh, no… This is Kimmy.]
    -> AnthonyScene1P2
    
=== AnthonyScene1P2
Dana: Oh, no… This is Kimmy. I’m her babysitter.
Anthony: Isn’t Kimmy the girl that Jim--
Amber: Anthony! I know you’re mad at Jimmy, but--
Anthony: I know, I know, nevermind.
    +[Uhhhh… what?]
    -> AnthonyScene1P3
    
=== AnthonyScene1P3
Dana: Uhhhh… what? What’s the gossip?
Amber: Nevermind! Hi Kimmy. I remember seeing you walk to school last year. Isn’t it a bit far to walk? You should ride a bike, at least.
Kimmy: Oh… I don’t know.
Anthony: Are you two headed somewhere? You should hang out with Amber and I.
    +[Well, we’d like to play a game!]
    -> AnthonyScene1P4
    
=== AnthonyScene1P4
Dana: Well, we’d like to play a game!
Anthony: We’d been playing games with Harold earlier… but maybe we could try something new? Amber’s kinda picky though--fair warning.
Amber: Am not!
//Game Choosing Scene
PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->AnthonyDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->AnthonyChalkScene0
    +[NO GAMES]
    ->NoGames
    
=== AnthonyDiceScene0
You play with the dice for about an hour.
    +[AN HOUR LATER...]
    ->AnthonyFriendScene1
    
=== AnthonyChalkScene0
You play with chalk for about an hour.
     +[AN HOUR LATER...]
    ->AnthonyFriendScene1
    
=== AnthonyFriendScene1
Dana: You two picked that up really fast!
Anthony: It’s easier to learn games if you work together. I think we make a good team. When Amber doesn’t get distracted, that is.
 +[...]
 ->AnthonyFriendScene2
 
=== AnthonyFriendScene2
Amber: I don’t like boring stuff. It was fun though.
Anthony: You sound like Donna.
Amber: No, I don’t! Donna’s annoying, but I’m not.
+[...Uh...]
->AnthonyFriendScene3

===AnthonyFriendScene3
Anthony: Well, you’re not as bad as Linda, that’s for sure…
Amber: Shut up! That’s mean!
Anthony:Ok, ok, sorry.
Amber: We should play together at school sometime, Kimmy.
+[You hear that Kimmy?]
->AnthonyFriendScene4

=== AnthonyFriendScene4
Dana: You hear that Kimmy? That’s great! I’m glad that you two go to the same school.
Kimmy: I don’t play with anyone usually, but I think I’d like that.
    +[GO BACK]
    ->DownTownScene

//If Have No Games
=== NoGames
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->DownTownScene


->DONE


//Kimmys house
=== KimmyHouseScene1
    
Who Do You Want To Talk To?


    +[DONNA]
    ->DonnaScene1P1
    +[SHOPKEEPER DEAN]
    ->DeanScene1P1
    +[CHECK MAP]
    ->OverworldMap
    

=== DonnaScene1P1
    
Kimmy: Hi Donna.
Donna: What happened, Kimmy? Did you untie yourself from the porch again?
Kimmy: ...

    +[Hi Donna!]
    -> DonnaScene1P2
    
=== DonnaScene1P2
Dana: Hi Donna! I’m babysitting Kimmy now, so--
Donna: So you untied Kimmy from the porch? Better not let her parents catch you.

    +[First of all,]
    -> DonnaScene1P3
    
=== DonnaScene1P3
Dana: First of all, I’m her babysitter. Second, she’s perfectly able to untie herself. She’s too old for that thing now, even her mom thinks so.
Donna: She should probably stay on her porch. We’re the same age, but my mom takes me everywhere so I won’t get lost. I bet Kimmy would get lost if she wandered too far.

    +[I don’t know about that.]
    -> DonnaScene1P4
    
=== DonnaScene1P4
Dana: I don’t know about that. Anyways, I was just going to ask if you wanna play with us... but I feel like you're being mean to Kimmy.
Donna: Oh, no. I'm just being honest!

    +[Ok...]
    -> DonnaScene1P5
    
=== DonnaScene1P5
Dana: Ok... well, I hope you two can get along, since you're neighbors... want to play a game with us?
Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. He keeps trying to tell me that my ears look childish. He is so snobby.
Kimmy: I like your ears.
Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.

PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->DonnaDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->DonnaChalkScene0
   +[NO GAMES]
    ->NoGames1

//If Have No Games
=== NoGames1
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->KimmyHouseScene1
    
    
===DonnaChalkScene0
You play with chalk for about an hour.
    +[AN HOUR LATER.]
    ->DonnaDiceScene1
    
===DonnaDiceScene0
You play with the dice for about an hour.
    +[AN HOUR LATER.]
    ->DonnaDiceScene1

=== DonnaDiceScene1
Donna: Kimmy loved that. I’m surprised, normally you’re so quiet Kimmy.
Kimmy: Mom said it’s ok to be quiet.

    +[Thats Right!]
    ->DonnaDiceScene2
    
=== DonnaDiceScene2
Dana: That’s right! Games are a nice way to talk and play with your friends though, don’t you think? Even quiet kids like games, I think, usually.
Kimmy: …Are we friends? I thought you were my babysitter.
    +[Of course!]
    ->DonnaDiceScene3
    
=== DonnaDiceScene3
Dana: Yes! Of course we’re friends! I know we just met yesterday, but… that’s normal!
Kimmy: I always thought babysitters were more like parents.
    +[I can be your friend AND your babysitter.]
    -> DonnaDiceScene4

=== DonnaDiceScene4
Dana: I can be your friend AND your babysitter. We’re having fun playing games together, right? That’s what friends do a lot of the time. Anthony and I became friends by playing games together. We met playing kickball.
Donna: Anthony and his little sister Amber are… annoying. Don’t tell them I said that though…
    +[Really?]
    -> DonnaDiceScene5
    
=== DonnaDiceScene5
Dana: Really? Anthony and I go to the same school and do sports together sometimes. He’s way nicer than the other boys at my school. I like him and Amber.
Donna: There’s no rule that says you have to like your classmates.
    +[I know but...]
    ->DonnaDiceScene6
    
=== DonnaDiceScene6
Dana: Yeah, I know… but Anthony is nice to me, so I like him.
Donna: Oooh, you like... Like him?
Dana: …I’m not going to answer that, Donna. Who I like is none of your business.
     +[GO BACK]
    ->KimmyHouseScene1




=== DeanScene1P1
Dean: Hey, Kid.
    +[Hi, Dean.]
    ->DeanScene1P2
    
=== DeanScene1P2
Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?
Kimmy: My mom pays Dana a quarter a day.
    +[That’s right!]
    ->DeanScene1P3
    
=== DeanScene1P3
Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!
Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.
    +[I need to save up money.]
    -> DeanScene1P4
    
===DeanScene1P4
Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.
Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.
    +[So what did you spend all your money on?]
    -> DeanScene1P5
    
===DeanScene1P5
Dana: So what did you spend all your money on? Your sewing classes?
Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.
Kimmy: I didn’t know people made clothes!
Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.
    +[You should sell your clothes at...]
    -> DeanScene1P6

===DeanScene1P6
Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.
Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?
//Go to buy Phase
    +[SHOP]
    ->Store
    
=== Store
    What would you like to buy?
    
     You have {wallet} cents.

{KimmyDice : You have dice.}
{KimmyChalk : You have chalk.}

{StoreDice : dice. ({DiceCost} Cents)}
{StoreChalk : Chalk. ({ChalkCost} Cents)}

* [Buy Dice.]
    ~wallet -= DiceCost
    ~KimmyDice = true
    ~StoreDice = false
    -> BoughtDice

* [Buy Chalk.]
    ~wallet -= ChalkCost
    ~KimmyChalk = true
    ~StoreChalk = false
    -> BoughtChalk
    
+[Return To Kimmy House]
->KimmyHouseScene1

=== BoughtDice
You now have dice. 
+ [Return to shop]
->Store

=== BoughtChalk
You now have Chalk. 
+ [Return to shop]
->Store


 +[Return To Kimmy House]
->KimmyHouseScene1


//Need to do IF statements and bool with Game Peices.



=== DanaHouseScene

CANT GO HOME YET!

    +[GO BACK]
    ->OverworldMap

-> DONE

=== PlaygroundScene

Who Do You Want To Talk To?
    //Person 1: Blythe
    +[BLYTHE]
    ->BlytheScene1P1
    +[JANEY]
    ->JaneyScene1P1
    +[LINDA]
    ->LindaScene1P1
     +[CHECK MAP]
    ->OverworldMap
    
    
    
=== BlytheScene1P1
Kimmy: P-please go away...
    +[Blythe, knock it off!]
    ->BlytheScene1P2
    
===BlytheScene1P2
Dana: Blythe, knock it off! I’m a babysitter so you can’t bug me anymore, got it?
Blythe: Poor Dana. Poor Kimmy. You can’t get away from me! I’m the bicycle lord. I’ll only stop following you if you play a game with me.
    +[No]
    ->BlytheScene1P2NO
    +[Fine...]
    ->BlytheScene1P3
    
=== BlytheScene1P2NO
Dana: No.
Blythe: Yes.
    +[Fine...]
    ->BlytheScene1P3

=== BlytheScene1P3
Dana: Fine.
Blythe: That’s right.

PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->BlytheDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->BlytheChalkScene0
   +[NO GAMES]
    ->NoGames4
    
=== BlytheDiceScene0
(You reluctantly play with the dice for what feels like forever...)
    +[SOME FOREVER LATER]
    ->BlytheFriendScene1
    
=== BlytheChalkScene0
(You reluctantly play with the chalk for what feels like forever...)
    +[SOME FOREVER LATER]
    ->BlytheFriendScene1
    
    
    
=== BlytheFriendScene1
Blythe: Haha, what a rush.
    +[Well… that was nice]
    ->BlytheFriendScene2

=== BlytheFriendScene2
Dana: Well… that was nice. I’m surprised you hadn’t played before though, Blythe. You always brag about how good you are at games, and how you know so many.
Kimmy: I wanna know more games than Blythe!
    +[that’s the spirit!]
    ->BlytheFriendScene3

=== BlytheFriendScene3
Dana: Haha, that’s the spirit!
Blythe: Pfft. Good luck. I’m gonna go catch bugs later. That’s better than games.
     +[GO BACK]
    ->PlaygroundScene
    
//If Have No Games
=== NoGames4
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->PlaygroundScene
    

    //Person 2: Janey
=== JaneyScene1P1
Dana: Hey Janey, how are you?
Janey: You know the Grenada movie theatre? I got a summer job there. I started last week.
Kimmy: Wow… my mom took me there once...
Janey: What did you see? I go to the movies a lot, so I bet I saw it too.
Kimmy: Oh… we saw the movie with the… Uh... the fairy godmother and the shoe…
Janey: Cinderella?
Kimmy: Yeah... and we saw Mary Poppins.
Janey: I saw that at The Grenada too. It was so great.
    +[ where would we find you?]
    ->JaneyScene1P2
    
=== JaneyScene1P2
Dana: If we go see a movie there, where would we find you?
Janey: I’m at the snack counter, but I’m too little to be a cashier. I’m helping make popcorn… just until I’m old enough to do something more serious.
Kimmy: I love popcorn!
Janey: Yeah, it’s pretty awesome to be at the snack counter. I love popcorn. I can have free soda whenever I want, too.
    +[I also have a summer job!]
    ->JaneyScene1P3
    
=== JaneyScene1P3
Dana: I also have a summer job! I’m babysitting Kimmy! I wasn’t planning on working, but I think it’s great.
Janey: My mom said a summer job is important. I didn’t want her to think I was lazy, and I love movies so I got my cousin to help me get the job. He sells tickets there.
    +[I’m glad I won’t be lazy this summer.]
    ->JaneyScene1P4
    
=== JaneyScene1P4
Dana: I’m glad I won’t be lazy this summer. I think I’m getting too old to be lazy. I mean, I’m going into the 5th grade.
Janey: Yeah, it’s more fun to be out with people who aren’t just teachers and classmates too.
Janey: By the way, I’m not working today. Wanna play together?



PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->JaneyDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->JaneyChalkScene0
   +[NO GAMES]
    ->NoGames5
    
=== JaneyDiceScene0
(You teach Janey some dice games and play for about an hour.)
    +[AN HOUR LATER]
    ->JaneyFriendScene1

=== JaneyChalkScene0
(You grab the chalk and play for about an hour.)
    +[AN HOUR LATER]
    ->JaneyFriendScene1
    
    
=== JaneyFriendScene1
Dana: That’s it! Good job Janey, you picked that up fast!
Janey: My dad says I’m a fast learner. I can even beat Anthony at Tic Tac Toe sometimes.
Kimmy: I don’t think I’m a fast learner...
    +[I think you are!]
    -> JaneyFriendScene2

=== JaneyFriendScene2
Dana: I think you are! You’re great, Kimmy.
Janey: Don’t worry, you’re sharper than Jimmy at the very least…
Kimmy: Oh...
    +[Janey...]
    -> JaneyFriendScene3

=== JaneyFriendScene3
Dana: That’s not very nice, Janey.
Janey: You’re so little, Kimmy, it’s ok. You have time. Get a job like Dana and I and you’ll feel smarter in no time.
Kimmy: I want to be smart and big like you two…
    +[You can worry about jobs later.]
    -> JaneyFriendScene4

=== JaneyFriendScene4

Dana: Let’s make you some friends first. You can worry about jobs later.
Kimmy: Ok...
     +[GO BACK]
    ->PlaygroundScene
    
    
//If Have No Games
=== NoGames5
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->PlaygroundScene
    
    
    //Person 3: Linda
=== LindaScene1P1
Kimmy: Hi Linda... I haven’t seen you in a while.
Linda: I went to visit my auntie right when school ended.
    +[you know Kimmy?]
    ->LindaScene1P2
    
=== LindaScene1P2
Dana: Hi, Linda. Do you know Kimmy?
Linda: We’re neighbors.
Kimmy: Did you go far away?
Linda: Auntie’s in Boston.
Kimmy: That sounds far...
    +[It’s not so far]
    -> LindaScene1P3
    
===LindaScene1P3
Dana: It’s not so far. You can even ride your bike there. Sometimes my sisters and I go. We like to go explore all the clothes shops. Like Filene's.
Linda: I don’t really go shopping, unless it’s for stuffed animals.
Kimmy: Dana is babysitting me, so she can go shopping with the quarters my mom gives her!
Linda: Oh, having a job is good. When I’m a little older I want to get one at an animal shelter or something. I like playing with dogs.
Kimmy: I love dogs.
    +[Want to play a game with us?]
    -> LindaScene1P4
    
===LindaScene1P4
Dana: We’re looking for people to play games with. Want to play a game with us, Linda?
Linda: I guess so. I was playing with Donna earlier, but I could play some more.



PICK A GAME:
    + {KimmyDice} [PLAY WITH DICE]
    ->LindaDiceScene0
    + {KimmyChalk} [PLAY WITH CHALK]
    ->LindaChalkScene0
   +[NO GAMES]
    ->NoGames6
    
=== LindaDiceScene0
(You grab your dice and teach linda some games.)
    +[AN HOUR LATER]
    ->LindaFriendScene1

=== LindaChalkScene0
(You grab your chalk and teach linda some games.)
    +[AN HOUR LATER]
    ->LindaFriendScene1
    
    
=== LindaFriendScene1
Dana: We did it!
Linda: I usually only play games with my dad or brothers, but that was fun.
Kimmy: Th--thanks for playing with us, Linda.
Linda: I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn this game... thanks for teaching it to me.
    +[thank you Linda.]
    ->LindaFriendScene2
    
=== LindaFriendScene2
Dana: Oh, thank you Linda. You’re a good student!
Linda: I like to learn stuff. I’m glad it’s summer break though… we never get assigned anything fun in school. But my auntie gave me some biology books to read and it’s really fun.
Kimmy: What’s… biology?
Linda: It’s about studying living stuff like plants and animals, and people sometimes too.
    +[I hope I get to take biology soon.]
    ->LindaFriendScene3
    
=== LindaFriendScene3
Dana: I hope I get to take biology soon. I like math and science classes a lot.
Kimmy: If I could study dogs, I think I’d be happy...
    +[GO BACK]
    ->PlaygroundScene
    

//If Have No Games
=== NoGames6
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
    +[GO BACK]
    ->PlaygroundScene
    
-> DONE