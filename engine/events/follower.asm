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

.LovesYouALot:
    text "Love"
    done

.ReallyTrustsYou:
    text "Trust"
    done

.KindaHappyWithYou:
    text "Like"
    done

.CuriousAboutYou:
    text "Curious"
    done

.NotUsedToYou:
    applymovement FOLLOWER, .turnback
    opentext
    writetext .NotUsedToYouText
    waitbutton
    closetext
    end

.NotUsedToYouText:
    text "Pikachu seems"
    line "wary of you."
    done

.turnback:
    turn_head_down
    step_end
