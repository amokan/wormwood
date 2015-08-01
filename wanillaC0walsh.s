@SHLISP "WANILLA" ASSEMBLAGE 
@COPYLEFT SHBOBO PLZ MUTATE

ORIGINATE

.req walshACC workONE
.req walshHARM workTWO
.req walshGRAY workTRI
.req walshFORM workFOR
.req walshWATE workFIV


.macro WALSHGRAYSON plaz
	ands lispWOR, walshGRAY, (1<<\plaz)
	ittt ne
	andsne lispWOR, walshACC, lispWOR	
	eorne walshFORM, walshFORM, lispWOR, lsr \plaz
	eorne walshFORM, walshFORM, 1 @invert
.endm

.macro WALSH   @wheelup inn
	VAKLORD walshVALRE
	POPSEX
	
	@listen to "DJ Mike Walsh: Spectrum 1"
	@read larry@wiseguysynths:Walsh Functions
	@wiki article on "gray code"
	ldr lispWOR, =walshACC
	LOADERH walshACC, lispWOR
	sub walshACC, workONE, 1
	strh walshACC, [lispWOR, lispMEX, lsl 1]
	ldrh walshACC, [lispWOR, lispMEX, lsl 1]
	rbit walshACC, walshACC
	lsr walshACC, walshACC, 12
	mov lispACC, 0
	mov walshHARM, 0xF
	mov walshWATE, 0
	@make code d' gray starting with highest harmonic
1:
	mov walshGRAY, walshHARM, lsr 1 @harmonic / 2
	eor walshGRAY, walshGRAY, walshHARM @eor w harm
	mov walshFORM, 1
	WALSHGRAYSON 0 @for each bit in gray code,
	WALSHGRAYSON 1 @neor by square wave
	WALSHGRAYSON 2
	WALSHGRAYSON 3
	lsl walshFORM, walshFORM, walshWATE
	add lispACC, lispACC, walshFORM
	add walshWATE, walshWATE, 1
	subs walshHARM, walshHARM, 1
	bne 1b
	LISPMULADD
.endm
