BattleCommand_FreezeDry:
	call BattleCheckTypeMatchup
	ld a, [wTypeMatchup]
	ld b, a
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonType1]
	jr z, .check_type1
	ld a, [wBattleMonType1]
.check_type1
	cp WATER
	jr z, .make_super_effective
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonType2]
	jr z, .check_type2
	ld a, [wBattleMonType2]
.check_type2
	cp WATER
	jr z, .make_super_effective
	jr .check_freeze
.make_super_effective
	ld a, SUPER_EFFECTIVE
	ld [wTypeMatchup], a
.check_freeze
	ld a, 100
	call BattleRandomRange
	cp 10
	ret nc
	call CheckFreezeTarget
	ret nz
	call BeginMoveEffect
	call BattleCommand_freezetarget
	ld hl, WasFrozenText
	call StdBattleTextbox
	call EndMoveEffect
	ret
