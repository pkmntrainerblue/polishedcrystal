ShamoutiHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SHAMOUTI_ISLAND, 5
	warp_event  3,  7, SHAMOUTI_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ShamoutiUncleScript, EVENT_LEFT_SHAMOUTI


ShamoutiUncleScript:
    faceplayer
    opentext
    checkflag EVENT_UNCLE_INTRO
    iftruefwd .heardintro
    writetext .IntroText
	waitbutton
	setevent EVENT_UNCLE_INTRO
.heardintro
    writetext .LeaveShamoutiText
    yesorno
    iffalse_jumpopenedtext .NoText
    writetext .YesText
	setevent EVENT_LEFT_SHAMOUTI
    waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp PLAYERS_HOUSE_2F, 3, 3
	end

.IntroText
done


.LeaveShamoutiText
done


.YesText
done


.NoText
done
