 ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_FREEZE_DRY
	jr nz, .normal_matchup
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonType1]
	jr z, .check_type1
	ld a, [wBattleMonType1]
.check_type1
	cp WATER
	jr z, .super_effective
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonType2]
	jr z, .check_type2
	ld a, [wBattleMonType2]
.check_type2
	cp WATER
	jr z, .super_effective
	jr .normal_matchup
.super_effective
	ld a, SUPER_EFFECTIVE
	ld [wTypeMatchup], a
	ret
.normal_matchup
	; freeze dry over
