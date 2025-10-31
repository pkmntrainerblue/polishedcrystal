SECTION "Follower Script", ROMX

FollowerScript::
	faceplayer
	cry PIKACHU
    special GetFirstPokemonHappiness
	ifgreater $f9, .LovesYouALot
	ifgreater $c7, .ReallyTrustsYou
	ifgreater $95, .KindaHappyWithYou
	ifgreater $63, .CuriousAboutYou
	ifgreater $31, .NotUsedToYou
	applymovement FOLLOWER, .followerturnback
	opentext
    writetext .Angry
    waitbutton
	closetext
	end

.Angry
	text "Pikachu refuses to"
    line "even look at you."
	done
.followerturnback
   turn_head_down
   step end



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
