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
    applymovement FOLLOWER, .jumping
    showemote EMOTE_HEART, FOLLOWER, 30
    opentext
    writetext .AdoresYouText
    waitbutton
    closetext
    end

.jumping:
    jump_in_place
    jump_in_place
    jump_in_place
    step_end

.AdoresYouText:
    text "Pikachu absolutely"
    line "adores you!"
    done
    
.ReallyTrustsYou:
    applymovement FOLLOWER, .rotate
    showemote EMOTE_HAPPY, FOLLOWER, 30
    opentext
    writetext .ReallyTrustsYouText
    waitbutton
    closetext
    end

.rotate:
    turn_head_down
    turn_head_right
    turn_head_up
    turn_head_left
    step_end

.ReallyTrustsYouText:
    text "Pikachu trusts you"
    line "completely."
    done

.HappyWithYou:
    showemote EMOTE_HAPPY, FOLLOWER, 30
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
