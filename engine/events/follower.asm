SECTION "Follower Script", ROMX

FollowerScript::
	faceplayer
	cry PIKACHU
    opentext
    special GetFirstPokemonHappiness
    writetext .PikachuFollower
    promptbutton
	ifgreater $f9, .LovesYouALot
	ifgreater $c7, .ReallyTrustsYou
	ifgreater $95, .KindaHappyWithYou
	ifgreater $63, .CuriousAboutYou
	ifgreater $31, .NotUsedToYou
	;applymovement FOLLOWER, .followerturnback
    jumpthisopenedtext


.PikachuFollower:
    text "You look at your"
    line "partner Pikachu."
    done

.LovesYouALot:
    jumpthisopenedtext

    text "Love."
    done

.ReallyTrustsYou:
    jumpthisopenedtext

    text "Trust."
    done

.KindaHappyWithYou:
    jumpthisopenedtext

    text "Like."
    done

.CuriousAboutYou:
    jumpthisopenedtext

    text "Curious."
    done

.NotUsedToYou:
    jumpthisopenedtext

    text "New."
    done
