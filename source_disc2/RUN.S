 LST OFF
*
 ORG $7700
 OBJ $8380
*
* CONSTANTS
*
LIBOBJ EQU 3
*
T EQU $07
XT EQU T+1
YT EQU XT+1
T2 EQU YT+1
*
B1 EQU $10
B2 EQU B1+2
B3 EQU B2+2
*
THETA EQU B2+2
BCODE EQU THETA+1
KICK EQU BCODE+1
*
FLIPR EQU KICK+1
FRAME EQU FLIPR+1
LEFTX EQU FRAME+1
FDIR EQU LEFTX+1
FX1 EQU FDIR+1
FX2 EQU FX1+1
FWIDTH EQU FX2+1
*
OBJ EQU $91
NOBJ EQU OBJ+2
OBJCOUNT EQU NOBJ+1
OBJID EQU OBJCOUNT+5
LB EQU OBJID+3
MIDTOP EQU LB+7
*
RUNLEN EQU $C0
PDL0 EQU RUNLEN+1
PDL1 EQU PDL0+1
BTN0 EQU PDL1+1
BTN1 EQU BTN0+1
PTM1 EQU BTN1+1
PTM2 EQU PTM1+1
KBD EQU PTM2+1
*
SERIES EQU KBD+1
SLICE EQU SERIES+1
ST EQU SLICE+1
DSCORE EQU ST+1
DBONUS EQU DSCORE+1
BMULT EQU DBONUS+1
INITMODE EQU BMULT+1
SCB EQU INITMODE+1
*
BST EQU SCB+2
X1 EQU BST+1
Y1 EQU X1+1
X2 EQU Y1+1
Y2 EQU X2+1
BDX EQU Y2+1
BDY EQU BDX+1
BXACC EQU BDY+1
BYACC EQU BXACC+1
BMOVE EQU BYACC+1
MIDX EQU BMOVE+1
*
HCNT EQU MIDX+1
HT EQU HCNT+1
HVAL EQU HT+1
P1 EQU HVAL+1
P2 EQU P1+1
RTT EQU P2+1
LFT EQU RTT+1
HTCNT EQU LFT+1
LASTY EQU HTCNT+1
*
STGL EQU $3E
*
PBTBLO EQU $400
PBTBHI EQU $4C0
VLO EQU $580
VHI EQU $600
RCN EQU $680
TIME EQU $700
*
LOGIC EQU $4000
WSET EQU $4018
PBDATA EQU $401C
PBDX EQU $6F40
*
DIV7 EQU $1400
MOD7 EQU DIV7+$100
SETMODE EQU MOD7+$2CF
XOFFDRAW EQU SETMODE+$62
CHARTO EQU XOFFDRAW+$435
PRCHAR EQU CHARTO+$A
PRINT EQU PRCHAR+$38
CHAR EQU PRINT+$19
*
GETOBJ EQU $8E5E
GETNOBJ EQU GETOBJ+$C
MAKEHOLE EQU GETNOBJ+$526
*
BITMAPS EQU $7000
LAUNCHERB EQU BITMAPS
LFLIPB EQU LAUNCHERB+$48
RFLIPB EQU LFLIPB+$CF
BMP1B EQU RFLIPB+$CF
BMP2B EQU BMP1B+$54
BMP3B EQU BMP2B+$2C
BMP4B EQU BMP3B+$20
BMP5B EQU BMP4B+$2A
BMP6B EQU BMP5B+$34
LKICKB EQU BMP6B+$34
RKICKB EQU LKICKB+$A2
KNOCK1B EQU RKICKB+$A2
KNOCK2B EQU KNOCK1B+$30
ROLLB EQU KNOCK2B+$36
LFLIP2B EQU ROLLB+$5A
RFLIP2B EQU LFLIP2B+$5C
LANEB EQU RFLIP2B+$5C
DROP1B EQU LANEB+$3B
DROP2B EQU DROP1B+$23
CATCH1B EQU DROP2B+$20
CATCH2B EQU CATCH1B+$26
SPINB EQU CATCH2B+$5A
MAGB EQU SPINB+$F
BALLB EQU MAGB+$E
*
C05625 HEX 0004080C1014181C
 HEX 2024282C3034383C
 HEX 4044484C5054585C
 HEX 6064676B6F73777B
 HEX 7F83878B8F93979B
 HEX 9FA3A7ABAFB3B7BB
 HEX BFC3C7CBCFD3D7DB
 HEX DFE3E7EBEFF3F7FB
*
C1125 HEX 0004080C1014181B
 HEX 1F23272B2F33373B
 HEX 3F43474B4E52565A
 HEX 5E62666A6E72767A
 HEX 7E8185898D919599
 HEX 9DA1A5A9ADB1B4B8
 HEX BCC0C4C8CCD0D4D8
 HEX DCE0E4E7EBEFF3F7
*
C225 HEX 0004070B0F12161A
 HEX 1E2125292C303437
 HEX 3B3F43464A4E5155
 HEX 595C6064676B6F73
 HEX 767A7E8185898C90
 HEX 94989B9FA3A6AAAE
 HEX B1B5B9BCC0C4C8CB
 HEX CFD3D6DADEE1E5E9
*
C45 HEX 000306080B0E1114
 HEX 17191C1F2225282A
 HEX 2D303336393B3E41
 HEX 44474A4C4F525558
 HEX 5B5D606366696B6E
 HEX 7174777A7C7F8285
 HEX 888B8D909396999C
 HEX 9EA1A4A7AAADAFB2
*
C675 HEX 000203050608090B
 HEX 0C0E0F1112141517
 HEX 181A1C1D1F202223
 HEX 252628292B2C2E2F
 HEX 3133343637393A3C
 HEX 3D3F404243454648
 HEX 494B4D4E50515354
 HEX 5657595A5C5D5F60
*
C7875 HEX 0001020203040505
 HEX 06070809090A0B0C
 HEX 0C0D0E0F10101112
 HEX 1314141516171718
 HEX 191A1B1B1C1D1E1E
 HEX 1F20212222232425
 HEX 2526272829292A2B
 HEX 2C2C2D2E2F303031
*
C84375 HEX 0000010102020203
 HEX 0304040405050506
 HEX 0607070708080909
 HEX 090A0A0B0B0B0C0C
 HEX 0D0D0D0E0E0F0F0F
 HEX 1010101111121212
 HEX 1313141414151516
 HEX 1616171718181819
*
LAUNCHRUN BIT BTN0
 BMI LNCHRUN4
*
 LDA PDL1
 LSR
 LSR
 LSR
 LSR
 LSR
 LDY #8
 CMP (LB),Y
 BCC LNCHRUN2
 BEQ LNCHRUN3
 LDA (LB),Y
 CMP #5
 BCS LNCHRUN3
 JMP ADVANCE
LNCHRUN2 JMP RETREAT
LNCHRUN3 RTS
*
LNCHRUN4 LDY #8
 LDA (LB),Y
 BEQ LNCHRUN3
 JMP RETREAT
*
LAUNCHHIT LDA BTN0
 BPL LNCHHIT2
 LDA Y2
 LDY #2
 CMP (B2),Y
 BCS LNCHHIT2
 LDA PDL1
 LSR
 LSR
 STA BDY ;0-3F
NULLBOUNCE CLC
NULL RTS
LNCHHIT2 JMP PBOUNCE
*
* RUN THE FLIPPERS
*
LFLIP2RUN LDA #8
 BNE LFLIPRUN2
RFLIP2RUN LDA #8
 BNE RFLIPRUN2
LFLIPRUN LDA #0
LFLIPRUN2 LDX #0
 BEQ FLIPRUN
RFLIPRUN LDA #0
RFLIPRUN2 LDX #1
*
FLIPRUN STA T
*
 LDY #8
 LDA (LB),Y
*
 LDY BTN0,X
 BPL FLPRUN3
 CMP #7
 BCS FLPRUN2
*
 ADC T
 STA XT
 TAX
 LDY #2
 LDA (LB),Y
 CLC
 ADC FXDVERT+1,X
 STA (LB),Y
 LDY #5
 LDA FXHEIGHT+1,X
 STA (LB),Y
 JSR ADVANCE
 LDX XT
 LDY #7
 LDA FXLEN+1,X
 STA (LB),Y
 RTS
*
FLPRUN2 RTS
*
FLPRUN3 CMP #0
 BEQ FLPRUN2
 LDY BTN0,X
 BMI FLPRUN2
*
FLPRUN4 CLC
 ADC T
 STA XT
 TAX
 LDY #7
 LDA FXLEN-1,X
 STA (LB),Y
 JSR RETREAT
 LDX XT
 LDY #2
 LDA (LB),Y
 SEC
 SBC FXDVERT,X ;WEIRD
 STA (LB),Y
 LDY #5
 LDA FXHEIGHT-1,X
 STA (LB),Y
 RTS
*
FLIP2INIT LDA #8
 BNE FLIPINIT2
FLIPINIT LDA #0
FLIPINIT2 STA T
FLIPINIT3 LDY #8
 LDA (LB),Y
 BEQ FLPRUN2
 JSR FLPRUN4
 JMP FLIPINIT3
*
FXDVERT HEX 000002FFFF00FEFE
 HEX 0002FFFF0000FFFF
FXHEIGHT HEX 0C0C080807060808
 HEX 0806060605040506
FXLEN HEX 2424181815121818
 HEX 100C0C0C0A080A0C
FDDVERT HEX 0000FEFF00000000
 HEX 000000000000FFFF
FHEIGHT HEX 0B09080605040608
 HEX 0706050403030405
FTHETA HEX 04030201001F1E1D
 HEX 04030201001F1E1D
*
FTBLO DA <FFRAME1
 DA <FFRAME2
 DA <FFRAME3
 DA <FFRAME4
 DA <FFRAME5
 DA <FFRAME6
 DA <FFRAME7
 DA <FFRAME8
*
 DA <SFRAME1
 DA <SFRAME2
 DA <SFRAME3
 DA <SFRAME4
 DA <SFRAME5
 DA <SFRAME6
 DA <SFRAME7
 DA <SFRAME8
*
FTBHI DA >FFRAME1
 DA >FFRAME2
 DA >FFRAME3
 DA >FFRAME4
 DA >FFRAME5
 DA >FFRAME6
 DA >FFRAME7
 DA >FFRAME8
*
 DA >SFRAME1
 DA >SFRAME2
 DA >SFRAME3
 DA >SFRAME4
 DA >SFRAME5
 DA >SFRAME6
 DA >SFRAME7
 DA >SFRAME8
*
LFLIP2HIT LDA #8
 BNE LFLIPHIT2
LFLIPHIT LDA #0
LFLIPHIT2 STA T
 LDX BTN0
 LDA #0
 BEQ FLIPHIT
RFLIP2HIT LDX #13
 LDA #8
 BNE RFLIPHIT2
RFLIPHIT LDX #19
 LDA #0
RFLIPHIT2 STX FWIDTH
 STA T
 LDX BTN1
 LDA #$80
FLIPHIT STX FDIR
 STA FLIPR
*
 BIT BMOVE
 BMI FLIPH4
 BVS FLIPH2
 LDY Y1
 DEY
 BVC FLIPH3
FLIPH2 LDY Y2
 INY
FLIPH3 LDA X1
 STA FX1
 LDA X2
 STA FX2
 BNE FLIPH8
*
FLIPH4 BVS FLIPH5
 LDY X1
 DEY
 LDX X2
 DEX
 BVC FLIPH6
FLIPH5 LDY X1
 INY
 LDX X2
 INX
FLIPH6 STY FX1
 STX FX2
 BIT BDY
 BMI FLIPH7
 LDY Y2
 INY
 BNE FLIPH8
FLIPH7 LDY Y1
 DEY
FLIPH8 STY YT
*
 LDY #8
 LDA (B2),Y
 STA FRAME
 CLC
 ADC T
 TAX
 LDY #2
 LDA (B2),Y
 CLC
 ADC FDDVERT,X
 STA T
 CMP YT
 BCC *+4
 BNE FLIPHOUT
 CLC
 ADC FHEIGHT,X
 CMP YT
 BCC FLIPHOUT
*
 DEC B2+1
 LDY #$FB
 LDA (B2),Y
 STA LEFTX
 INC B2+1
*
 LDA FTBLO,X
 STA B3
 LDA FTBHI,X
 STA B3+1
 LDA YT
 SBC T ;C=1
 ASL
 TAY
*
 BIT FLIPR
 BMI RFLIPH9
*
 LDA (B3),Y
 ADC LEFTX ;C=0
 CMP FX2
 BCC *+4
 BNE FLIPHOUT
 INY
 LDA (B3),Y
 CLC
 ADC LEFTX
 CMP FX1
 BCC FLIPHOUT
*
 STA T
 LDA FX2
 SBC LEFTX
 STA YT
 LDA FTHETA,X
 STA THETA
*
 BIT BMOVE
 BMI LFLIPH10
 BVS FLIPH10
 BVC FLIPH12
LFLIPH10 LDA T
 CMP FX2
 BCC FLIPH10
 BCS FLIPH12
*
FLIPHOUT CLC
 RTS
*
RFLIPH9 LDA FWIDTH
 SEC
 INY
 SBC (B3),Y
 ADC LEFTX ;C=0
 CMP FX2
 BCC *+4
 BNE FLIPHOUT
 DEY
 LDA FWIDTH
 SEC
 SBC (B3),Y
 CLC
 ADC LEFTX
 CMP FX1
 BCC FLIPHOUT
*
 STA T
 LDA FWIDTH
 SBC FX1 ;C=1
 CLC
 ADC LEFTX
 STA YT
 LDA #32
 SEC
 SBC FTHETA,X
 STA THETA
*
 BIT BMOVE
 BMI RFLIPH10
 BVS FLIPH10
 BVC FLIPH12
RFLIPH10 LDA T
 CMP FX2
 BCC FLIPH12
 BCS FLIPH10
*
FLIPH9 LDA FRAME
 CMP #5
 BCS FLIPH12
FLIPH10 LDX #$00
 LDA THETA
 BPL FLIPH13
FLIPH11 LDA FRAME
 CMP #5
 BCS FLIPH10
FLIPH12 LDX #$80
 LDA #16
 CLC
 ADC THETA
 CMP #32
 BCC *+4
 SBC #32
 STA THETA
*
FLIPH13 LDY YT
 LDA FLPVCTR,Y
 LDY FRAME
 BEQ FLIPH16
 CPY #7
 BEQ FLIPH16
 BIT FDIR
 BMI FLIPH15
 CPX #$80
 BNE FLIPH16
 EOR #$FF
 CLC
 ADC #1
 JMP FLIPH17
FLIPH15 CPX #$80
 BNE FLIPH17
FLIPH16 LDA #0
FLIPH17 STA KICK
*
 LDA #0
 STA BCODE
 JSR BOUNCE
 JMP PUTSP
*
FLPVCTR HEX 0101010104080C101418
 HEX 2024282C3034383C3F3F
*
FFRAME1 HEX 0206010701080109020A030B
 HEX 050C070D090E0B0F0D100F10
*
FFRAME2 HEX 020501070108010A020B040D
 HEX 060E09100C110F11
*
FFRAME3 HEX 020501070109010B020D040F
 HEX 07110A120E12
*
FFRAME4 HEX 02050108010B010E02110513
 HEX 0A13
*
FFRAME5 HEX 0207010B010F011202130413
*
FFRAME6 HEX 041302130112010F010B0207
*
FFRAME7 HEX 0B1305130211010E010B0108
 HEX 0205
*
FFRAME8 HEX 0E120A120711040F020D010B
 HEX 010901070205
*
SFRAME1 HEX 02050106010702080309050A
 HEX 070B090B
*
SFRAME2 HEX 0205010601080209040B060C
 HEX 090C
*
SFRAME3 HEX 020501070109020B040C070C
*
SFRAME4 HEX 02060109010C020D060D
*
SFRAME5 HEX 0208010B010D020D
*
SFRAME6 HEX 020D010D010B0208
*
SFRAME7 HEX 060D020D010C01090206
*
SFRAME8 HEX 070C040C020B010901070205
*
INITBALL BIT INITMODE
 BPL INITB2
 LDA LB
 LDX LB+1
 JSR XOFFDRAW
 LDY #16
 LDA (LB),Y
 BMI INITB3
DRAWBALL LDY #18
 LDA (LB),Y
 STA IBALL+2
 DEY
 LDA (LB),Y
 TAX
 LDA DIV7,X
 STA IBALL+3
 LDA MOD7,X
 STA IBALL+4
 LDA #<IBALL
 LDX #>IBALL
 JMP XOFFDRAW
*
IBALL DA *+7
 HEX 00,00,00,05,01
 HEX 0E,1F,1F,1F,0E
*
INITB2 LDY #2
 LDA (LB),Y
 LDY #18
 STA (LB),Y
 DEC LB+1
 LDY #$FB
 LDA (LB),Y
 INC LB+1
 LDY #17
 STA (LB),Y
 LDA #0
 LDY #7
 STA (LB),Y
 LDY #16
 STA (LB),Y
 LDY #19
 STA (LB),Y
 INY
 LDA #$FF
 STA (LB),Y
INITB3 RTS
*
BUMPRUN LDY #8
 LDA (LB),Y
 BPL BMPRUN2
 LDA #0
 STA (LB),Y
 JMP ADVANCE
BMPRUN2 BEQ BMPRUN3
 JMP RETREAT
BMPRUN3 RTS
*
TSET LDY #8
 LDA (B2),Y
 BNE TSET2
 LDA #$80
 STA (B2),Y
TSET2 RTS
*
WMOD3 EQU *
WKICK HEX 10
*
BUMPHIT JSR TSET
 LDA WKICK
 STA KICK
 LDA #$80
 STA BCODE
 JSR BOUNCE
 JMP PUTSP
*
BUMPINIT LDY #8
 LDA (LB),Y
 BMI BUMPINT2
 JMP INITB
BUMPINT2 AND #$7F
 STA (LB),Y
 JMP INITB
*
KICKHIT LDA THETA
 CMP #4
 BEQ BUMPHIT
 CMP #28
 BEQ BUMPHIT
 JMP PBOUNCE
*
KNOCKRUN LDY #8
 LDA (LB),Y
 BPL KNKRUN3
 CMP #$82
 BEQ KNKRUN2
 JMP ADVANCE
KNKRUN2 LDA #2
 STA (LB),Y
 RTS
KNKRUN3 BEQ KNKRUN4
 JMP RETREAT
KNKRUN4 RTS
*
KNOCK1HIT BIT BMOVE
 BMI KNK1HIT5
 BVC KNK1HIT2
 LDA WKICK
 BNE KNK1HIT3
KNK1HIT2 LDA WKICK
 EOR #$FF
KNK1HIT3 STA BDY
KNK1HIT4 JSR TSET
 SEC
 JMP PUTSP
KNK1HIT5 JMP PBOUNCE
*
KNOCK2HIT BIT BMOVE
 BPL KNK1HIT5
 BVS KNK2HIT2
 LDA WKICK
 BNE KNK2HIT3
KNK2HIT2 LDA WKICK
 EOR #$FF
KNK2HIT3 STA BDX
 BNE KNK1HIT4
*
FLASHRUN LDY #8
 LDA (LB),Y
 BPL FLSHRUN2
 CMP #$80
 BNE FLSHRUN3
 JMP ADVANCE
FLSHRUN2 BEQ FLSHRUN4
FLSHRUN3 JMP RETREAT
FLSHRUN4 RTS
*
FLASHHIT JSR TSET
 JSR PBOUNCE
 JMP PUTSP
*
ROLLHIT JSR TSET
 CLC
 JMP PUTSP2
*
GATEHIT BIT BMOVE
 BMI GATEH2
 BVC GATEH3
GATEH2 JSR PBOUNCE
 JMP PUTSP
GATEH3 CLC
 RTS
GATE2HIT BIT BDX
 BMI GATEH2
 CLC
 RTS
GATE3HIT BIT BDX
 BPL GATEH2
 CLC
 RTS
*
DROP1RUN LDX #$00
 BEQ DROPRUN
DROP2RUN LDX #$80
DROPRUN STX T2
 LDY #8
 LDA (LB),Y
 AND #$0F
 CMP #$0F
 BEQ DROPRUN4
 EOR #$0F
 LDY #16
 AND (LB),Y
 TAX
 LDY #8
 ORA (LB),Y
 STA (LB),Y
 TXA
*
 LDX #3
DROPRUN2 LSR
 BCC DROPRUN3
 JSR DRAWTARG
DROPRUN3 DEX
 BPL DROPRUN2
 RTS
*
DROPRUN4 LDX #3
DROPRUN5 JSR DRAWTARG
 DEX
 BPL DROPRUN5
 LDA #$80
DROPRUN6 LDY #8
 STA (LB),Y
 LDA #0
 LDY #16
 STA (LB),Y
 RTS
*
DRAWTARG STA T
 STX XT
 TXA
 ASL
 ASL
 ASL
 BIT T2
 BMI DRAWTRG2
*
 DEC LB+1
 LDY #$FB
 CLC
 ADC (LB),Y
 TAX
 LDA DIV7,X
 STA DROPTXB+3
 LDA MOD7,X
 STA DROPTXB+4
 INC LB+1
 LDY #2
 LDA (LB),Y
 STA DROPTXB+2
 LDA #<DROPTXB
 LDX #>DROPTXB
 BNE DRAWTRG3
*
DRAWTRG2 LDY #2
 CLC
 ADC (LB),Y
 STA DROPTYB+2
 DEC LB+1
 LDY #$FB
 LDA (LB),Y
 TAX
 INC LB+1
 LDA DIV7,X
 STA DROPTYB+3
 LDA MOD7,X
 STA DROPTYB+4
 LDA #<DROPTYB
 LDX #>DROPTYB
*
DRAWTRG3 JSR XOFFDRAW
 LDA T
 LDX XT
 RTS
*
DROPTXB DA *+7
 HEX 00,00,00,03,01
 HEX 00,2A,2A
*
DROPTYB DA *+7
 HEX 00,00,00,07,01
 HEX 00,05,05,05,05,05,05
*
DROP1HIT DEC B2+1
 LDY #$FB
 LDA X2
 SEC
 SBC (B2),Y
 INC B2+1
*
 LDX #3
 LDY #1
 STY T
DROP1HIT2 CMP DHITTBL,X
 BCS DROP1HIT4
 ASL T
DROP1HIT3 DEX
 BPL DROP1HIT2
 RTS
*
DROP1HIT4 LDY #16
 LDA (B2),Y
 ORA T
 STA (B2),Y
DROP1HIT5 JSR PBOUNCE
 JMP PUTSP
*
DHITTBL HEX 02,0A,12,1A
*
DROP2HIT LDY #2
 LDA Y2
 SEC
 SBC (B2),Y
*
 LDX #3
 LDY #1
 STY T
DROP2HIT2 CMP DHITTBL,X
 BCS DROP2HIT4
 ASL T
DROP2HIT3 DEX
 BPL DROP2HIT2
 RTS
*
DROP2HIT4 LDY #16
 LDA (B2),Y
 ORA T
 STA (B2),Y
 BPL DROP1HIT5
*
DROP1INIT LDX #$00
 BEQ DROPINIT
DROP2INIT LDX #$80
DROPINIT STX T2
 LDY #8
 LDA (LB),Y
 AND #$0F
 LDX #3
DROPINIT2 LSR
 BCC DROPINIT3
 JSR DRAWTARG
DROPINIT3 DEX
 BPL DROPINIT2
 LDA #0
 JMP DROPRUN6
*
CATCH1HIT BIT BMOVE
 BMI CTCH1HIT3
 BVC CTCH1HIT3
*
 DEC B2+1
 LDY #$F9
 LDA (B2),Y
 INC B2+1
 CLC
 ADC #3
 CMP X1
 BNE CTCH1HIT3
*
 LDY #2
 LDA (B2),Y
 STA YT
 LDY #16
 LDA (B2),Y
 STA T
 BMI CTCH1HIT4
*
 BIT BST
 BVS CTCH1HIT5
*
 ORA #$80
 STA (B2),Y
 LDA #0
 STA BDX
 LDA #$20
 STA BST
 JSR PUTSP2
CTCH1HIT2 CLC
 RTS
*
CTCH1HIT3 LDA THETA
 BNE *+12
 LDA #1
 BCS *+4
 LDA #$FF
 STA BDX
 SEC
 RTS
 JMP PBOUNCE
*
CTCH1HIT4 ROL
 BMI CTCH1HIT6
*
 LDA BST
 AND #$20
 BEQ CTCH1HIT5
*
 LDA T
 AND #$7F
 TAX
 LDA YT
 ADC CATCHSTOP,X ;C=1
 CMP Y2
 BNE CTCH1HIT2
 INC T
 LDA T
 AND #$7F
 LDX #$40
 CMP #3
 BNE *+6
 LDX #0
 LDA #$C2
 LDY #16
 STA (B2),Y
 STX BST
CTCH1HIT5 SEC
 RTS
*
CTCH1HIT6 LDA YT
 CLC
 ADC #16
 CMP Y2
 BNE CTCH1HIT2
 BIT BST
 BVC CTCH1HIT2
 DEC T
 LDA T
 CMP #$C0
 BNE *+12
 LDA #$00
 LDY #8
 STA (B2),Y
 LDY #16
 LDA #0
*
 STA (B2),Y
 LDA #0
 STA BST
 CLC
 RTS
*
CATCHSTOP HEX 03,09,0F
*
CATCH1INIT LDA #0
 LDY #8
 STA (LB),Y
 LDY #16
 STA (LB),Y
 RTS
*
CATCH2RUN LDY #8
 LDA (LB),Y
 BPL CTCH2RUN3
 CMP #$84
 BEQ CTCH2RUN2
 JMP ADVANCE
CTCH2RUN2 LDA #0
 STA (LB),Y
 LDY #0
 LDA #<CATCH2B
 STA (LB),Y
 LDA #>CATCH2B
 INY
 STA (LB),Y
CTCH2RUN3 RTS
*
CATCH2HIT JSR TSET
 LDA #$80
 STA BST
 SEC
 JMP PUTSP
*
SPINRUN JSR KNOCKRUN
 LDY #8
 LDA (LB),Y
 BNE SPINRUN4
 LDY #16
 LDA (LB),Y
 BEQ SPINRUN4
 SEC
 SBC #1
 STA (LB),Y
 LDA #$80
 LDY #8
 STA (LB),Y
 INC DSCORE
 BNE *+6
 LDA #255
 STA DSCORE
SPINRUN4 RTS
*
SPININIT LDA #0
 LDY #16
 STA (LB),Y
 JMP BUMPINIT
*
SPINHIT LDA BDY
 BPL *+4
 EOR #$FF
 LSR
 LDY #16
 STA (B2),Y
 JSR TSET
 CLC
 JMP PUTSP2
*
MAGHIT BIT BMOVE
 BMI MAGHIT2
 BVS MAGHIT2
 SEC
 RTS
MAGHIT2 JSR PBOUNCE
 JMP PUTSP
*
CTBL1LO DA <C05625
 DA <C1125
 DA <C225
 DA <C45
 DA <C675
 DA <C7875
 DA <C84375
*
CTBL1HI DA >C05625
 DA >C1125
 DA >C225
 DA >C45
 DA >C675
 DA >C7875
 DA >C84375
*
CTBL2LO DA <C84375
 DA <C7875
 DA <C675
 DA <C45
 DA <C225
 DA <C1125
 DA <C05625
*
CTBL2HI DA >C84375
 DA >C7875
 DA >C675
 DA >C45
 DA >C225
 DA >C1125
 DA >C05625
*
ROTATE STA T
 LSR
 LSR
 LSR
 STA XT
*
 TXA
 BPL ROT3
 TYA
 BPL ROT2
 JSR QUAD2
 LDA #2
 BNE ROT5
ROT2 JSR QUAD3
 LDA #1
 BNE ROT5
ROT3 TYA
 BPL ROT4
 JSR QUAD1
 LDA #3
 BPL ROT5
ROT4 LDA #0
ROT5 CLC
 ADC XT
 CMP #4
 BCC *+4
 SBC #4
 PHA
*
ROT6 CPY #$40
 BCC *+4
 LDY #$3F
 CPX #$40
 BCC *+4
 LDX #$3F
*
 LDA T
 AND #$07
 BEQ ROT7
 STX XT
 TAX
 LDA CTBL1LO-1,X
 STA RMOD1
 STA RMOD2
 LDA CTBL1HI-1,X
 STA RMOD1+1
 STA RMOD2+1
 LDA CTBL2LO-1,X
 STA RMOD3
 STA RMOD4
 LDA CTBL2HI-1,X
 STA RMOD3+1
 STA RMOD4+1
*
 LDX XT
RMOD1 EQU *+1
 LDA C225,X
 SEC
RMOD3 EQU *+1
 SBC C225,Y
 PHP
 ROR
 PLP
 ROR
 EOR #$C0
 STA T
*
RMOD4 EQU *+1
 LDA C225,X
 CLC
RMOD2 EQU *+1
 ADC C225,Y
 ROR
 BPL *+4
 LDA #$7F
 LSR
 TAY
 LDX T
*
ROT7 PLA
*
FIXQUAD ROR
 ROR
 BCS FIXQ3
 BMI FIXQ2
QUAD0 RTS
QUAD1 EQU *
FIXQ2 STX YT
 TYA
 EOR #$FF
 CLC
 ADC #1
 TAX
 LDY YT
 RTS
*
FIXQ3 BMI FIXQ4
QUAD2 TXA
 EOR #$FF
 CLC
 ADC #1
 TAX
 TYA
 JMP FIXQ5
*
QUAD3 EQU *
FIXQ4 STY YT
 TXA
 LDX YT
FIXQ5 EOR #$FF
 CLC
 ADC #1
 TAY
 RTS
*
PBOUNCE LDA #0
 STA KICK
 STA BCODE
BOUNCE LDY BDY
 LDX BDX
 LDA THETA
 JSR ROTATE
*
 TYA
 BPL BOUNCE3
 EOR #$FF
 CLC
 ADC #1
 TAY
*
 BIT BCODE
 BMI BOUNCE2
WMOD2 EQU *+1
 LDA C675,Y
 LSR
 LSR
 BNE *+4
 LDA #1
BOUNCE2 CLC
 ADC KICK
 BMI *+8
 CMP #$40
 BCC *+4
 LDA #$3F
 TAY
*
 LDA #32
 SEC
 SBC THETA
 JSR ROTATE
 STX BDX
 STY BDY
BOUNCE3 SEC
 RTS
*
ADVANCE LDY #7
 LDA (LB),Y
 CLC
 LDY #0
 ADC (LB),Y
 STA (LB),Y
 INY
 LDA (LB),Y
 ADC #0
 STA (LB),Y
 LDY #8
 LDA (LB),Y
 ADC #1
 STA (LB),Y
 LDA LB
 LDX LB+1
 JMP XOFFDRAW
*
RETREAT LDA LB
 LDX LB+1
 JSR XOFFDRAW
 LDY #0
 LDA (LB),Y
 SEC
 LDY #7
 SBC (LB),Y
 LDY #0
 STA (LB),Y
 INY
 LDA (LB),Y
 SBC #0
 STA (LB),Y
 LDY #8
 LDA (LB),Y
 SBC #1
 STA (LB),Y
 RTS
*
INITB LDY #8
 LDA (LB),Y
 BEQ INITQUIT
 JSR RETREAT
 BCS INITB
INITQUIT RTS
*
PUTSP BCC PUTSP4
PUTSP2 PHP
 LDY #9
 LDA (B2),Y
 AND #$0F
 TAX
 LDA SCORETBL,X
 CLC
 ADC DSCORE
 BCC *+4
 LDA #255
 STA DSCORE
*
 LDA (B2),Y
 LSR
 LSR
 LSR
 LSR
 BEQ PUTSP3
 TAX
 LDA SNDTBL-1,X
 JSR DOSND
PUTSP3 PLP
PUTSP4 RTS
*
DOSND CMP SERIES
 BMI DOS2
 STA SERIES
 LDA #0
 STA SLICE
DOS2 RTS
*
SCORETBL HEX 0001020304050A0F14191E28324B6496
SNDTBL HEX 00040C1424384C
*
MOVEBALL LDY #16
 LDA (LB),Y
 BMI INITQUIT
 STA BST
 INY
 LDA (LB),Y
 TAX
 STA X1
 CLC
 ADC #4
 STA X2
 SBC #1 ;-2, C=0
 STA MIDX
 LDA DIV7,X
 STA HBALL+3
 STA VBALL+3
 LDA MOD7,X
 STA HBALL+4
 STA VBALL+4
*
 INY
 LDA (LB),Y
 STA HBALL+2
 STA VBALL+2
 STA Y1
 CLC
 ADC #4
 STA Y2
*
 INY
 LDA (LB),Y
 STA BDX
 INY
 LDA (LB),Y
 STA BDY
 INY
 LDA (LB),Y
 STA BXACC
 INY
 LDA (LB),Y
 STA BYACC
*
 LDA BXACC
 CLC
 ADC BDX
 STA BXACC
 LDA BYACC
 CLC
 ADC BDY
 STA BYACC
*
 LDA #0
 STA HTCNT
*
 LDA PTM1
WMOD4 EQU *+1
 AND #$07
 BNE MOVEB2
 LDY BDY
 DEY
 BPL GRAV2
 CPY #$D1
 BCS GRAV2
 LDY #$D1
GRAV2 STY BDY
*
MOVEB2 BIT BST
 BPL *+5
 JMP MOVEB9
 LDA BYACC
 BMI MOVEB3
 CMP #$20
 BCS MOVEB4
 LDA BXACC
 BMI MOVEB7
 CMP #$20
 BCS MOVEB6
 JMP MOVEB9
*
MOVEB3 CLC
 ADC #$20
 STA BYACC
 LDY Y2
 INY
 LDA #$40
 STA BMOVE
 JSR CHECKVERT
 BCS MOVEB5
*
 JSR BALLDOWN
 JMP MOVEB5
*
MOVEB4 SBC #$20
 STA BYACC
 LDY Y1
 DEY
 LDA #$00
 STA BMOVE
 JSR CHECKVERT
 BCS MOVEB5
*
 JSR BALLUP
*
MOVEB5 BIT BST
 BMI MOVEB9
 LDA BXACC
 BMI MOVEB7
 CMP #$20
 BCC MOVEB2
*
MOVEB6 SBC #$20
 STA BXACC
 LDA #$C0
 STA BMOVE
 LDY Y1
 LDA X2
 ADC #0 ;C=1
 JSR CHECKHORIZ
 BCS MOVEB8
*
 LDY Y2
 LDA X2
 ADC #1 ;C=0
 JSR CHECKHORIZ
 BCS MOVEB8
*
 JSR BALLRIGHT
 JMP MOVEB2
*
MOVEB7 CLC
 ADC #$20
 STA BXACC
 LDA #$80
 STA BMOVE
 LDY Y1
 LDA X1
 SEC
 SBC #1
 JSR CHECKHORIZ
 BCS MOVEB8
*
 LDY Y2
 LDA X1
 SBC #0 ;C=0!
 JSR CHECKHORIZ
 BCS MOVEB8
*
 JSR BALLLEFT
*
MOVEB8 JMP MOVEB2
*
MOVEB9 LDY #7
 LDA (LB),Y
 CLC
 ADC #1
 LDX HTCNT
 BNE MOVEB10
 CMP #3
 BCC MOVEB11
*
 LDY Y2
 INY
 LDA #$40
 STA BMOVE
 JSR CHECKVERT
MOVEB10 LDA #0
MOVEB11 LDY #7
 STA (LB),Y
*
 LDY #16
 LDA BST
 STA (LB),Y
 INY
 LDA X1
 STA (LB),Y
 INY
 LDA Y1
 STA (LB),Y
 INY
 LDA BDX
 STA (LB),Y
 INY
 LDA BDY
 STA (LB),Y
 INY
 LDA BXACC
 STA (LB),Y
 INY
 LDA BYACC
 STA (LB),Y
 BIT BST
 BPL *+5
 JMP DRAWBALL
 RTS
*
DOHIT INC HTCNT
 STY HT
 LDY OBJID
 LDA VHI,Y
 BNE DOHIT2
 JSR PBOUNCE
 JMP DOHIT3
*
DOHIT2 STA B2+1
 LDA VLO,Y
 STA B2
 LDY #14
 LDA (B2),Y
 STA BMOD1
 INY
 LDA (B2),Y
 STA BMOD1+1
BMOD1 EQU *+1
 JSR $FFFF
DOHIT3 LDA HVAL
 LDY HT
 RTS
*
CHECKHORIZ STA HVAL
 LDA PBTBLO,Y
 STA B1
 LDA PBTBHI,Y
 STA B1+1
 LDA PBDX,Y
 STA HCNT
 LDA HVAL
*
 LDY #0
CHECKHZ2 CMP (B1),Y
 BNE CHECKHZ3
 JSR HITLEFT
 BCC CHECKHZ7
 BCS FIXLEFT
CHECKHZ3 INY
 INY
 BCC CHECKHZ6
 CMP (B1),Y
 BCC CHECKHZ5
 BNE CHECKHZ6
CHECKHZ4 JSR HITRIGHT
 BCC CHECKHZ7
 BCS FIXRIGHT
CHECKHZ5 DEY
 LDA (B1),Y
 INY
 TAX
 BNE CHECKHZ4
 LDA HVAL
*
CHECKHZ6 INY
CHECKHZ7 INY
 CPY HCNT
 BNE CHECKHZ2
 CLC
 RTS
*
HITLEFT INY
 LDA (B1),Y
 STA OBJID
 INY
 INY
 LDA (B1),Y
 AND #$0F
 STA THETA
*
 LDA OBJID
 BNE HIT3
HIT2 LDA #16
 BNE HIT4
HIT3 LDA #32
HIT4 SEC
 SBC THETA
 STA THETA
 JMP DOHIT
*
HITRIGHT DEY
 LDA (B1),Y
 STA OBJID
 INY
 INY
 LDA (B1),Y
 LSR
 LSR
 LSR
 LSR
 STA THETA
*
 LDA OBJID
 BNE HIT2
 BEQ HIT3
*
FIXLEFT LDA BDX
 BNE FIX4
 LDA OBJID
 BNE FIX3
FIX2 INC BDX
 BNE FIX4
FIX3 DEC BDX
FIX4 LDA BXACC
 AND #$1F
 STA BXACC
 RTS
*
FIXRIGHT LDA BDX
 BNE FIX4
 LDA OBJID
 BNE FIX2
 BEQ FIX3
*
OFFBOARD LDA #0
 BIT BMOVE
 BVS *+4
 LDA #16
 STA THETA
 JMP PBOUNCE
*
CHECKVERT LDA PBTBLO,Y
 STA B1
 LDA PBTBHI,Y
 STA B1+1
 LDA PBDX,Y
 BEQ OFFBOARD
 STA HCNT
 LDY #1
*
PCHECKV2 DEY
PCHECKV LDA (B1),Y
 TAX
 INY
 LDA (B1),Y
 STA OBJID
 BEQ BCHECKV2
*
 CPX X2
 BCC *+4
 BNE PCHKV2
 STX P1
 INY
 LDA (B1),Y
 CMP X1
 BCC PCHKV3
*
 STA P2
 INY
 LDA (B1),Y
 STA LFT
 LSR
 LSR
 LSR
 LSR
 STA RTT
 JSR DOVHIT
 BCC PCHKV4
CHKVRT2 LDA BYACC
 AND #$1F
 STA BYACC
 RTS
*
PCHKV2 INY
PCHKV3 INY
PCHKV4 INY
 CPY HCNT
 BNE PCHECKV
 CLC
 RTS
*
BCHECKV2 LDA #0
 STA P1
 LDA #8
 STA LFT
 BNE BCHKV2
*
BCHECKV LDA (B1),Y
 TAX
 INY
 LDA (B1),Y
 BNE BCHKV4
 STA OBJID
*
BCHKV2 LDA X2
 CMP P1
 BCC BCHKV3
 CPX X1
 BCC BCHKV3
*
 STX P2
 INY
 INY
 LDA (B1),Y
 AND #$0F
 STA RTT
 DEY
 DEY
 JSR DOVHIT
 BCS CHKVRT2
*
BCHKV3 INY
 LDA (B1),Y
 STA P1
 INY
 LDA (B1),Y
 LSR
 LSR
 LSR
 LSR
 STA LFT
 INY
 CPY HCNT
 BNE BCHECKV
*
BCHKV4 LDA X2
 CMP P1
 BCC BCHKV5
*
 LDA #153
 STA P2
 LDA #8
 STA RTT
 JSR DOVHIT
 BCS CHKVRT2
BCHKV5 CPY HCNT
 BEQ *+5
 JMP PCHECKV2
 CLC
 RTS
*
DOVHIT LDA P2
 CMP X1
 BEQ VRIGHT2
 CLC
 ADC P1
 ROR
 CLC
 ADC #2
 CMP X2
 BCC VRIGHT
*
 LDA LFT
 AND #$0F
 STA LFT
 LDA P1
 CMP X2
 BEQ VLEFT2
*
VLEFT LDA LFT
 JSR VLFIX
 STA LFT
 BEQ VLEFT3
VLEFT2 LDA #32
 SEC
 SBC LFT
VLEFT3 STA THETA
 JSR DOHIT
 BCC VLEFT4
 LDA BDX
 BNE VLEFT4
 DEC BDX
VLEFT4 RTS
*
VRIGHT LDA RTT
 JSR VRFIX
 STA RTT
 BEQ VRIGHT3
VRIGHT2 LDA #16
 SEC
 SBC RTT
VRIGHT3 STA THETA
 JSR DOHIT
 BCC VRIGHT4
 LDA BDX
 BNE VRIGHT4
 INC BDX
VRIGHT4 RTS
*
VLFIX BIT BMOVE
 BVC VLFIX3
VLFIX2 CMP #6
 BCC VFIX3
 BCS VFIX2
VLFIX3 CMP #11
 BCS VFIX3
 BCC VFIX2
VRFIX BIT BMOVE
 BVC VLFIX2
 BVS VLFIX3
*
VFIX2 LDA #16
 BIT BMOVE ;Z=1
 BVC *+4
 LDA #0 ;Z=1
VFIX3 RTS
*
BALLDOWN LDA #<VBALL
 LDX #>VBALL
 JSR XOFFDRAW
 INC Y1
 INC Y2
 LDA Y1
 STA HBALL+2
 STA VBALL+2
 RTS
*
BALLUP DEC Y1
 DEC Y2
 LDA Y1
 STA HBALL+2
 STA VBALL+2
 LDA #<VBALL
 LDX #>VBALL
 JMP XOFFDRAW
*
BALLRIGHT LDA X2
 CMP #153
 BCS BALLR2
 LDA #<HBALL
 LDX #>HBALL
 JSR XOFFDRAW
 INC X1
 INC X2
 LDY X1
 LDA DIV7,Y
 STA HBALL+3
 STA VBALL+3
 LDA MOD7,Y
 STA HBALL+4
 STA VBALL+4
BALLR2 RTS
*
BALLLEFT LDA X1
 BEQ BALLR2
 DEC X1
 DEC X2
 LDY X1
 LDA DIV7,Y
 STA HBALL+3
 STA VBALL+3
 LDA MOD7,Y
 STA HBALL+4
 STA VBALL+4
 LDA #<HBALL
 LDX #>HBALL
 JMP XOFFDRAW
*
HBALL DA *+7
 HEX 00,00,00,05,01
 HEX 12,21,21,21,12
*
VBALL DA *+7
 HEX 00,00,00,06,01
 HEX 0E,11,00,00,11,0E
*
SCORE LDA #$B0
 STA CHAR+2
 LDY #<SCORE1
 LDX #>SCORE1
 LDA DSCORE
 JSR DOSCORE
*
 LDA #$98
 STA CHAR+2
 LDA #<BONUS
 STA SCB
 LDA #>BONUS
 STA SCB+1
 LDA DBONUS
 LDY #5
 JSR DOSCORE2
 LDA #0
 STA DSCORE
 STA DBONUS
 RTS
*
DOSCORE STY SCB
 STX SCB+1
 LDY #7
DOSCORE2 CLC
 ADC (SCB),Y
 BCC *+4
 LDA #255
 STA (SCB),Y
DOSCOR2 LDX #0
 LDA (SCB),Y
DOSCOR3 CMP #10
 BCC DOSCOR4
 SBC #10
 INX
 BCS DOSCOR3
DOSCOR4 STA (SCB),Y
 TXA
 DEY
 ADC (SCB),Y
 STA (SCB),Y
 TYA
 BNE DOSCOR2
 JMP PRSCORE2
*
INITSCORE LDY #17
 LDA #0
 STA DSCORE
 STA DBONUS
 STA BMULT
INITSCR2 STA SCORE1,Y
 DEY
 BPL INITSCR2
*
 LDY #$80
 LDX #$18
 LDA #0
 JSR CHARTO
 LDA #<BMMSG
 LDX #>BMMSG
 JSR PRINT
 JSR PRBMULT
 LDY #$B0
 LDX #$18
 LDA #0
 JSR CHARTO
 LDA #<P1MSG
 LDX #>P1MSG
 JSR PRINT
 LDY #<SCORE1
 LDX #>SCORE1
 JSR PRSCORE
 LDY #$98
 LDX #$18
 LDA #0
 JSR CHARTO
 LDA #<BMSG
 LDX #>BMSG
 JSR PRINT
 LDY #<BONUS
 LDX #>BONUS
*
PRSCORE STY SCB
 STX SCB+1
*
PRSCORE2 LDY #0
 JSR SETMODE
*
 LDY CHAR+2
 LDX #$27
 LDA #0
 JSR CHARTO
*
 LDY #8
PRSCR2 STY YT
 LDA (SCB),Y
 JSR PRCHAR
 DEC CHAR+3
 LDA #0
 STA CHAR+4
 LDY YT
 DEY
 BNE PRSCR2
*
 LDY #2
 JMP SETMODE
*
PRBMULT LDY #0
 JSR SETMODE
 LDY #$80
 LDX #$20
 LDA #0
 JSR CHARTO
 LDX BMULT
 INX
 CPX #6
 BCS PRBMUL2
 STX BMULT
 TXA
 JSR PRCHAR
PRBMUL2 LDY #2
 JMP SETMODE
*
P1MSG HEX 19150A220E1B81
BMSG HEX 0B18171E9C
BMMSG HEX 0B18171E1CA1
*
SCORE1 HEX 000000000000000000
BONUS HEX 000000000000000000
*
SND BIT STGL
 BMI SND5
 LDA SERIES
 BMI SND5
SND1 CLC
 ADC SLICE
 TAX
 STX ST
 LDY EFFECTS,X
SND2 LDX NOTES-12,Y
 BEQ SND4
SND3 PHA
 PLA
 DEX
 BNE SND3
 LDA $C030
 INY
 BNE SND2
SND4 INC SLICE
 LDX ST
 LDA EFFECTS+1,X
 BNE SND5
*
INITSND LDY #$FF
 STY SERIES
 INY
 STY SLICE
SND5 RTS
*
EFFECTS HEX 540C5400 ;0
 HEX 0C1824303C485400 ;4
 HEX 54483C3024180C00 ;12
 HEX 540C540C540C540C0C243C54543C2400 ;20
 HEX 0C1824303C4854483C303C483C303C483C303C00 ;36
 HEX 0C1824303C485454483C3024180C1824303C4800 ;56
 HEX 0C1824300C1824300C1824300C1824300C182400 ;76
*
NOTES HEX 103010301030103010301000 ;$0
 HEX 183818381838183818381800 ;$0C
 HEX 204020402040204020402000 ;$18
 HEX 284828482848284828482800 ;$24
 HEX 305030503050305030503000 ;$30
 HEX 385838583858385838583800 ;$3C
 HEX 406040604060406040604000 ;$48
 HEX 486848684868486848684800 ;$54
*
WIRING LDX #0
WIR2 LDA #0
 STA T
 STX XT
 JSR GETST
 BPL WIR4
 INX
 JSR GETST
 BPL WIR4
 INX
 JSR GETST
 BPL WIR4
*
 INX
 STX XT
 LDA T
 BEQ WIR4
 LDA LOGIC,X
 STA YT
 AND #$0F
 TAY
 LDA BONUSTBL,Y
 CLC
 ADC DBONUS
 BCC *+4
 LDA #255
 STA DBONUS
 LDA YT
 BPL WIR3
*
 JSR PRBMULT
*
WIR3 LDA YT
 AND #$70
 LSR
 LSR
 LSR
 LSR
 BEQ *+9
 TAX
 LDA SNDTBL-1,X
 JSR DOSND
*
 DEC XT
 JSR TURNOFF
 DEC XT
 JSR TURNOFF
 DEC XT
 JSR TURNOFF
*
WIR4 LDA XT
 AND #$FC
 CLC
 ADC #4
 TAX
 CPX #24
 BCC WIR2
 RTS
*
BONUSTBL HEX 000102030405060708090A141E283264
*
GETST LDA LOGIC,X
 BEQ GETS2
 INC T
 TAY
 LDA VLO,Y
 STA B1
 LDA VHI,Y
 STA B1+1
 LDY #8
 LDA (B1),Y
 RTS
GETS2 LDA #$80
GETS3 RTS
*
TURNOFF LDX XT
 LDA LOGIC,X
 BEQ GETS3
 TAY
 LDA VLO,Y
 STA LB
 LDA VHI,Y
 STA LB+1
 LDY #12
 LDA (LB),Y
 STA TMOD1
 INY
 LDA (LB),Y
 STA TMOD1+1
TMOD1 EQU *+1
 JMP $FFFF
*
INITWORLD LDX WSET
 LDA GRAVTBL,X
 STA WMOD4
 LDX WSET+1
 LDA TIMETBL,X
 STA WMOD1
 LDX WSET+2
 LDA KICKTBL,X
 STA WMOD3
 LDX WSET+3
 LDA ELASTLO,X
 STA WMOD2
 LDA ELASTHI,X
 STA WMOD2+1
 RTS
*
GRAVTBL HEX FF7F3F1F0F070301
TIMETBL HEX 302018100C080401
KICKTBL HEX 04080C1018202838
ELASTLO HEX 80400000C0804000
ELASTHI HEX 7878787877777777
*
* PLAY THE GAME IN THE BUFFER
*
PLAY LDY #0
 STY RUNLEN
 JSR GETOBJ
PLAY2 LDA OBJID
 CMP #<LIBOBJ
 BNE PLAY4
*
 LDX NOBJ
 LDA LB
 STA VLO,X
 LDA LB+1
 STA VHI,X
 LDY #8
 LDA (LB),Y
 STA TIME,X
 LDA #0
 STA (LB),Y
 TXA
 LDX RUNLEN
 STA RCN,X
 INC RUNLEN
 JMP PLAY5
*
PLAY4 LDX NOBJ
 LDA #0
 STA VLO,X
 STA VHI,X
*
PLAY5 INC NOBJ
 LDY NOBJ
 JSR GETNOBJ
 LDY NOBJ
 CPY OBJCOUNT
 BNE PLAY2
*
 STY INITMODE
 JSR INITOBJS
 JSR INITSCORE
 JSR INITSND
 JSR INITWORLD
*
 LDY #1
 JSR MAKEHOLE
*
 LDY #1
 LDA MIDTOP
 LDX MIDTOP+1
PLAY6 CLC
 ADC PBDX-1,Y
 STA PBTBLO,Y
 BCC *+3
 INX
 TXA
 STA PBTBHI,Y
 LDA PBTBLO,Y
 INY
 CPY #192
 BCC PLAY6
*
GLSTY DEY
 LDA PBDX,Y
 BEQ GLSTY
 STY LASTY
*
PLAY7 INC PTM1
 BNE *+4
 INC PTM2
 LDA PTM1
 AND #$1F
 BNE PLAY8
 LDX #0
 JSR $FB1E
 TYA
 STA PDL0
PLAY8 LDA PTM1
 CLC
 ADC #$10
 AND #$1F
 BNE PLAY9
 LDX #1
 JSR $FB1E
 TYA
 STA PDL1
PLAY9 LDA $C061
 STA BTN0
 LDA $C062
 STA BTN1
*
WMOD1 EQU *+1
 LDA #24
 JSR $FCA8
*
 LDY #0
PLAY10 CPY RUNLEN ;127 LIBOBJS
 BCS PLAY12
 STY NOBJ
*
 LDX RCN,Y
 LDA TIME,X
 AND PTM1
 BNE PLAY11
*
 LDA VLO,X
 STA LB
 LDA VHI,X
 STA LB+1
 LDY #10
 LDA (LB),Y
 STA PMOD1
 INY
 LDA (LB),Y
 STA PMOD1+1
PMOD1 EQU *+1
 JSR $FFFF
*
 LDY NOBJ
 LDX RCN,Y
 LDA TIME,X
 BNE PLAY11
 LDY #16
 LDA (LB),Y
 ROL
 BCS PLAY11
 BMI PLAY11
 LDA Y2
 CMP LASTY
 BNE PLAY11
*
 LDA #$80
 STA (LB),Y
 JSR DRAWBALL
*
PLAY11 LDY NOBJ
 INY
 BNE PLAY10
*
PLAY12 LDA PTM1
 AND #$1F
 BNE *+5
 JSR SCORE
 LDA PTM1
 AND #$03
 BNE *+8
 JSR SND
 JSR WIRING
*
 LDA $C000
 BMI *+5
 JMP PLAY7
 STA $C010
 CMP #$9B
 BEQ QUIT
 CMP #$93
 BNE *+6
 EOR STGL
 STA STGL
 JMP PLAY7
*
QUIT STA INITMODE
*
INITOBJS LDY #0
INITOBJ2 CPY RUNLEN
 BEQ INITOBJ4
 STY NOBJ
*
 LDX RCN,Y
 LDA VLO,X
 STA LB
 LDA VHI,X
 STA LB+1
 LDY #12
 LDA (LB),Y
 STA IMOD2
 INY
 LDA (LB),Y
 STA IMOD2+1
IMOD2 EQU *+1
 JSR $FFFF
*
 BIT INITMODE
 BPL INITOBJ3
 LDY NOBJ
 LDX RCN,Y
 LDA TIME,X
 LDY #8
 STA (LB),Y
INITOBJ3 LDY NOBJ
 INY
 BNE INITOBJ2
INITOBJ4 RTS
*
* PINBALL PARTS LIBRARY
*
POLY HEX 010004
 HEX B5B5A6A6
 HEX 1B2A2A1B
*
LAUNCHER HEX 031004
 HEX F6F6F0F0
 HEX 49545449
 DA LAUNCHERB
 HEX 4922020C010C0780
 DA LAUNCHRUN
 DA INITB
 DA LAUNCHHIT
*
LEFTFLIPPER HEX 031004
 HEX DCDCCACA
 HEX 02111102
 DA LFLIPB
 HEX 051C060C03240380
 DA LFLIPRUN
 DA FLIPINIT
 DA LFLIPHIT
*
RIGHTFLIPPER HEX 031004
 HEX ECECDADA
 HEX 02111102
 DA RFLIPB
 HEX 051F010C03240380
 DA RFLIPRUN
 DA FLIPINIT
 DA RFLIPHIT
*
BALL HEX 031004
 HEX F9F9F5F5
 HEX 05090905
 DA BALLB
 HEX 0523000501050080
 DA MOVEBALL
 DA INITBALL
 DA NULLBOUNCE
*
BMP1 HEX 031008
 HEX B2B7B7B2ABA6A6AB
 HEX 3034393D3D393430
 DA BMP1B
 HEX 3017050E032A0F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
BMP2 HEX 031008
 HEX C1C5C5C1BCB8B8BC
 HEX 3134383B3B383431
 DA BMP2B
 HEX 311A020B02160F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
BMP3 HEX 031004
 HEX CCCCC8C8
 HEX 303F3F30
 DA BMP3B
 HEX 2F1C031001100F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
BMP4 HEX 031004
 HEX E1E1CFCF
 HEX 35393935
 DA BMP4B
 HEX 341D020703150F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
BMP5 HEX 031004
 HEX E6EFECE3
 HEX 30393C33
 DA BMP5B
 HEX 2F20020D021A0F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
BMP6 HEX 031004
 HEX FAFDF4F1
 HEX 30333C39
 DA BMP6B
 HEX 2F22020D021A0F11
 DA BUMPRUN
 DA BUMPINIT
 DA BUMPHIT
*
LKICK HEX 031005
 HEX AAB8B8A6A6
 HEX 445A5D5944
 DA LKICKB
 HEX 4317051B03510F22
 DA BUMPRUN
 DA BUMPINIT
 DA KICKHIT
*
RKICK HEX 031005
 HEX D1D1BEBECE
 HEX 44595D5A44
 DA RKICKB
 HEX 431A061B03510F22
 DA BUMPRUN
 DA BUMPINIT
 DA KICKHIT
*
KICK1 HEX 031004
 HEX DADAD5D5
 HEX 4A53534A
 DA KNOCK1B
 HEX 481E031001100F33
 DA KNOCKRUN
 DA BUMPINIT
 DA KNOCK1HIT
*
KICK2 HEX 031004
 HEX EBEBDFDF
 HEX 4E53534E
 DA KNOCK2B
 HEX 4E1F050603120F33
 DA KNOCKRUN
 DA BUMPINIT
 DA KNOCK2HIT
*
ROLL1 HEX 031004
 HEX ADADA9A9
 HEX A0A4A4A0
 DA ROLLB
 HEX A018010501053F44
 DA FLASHRUN
 DA BUMPINIT
 DA ROLLHIT
*
ROLL2 HEX 031004
 HEX B4B4B0B0
 HEX A0A4A4A0
 DA ROLLB+10
 HEX A019010501053F44
 DA FLASHRUN
 DA BUMPINIT
 DA ROLLHIT
*
ROLL3 HEX 031004
 HEX BBBBB7B7
 HEX A0A4A4A0
 DA ROLLB+20
 HEX A01A010501053F44
 DA FLASHRUN
 DA BUMPINIT
 DA ROLLHIT
*
TARG1 HEX 031004
 HEX C6C6C0C0
 HEX A0A2A2A0
 DA ROLLB+30
 HEX A01B030301033F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
TARG2 HEX 031004
 HEX D1D1CBCB
 HEX A0A2A2A0
 DA ROLLB+36
 HEX A01D000301033F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
TARG3 HEX 031004
 HEX DCDCD6D6
 HEX A0A2A2A0
 DA ROLLB+42
 HEX A01E040301033F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
TARG4 HEX 031004
 HEX E5E5E3E3
 HEX A0A6A6A0
 DA ROLLB+48
 HEX A020030701073F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
TARG5 HEX 031004
 HEX ECECEAEA
 HEX A0A6A6A0
 DA ROLLB+62
 HEX A021030701073F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
TARG6 HEX 031004
 HEX F3F3F1F1
 HEX A0A6A6A0
 DA ROLLB+76
 HEX A022030701073F55
 DA FLASHRUN
 DA BUMPINIT
 DA FLASHHIT
*
LFLIPPER2 HEX 031004
 HEX B2B2A6A6
 HEX 050E0E05
 DA LFLIP2B
 HEX 0717050802100380
 DA LFLIP2RUN
 DA FLIP2INIT
 DA LFLIP2HIT
*
RFLIPPER2 HEX 031004
 HEX BFBFB3B3
 HEX 050E0E05
 DA RFLIP2B
 HEX 0719040802100380
 DA RFLIP2RUN
 DA FLIP2INIT
 DA RFLIP2HIT
*
POLY1 HEX 010604
 HEX C7C7C6C6
 HEX 1B2C2C1B
*
POLY2 HEX 010604
 HEX CDCDCCCC
 HEX 202C2C20
*
POLY3 HEX 010604
 HEX F3D2D2F3
 HEX 252C2A23
*
POLY4 HEX 010604
 HEX D2F3F3D2
 HEX 161D1F18
*
LANE1 HEX 031004
 HEX ADADA9A9
 HEX 90999990
 DA LANEB
 HEX 9018010A010AFF80
 DA NULL
 DA NULL
 DA PBOUNCE
*
LANE2 HEX 031004
 HEX B7B7B3B3
 HEX 90979790
 DA LANEB+10
 HEX 901904080108FF80
 DA NULL
 DA NULL
 DA PBOUNCE
*
LANE3 HEX 031004
 HEX C1C1BDBD
 HEX 90949490
 DA LANEB+18
 HEX 901B00050105FF80
 DA NULL
 DA NULL
 DA PBOUNCE
*
GATE1 HEX 031004
 HEX CFCFC9C9
 HEX 90989895
 DA LANEB+23
 HEX 901C05090109FF80
 DA NULL
 DA NULL
 DA GATEHIT
*
GATE2 HEX 031004
 HEX DDDDD7D7
 HEX 95989890
 DA LANEB+32
 HEX 901E05090109FF80
 DA NULL
 DA NULL
 DA GATEHIT
*
GATE3 HEX 031004
 HEX EBEBE5E5
 HEX 90989890
 DA LANEB+41
 HEX 902005090109FF80
 DA NULL
 DA NULL
 DA GATE2HIT
*
GATE4 HEX 031004
 HEX F9F9F3F3
 HEX 90989890
 DA LANEB+50
 HEX 902205090109FF80
 DA NULL
 DA NULL
 DA GATE3HIT
*
DROP1 HEX 031004
 HEX D5D5B6B6
 HEX 64676764
 DA DROP1B
 HEX 641A000405141F55
 DA DROP1RUN
 DA DROP1INIT
 DA DROP1HIT
 HEX 00
*
DROP2 HEX 031004
 HEX ACACA9A9
 HEX 64838364
 DA DROP2B
 HEX 6418002001201F55
 DA DROP2RUN
 DA DROP2INIT
 DA DROP2HIT
 HEX 00
*
CATCH1 HEX 031005
 HEX C4C4BABABF
 HEX 6C7E7E6C6E
 DA CATCH1B
 HEX 6C1A041302260F55
 DA NULL
 DA CATCH1INIT
 DA CATCH1HIT
*
CATCH2 HEX 031004
 HEX D5D5CBCB
 HEX 70787870
 DA CATCH2B
 HEX 701D000902120F05
 DA CATCH2RUN
 DA BUMPINIT
 DA CATCH2HIT
*
SPIN1 HEX 031004
 HEX ECECE6E6
 HEX 64686864
 DA SPINB
 HEX 6420060501050711
 DA SPINRUN
 DA SPININIT
 DA SPINHIT
*
MAG1 HEX 031004
 HEX EFEFE6E6
 HEX 747A7A74
 DA MAGB
 HEX 74200407020E0FB3
 DA NULL
 DA NULL
 DA MAGHIT
