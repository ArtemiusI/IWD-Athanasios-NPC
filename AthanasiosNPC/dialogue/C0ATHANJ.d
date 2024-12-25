BEGIN C0ATHANJ

// Acolyte

I_C_T DACOLYTE 0 C0AthanasiosAcolyte
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Eh, well, I've been guilty for profanin' the church's sacred urns with the contents of my belly on a bad day, but this one ain't on me for once.~
== DACOLYTE ~Silence! You shall all pay for your transgressions!~
END

// Aldwin

I_C_T DALDWIN 1 C0AthanasiosAldwin
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~What's this now, eh? Forgotten th' common courtesy of sharin' the happiness of a warm hearth an' home, kinsman?~
== DALDWIN ~Don't expect any special treatment around here, 'kin'. You pay like anyone else, regardless of how tall you stand.~
END

// Amelia 

INTERJECT DAMELIA 4 C0AthanasiosAmelia
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Now there be some words. What's this'un done to give our kin such a bad name, now, eh?~
EXTERN DAMELIA 5

// Angaar

INTERJECT DANGAAR 23 C0AthanasiosAngaar23
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~I reckon ya need to see with clearer eyes before actin' to strike down a faithful o' Tempos. Think carefully afore yer next move, warrior.~
EXTERN DANGAAR 39

// Announcer

I_C_T DANNOUN 1 C0AthanasiosAnnouncer
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Ay, best take a seat an' draw a pint. This lot'll be boastin' of deeds till your ears be ringin'.~
END

// Belhifet

I_C_T DBELHIFE 11 C0AthanasiosBelhifet
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~May yer soul find peace, Warlyon. I'll send this fiend back to the pits afore I pour a pint in yer honor.~
END

// Challenge

I_C_T DCHALS 0 C0AthanasiosChallenge
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Well said. Bring it!~
== DCHALS ~Fight well.~
END

// Criek

INTERJECT DCRIECK 2 C0AthanasiosCriek
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bah! I've killed enough of ye Banites to be threatened by yer bluster. Let's get to breakin' their skulls, mate!~
EXTERN DCRIECK 4

// Durdel

I_C_T DVOICEDA 7 C0AthanasiosDurdel
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bah. If ye sought death so desperately, yer honor would've been better preserved by fightin' until yer final breath.~
END

// Everard

CHAIN IF WEIGHT #-1 ~GlobalGT("Know_Balance","GLOBAL",0) InParty("C0ATHAN") Global("C0AthanasiosEverardEnd","GLOBAL",0)~ THEN DEVERARD ATHANASIOS-EVERARD-END
~A—*cough*... Athanasios. You have returned... and you are still alive.~ [C0BLANK]
DO ~SetGlobal("C0AthanasiosEverardEnd","GLOBAL",1)~
== C0ATHANJ ~Everard, old chum... good to see ye haven't buggered off to Warrior's Rest like the rest of 'em just yet. We'll 'ave time to catch up and drink to our sorrows later, mate, so ye'd best say yer piece with <CHARNAME> first.~
END
IF ~GlobalGT("Know_Balance","GLOBAL",0)
Global("Know_Everard","GLOBAL",0)~ EXTERN DEVERARD 22
IF ~GlobalGT("Know_Balance","GLOBAL",0)
GlobalGT("Know_Everard","GLOBAL",0)~ EXTERN DEVERARD 23

CHAIN IF WEIGHT #-1 ~!GlobalGT("Know_Balance","GLOBAL",0) InParty("C0ATHAN")~ THEN DEVERARD ATHANASIOS-EVERARD
~Athanasios.~ [C0BLANK]
== C0ATHANJ ~Everard.~
END
IF ~!Global("C0AthanasiosEverard","GLOBAL",1)~ DO ~SetGlobal("C0AthanasiosEverard","GLOBAL",1)~ EXTERN DEVERARD ATHANASIOS-EVERARD-1
IF ~Global("C0AthanasiosEverard","GLOBAL",1)~ EXIT

CHAIN DEVERARD ATHANASIOS-EVERARD-1
~I trust you will finally be on your way, now that you've found those willing to tolerate your company.~
== C0ATHANJ ~What, no blessings from the Foehammer, brother? Not that I 'ave much need of 'em, when I know me own way to honor Tempus's will.~
== DEVERARD ~So you say. I've had a word with Accalia before you depart, just in case. She'll make sure you're sober enough to handle your weapon the right way while on the road... with force, as is likely needed.~
== C0ATHANJ ~Bah, piss on ye, ol' nag.~
== DEVERARD ~Hmph.~
EXIT

// Fengla

I_C_T2 DFENGLA 7 C0AthanasiosFengla
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Good girl. There'll be a reckonin' comin' for these wretches, I promise ya.~
END

// Grisella

INTERJECT DGRISELL 2 C0AthanasiosGrisella
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Well, pass the mugs already, Grisella! Yer drinks ain't the highest craft o' the Bryn Shander breweries, but I'm not one fer complainin' when I can get a pint.~
EXTERN DGRISELL 3

I_C_T DGRISELL 13 C0AthanasiosGrisella2
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~But please make sure to keep that halfling in check if you're buying him drinks. I don't want him vomiting over my carefully-scrubbed floors for the sixth time.~
END

// Harald

I_C_T DHARALD 6 C0AthanasiosHarald
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~All warriors have th' right to seek death in battle, mate. I ain't tellin' ye what to do, but perhaps this may be th' only dignity he can 'ave left.~
END

// Hjollder

I_C_T DHJOLLDE 17 C0AthanasiosHjollder
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Wylfdene. Now that be a name known well by all Tempusite. But even th' mightiest o' warriors don't just rise from the dead an' walk once more.~
END

INTERJECT DHJOLLDE 12 C0AthanasiosHjollder2
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bollocks. Jerrod be well an' buried beneath th' chapel in Easthaven. Ye claims his spirit wandered all th' way to haunt th' warriors o' the livin, assumin' ye speaks o' the same man?~
EXTERN DHJOLLDE 13

I_C_T DHJOLLDE 26 C0AthanasiosHjollder3
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Been some time since I've had th' pleasure to come to Lonelywood. Th' winds be warmer an' kinder on the body, so enjoy it while we be 'ere.~
END

// Icasaracht

I_C_T DICASA 17 C0AthanasiosIcasaracht
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Aye, 'tis better to die with honor an' a sword in hand than to live a lie.~
END

// Kontik

I_C_T DKONTIK 7 C0AthanasiosKontik
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bah, another blasted Aurilite. Let's just put this'un under the ice like the rest, mate. Probably would make 'er happier.~
END

// Malavon

I_C_T DMALAVON 1 C0AthanasiosMalavon
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bah, shut yer trap an' die already, wizard! We'll kill ye as many times as we need to!~
END

// Old Jed

I_C_T DOLDJED 0 C0AthanasiosOldJed0
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~This 'ere be Jed. Old Jed, the folk be callin' him, on account fer his son o' the same name. Can't swing a weapon for the life o' him, but he be devout in th' greatest cause of all.~
== DOLDJED ~...eh heh...~
END

I_C_T DOLDJED 10 C0AthanasiosOldJed2
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Gone clean as you said you would, eh? Good on ya, Jed. Me, I'm past helpin', heh.~
END

// Perdiem

I_C_T DPERDIEM 12 C0AthanasiosPerdiem
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Gah... such unholy powers be the act of cults an' devil-worship, mate. Seen it before more than once, though... ne'er of this sort o' threat.~
END

// Pomab

I_C_T DPOMAB 0 C0AthanasiosPomab0
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Still same courtesy as ever, Pomab. I wouldn't run my mouth so quickly with a stock o' brews tastin' so much like horse piss as yers.~
== DPOMAB ~Silence, you ridiculous war-loving halfpint! I believe I have made it clear you are not welcome in here!~
== C0ATHANJ ~Yeah, yeah, shove it up yer arse, long-legs. I come'n go as I please. I answer to th' Tempusian church, not yer pompous mug.~
== DPOMAB ~*mumble* When I hear word from my superior... *grumble* Bah, you there, barbarian! Be done with your business and then take that creature away quickly!~
END

I_C_T2 DPOMEND 11 C0AthanasiosPomabEnd
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Finally, I'll have a justified excuse to bash in yer smug skull, Pomab!~
END

I_C_T2 DPOMEND 12 C0AthanasiosPomabEnd
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Finally, I'll have a justified excuse to bash in yer smug skull, Pomab!~
END

// Quinn

CHAIN IF WEIGHT #-1 ~InParty("C0ATHAN") Global("C0AthanasiosQuinn","GLOBAL",0)~ THEN DQUINN ATHANASIOS-QUINN
~Athanasios Leadenfoot? What brings you all the way north, Stalwart of Tempus? I heard you'd been sent towards Easthaven to answer the call for aid.~ [C0BLANK]
DO ~SetGlobal("C0AthanasiosQuinn","GLOBAL",1)~
== C0ATHANJ ~So I was, Precept, but one thing led to another, an'... well, I could tell ye th' whole story, but it'd be better told o'er a few drinks. Suffice to say I be 'ere to help, since there be need.~
== DQUINN ~Well, naturally you are welcome here... under the condition that you stay away from our stock of holy wine. Your bad habits are quite infamous, but those caskets were a hard bargain, and there are those of us here that like to drink too.~
END
IF ~NumTimesTalkedTo(0)~ EXTERN DQUINN 0
IF ~!NumTimesTalkedTo(0)~ EXTERN DQUINN 8

I_C_T DQUINN 9 C0AthanasiosQuinn2
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Aye, we Targos folk be good at two things, fishin' and fightin'. Little talent fer buildin' and craftin'... ye should see th' sorry state o' our walls, mate. It'd make anybody cry.~
END

// Seer

I_C_T DSEER 51 C0AthanasiosSeer
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Facin' the death one forsees to seek victory. That be the most difficult battle of all... one that demands a warrior's courage.~
END

I_C_T DSEER 53 C0AthanasiosSeer
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Facin' the death one forsees to seek victory. That be the most difficult battle of all... one that demands a warrior's courage.~
END

// Wylfdene

INTERJECT DWYLF 15 C0AthanasiosWylfdene
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Ah, blast it all. The ol' debate on the value of a name o'er th' tenets an' deeds, blah blah blah. This'un and Everard would either get along or kill each other within' the hour.~
EXTERN DWYLF 16

I_C_T DWYLF 20 C0AthanasiosWylfdene2
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~Bah, so be it. We'll show ye who truly holds true to the ways of Tempus, Wyrm!~
END

// Young Ned

INTERJECT DYOUNGNE 3 C0AthanasiosYoungNed
== C0ATHANJ IF ~InMyArea("C0ATHAN") IsValidForPartyDialog("C0ATHAN")~ THEN ~He be as anyone's ever known 'im, lad. Sittin' in that hut drinkin' enough to make even *me* jealous.~
EXTERN DYOUNGNE 7

// AR1200 - AFTER FIRST FIGHT

CHAIN IF WEIGHT #-1 ~Global("C0AthanasiosTalkAR1200","GLOBAL",2)~ THEN C0ATHANJ ATHANASIOS-AR1200
~Good fight! Ah... finally, some company capable o' some proper battle fervor. The days were so borin' I'd nothing to do but drink.~ [C0BLANK]
DO ~SetGlobal("C0AthanasiosTalkAR1200","GLOBAL",3)~
= ~Yer a good sort, mate. More battles like that, an' I'll be stickin' around fer as long as ya like.~
END
++ ~You seem to enjoy fighting a great deal.~ + ATHANASIOS-AR1200-1
++ ~That's the spirit. Nothing beats a well-fought battle.~ + ATHANASIOS-AR1200-2
++ ~Alright, calm it down. I'm not as enthused as you are.~ + ATHANASIOS-AR1200-0

CHAIN C0ATHANJ ATHANASIOS-AR1200-0
~Hmph. Yer in the wrong line o' work if ya ain't thirstin' fer the thrill o' war, but I'll say no more. Battle will find ya, like it or not.~
EXIT

CHAIN C0ATHANJ ATHANASIOS-AR1200-1
~An' why should I not? The day ye take up a weapon, ye've already signed th' contract of blood an' warfare. May as well see th' glory in it.~
EXTERN C0ATHANJ ATHANASIOS-AR1200-2

CHAIN C0ATHANJ ATHANASIOS-AR1200-2
~I've always prided myself on havin' good eyes for strong warriors—or, one remainin' good eye as the case may be. Mayhap it be th' Foehammer's will that I join yer cause, mate. I ain't one for preachin' like the ol' sack o' gloom that is Everard, but I know a callin' when I see it.~
END
  ++ ~I'm glad to see we'll get along just fine.~ + ATHANASIOS-AR1200-3
  ++ ~I'll try not to disappoint you... or your god.~ + ATHANASIOS-AR1200-3
  ++ ~May Tempus bless us on our journeys.~ + ATHANASIOS-AR1200-3
  + ~Kit(LastTalkedToBy,OHTEMPUS) Gender(Player1,MALE)~ + ~We are brothers-in-arms in service of Tempus. It is only right that we fight together.~ + ATHANASIOS-AR1200-3
  + ~Kit(LastTalkedToBy,OHTEMPUS) !Gender(Player1,MALE)~ + ~We are fellows in service of Tempus. It is only right that we fight together.~ + ATHANASIOS-AR1200-3
  + ~Class(Player1,MAGE_ALL)~ + ~Most northern worshippers of Tempus don't show so much respect for a magic-user like myself.~ + ATHANASIOS-AR1200-MAGE
  + ~Class(Player1,THIEF_ALL)~ + ~I would have expected you to find my tactics dirty or dishonorable.~ + ATHANASIOS-AR1200-THIEF
  ++ ~Your job is to fight and keep us alive, priest. I don't need to hear any sermons from you.~ + ATHANASIOS-AR1200-4
  ++ ~Let's move on.~ + ATHANASIOS-AR1200-5
  
CHAIN C0ATHANJ ATHANASIOS-AR1200-3
~Aye, that be the spirit, mate.~
EXTERN C0ATHANJ ATHANASIOS-AR1200-5

CHAIN C0ATHANJ ATHANASIOS-AR1200-4
~An' I ain't the type for spouting 'em regardless, mate, ye can rest assured o' that. That'll suit us both well enough, eh?~
EXTERN C0ATHANJ ATHANASIOS-AR1200-5

CHAIN C0ATHANJ ATHANASIOS-AR1200-MAGE
~There be some in the clergy who consider magic a tool for cowards, mate, that I won't deny. But no such thoughts be part o' th' official decree, so I be obliged to think what I wish on that matter. I know as much o' magic as I do of th' workings of an airship, but th' way I see it, ye've put yerself through a trainin' as rigorous as that o' the sturdiest Stalwart, an' that makes ye fine in my books.~
= ~I don't think much o' those wizened ol' twigs who seal 'emselves in their towers o' stone an' shy away from conflict, but I've thought alongside th' mightiest battlemages in service o' the Ten Towns, an' I admire the courage to step outside th' study halls an' risk their lives in the fields o' battle.~
EXTERN C0ATHANJ ATHANASIOS-AR1200-5

CHAIN C0ATHANJ ATHANASIOS-AR1200-THIEF
~Mate, ye see these hairy feet an' me pot-belly? I be a halfling, born and raised. Reckon I know th' minds of 'dirty an' dishonorable' more than ye think. Mayhap there be somethin' in yer past I'd rather not know, an' I can assure ye I don't care to.~
= ~Far as I see it, ye've come to this wasteland seekin' glory, an' ye do not fear to face battle for it. Long as ye can fight, drink, an' keep yer fingers a good ways from my pocket change, that be all that matters.~
EXTERN C0ATHANJ ATHANASIOS-AR1200-5

CHAIN C0ATHANJ ATHANASIOS-AR1200-5
~A toast to ye, mate, to honor our newly-forged companionship. An' may our foreseen battles be righteous, an' glorious, an' all that.~
EXIT

// AR2000 - AFTER AVALANCHE 

CHAIN IF WEIGHT #-1 ~Global("C0AthanasiosTalkAR2000","AR2000",2)~ THEN C0ATHANJ ATHANASIOS-AR2000
~We honor th'dead that fell before us. We remember their battles an' praise their victories. The spirit o' battle remained with 'em unto their final breaths. May the Battle Lord bear witness. Rest well, aye... rest, warriors.~ [C0BLANK]
DO ~IncrementGlobal("C0AthanasiosTalkAR2000","AR2000",1)~
= ~Them's were my people who just got sent to a cold grave, my friend. Spare me a moment t'mourn their battle-worn souls, eh? It won't be long.~
END
+ ~Kit(LastTalkedToBy,OHTEMPUS)~ + ~May they fight eternally at Tempus's side.~ + ATHANASIOS-AR2000-TEMPUS
++ ~Will you be alright?~ + ATHANASIOS-AR2000-1
++ ~Of course.~ + ATHANASIOS-AR2000-2
++ ~Just get on with it.~ + ATHANASIOS-AR2000-3

CHAIN C0ATHANJ ATHANASIOS-AR2000-TEMPUS
~Aye, may they find that eternal paradise, <PRO_BROTHERSISTER>.~
EXTERN C0ATHANJ ATHANASIOS-AR2000-2

CHAIN C0ATHANJ ATHANASIOS-AR2000-1
~This ain't the first time I lost comrades. I mourn not their deaths, but th' unjust way it happened.~
EXTERN C0ATHANJ ATHANASIOS-AR2000-2

CHAIN C0ATHANJ ATHANASIOS-AR2000-2
~If fate willed 'em to fall in battle, I'd honor their passin' with a feast an' wine. But to die without a chance o' fightin' back, that's the worst shame a Tempusian can suffer.~
EXTERN C0ATHANJ ATHANASIOS-AR2000-3

CHAIN C0ATHANJ ATHANASIOS-AR2000-3
~This brew's poured for 'em. I hope yer souls drink hearty... an' rest assured, I'll make sure yer honors go avenged.~
= ~Onward, mate. We'll make our way to Kuldahar, then we'll find them bastards who caused this and make 'em pay.~
EXIT

// AR1100

CHAIN IF WEIGHT #-1 ~Global("C0AthanasiosTalkAR1100","AR1100",2)~ THEN C0ATHANJ ATHANASIOS-AR1100
~Well... it's a bad look, mate.~ [C0BLANK]
DO ~IncrementGlobal("C0AthanasiosTalkAR2000","AR2000",1)~
= ~Never thought I'd say it, but I liked this place better the way it was before... tall roof an' all.~
END
++ ~You don't look too happy.~ + ATHANASIOS-AR1100-1
++ ~We're here to put things right.~ + ATHANASIOS-AR1100-1
++ ~Never mind the temple. Let's look for survivors.~ + ATHANASIOS-AR1100-2

CHAIN C0ATHANJ ATHANASIOS-AR1100-1
~It's easy to forget, mate, but when I left me comrades an' kin in Targos to come here, I was lookin' for more than just a good fight. I came 'ere to stop things like this from happenin'.~
= ~Battles and war be all well an' good, but only monsters seek destruction and killin' fer the sake of it. And even though Everard an' I rarely saw eye to eye fer the short time I knew him, we both agreed that a true warrior fights to stop those lookin' to bully and terrorize the weak.~
= ~Poquelin, or whate'er his name truly be, the bastard... I'll see 'im pay fer this. If he be sittin' up high in what's left o' me god's temple like a coward while 'is minions do the dirty work, we'll take the fight to 'im and send him screamin' back to the Hells.~
= ~Let's go, mate. We'll find a way in, an' then there'll be a divine reckonin' for all these fiends.~
EXIT

CHAIN C0ATHANJ ATHANASIOS-AR1100-2
~Aye... aye. And then, we'll find a way in there an' send the fiend back to the pits, mate. Let's get goin'.~
EXIT

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN C0ATHANJ pid
~You called, mate?~ [C0ATH023]
END
 ++ ~May I ask you some questions?~ + pid-questions
 ++ ~I need nothing at the moment.~ EXIT
 
CHAIN C0GULDJ pid-questions
~Yeah, why not. I'll lend ye an ear, mate.~
END
 + ~Global("C0AthanPIDOrigins","GLOBAL",0)~ + ~Tell me about your history.~ DO ~SetGlobal("C0AthanPIDOrigins","GLOBAL",1)~ + pid-origins
 + ~Global("C0AthanPIDStout","GLOBAL",0)~ + ~You're one of the stout folk, aren't you?~ DO ~SetGlobal("C0AthanPIDStout","GLOBAL",1)~ + pid-stout
 + ~Global("C0NirikPIDEye","GLOBAL",0)~ + ~Can I ask you about your eye?~ DO ~SetGlobal("C0NirikPIDEye","GLOBAL",1)~ + pid-eye
 ++ ~Never mind. I don't have anything to ask right now.~ EXIT

CHAIN C0ATHANJ pid-origins
~Me origins, mate? There'd be a lot fer me to tell, aye, but I think ye'd be mighty bored o' most of it. I'll tell ye the simple things about me, if it matters.~
= ~I be born in Targos, 'ere in the Ten Towns. Me father be a shipbuilder, an' I have three brothers and two sisters. I didn't much like bein' overshadowed by me kin in th' family business, so I went an' joined our local church o' Tempus 'round the age of fifteen. Me ma wasn't too pleased 'bout it, given how she thinks the faith be all fightin' and killin', but she came around in the end after I played me part in defendin' the town durin' the raids from th' Reghed tribes o' the tundra.~
= ~There be quite a few war stories I'd be happy to tell ye if we had th' time to spare, mate, but I think th' details would make yer belly churn if ye ain't the hardened type. Suffice to say I like th' fightin an' celebratory drinkin' o'er preachin' like sods such as Everard, so ye best not be expectin' too many words o' wisdom on my part.~
= ~Not to say I don't 'ave me share o' thoughts in me noggin, mind ye. I like the fightin' most when it be in the name o' somethin' I want to protect, and if the Ten Towns be threatened, then I'll do my part in makin' sure the North stands strong as it always has. But there be nothin' wrong with enjoyin' the fight while I'm at it.~
EXIT

CHAIN C0ATHANJ pid-stout
~Aye, that I am, mate. Ye don't see so many of us outside o' our home kingdom of Luiren compared to th' hairfeet, but when our folk find a place to call home, we like to stay an' bury our roots deep. My kin 'ave called the North home for generations, an' I be as much a northman as any o' the tall, bearded lot.~
= ~'Course, there be more than enough tall-folk in these parts that know little o' the difference between halflings, so I've 'ad to set things straight with some more than once... sometimes with me fists. But most of 'em have tough hides, and I respect 'em for that.~
EXIT

CHAIN C0ATHANJ pid-eye
~Th' lost one, ye mean? Ah, that be a dark tale, mate. Think ye'd be better off not knowin' the details, but I'll just say that not every war be as glorious as we Tempusite make it out to be.~
= ~Sometimes, ye trust in the wrong folk to share the same values as ye... and they repay ye with a knife in th' back. Or th' eye-socket, as it may be. I can live with th' loss o' sight, but the lesson be a heavier burden to bear.~
EXIT