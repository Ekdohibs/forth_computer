: 2CONSTANT SWAP HEADER HERE LATEST ! 77 C, , 33 C, 77 C, , 33
C, 41 C, ; : 2LITERAL SWAP ['] (lit) , , ['] (lit) , , ;
IMMEDIATE : 2VARIABLE CREATE 4 ALLOT ; : DNEGATE OVER NEGATE
ROT IF SWAP INVERT ELSE SWAP NEGATE THEN ; : D- DNEGATE D+ ;
: D. DUP >R DABS <# BL HOLD #S R> SIGN #> TYPE ; : D.R >R DUP
>R DABS <# BL HOLD #S R> SIGN #> R> OVER - SPACES TYPE ; : D0<
0< NIP ; : D2* 2* OVER 0< 1 AND OR SWAP 2* SWAP ; : D2/ SWAP
2/ OVER 1 AND IF 32768 OR THEN SWAP 2/ ; : D= ROT = -ROT = AND
; : D< D- D0< ; : D> 2SWAP D< ; : D>S DROP ; : M+ S>D D+ ;
: DMIN 2OVER 2OVER D> IF 2SWAP THEN 2DROP ; : DMAX 2OVER 2OVER
D< IF 2SWAP THEN 2DROP ; : UDM* TUCK UM* >R >R UM* R> M+ R> +
; : UD* 2DUP 2>R 2SWAP >R UDM* R> 2R> ROT UDM* DROP D+ ; : D*
UD* ; : DM* TUCK M* 2>R 2DUP 0< UM* 2>R UM* 2R@ ROT M+ 2R>
DROP + 2R> D+ ; :NONAME 0 0 2SWAP OVER C@ 45 = IF SWAP 1+ SWAP
1- >NUMBER OVER C@ 46 = OVER 1 = AND IF DROP 1+ >R DNEGATE
2 R> 0 ELSE 2SWAP DROP NEGATE 1 2SWAP THEN ELSE >NUMBER OVER
C@ 46 = OVER 1 = AND IF DROP 1+ 2 SWAP 0 ELSE ROT DROP 1 -ROT
THEN THEN ; 'NUMBER ! : DM/MOD DUP >R FM/MOD R> SWAP >R FM/MOD
R> ; : M*/ >R DM* R> DM/MOD ROT DROP ; BASE @ HEX
:CODE MLSHIFT 32 C, 30 C, 3E C, 20 C, 22 C, CODE; BASE !
: MRSHIFT DUP 16 < IF 16 SWAP - MLSHIFT ELSE 16 - RSHIFT 0
THEN ; : DLSHIFT TUCK LSHIFT >R MLSHIFT R> OR ; : DRSHIFT TUCK
MRSHIFT >R >R RSHIFT R> OR R> ;
