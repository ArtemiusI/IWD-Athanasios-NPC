BEGIN C0ATHAN

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0ATHAN a1
~Welcome to th' halls o' glory. If it's th' blessed wine ya seek, I'm 'fraid there ain't much to spare. There be prayer in endless supply, if that'll suit ya. Ha!~ [C0BLANK]
= ~Everard be the one ya want if ya wish to be lectured on the philosophy o' warfare an' mighty warriors, or if there's broken bones that need mendin'. Me, I'm just makin' my daily communion with th' Lord o' Battles afore I go an' gorge myself on th' fine liquors o' the local establishment.~ [C0ATH102]
= ~That be said, if all ya want is small talk, I've nothin' but time to kill. Athanasios Leadenfoot, stalwart o' Tempus. At yer service.~ [C0ATH103]
END
+ ~Kit(LastTalkedToBy,OHTEMPUS)~ + ~If you are paying your respects to Tempus, you should do so with the appropriate reverence.~ + a1.tempus
++ ~You already seem to have had plenty to drink.~ + a1.1
++ ~Are you a local, Athanasios?~ + a1.2
++ ~I must take my leave. Excuse me.~ + a1.0

CHAIN C0ATHAN a1.0
~Aye, aye, may Tempus bring ya victory, an' all that. If ya stop by later, perhaps we'll talk again, eh?~
EXIT

CHAIN C0ATHAN a1.tempus
~Ya sound like Everard, <BROTHERSISTER>. The Foehammer sees little fault in me, I assure ya. I say my prayers an' polish my weapon as respectfully as anyone o' the faith, though such things be of little use in a place as peaceful as this.~
EXTERN C0ATHAN a1.3

CHAIN C0ATHAN a1.1
~'Tis true, tis true. Ha! A favorite pasttime of mine, it be. There be nothin' like a good, hard drink t' soothe the throat after the strain o' prayer. Little else t' do in such a quiet place.~
EXTERN C0ATHAN a1.3

CHAIN C0ATHAN a1.2
~Me? Nay, I be of Targos, second-to-greatest o' th' Ten Towns. Fine place, an' many a battle t' be fought, unlike 'ere. Between you an' me, our prayers to th' Foehammer be wasted when there be no battle to fight.~
EXTERN C0ATHAN a1.3

CHAIN C0ATHAN a1.3
~Nothin' wrong with Easthaven, mind ya. Good, quiet fishin' town. But I be a man o' the battlefield, an' there ain't one t' be found 'ere. There be rumors o' dark clouds in the distance, comin' this way... but fer now, I see little t' do but drink.~
END
++ ~Perhaps you would be willing to join me, then? A good adventure may be exactly what you are looking for.~ + a1.4
++ ~I could use the services of a cleric. If you come with me, I'll find you a good battle.~ + a1.4
++ ~May you find the battles you seek. Farewell.~ + a1.0

CHAIN C0ATHAN a1.4
~That so? Aye... I'm not one t' turn down such an offer. If there is battle t' be had, the mead o' victory will be sweeter shared wi' others. I like th' look o' ya, friend! Ya have my steel.~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0ATHAN a2
~Well met! Are ya 'ere for the sullen one, or th' drunken one, eh?~
END
++ ~I was wondering if you'd be willing to join me.~ + a1.4
++ ~Farewell.~ EXIT

BEGIN C0ATHANP

CHAIN IF WEIGHT #-1 ~HappinessLT(Myself,-299)~ THEN C0ATHANP ATHANASIOS-LEAVES-LOWREP
~Ay, the drink ain't worth th' pains o' sufferin' yer blighted company, ya goon. I'm out.~ [C0ATH104]
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0ATHANP ATHANASIOS-KICKEDOUT
~Eh, I'm not one for walkin' away when there's more fightin' to be done together, but if ya want me gone, I'm gone.~ [C0ATH105]
END
++ ~Actually, stay in the group for now.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR2111")~ + ~Just wait here for now, Athanasios.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR2111")~ + ~Just wait here for now, Athanasios.~ DO ~MoveToPoint([355.218]) SmallWait(1) Face(N) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~OR(16)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2103")
AreaCheck("AR2104")
AreaCheck("AR2105")
AreaCheck("AR2106")
AreaCheck("AR2107")
AreaCheck("AR2108")
AreaCheck("AR2109")
AreaCheck("AR2110")
AreaCheck("AR2112")
AreaCheck("AR2113")
AreaCheck("AR2114")
AreaCheck("AR2115")
AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Stay here in Kuldahar for now.~ + ATHANASIOS-KICKEDOUT-1
+ ~!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2103")
!AreaCheck("AR2104")
!AreaCheck("AR2105")
!AreaCheck("AR2106")
!AreaCheck("AR2107")
!AreaCheck("AR2108")
!AreaCheck("AR2109")
!AreaCheck("AR2110")
!AreaCheck("AR2111")
!AreaCheck("AR2112")
!AreaCheck("AR2113")
!AreaCheck("AR2114")
!AreaCheck("AR2115")
!AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Kuldahar for now.~ + ATHANASIOS-KICKEDOUT-1

CHAIN C0ATHANP ATHANASIOS-KICKEDOUT-1
~Aye, aye. When yer in need o' some good ol' battle fury again, you'll find me at the tavern.~ [C0ATH106]
DO ~EscapeAreaMove("AR2111",355,218,N) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0ATHANP ATHANASIOS-REJOIN
~Good t'see ya! There be many a battle t' be fought, and drinks t' be shared after. What say ya?~ [C0ATH107]
END
++ ~I like the sound of that. Join me.~ + ATHANASIOS-REJOIN-1
++ ~Not right now.~ EXIT

CHAIN C0ATHANP ATHANASIOS-REJOIN-1
~Good show! There's heads that still need bashin', if yer willin' to bring 'em low enough fer me.~
DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT