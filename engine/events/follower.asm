SECTION "Follower Script", ROMX

FollowerScript::
	faceplayer
	cry PIKACHU
    opentext
    special GetFirstPokemonHappiness
    writetext PikachuFollower
    promptbutton
	ifgreater $f9, .LovesYouALot
	ifgreater $c7, .ReallyTrustsYou
	ifgreater $95, .KindaHappyWithYou
	ifgreater $63, .CuriousAboutYou
	ifgreater $31, .NotUsedToYou
	;applymovement FOLLOWER, .followerturnback
    jumpthisopenedtext

	text "Pikachu refuses to"
    line "even look at you."
	done

.followerturnback
   turn_head_down
   step_end


PikachuFollower:
text "You look at your"
line "partner Pikachu."
done

.LovesYouALot
done
.ReallyTrustsYou
done
.KindaHappyWithYou
done
.CuriousAboutYou
done
.NotUsedToYou
done
