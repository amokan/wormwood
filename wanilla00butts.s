@SHLISP "WANILLA" ASSEMBLAGE 
@COPYLEFT SHBOBO PLZ MUTATE

ORIGINATE

.macro SQUISHRAMP
 RAMP
 itt eq
 .ifeq ARAB
 ssateq lispRET, 0x10, lispACC
 .else
 usateq lispRET, 0x10, lispACC @, lsl 1
 .endif
 POPEQE
 SEXY
 mul lispACC, lispACC, lispRET
 .ifeq ARAB
 asr lispACC, lispACC, 0xF
 .else 
 asr lispACC, lispACC, 0x10
 .endif
 POPSEX
 add lispACC, lispACC, lispRET
 SEXTNINER
.endm

.equ ADC2_DR ,0x4001284C
.equ ADC1_DR ,0x4001244C

.macro QUONKMIKEPUSSY 
 tst lispMEX, #2
 beq 1f
 and lispMEX, lispMEX, #1
 SYNTHLOADER workONE, chinkwonks
 ldrsh lispACC, [workONE, lispMEX, LSL 1]
 SQUISHRAMP
1:
 tst lispMEX, 1
 itt eq
 moveq lispRET, 0
 POPEQE
 SYNTHLOAD lispWOR, ADC2_DR
 ldrh lispWOR, [lispWOR]
 SYNTHLOAD workONE, ADC1_DR
 ldrh workONE, [workONE]
 sub lispACC, lispWOR, workONE
 @ssat lispWOR, 3, lispACC
 @sub lispACC, lispACC, lispWOR
 lsl lispACC, 4
 LISPMULADD
.endm
INSTORG QUONKMIKEPUSSY, 0

.macro BARRES
 and lispMEX, lispMEX, #3
 SYNTHLOADER workONE, barres
 ldrsh lispACC, [workONE, lispMEX, LSL #1]
 SQUISHRAMP
.endm
INSTORG BARRES, 4

.macro HIGHSTATE
 ite ne
 .ifeq ARAB 
 movne lispACC, 0x8000 
 .else
 movne lispACC, 0x10000 
 .endif
.endm

 .equ GPIOA_IDR,   0x40010808
 .equ GPIOC_IDR,   0x40011008

.macro MINORBUTTE
 and lispMEX, lispMEX, #3
 SYNTHLOAD workONE, GPIOA_IDR
 ldrh workONE, [workONE]
 @lsr workONE, #0x6
 mov lispACC, 0x40
 lsl lispACC, lispMEX
 tst workONE, lispACC
 HIGHSTATE
 moveq lispACC, 0
 LISPMULADD
.endm
INSTORG MINORBUTTE, 8


.macro MAJORBUTTE
 and lispMEX, lispMEX, #3
 SYNTHLOAD workONE, GPIOC_IDR
 ldrh workONE, [workONE]
 @lsr workONE, #0x4
 mov lispACC, 0x10
 lsl lispACC, lispMEX
 tst workONE, lispACC
 HIGHSTATE
 moveq lispACC, 0
 LISPMULADD
.endm
INSTORG MAJORBUTTE, 0xC

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@The following comment is for gnu-arm-as assembler
@thus, quoted with the at symbol.  Thanks to XXXXX      
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
@   @@@@@@@               (((( ))))    at pubes   @                           
@     @@@===================== ))))    0==()      @
@      ======================== ) )   zero balls  @
@       ======================== ))) logicle test @
@    0     0              ==== ))) )  equate cock @
@   0    0  0            ( (    )  )              @
@   0  000   0            ( (  )  ) lisping moon  @
@    000 0000               (  )    parenth pussy @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@depth of parentheses, and the use of the number 
@zero to denote the empty list NIL and the truth 
@value false. Besides encouraging pornographic 
@programming, giving a special interpretation to 
@the address 0 has caused difficulties in all 
@subsequent implementations. {because 0==() has 
@been the emoticon for pornography since 1958.}
@--In the History of Lisp, John McCarthy
@Explained by Trystan Spangler on stackoverflow.com

