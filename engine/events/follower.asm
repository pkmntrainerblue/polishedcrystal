SECTION "Follower Script", ROMX

FollowerScript::
	faceplayer
	cry PIKACHU
    special GetFirstPokemonHappiness
	ifgreater $f9, .AdoresYou
	ifgreater $c7, .ReallyTrustsYou
	ifgreater $95, .HappyWithYou
	ifgreater $63, .CuriousAboutYou
	ifgreater $31, .NotUsedToYou

.AdoresYou:
    opentext
    writetext .AdoresYouText
    waitbutton
    closetext
    end

.AdoresYouText:
    text "Pikachu absolutely"
    line "adores you!"
    done
    
.ReallyTrustsYou:
    opentext
    writetext .ReallyTrustsYouText
    waitbutton
    closetext
    end

.ReallyTrustsYouText:
    text "Pikachu trusts you"
    line "completely."
    done

.HappyWithYou:
    opentext
    writetext .HappyWithYouText
    waitbutton
    closetext
    end

.HappyWithYouText:
    text "Pikachu is content"
    line "spending time with"
    cont "you."
    done

.CuriousAboutYou:
    opentext
    writetext .CuriousAboutYouText
    waitbutton
    closetext
    end

.CuriousAboutYouText:
    text "Pikachu appears to"
    line "be watching you"
    cont "closely."

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
