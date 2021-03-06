
	; Microchip MPLAB XC8 C Compiler V1.38
	; Copyright (C) 1984-2016 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F4550 Flowcode1.c --MSGDISABLE=359,1273,1388
	;


	processor	18F4550

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CONST,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto start
	GLOBAL __accesstop
__accesstop EQU 96


	psect	init
start:

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	060h
	stackhi	equ	07FFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:

	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1L @ 0x300000
;	PLL Prescaler Selection bits
;	PLLDIV = 5, Divide by 5 (20 MHz oscillator input)
;	System Clock Postscaler Selection bits
;	CPUDIV = OSC2_PLL3, [Primary Oscillator Src: /2][96 MHz PLL Src: /3]
;	USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1)
;	USBDIV = 2, USB clock source comes from the 96 MHz PLL divided by 2

	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0x2C

; Config register CONFIG1H @ 0x300001
;	Oscillator Selection bits
;	FOSC = HSPLL_HS, HS oscillator, PLL enabled (HSPLL)
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = ON, Fail-Safe Clock Monitor enabled
;	Internal/External Oscillator Switchover bit
;	IESO = ON, Oscillator Switchover mode enabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0xCE

; Config register CONFIG2L @ 0x300002
;	Power-up Timer Enable bit
;	PWRT = OFF, PWRT disabled
;	Brown-out Reset Enable bits
;	BOR = ON, Brown-out Reset enabled in hardware only (SBOREN is disabled)
;	Brown-out Reset Voltage bits
;	BORV = 3, Minimum setting 2.05V
;	USB Voltage Regulator Enable bit
;	VREGEN = ON, USB voltage regulator enabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0x3F

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer Enable bit
;	WDT = OFF, WDT disabled (control is placed on the SWDTEN bit)
;	Watchdog Timer Postscale Select bits
;	WDTPS = 32768, 1:32768

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0x1E

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0xFF

; Config register CONFIG3H @ 0x300005
;	CCP2 MUX bit
;	CCP2MX = ON, CCP2 input/output is multiplexed with RC1
;	PORTB A/D Enable bit
;	PBADEN = ON, PORTB<4:0> pins are configured as analog input channels on Reset
;	Low-Power Timer 1 Oscillator Enable bit
;	LPT1OSC = ON, Timer1 configured for low-power operation
;	MCLR Pin Enable bit
;	MCLRE = ON, MCLR pin enabled; RE3 input pin disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0x87

; Config register CONFIG4L @ 0x300006
;	Stack Full/Underflow Reset Enable bit
;	STVREN = ON, Stack full/underflow will cause Reset
;	Single-Supply ICSP Enable bit
;	LVP = OFF, Single-Supply ICSP disabled
;	Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit
;	ICPRT = OFF, ICPORT disabled
;	Extended Instruction Set Enable bit
;	XINST = OFF, Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;	Background Debugger Enable bit
;	DEBUG = OFF, Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0x81

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG5L @ 0x300008
;	Code Protection bit
;	CP0 = OFF, Block 0 (000800-001FFFh) is not code-protected
;	Code Protection bit
;	CP1 = OFF, Block 1 (002000-003FFFh) is not code-protected
;	Code Protection bit
;	CP2 = OFF, Block 2 (004000-005FFFh) is not code-protected
;	Code Protection bit
;	CP3 = OFF, Block 3 (006000-007FFFh) is not code-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x8
		db 0xF

; Config register CONFIG5H @ 0x300009
;	Boot Block Code Protection bit
;	CPB = OFF, Boot block (000000-0007FFh) is not code-protected
;	Data EEPROM Code Protection bit
;	CPD = OFF, Data EEPROM is not code-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x9
		db 0xC0

; Config register CONFIG6L @ 0x30000A
;	Write Protection bit
;	WRT0 = OFF, Block 0 (000800-001FFFh) is not write-protected
;	Write Protection bit
;	WRT1 = OFF, Block 1 (002000-003FFFh) is not write-protected
;	Write Protection bit
;	WRT2 = OFF, Block 2 (004000-005FFFh) is not write-protected
;	Write Protection bit
;	WRT3 = OFF, Block 3 (006000-007FFFh) is not write-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xA
		db 0xF

; Config register CONFIG6H @ 0x30000B
;	Configuration Register Write Protection bit
;	WRTC = OFF, Configuration registers (300000-3000FFh) are not write-protected
;	Boot Block Write Protection bit
;	WRTB = OFF, Boot block (000000-0007FFh) is not write-protected
;	Data EEPROM Write Protection bit
;	WRTD = OFF, Data EEPROM is not write-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xB
		db 0xE0

; Config register CONFIG7L @ 0x30000C
;	Table Read Protection bit
;	EBTR0 = OFF, Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks
;	Table Read Protection bit
;	EBTR1 = OFF, Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks
;	Table Read Protection bit
;	EBTR2 = OFF, Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks
;	Table Read Protection bit
;	EBTR3 = OFF, Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xC
		db 0xF

; Config register CONFIG7H @ 0x30000D
;	Boot Block Table Read Protection bit
;	EBTRB = OFF, Boot block (000000-0007FFh) is not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xD
		db 0x40


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect sfr,class=SFR,space=1


	end	start
