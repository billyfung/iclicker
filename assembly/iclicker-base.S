; gcc messes this up, so need to define it here
#define __SFR_OFFSET 0
#include <avr/io.h>

; ---------------------------------------------------------------------------

;
;
; Input	MD5   :	6AD9FDB529ABD348D5DD7AAC8E3A8FBF

; File Name   :	Z:\home\x\Desktop\Arduino\flash.hex
; Format      :	Binary file
; Base Address:	0000h Range: 0000h - 07B8h Loaded length: 07B8h

; Processor	  : AVR	     [ATmega8_L]
; Target assembler: AVR	Assembler

; ===========================================================================

; 
; SRAM variables
;

.equ new_channel_0,					0x160
.equ new_channel_1,					0x161
.equ button_state,					0x162
.equ current_mode,					0x163
.equ data_to_send,					0x164
.equ xef_failure_count,				0x165
.equ frequency_not_synced,			0x166
.equ next_mode,						0x167
.equ timer_1s,						0x168
.equ timer_power_off_counter_L,		0x169
.equ timer_power_off_counter_H,		0x16a
.equ timer_pattern_timeout_10ms_L,	0x16b
.equ timer_pattern_timeout_10ms_H,	0x16c
.equ timer_40ms_L,					0x16d
.equ timer_40ms_H,					0x16e
.equ timer_50ms_L,					0x16f
.equ timer_50ms_H,					0x170
.equ battery_voltage_L,				0x171
.equ battery_voltage_H,				0x172
.equ battery_counter_L,				0x173
.equ battery_counter_H,				0x174
.equ button_last_pressed,			0x175
.equ button_debounce,				0x176
.equ button_power_held_from_start,	0x177
.equ button_power_held_count,		0x178
.equ button_something_pressed,		0x179
.equ battery_dying_timer_L,			0x17a
.equ battery_dying_timer_H,			0x17b
.equ led_channel_select_time_left,	0x17c
.equ channel_is_selected,			0x17d
.equ led_status_red_time_left_L,	0x17e
.equ led_status_red_time_left_H,	0x17f
.equ led_status_red_switch_timer,	0x180
.equ led_failed_vote,				0x181
.equ led_status_time_left_L,		0x182
.equ led_status_time_left_H,		0x183
.equ led_status_on,					0x184
.equ current_channel_0,				0x185
.equ current_channel_1,				0x186
.equ short_packet_0,				0x187
.equ short_packet_1,				0x188
.equ short_packet_2,				0x189
.equ short_packet_3,				0x18a
.equ short_packet_4,				0x18b
.equ short_packet_5,				0x18c
.equ short_packet_6_id_0,			0x18d
.equ short_packet_7_id_1,			0x18e
.equ short_packet_8_id_2,			0x18f
.equ short_packet_9_id_3,			0x190
.equ short_packet_10,				0x191
.equ long_packet_0,					0x192
.equ long_packet_1,					0x193
.equ long_packet_2,					0x194
.equ long_packet_3,					0x195
.equ long_packet_4,					0x196
.equ long_packet_5,					0x197
.equ long_packet_6,					0x198
.equ long_packet_7,					0x199
.equ long_packet_8,					0x19a
.equ long_packet_9_id_0,			0x19b
.equ long_packet_10_id_1,			0x19c
.equ long_packet_11_id_2,			0x19d
.equ long_packet_12_id_3,			0x19e
.equ long_packet_13,				0x19f

; Segment type:	Pure code
.section .text
.org 0x0

; =============== S U B	R O U T	I N E =======================================

; Store	Program	Memory Ready

		; public SPM_RDY
SPM_RDY:				; CODE XREF: ROM:0002j	ROM:0003j ...
		rjmp	__RESET		; INT1_
; End of function SPM_RDY		; TIMER2_COMP
					; TIMER2_OVF
					; TIMER1_CAPT
					; TIMER1_COMPA
					; TIMER1_COMPB
					; TIMER1_OVF
					; SPI_STC
					; USART_RXC
					; USART_UDRE
					; USART_TXC
					; EE_RDY
					; ANA_COMP
					; TWI_
; ---------------------------------------------------------------------------
		rjmp	INT0_		; External Interrupt Request 0
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	TIMER0_OVF	; Timer/Counter0 Overflow
					; -> occurs every 10 ms
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	ADC_		; ADC Conversion Complete
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		rjmp	SPM_RDY		; Store	Program	Memory Ready
; ---------------------------------------------------------------------------
		.word	 0

; =============== S U B	R O U T	I N E =======================================

; External Pin,	Power-on Reset,	Brown-out

		; public __RESET
__RESET:				; CODE XREF: SPM_RDYj
		cli
		clr	r30
		out	EECR, r30	; reset	EEPROM Control Register
		ldi	r31, 1
		out	GICR, r31
		out	GICR, r30	; set interrupt	vector to 0x0
		out	MCUCR, r30	; disable sleep/idle/power-down
		ldi	r31, 0x18
		out	WDTCR, r31
		out	WDTCR, r30	; disable WDT
		ldi	r24, 0xD
		ldi	r26, 2
		clr	r27

clear_r2_to_r15:			; CODE XREF: __RESET+Fj
		st	X+, r30
		dec	r24
		brne	clear_r2_to_r15	; ram 0-0x1f addresses are the registers...
		ldi	r24, 0
		ldi	r25, 4
		ldi	r26, 0x60 ; '`'

zero_sram:				; CODE XREF: __RESET+15j
		st	X+, r30
		sbiw	r24, 1		; R25:R24 -= 1
		brne	zero_sram	; ram is from 0x60 to 0x45f -> 0x400 bytes
		ldi	r30, 0x26 ; '&' ; lpm makes no sense... -> 0x26 actually does 0x13?
		ldi	r31, 0

set_initial_sram_values:		; CODE XREF: __RESET+27j
		lpm	r24, Z+		; I think that this looks for some sort	of a table after
					; the interrupt	vector and copies it to	specified locations
					; in the table in ram. the table has no	entries	in this
					; code though. Check with avr-gcc to see maybe?
		lpm	r25, Z+
		sbiw	r24, 0
		breq	set_stack_pointer
		lpm	r26, Z+
		lpm	r27, Z+
		lpm	r0, Z+
		lpm	r1, Z+
		movw	r22, r30
		movw	r30, r0

loc_36:					; CODE XREF: __RESET+25j
		lpm	r0, Z+
		st	X+, r0
		sbiw	r24, 1
		brne	loc_36
		movw	r30, r22
		rjmp	set_initial_sram_values
; ---------------------------------------------------------------------------

set_stack_pointer:			; CODE XREF: __RESET+1Bj
		ldi	r30, 0x5F ; '_' ; stack at 0x45f (end of ram, growing down)
		out	SPL, r30
		ldi	r30, 4
		out	SPH, r30
		ldi	r28, 0x60 ; '`'
		ldi	r29, 1		; Y = 0x160 -> pointer to start	of globals
		rjmp	loc_43		; um...	ok... great job	guys

loc_43:
		rcall	setup

main_loop:				; CODE XREF: __RESET:next_loopj
		ser	r30
		sts	button_state, r30 ; 0xff/-1
		sbrs	r4, 4		; if bit 4 of r4
					; -> this bit is set by	the timer when it goes off
					; -> only check	for key	presses	every time the timer
					; goes off...
					; -> button press is equal to -1 if the	timer didn't go off,
					; regardless of	actual button state
		rjmp	skip_timer_update
; ======================
; start	of timer updates
; ======================


timer_update:				;
		cli			; disable interrupts
		ldi	r30, 0xEF	; clear	bit 4 of r4
		and	r4, r30
		sei

update_timer_40ms:			; -> 40	ms intervals
		lds	r30, timer_40ms_L
		lds	r31, timer_40ms_H
		sbiw	r30, 1
		sts	timer_40ms_L, r30
		sts	timer_40ms_H, r31
		sbiw	r30, 0
		brne	update_timer_50ms
		rcall	timer_40ms_reset

update_timer_50ms:			; CODE XREF: __RESET+43j
		lds	r30, timer_50ms_L ; -> 50 ms intervals
		lds	r31, timer_50ms_H
		sbiw	r30, 1
		sts	timer_50ms_L, r30
		sts	timer_50ms_H, r31
		sbiw	r30, 0
		brne	update_timer_pattern_timeout_10ms
		rcall	timer_50ms_reset

update_timer_pattern_timeout_10ms:	; CODE XREF: __RESET+4Fj
		rcall	timer_pattern_timeout_10ms_eq_0
		breq	update_timer_1s
		lds	r30, timer_pattern_timeout_10ms_L
		lds	r31, timer_pattern_timeout_10ms_H
		sbiw	r30, 1
		sts	timer_pattern_timeout_10ms_L, r30
		sts	timer_pattern_timeout_10ms_H, r31

update_timer_1s:			; CODE XREF: __RESET+52j
		rcall	timer_1s_eq_0	; -> 1 second intervals
		breq	update_button_state
		lds	r30, timer_1s
		subi	r30, 1
		sts	timer_1s, r30

update_button_state:			; CODE XREF: __RESET+5Dj
		rcall	button_update_state
		sts	button_state, r30
		lds	r26, button_state
		cpi	r26, 0x11
		brne	button_check_ne_0x11

button_check_0x11_enter_channel_select:	; enter	channel	select mode
		rcall	channel_is_selected_set_false_wrapper
		rcall	frequency_not_synced_set_0
		ldi	r30, 0
		sts	current_mode, r30 ; enter mode 0 = channel select

button_check_ne_0x11:			; CODE XREF: __RESET+69j
		rcall	battery_update
		rcall	led_update

; ============================================
; end of timer updates,	begin of button	checks
; ============================================

skip_timer_update:			; CODE XREF: __RESET+34j
		lds	r26, button_state
		cpi	r26, 1
		brne	button_check_ne_0x1

button_check_0x1_power_off:
		rcall	power_off_wrapper

button_check_ne_0x1:			; CODE XREF: __RESET+74j
		lds	r26, button_state
		cpi	r26, 0x12
		brne	button_check_ne_0x12

button_check_0x12_power_c:
		rcall	eeprom_read_version_major
		st	-Y, r31
		st	-Y, r30
		rcall	power_off

button_check_ne_0x12:			; CODE XREF: __RESET+79j
		lds	r30, current_mode
		cpi	r30, 0
		brne	mode_not_0
; ========================================
; end of button	checks,	begin of mode code
; ========================================


; ===========
; MODE 0
; channel select 0
; ===========

mode_0:					; mode 0 (select the second channel character)
		rcall	button_state_check_nothing
		breq	mode_0_done
		rcall	button_state_check_A ; r30 = button_last_check after this call
		brne	A_not_pressed

A_pressed:
		ldi	r16, 0x21 ; '!'
		rjmp	process_press_channel_0
; ---------------------------------------------------------------------------

A_not_pressed:				; CODE XREF: __RESET+85j
		cpi	r30, 4
		brne	B_not_pressed

B_pressed:
		ldi	r16, 0x22 ; '"'
		rjmp	process_press_channel_0
; ---------------------------------------------------------------------------

B_not_pressed:				; CODE XREF: __RESET+89j
		cpi	r30, 8
		brne	C_not_pressed

C_pressed:
		ldi	r16, 0x23 ; '#'
		rjmp	process_press_channel_0
; ---------------------------------------------------------------------------

C_not_pressed:				; CODE XREF: __RESET+8Dj
		cpi	r30, 0x20 ; ' '
		brne	D_not_pressed

D_pressed:
		ldi	r16, 0x24 ; '$'
		rjmp	process_press_channel_0
; ---------------------------------------------------------------------------

D_not_pressed:				; CODE XREF: __RESET+91j
		ser	r16		; -1

process_press_channel_0:		; CODE XREF: __RESET+87j __RESET+8Bj ...
		cpi	r16, -1		; r16 holds key	pressed	code or	-1
		breq	mode_0_done
		rcall	mov_r30_r16_mov_r31_0
		sts	new_channel_0, r30
		sts	new_channel_1, r31
		ldi	r30, 4
		rcall	led_status_1_on_forever	; both status leds, on forever
		ldi	r30, 1
		sts	current_mode, r30 ; current mode = 1 ->	channel	select 1

mode_0_done:				; CODE XREF: __RESET+83j __RESET+96j
		rjmp	mode_done
; ---------------------------------------------------------------------------

mode_not_0:				; CODE XREF: __RESET+81j
		cpi	r30, 1
		brne	mode_not_1_channel_select_1
; ===========
; MODE 1
; channel select 1
; ===========

mode_1:					; mode 1 (select the second channel character)
		rcall	button_state_check_nothing
		breq	mode_1_done
		rcall	button_state_check_A
		brne	A_not_pressed_2
		ldi	r16, 0x41 ; 'A'
		rjmp	process_press_channel_1
; ---------------------------------------------------------------------------

A_not_pressed_2:			; CODE XREF: __RESET+A7j
		cpi	r30, 4
		brne	B_not_pressed_2
		ldi	r16, 0x42 ; 'B'
		rjmp	process_press_channel_1
; ---------------------------------------------------------------------------

B_not_pressed_2:			; CODE XREF: __RESET+ABj
		cpi	r30, 8
		brne	C_not_pressed_2
		ldi	r16, 0x43 ; 'C'
		rjmp	process_press_channel_1
; ---------------------------------------------------------------------------

C_not_pressed_2:			; CODE XREF: __RESET+AFj
		cpi	r30, 0x20 ; ' '
		brne	D_not_pressed_2
		ldi	r16, 0x44 ; 'D'
		rjmp	process_press_channel_1
; ---------------------------------------------------------------------------

D_not_pressed_2:			; CODE XREF: __RESET+B3j
		ser	r16		; -1

process_press_channel_1:		; CODE XREF: __RESET+A9j __RESET+ADj ...
		cpi	r16, -1
		breq	mode_1_done
		lds	r30, new_channel_0
		lds	r31, new_channel_1
		mov	r31, r30
		ldi	r30, 0
		movw	r26, r30
		rcall	mov_r30_r16_mov_r31_0
		or	r30, r26
		or	r31, r27	; mash the previous character and the new one into
					; r30 (old) and	r31 (new)
		rcall	frequency_set
		ldi	r30, 2
		sts	data_to_send, r30 ; 2 -> channel switch
		rcall	mode_set_3
		rcall	set_0x165_1

mode_1_done:				; CODE XREF: __RESET+A5j __RESET+B8j
		rjmp	mode_done
; ---------------------------------------------------------------------------

mode_not_1_channel_select_1:		; CODE XREF: __RESET+A3j
		cpi	r30, 2
		brne	mode_not_2
; ===========
; MODE 2
; startup
; ===========

mode_2:					; mode 2
		ldi	r30, 0x41 ; 'A'
		ldi	r31, 0x21 ; '!'
		rcall	frequency_set	; set frequency	AA
		rcall	channel_is_selected_set_true
		ldi	r30, 1
		sts	frequency_not_synced, r30
		ldi	r30, 8		; set mode 8
		rjmp	set_mode	; set mode 8
; ---------------------------------------------------------------------------

mode_not_2:				; CODE XREF: __RESET+CBj
		cpi	r30, 3
		brne	mode_not_3
; ===========
; MODE 3
; send vote
; ===========

mode_3:
		rcall	led_status_off_and_push_Y_data_to_send
		rcall	xef_send_long_sync
		rcall	xef_pattern_setup
		rjmp	set_mode	; set mode 5
; ---------------------------------------------------------------------------

mode_not_3:				; CODE XREF: __RESET+D6j
		cpi	r30, 4
; ===========
; MODE 4
; send id
; ===========

mode_4:
		brne	mode_not_4
		rcall	led_status_off_and_push_Y_data_to_send
		rcall	xef_send_short_sync
		rcall	xef_pattern_setup
		rjmp	set_mode	; set mode 5
; ---------------------------------------------------------------------------

mode_not_4:				; CODE XREF: __RESET:mode_4j
		cpi	r30, 5
		brne	mode_not_5
; ===========
; MODE 5
; pattern confirmation
; ===========

mode_5:
		rcall	timer_pattern_timeout_10ms_eq_0
		brne	pattern_timer_check

pattern_timer_timeout:			; pattern matching failed if we	reach here
		lds	r26, xef_failure_count
		cpi	r26, 3
		brcc	three_or_more_fails
		lds	r30, xef_failure_count
		subi	r30, -1
		sts	xef_failure_count, r30 ; xef_failure_count += 1
		ldi	r30, 6
		sts	current_mode, r30 ; mode = 6
		rjmp	xef_off_mode_5_done
; ---------------------------------------------------------------------------

three_or_more_fails:			; CODE XREF: __RESET+E8j
		rcall	Y_push_3
		rcall	led_status_red_on ; status red on 1s
		rcall	mode_set_7	; mode = 7 -> wait for status led to go	off
		lds	r26, data_to_send ; cmp	2 -> channel switch
		cpi	r26, 2
		brne	failed_vote

failed_channel_switch:			; mode 0, switch channels
		ldi	r30, 0
		rjmp	switch_modes
; ---------------------------------------------------------------------------

failed_vote:				; CODE XREF: __RESET+F8j
		ldi	r30, 8		; mode 8, voting mode

switch_modes:				; CODE XREF: __RESET+FAj
		sts	next_mode, r30	; mode 8 or mode 0

xef_off_mode_5_done:			; CODE XREF: __RESET+F1j
		rcall	xef_sleep
		rjmp	mode_5_done
; ---------------------------------------------------------------------------

pattern_timer_check:			; CODE XREF: __RESET+E4j
		ldi	r30, 1
		cp	r30, r5		; ext interrupt, triggered when	pattern	is matched
		brne	mode_5_done	; pattern not found yet

pattern_found:
		ldi	r30, 0x18
		ldi	r31, 0x15
		sts	timer_power_off_counter_L, r30
		sts	timer_power_off_counter_H, r31 ; reset timeout:	5400 (*100) = 540000 timesteps
					; -> 90	mins
		clr	r5		; reset	ext interrupt
		rcall	Y_push_2
		rcall	Y_push_1
		rcall	led_status_green_on ; green/top	led on,	turn off after 750 ms
		rcall	mode_set_7	; mode = 7 (wait for led off)
		ldi	r30, 8
		sts	next_mode, r30	; next_mode = 8	(vote mode)
		rcall	xef_sleep
		rcall	channel_is_selected_set_true

mode_5_done:				; CODE XREF: __RESET+FFj __RESET+102j
		rjmp	mode_done
; ---------------------------------------------------------------------------

mode_not_5:				; CODE XREF: __RESET+E2j
		cpi	r30, 6
		brne	mode_not_6
; ===========
; MODE 6
; failed communication retry
; ===========

mode_6:
		lds	r26, xef_failure_count
		cpi	r26, 2
		brne	failure_count_1

failure_count_2:			; wait until the 40ms timer ticks (not reset, so
		lds	r26, timer_40ms_L ; this is semi-random) and try again
		lds	r27, timer_40ms_H
		cpi	r26, 1
		ldi	r30, 0
		cpc	r27, r30
		brne	mode_6_done_wrapper
		rcall	mode_set_4	; mode = 4 -> resend data

mode_6_done_wrapper:			; CODE XREF: __RESET+121j
		rjmp	mode_6_done
; ---------------------------------------------------------------------------

failure_count_1:			; CODE XREF: __RESET+119j
		lds	r26, timer_50ms_L ; wait until the 50ms	timer ticks (not reset,	so
					; this is semi-random) and try again
		lds	r27, timer_50ms_H
		cpi	r26, 1
		ldi	r30, 0
		cpc	r27, r30
		brne	mode_6_done
		rcall	mode_set_4	; mode = 4 -> resend data

mode_6_done:				; CODE XREF: __RESET:mode_6_done_wrapperj
					; __RESET+12Bj
		rjmp	mode_done
; ---------------------------------------------------------------------------

mode_not_6:				; CODE XREF: __RESET+115j
		cpi	r30, 7
		brne	mode_not_7
; ===========
; MODE 7
; wait for status led to go off
; ===========

mode_7:
		lds	r30, led_status_on
		cpi	r30, 0
		brne	mode_7_done	; wait for the status led to go	off from the timer stuff

set_led_status_on:
		lds	r30, next_mode
		sts	current_mode, r30 ; load and go	to the next mode

mode_7_done:				; CODE XREF: __RESET+133j
		rjmp	mode_done
; ---------------------------------------------------------------------------

mode_not_7:				; CODE XREF: __RESET+12Fj
		cpi	r30, 8
		brne	mode_not_8
; ===========
; MODE 8
; voting mode
; ===========

mode_8:
		rcall	button_state_check_nothing
		breq	mode_8_done
		rcall	button_state_check_A
		brne	A_not_pressed_3

A_pressed_3:
		ldi	r30, 1
		rjmp	process_press
; ---------------------------------------------------------------------------

A_not_pressed_3:			; CODE XREF: __RESET+13Ej
		cpi	r30, 4
		brne	B_not_pressed_3

B_pressed_3:
		ldi	r30, 5
		rjmp	process_press
; ---------------------------------------------------------------------------

B_not_pressed_3:			; CODE XREF: __RESET+142j
		cpi	r30, 8
		brne	C_not_pressed_3

C_pressed_3:
		ldi	r30, 0xD
		rjmp	process_press
; ---------------------------------------------------------------------------

C_not_pressed_3:			; CODE XREF: __RESET+146j
		cpi	r30, 0x20 ; ' '
		brne	D_not_pressed_3

D_pressed_3:
		ldi	r30, 0xE
		rjmp	process_press
; ---------------------------------------------------------------------------

D_not_pressed_3:			; CODE XREF: __RESET+14Aj
		cpi	r30, 0x10
		brne	E_not_pressed_3

E_pressed_3:
		ldi	r30, 0xA
		rjmp	process_press
; ---------------------------------------------------------------------------

E_not_pressed_3:			; CODE XREF: __RESET+14Ej
		ser	r30

process_press:				; CODE XREF: __RESET+140j __RESET+144j ...
		sts	data_to_send, r30 ; 1,5,d,e or a -> vote
		lds	r26, data_to_send
		cpi	r26, 0xFF
		breq	mode_8_done
		lds	r30, frequency_not_synced ; not	sure about this	var name/use...
		cpi	r30, 0
		breq	setup_done

setup_not_done:
		rcall	mode_set_3
		rcall	frequency_not_synced_set_0
		rjmp	loc_174
; ---------------------------------------------------------------------------

setup_done:				; CODE XREF: __RESET+15Bj
		rcall	mode_set_4

loc_174:				; CODE XREF: __RESET+15Ej
		rcall	set_0x165_1

mode_8_done:				; CODE XREF: __RESET+13Cj __RESET+157j
		rjmp	mode_done
; ---------------------------------------------------------------------------
; ===========
; MODE OTHER
; we are super lost... ugh
; ===========

mode_not_8:				; CODE XREF: __RESET+13Aj
		ldi	r30, 3		; not sure what	this is	supposed to be
					; -> lost? or actual mode?
		rcall	led_status_1_on_forever	; bottom status	led, on	forever
		ldi	r30, 0		; set mode 0 ->	channel	select 0

set_mode:				; CODE XREF: __RESET+D4j __RESET+DAj ...
		sts	current_mode, r30

mode_done:				; CODE XREF: __RESET:mode_0_donej
					; __RESET:mode_1_donej	...
		rcall	timer_1s_eq_0	; times	in turn_off_counter are	actually 100
					; timesteps times the stored value
		brne	next_loop
		lds	r30, timer_power_off_counter_L
		lds	r31, timer_power_off_counter_H
		sbiw	r30, 1
		sts	timer_power_off_counter_L, r30
		sts	timer_power_off_counter_H, r31 ; decrease counter
		sbiw	r30, 0
		brne	power_off_timer_ne_0
		rcall	power_off_wrapper
		rjmp	next_loop
; ---------------------------------------------------------------------------

power_off_timer_ne_0:			; CODE XREF: __RESET+173j
		rcall	timer_1s_reset

next_loop:				; CODE XREF: __RESET+168j __RESET+175j
		rjmp	main_loop
; End of function __RESET

; ---------------------------------------------------------------------------
		.word 0xCFFF ;  Ï

; =============== S U B	R O U T	I N E =======================================

; sets the default pin states

setup:					; CODE XREF: __RESET:loc_43p
		cli			; disable interrupts
		ldi	r30, 0x2E ; '.'
		out	DDRB, r30	; PB 1,2,3,5 outputs, 0,4,6,7 inputs
		ldi	r30, 2
		out	PORTB, r30	; B1 = 1, all others to	0
		ldi	r30, 0xF8
		out	DDRD, r30	; PD 3,4,5,6,7 outputs,	0,1,2 inputs
					; -> LEDs + XEF	stuff
		out	PORTD, r30	; set PD 3,4,5,6,7 to 1
					; -> all LEDs off
		ldi	r30, 0
		out	DDRC, r30	; PC, all inputs
					; -> buttons
		ldi	r30, 0x3F ; '?'
		out	PORTC, r30	; PC, no pullup
		rcall	battery_adc_setup
		rcall	led_setup
		rcall	button_reset
		rcall	spi_setup
		rcall	xef_setup
		rcall	timer_setup
		clr	r4
		ldi	r30, 0
		sts	timer_pattern_timeout_10ms_L, r30 ; 0
		sts	timer_pattern_timeout_10ms_H, r30 ; 0
		rcall	timer_1s_reset
		ldi	r30, 0x2C ; ','
		ldi	r31, 1
		sts	timer_power_off_counter_L, r30
		sts	timer_power_off_counter_H, r31 ; initial timeout: 300 (*100) = 30000 timesteps
					; -> 5 minutes
					; -> lower than	the 1 hour later to avoid pocket turn ons
		rcall	timer_40ms_reset
		rcall	timer_50ms_reset
		rcall	frequency_not_synced_set_0
		rcall	id_encode
		ldi	r30, 2
		sts	current_mode, r30 ; enter mode 2 = setup mode
		ldi	r30, 3
		out	MCUCR, r30	; enable INT0 rising interrupt
		ldi	r30, 0x40 ; '@'
		out	GIFR, r30	; clear	interrupt 0
		out	GICR, r30	; enable interrupt 0
		sei			; enable interrupts
		ret
; End of function setup


; =============== S U B	R O U T	I N E =======================================

; External Interrupt Request 0

		; public INT0_
INT0_:					; CODE XREF: ROM:0001j
		st	-Y, r30
		ldi	r30, 1
		mov	r5, r30
		ld	r30, Y+
		reti
; End of function INT0_


; =============== S U B	R O U T	I N E =======================================


power_off:				; CODE XREF: __RESET+7Dp
					; power_off_wrapper+4j
		cli			; disable interrupts
		rcall	led_off_all
		ld	r30, Y
		ldd	r31, Y+1
		sbiw	r30, 0
		breq	params_0x0
		st	-Y, r31		; get here if we came via on and c
		st	-Y, r30
		rcall	power_off_button_on_and_c

params_0x0:				; CODE XREF: power_off+5j
		cbi	PORTB, PORTB1	; B1 off

endless_loop:				; CODE XREF: power_off:endless_loopj
		rjmp	endless_loop
; End of function power_off


; =============== S U B	R O U T	I N E =======================================


timer_setup:				; CODE XREF: setup+11p
		ldi	r30, 1
		out	TIFR, r30	; clear	overflow
		out	TIMSK, r30	; enable interrupts
		ldi	r30, 4
		out	TCCR0, r30	; clk/256
		rcall	timer_reset_counter
		ret
; End of function timer_setup


; =============== S U B	R O U T	I N E =======================================

; Timer/Counter0 Overflow
; -> occurs every 10 ms

		; public TIMER0_OVF
TIMER0_OVF:				; CODE XREF: ROM:0009j
		st	-Y, r30
		in	r30, SREG
		st	-Y, r30
		rcall	timer_reset_counter
		ldi	r30, 0x10
		or	r4, r30
		ld	r30, Y+
		out	SREG, r30
		ld	r30, Y+
		reti
; End of function TIMER0_OVF


; =============== S U B	R O U T	I N E =======================================


eeprom_read_id_byte_0:			; CODE XREF: id_encode+1p
		ldi	r26, 0
		ldi	r27, 0
		rcall	eeprom_read_byte
		ret
; End of function eeprom_read_id_byte_0


; =============== S U B	R O U T	I N E =======================================


eeprom_read_id_byte_1:			; CODE XREF: id_encode+3p
		ldi	r26, 1
		ldi	r27, 0
		rcall	eeprom_read_byte
		ret
; End of function eeprom_read_id_byte_1


; =============== S U B	R O U T	I N E =======================================


eeprom_read_id_byte_2:			; CODE XREF: id_encode+5p
		ldi	r26, 2
		ldi	r27, 0
		rcall	eeprom_read_byte
		ret
; End of function eeprom_read_id_byte_2


; =============== S U B	R O U T	I N E =======================================

; reads	the major version (2)

eeprom_read_version_major:		; CODE XREF: __RESET:button_check_0x12_power_cp
		ldi	r26, 0x40 ; '@'
		ldi	r27, 0
		rcall	eeprom_read_byte_X_plus_1
		ret
; End of function eeprom_read_version_major


; =============== S U B	R O U T	I N E =======================================


spi_setup:				; CODE XREF: setup+Fp
		st	-Y, r16
		ldi	r30, 0b1011001
		out	SPCR, r30	; SPI Control,
					; freq = Clock/16
					; interrupts disabled ???
					; spi enabled
					; ...
		in	r16, SPSR
		in	r16, SPDR	; read and clear any requests
		ldi	r16, 0
		sbi	PORTB, PORTB2	; B2 on	-> something spi related...
		ld	r16, Y+
		ret
; End of function spi_setup


; =============== S U B	R O U T	I N E =======================================

; send a byte to XEF (stored at	Y)

spi_write_byte:				; CODE XREF: xef_command-1EDp
					; spi_write_byte_r16+1j

; FUNCTION CHUNK AT 054F SIZE 00000002 BYTES

		st	-Y, r16
		cli			; disable interrupts
		ldd	r30, Y+1
		out	SPDR, r30

wait_for_interrupt_loop:		; CODE XREF: spi_write_byte+7j
		in	r30, SPSR
		andi	r30, 0x80
		cpi	r30, 0x80	; check	interrupt request bit
		brne	wait_for_interrupt_loop
		in	r16, SPSR
		in	r16, SPDR
		sei			; enable interrupts
		mov	r30, r16
		ld	r16, Y
		rjmp	Y_add_2_ret
; End of function spi_write_byte


; =============== S U B	R O U T	I N E =======================================


battery_adc_setup:			; CODE XREF: setup+Cp
		ldi	r30, 0x47 ; 'G'
		out	ADMUX, r30	; -> AVcc with external	capacitor at AREF,
					; -> right adjust result
					; -> input on ADC7
		ldi	r30, 0xE
		out	ADCSRA,	r30	; adc disabled,	set configuration
					; configuration:
					; division factor: 64
					; interrupts enabled
					; continuous mode disabled
		sbi	DDRB, DDB0	; B0, output
		cbi	PORTB, PORTB0	; B0 = 0
		ser	r30
		ldi	r31, 3
		sts	battery_voltage_L, r30
		sts	battery_voltage_H, r31 ; 1023
		ldi	r30, 0x44 ; 'D'
		ldi	r31, 0x16
		sts	battery_counter_L, r30
		sts	battery_counter_H, r31 ; 5700
		ret
; End of function battery_adc_setup


; =============== S U B	R O U T	I N E =======================================

; counts up until 6000 calls have happened, then starts
; the adc

battery_update:				; CODE XREF: __RESET:button_check_ne_0x11p
		lds	r30, battery_counter_L
		lds	r31, battery_counter_H
		adiw	r30, 1
		sts	battery_counter_L, r30
		sts	battery_counter_H, r31
		lds	r26, battery_counter_L
		lds	r27, battery_counter_H
		cpi	r26, 0x6F ; 'o'
		ldi	r30, 0x17
		cpc	r27, r30
		brne	battery_counter_not_5999 ; 0x174/0x173 != 5999

battery_counter_5999:			; enable the ADC, but don't start it (needs a few cycles before starting)
		sbi	PORTB, PORTB0	; B0 on
		sbi	ADCSRA,	ADEN	; adc enabled
		rjmp	return
; ---------------------------------------------------------------------------

battery_counter_not_5999:		; CODE XREF: battery_update+10j
		lds	r26, battery_counter_L
		lds	r27, battery_counter_H
		cpi	r26, 0x70 ; 'p'
		ldi	r30, 0x17
		cpc	r27, r30
		brcs	return		; 0x174/0x173 >= 6000???
					; -> actually seems to check for < based on code
					; path.	I'm looking at ARM refs for this, so it's
					; probably < for some reason

battery_counter_6000:			; actually start the adc conversion
		ldi	r30, 0
		sts	battery_counter_L, r30
		sts	battery_counter_H, r30
		in	r30, ADCSRA
		ori	r30, 0xC0
		out	ADCSRA,	r30	; adc enabled, adc start

return:					; CODE XREF: battery_update+13j
					; battery_update+1Bj
		ret
; End of function battery_update


; =============== S U B	R O U T	I N E =======================================

; ADC Conversion Complete

		; public ADC_
ADC_:					; CODE XREF: ROM:000Ej
		st	-Y, r30
		st	-Y, r31
		in	r30, SREG
		st	-Y, r30
		in	r30, ADCL
		in	r31, ADCH
		sts	battery_voltage_L, r30
		sts	battery_voltage_H, r31
		in	r30, ADCSRA
		andi	r30, 0x3F
		out	ADCSRA,	r30	; ADC disabled,	ADC start conversion off
		cbi	PORTB, PORTB0	; B0, off
		ld	r30, Y+
		out	SREG, r30
		ld	r31, Y+
		ld	r30, Y+
		reti
; End of function ADC_


; =============== S U B	R O U T	I N E =======================================

; returns 1 if the battery level is less than or equal
; to 540, 0 otherwise

battery_is_dying:			; CODE XREF: led_update:led_channel_select_check_donep
		lds	r26, battery_voltage_L
		lds	r27, battery_voltage_H
		ldi	r30, 0x1C
		ldi	r31, 2		; Z = 540
		rcall	is_X_le_Z
		ret
; End of function battery_is_dying


; =============== S U B	R O U T	I N E =======================================


button_reset:				; CODE XREF: setup+Ep
		rcall	button_set_something_pressed_0
		sts	button_last_pressed, r30 ; 0
		rcall	button_set_debounce_0
		ldi	r30, 1
		sts	button_power_held_from_start, r30 ; 1
		rcall	button_set_power_held_count_0
		ret
; End of function button_reset


; =============== S U B	R O U T	I N E =======================================

; returns:
; -0x1	  default, nothing (new) pressed
; 0x1		  power	released
; 0x2		  A
; 0x4		  B
; 0x8		  C
; 0x10	  E
; 0x11	  power	held for longer	than 200
; 0x12	  power	and C
; 0x20	  D

button_update_state:			; CODE XREF: __RESET:update_button_statep
		rcall	Y_push_r17_r16
		ser	r17		; -1, default return
		lds	r30, button_debounce
		subi	r30, -1
		sts	button_debounce, r30 ; increase	debounce counter += 1
		in	r30, PINC	; read buttons
		andi	r30, 0x3F
		ldi	r26, 0x3F ; '?'
		eor	r30, r26
		mov	r16, r30	; r16 =	flipped	(eored)	output of the read
		lds	r30, button_power_held_count
		cpi	r30, 0
		breq	power_not_held
		cpi	r16, 1		; power
		brne	power_held_released_or_other_button

power_held:
		subi	r30, -1
		sts	button_power_held_count, r30 ; power_held_count	+= 1
		lds	r26, button_power_held_count
		ldi	r30, 200	; hold until 200 to enter the other mode thing
		cp	r30, r26
		brcc	power_held_lt_200

power_held_ge_200:			; enter	channel	select mode
		rcall	button_set_power_held_count_0
		rcall	button_set_power_held_from_start_0
		ldi	r30, 0x11
		rjmp	done_button_update		; return 0x11
; ---------------------------------------------------------------------------

power_held_lt_200:			; CODE XREF: button_update_state+19j
		rjmp	power_not_held
; ---------------------------------------------------------------------------

power_held_released_or_other_button:	; CODE XREF: button_update_state+11j
		cpi	r16, 9		; get here if we were holding, and we read something
					; other	than just the power button (release, or	double)
		brne	power_held_released

power_and_c_pressed:			; ON and C -> flashy mode thingy
		rcall	button_check_power_held_from_start
		brne	loc_283
		ldi	r30, 0x12
		rjmp	done_button_update		; return 0x12
; ---------------------------------------------------------------------------

loc_283:				; CODE XREF: button_update_state+22j
		rjmp	power_not_held
; ---------------------------------------------------------------------------

power_held_released:			; CODE XREF: button_update_state+20j
		rcall	button_set_power_held_count_0
		rcall	button_check_power_held_from_start
		brne	first_release
		ldi	r30, 1
		rjmp	done_button_update		; return 0x1
; ---------------------------------------------------------------------------

first_release:				; CODE XREF: button_update_state+28j
		rcall	button_set_power_held_from_start_0

power_not_held:				; CODE XREF: button_update_state+Fj
					; button_update_state:power_held_lt_200j ...
		rcall	button_last_pressed_cmp_r16
		brne	some_button_pressed

same_button_pressed:			; same result as last time
		rcall	button_set_debounce_0 ;	-> can actually	be same	button,	or a 2nd read of nothing
		cpi	r16, 0		; no buttons
		brne	some_button_pressed

no_buttons_pressed:
		rcall	button_set_something_pressed_0
		sts	button_power_held_from_start, r30 ; set	to 0

some_button_pressed:			; CODE XREF: button_update_state+2Dj
					; button_update_state+30j
		rcall	button_last_pressed_cmp_r16
		breq	return_neg_1
		lds	r26, button_debounce ; wait until at least 3 calls before allowing a new
					; button to be pressed
		cpi	r26, 3
		brcc	debounce_count_ge_3

return_neg_1:				; CODE XREF: button_update_state+35j
		rjmp	return_r17	; either the same button from last time	is still pressed
					; or the debounce count	is too low
; ---------------------------------------------------------------------------

debounce_count_ge_3:			; CODE XREF: button_update_state+39j
		rcall	button_set_debounce_0
		sts	button_last_pressed, r16
		lds	r30, button_something_pressed
		cpi	r30, 0
		brne	return_r17	; wait until all buttons are depressed
					; before allowing another one to be pressed
					; -> return -1
		cpi	r16, 1		; power
		brne	power_not_pressed_4

power_pressed_4:
		ldi	r30, 1
		sts	button_power_held_count, r30 ; set power held count to 1
					; -> potential start of	a hold
		rjmp	mark_pressed	; return -1
; ---------------------------------------------------------------------------

power_not_pressed_4:			; CODE XREF: button_update_state+43j
		cpi	r16, 2		; A
		brne	A_not_pressed_4

A_pressed_4:
		ldi	r17, 2
		rjmp	mark_pressed	; return 2
; ---------------------------------------------------------------------------

A_not_pressed_4:				; CODE XREF: button_update_state+49j
		cpi	r16, 4		; B
		brne	B_not_pressed_4

B_pressed_4:
		ldi	r17, 4
		rjmp	mark_pressed	; return 4
; ---------------------------------------------------------------------------

B_not_pressed_4:				; CODE XREF: button_update_state+4Dj
		cpi	r16, 8		; C
		brne	C_not_pressed_4

C_pressed_4:
		ldi	r17, 8
		rjmp	mark_pressed	; return 8
; ---------------------------------------------------------------------------

C_not_pressed_4:				; CODE XREF: button_update_state+51j
		cpi	r16, 0x20 ; ' ' ; D
		brne	D_not_pressed_4

D_pressed_4:
		ldi	r17, 0x20 ; ' '
		rjmp	mark_pressed	; return 0x20
; ---------------------------------------------------------------------------

D_not_pressed_4:				; CODE XREF: button_update_state+55j
		cpi	r16, 0x10	; E
		brne	mark_pressed

E_pressed_4:				; return 0x10
		ldi	r17, 0x10

mark_pressed:				; CODE XREF: button_update_state+47j
					; button_update_state+4Bj ...
		ldi	r30, 1
		sts	button_something_pressed, r30

return_r17:				; CODE XREF: button_update_state:return_neg_1j
					; button_update_state+41j
		mov	r30, r17

done_button_update:					; CODE XREF: button_update_state+1Dj
					; button_update_state+24j ...
		rcall	Y_pop_r16_r17
		ret
; End of function button_update_state


; =============== S U B	R O U T	I N E =======================================


led_setup:				; CODE XREF: setup+Dp
		rcall	Y_push_5
		rcall	led_on		; power	led on
		rcall	led_low_battery_off
		rcall	Y_push_1
		rcall	led_off		; status (bottom) off
		ldi	r30, 0
		sts	battery_dying_timer_L, r30 ; 0
		sts	battery_dying_timer_H, r30 ; 0
		rcall	led_channel_select_time_left_set_50
		rcall	channel_is_selected_set_false
		rcall	led_status_time_left_clear
		rcall	led_status_mark_off
		ret
; End of function led_setup


; =============== S U B	R O U T	I N E =======================================


led_status_off_and_clear_timer:		; CODE XREF: led_status_off_and_push_Y_data_to_sendp
		rcall	Y_push_1
		rcall	led_off		; status leds off
		rcall	led_status_time_left_clear
		ret
; End of function led_status_off_and_clear_timer


; =============== S U B	R O U T	I N E =======================================

; this can actually be used to turn one	or both	leds on
; params:
; Y+1: led
; Y: turn off after 750	ms (otherwise, on forever)

led_status_green_on:			; CODE XREF: __RESET+10Cp
					; led_status_1_on_forever+3j
		ldd	r30, Y+1
		rcall	led_on_r30
		rcall	Y_check_1
		brne	on_forever

timeout_750ms:
		ldi	r30, 75
		ldi	r31, 0
		sts	led_status_time_left_L,	r30
		sts	led_status_time_left_H,	r31
		rcall	led_status_mark_on

on_forever:				; CODE XREF: led_status_green_on+3j
		ldi	r30, 0
		sts	led_status_red_time_left_L, r30
		sts	led_status_red_time_left_H, r30
		rjmp	Y_add_2_ret
; End of function led_status_green_on


; =============== S U B	R O U T	I N E =======================================

; called with led code 3 -> status red/bottom
; -> keep on for 1s
; params:
; Y: led

led_status_red_on:			; CODE XREF: __RESET+F3p
		ld	r30, Y
		rcall	led_on_r30
		ld	r30, Y
		sts	led_failed_vote, r30
		ldi	r30, 100
		ldi	r31, 0
		sts	led_status_red_time_left_L, r30
		sts	led_status_red_time_left_H, r31
		rcall	set_led_status_red_switch_timer_100ms
		ldi	r30, 0
		sts	led_status_time_left_L,	r30
		sts	led_status_time_left_H,	r30
		rcall	led_status_mark_on
		rjmp	led_return
; End of function led_status_red_on


; =============== S U B	R O U T	I N E =======================================


led_off_all:				; CODE XREF: power_off+1p
		rcall	Y_push_5
		rcall	led_off		; power	led off
		rcall	Y_push_1
		rcall	led_off		; status leds off
		rcall	led_low_battery_off
		ret
; End of function led_off_all


; =============== S U B	R O U T	I N E =======================================


channel_is_selected_set_true:		; CODE XREF: __RESET+CFp __RESET+112p
		ldi	r30, 1
		sts	channel_is_selected, r30
		ret
; End of function channel_is_selected_set_true


; =============== S U B	R O U T	I N E =======================================


channel_is_selected_set_false_wrapper:	; CODE XREF: __RESET:button_check_0x11_enter_channel_selectp
		rcall	channel_is_selected_set_false
		ret
; End of function channel_is_selected_set_false_wrapper


; =============== S U B	R O U T	I N E =======================================

; this is where	the flashing green and red led thing comes from

power_off_button_on_and_c:		; CODE XREF: power_off+8p
		sbiw	r28, 2
		rcall	Y_push_r21_to_r16
		ldd	r30, Y+9
		andi	r31, 0
		std	Y+6, r30
		std	Y+7, r31
		ldi	r16, 0
		ldi	r17, 0

loc_30A:				; CODE XREF: power_off_button_on_and_c+2Ej
		rcall	cmp_Y_plus_7_6_to_r17_r16
		brcc	loc_331
		ldi	r18, 0
		ldi	r19, 0

loc_30E:				; CODE XREF: power_off_button_on_and_c+13j
		cpi	r18, 0x20 ; ' '
		ldi	r30, 0x4E ; 'N'
		cpc	r19, r30
		brcc	loc_316
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_30E
; ---------------------------------------------------------------------------

loc_316:				; CODE XREF: power_off_button_on_and_c+Fj
		rcall	Y_push_3
		rcall	led_on		; status (bottom) on
		ldi	r18, 0
		ldi	r19, 0

loc_31A:				; CODE XREF: power_off_button_on_and_c+1Fj
		cpi	r18, 0x30 ; '0'
		ldi	r30, 0x75 ; 'u'
		cpc	r19, r30
		brcc	loc_322
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_31A
; ---------------------------------------------------------------------------

loc_322:				; CODE XREF: power_off_button_on_and_c+1Bj
		rcall	Y_push_3
		rcall	led_off		; status (bottom) off
		ldi	r18, 0
		ldi	r19, 0

loc_326:				; CODE XREF: power_off_button_on_and_c+2Bj
		cpi	r18, 0x30 ; '0'
		ldi	r30, 0x75 ; 'u'
		cpc	r19, r30
		brcc	loc_32E
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_326
; ---------------------------------------------------------------------------

loc_32E:				; CODE XREF: power_off_button_on_and_c+27j
		subi	r16, -1
		sbci	r17, -1
		rjmp	loc_30A
; ---------------------------------------------------------------------------

loc_331:				; CODE XREF: power_off_button_on_and_c+9j
		ldd	r30, Y+8
		ldd	r31, Y+9
		andi	r31, 0
		std	Y+6, r30
		std	Y+7, r31
		ldi	r16, 0
		ldi	r17, 0

loc_338:				; CODE XREF: power_off_button_on_and_c+5Cj
		rcall	cmp_Y_plus_7_6_to_r17_r16
		brcc	loc_35F
		ldi	r18, 0
		ldi	r19, 0

loc_33C:				; CODE XREF: power_off_button_on_and_c+41j
		cpi	r18, 0x20 ; ' '
		ldi	r30, 0x4E ; 'N'
		cpc	r19, r30
		brcc	loc_344
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_33C
; ---------------------------------------------------------------------------

loc_344:				; CODE XREF: power_off_button_on_and_c+3Dj
		rcall	Y_push_2
		rcall	led_on		; status (top) on
		ldi	r18, 0
		ldi	r19, 0

loc_348:				; CODE XREF: power_off_button_on_and_c+4Dj
		cpi	r18, 0x30 ; '0'
		ldi	r30, 0x75 ; 'u'
		cpc	r19, r30
		brcc	loc_350
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_348
; ---------------------------------------------------------------------------

loc_350:				; CODE XREF: power_off_button_on_and_c+49j
		rcall	Y_push_2
		rcall	led_off		; status (bottom) off
		ldi	r18, 0
		ldi	r19, 0

loc_354:				; CODE XREF: power_off_button_on_and_c+59j
		cpi	r18, 0x30 ; '0'
		ldi	r30, 0x75 ; 'u'
		cpc	r19, r30
		brcc	loc_35C
		rcall	set_r21_r20_to_r19_r18_plus_1
		subi	r18, -1
		sbci	r19, -1
		rjmp	loc_354
; ---------------------------------------------------------------------------

loc_35C:				; CODE XREF: power_off_button_on_and_c+55j
		subi	r16, -1
		sbci	r17, -1
		rjmp	loc_338
; ---------------------------------------------------------------------------

loc_35F:				; CODE XREF: power_off_button_on_and_c+37j
		rcall	Y_pop_r16_to_r21
		adiw	r28, 0xA
		ret
; End of function power_off_button_on_and_c


; =============== S U B	R O U T	I N E =======================================


led_update:				; CODE XREF: __RESET+70p
		rcall	led_status_red_time_left_cmp_0
		breq	loc_37F
		lds	r30, led_status_red_time_left_L
		lds	r31, led_status_red_time_left_H
		sbiw	r30, 1
		sts	led_status_red_time_left_L, r30
		sts	led_status_red_time_left_H, r31
		rcall	led_status_red_time_left_cmp_0
		breq	loc_37C

failed_vote_led_flash:
		lds	r30, led_status_red_switch_timer
		subi	r30, 1
		sts	led_status_red_switch_timer, r30
		cpi	r30, 0
		brne	loc_37B
		lds	r30, led_failed_vote ; LEDCode for a failed vote to flash
		st	-Y, r30
		rcall	led_switch
		rcall	set_led_status_red_switch_timer_100ms

loc_37B:				; CODE XREF: led_update+13j
		rjmp	loc_37E
; ---------------------------------------------------------------------------

loc_37C:				; CODE XREF: led_update+Cj
		rcall	Y_push_1
		rcall	led_status_off

loc_37E:				; CODE XREF: led_update:loc_37Bj
		rjmp	loc_38E
; ---------------------------------------------------------------------------

loc_37F:				; CODE XREF: led_update+1j
		rcall	led_status_time_left_cmp_0
		breq	loc_38E
		lds	r30, led_status_time_left_L
		lds	r31, led_status_time_left_H
		sbiw	r30, 1
		sts	led_status_time_left_L,	r30
		sts	led_status_time_left_H,	r31 ; 0x183/0x182 -= 1
		rcall	led_status_time_left_cmp_0
		brne	loc_38E
		rcall	Y_push_1
		rcall	led_status_off

loc_38E:				; CODE XREF: led_update:loc_37Ej
					; led_update+1Ej ...
		lds	r30, channel_is_selected
		cpi	r30, 0
		breq	led_channel_being_selected

led_channel_selected:			; keep the led constantly on
		rcall	Y_push_5
		rcall	led_on		; power	led on
		rjmp	led_channel_select_check_done
; ---------------------------------------------------------------------------

led_channel_being_selected:		; CODE XREF: led_update+2Fj
		lds	r30, led_channel_select_time_left ; flash the power led
		subi	r30, 1
		sts	led_channel_select_time_left, r30
		cpi	r30, 0
		brne	led_channel_select_check_done

led_channel_select_switch_led:		; flash	every 500 ms
		rcall	Y_push_5
		rcall	led_switch	; power	led switch
		rcall	led_channel_select_time_left_set_50

led_channel_select_check_done:		; CODE XREF: led_update+32j
					; led_update+39j
		rcall	battery_is_dying
		cpi	r30, 0
		breq	battery_ok

battery_dying:
		lds	r30, battery_dying_timer_L
		lds	r31, battery_dying_timer_H
		adiw	r30, 1
		sts	battery_dying_timer_L, r30
		sts	battery_dying_timer_H, r31
		lds	r26, battery_dying_timer_L
		lds	r27, battery_dying_timer_H
		cpi	r26, 0xE8
		ldi	r30, 3
		cpc	r27, r30
		brcs	loc_3B8
		ldi	r30, 0
		sts	battery_dying_timer_L, r30
		sts	battery_dying_timer_H, r30

loc_3B8:				; CODE XREF: led_update+50j
		lds	r26, battery_dying_timer_L
		lds	r27, battery_dying_timer_H
		cpi	r26, 0xA
		ldi	r30, 0
		cpc	r27, r30
		brcc	loc_3C3
		ldi	r30, 0
		rcall	led_on_r30
		rjmp	loc_3C4
; ---------------------------------------------------------------------------

loc_3C3:				; CODE XREF: led_update+5Dj
		rcall	led_low_battery_off

loc_3C4:				; CODE XREF: led_update+60j
		rjmp	led_update_return
; ---------------------------------------------------------------------------

battery_ok:				; CODE XREF: led_update+3Fj
		rcall	led_low_battery_off

led_update_return:					; CODE XREF: led_update:loc_3C4j
		ret
; End of function led_update


; =============== S U B	R O U T	I N E =======================================

; Turn an LED on (write	a 0).
; An LED is selected by	pushing	a number to Y.
; The LED values are:
; 0: Low Battery
; 1: Status (both)
; 2: Status (green/top)
; 3: Status (red/bottom)
; 4: Status (both)
; 5: Power

led_on:					; CODE XREF: led_setup+1p
					; power_off_button_on_and_c+15p ...
		rcall	Y_check_5
		brne	Y_ne_5

Y_eq_5:					; D7 (Power LED) on
		cbi	PORTD, PORTD7
		rjmp	led_on_return
; ---------------------------------------------------------------------------

Y_ne_5:					; CODE XREF: led_on+1j
		rcall	Y_check_3
		brne	Y_ne_3

Y_eq_3:					; D6 (bottom status LED) on
		cbi	PORTD, PORTD6
		rjmp	led_on_return
; ---------------------------------------------------------------------------

Y_ne_3:					; CODE XREF: led_on+5j
		rcall	Y_check_2
		brne	Y_ne_2

Y_eq_2:					; D5 (top status LED) on
		cbi	PORTD, PORTD5
		rjmp	led_on_return
; ---------------------------------------------------------------------------

Y_ne_2:					; CODE XREF: led_on+9j
		rcall	Y_check_0
		brne	Y_ne_0

Y_eq_0:					; D4 (low battery LED) on
		cbi	PORTD, PORTD4
		rjmp	led_on_return
; ---------------------------------------------------------------------------

Y_ne_0:					; CODE XREF: led_on+Dj
		rcall	Y_check_4
		breq	Y_eq_4_or_1
		rcall	Y_check_1
		brne	led_on_return

Y_eq_4_or_1:				; CODE XREF: led_on+11j
		in	r30, PORTD
		andi	r30, 0x9F
		out	PORTD, r30	; both status leds on -> orange

led_on_return:					; CODE XREF: led_on+3j	led_on+7j ...
		rjmp	led_return
; End of function led_on


; =============== S U B	R O U T	I N E =======================================

; Turn an LED off (write a 1).
; An LED is selected by	pushing	a number to Y.
; The LED values are:
; 0: Low Battery
; 1: Status (both)
; 2: Status (top)
; 3: Status (bottom)
; 4: Status (both)
; 5: Power
; -> see led_switch or led_off for detailled comments

led_off:				; CODE XREF: led_setup+4p
					; led_status_off_and_clear_timer+1p ...
		rcall	Y_check_5
		brne	loc_3E3
		sbi	PORTD, PORTD7
		rjmp	loc_3F6
; ---------------------------------------------------------------------------

loc_3E3:				; CODE XREF: led_off+1j
		rcall	Y_check_3
		brne	loc_3E7
		sbi	PORTD, PORTD6
		rjmp	loc_3F6
; ---------------------------------------------------------------------------

loc_3E7:				; CODE XREF: led_off+5j
		rcall	Y_check_2
		brne	loc_3EB
		sbi	PORTD, PORTD5
		rjmp	loc_3F6
; ---------------------------------------------------------------------------

loc_3EB:				; CODE XREF: led_off+9j
		rcall	Y_check_0
		brne	loc_3EF
		sbi	PORTD, PORTD4
		rjmp	loc_3F6
; ---------------------------------------------------------------------------

loc_3EF:				; CODE XREF: led_off+Dj
		rcall	Y_check_4
		breq	loc_3F3
		rcall	Y_check_1
		brne	loc_3F6

loc_3F3:				; CODE XREF: led_off+11j
		in	r30, PORTD
		ori	r30, 0x60
		out	PORTD, r30

loc_3F6:				; CODE XREF: led_off+3j led_off+7j ...
		rjmp	led_return
; End of function led_off


; =============== S U B	R O U T	I N E =======================================

; Switch an LED	value. An LED is selected by pushing a number to Y.
; The LED values are:
; 0: Low Battery
; 1: Status (both)
; 2: Status (top)
; 3: Status (bottom)
; 4: Status (both)
; 5: Power

led_switch:				; CODE XREF: led_update+17p
					; led_update+3Bp
		rcall	Y_check_5
		brne	led_Y_ne_5

led_Y_eq_5:					; power
		in	r30, PORTD
		ldi	r26, 0x80
		rjmp	set_reg
; ---------------------------------------------------------------------------

led_Y_ne_5:					; CODE XREF: led_switch+1j
		rcall	Y_check_3
		brne	led_Y_ne_3

led_Y_eq_3:					; status (bottom)
		in	r30, PORTD
		ldi	r26, 0x40
		rjmp	set_reg
; ---------------------------------------------------------------------------

led_Y_ne_3:					; CODE XREF: led_switch+6j
		rcall	Y_check_2
		brne	led_Y_ne_2

led_Y_eq_2:					; status (top)
		in	r30, PORTD
		ldi	r26, 0x20
		rjmp	set_reg
; ---------------------------------------------------------------------------

led_Y_ne_2:					; CODE XREF: led_switch+Bj
		rcall	Y_check_0
		brne	led_Y_ne_0

led_Y_eq_0:					; low battery
		in	r30, PORTD
		ldi	r26, 0x10
		rjmp	set_reg
; ---------------------------------------------------------------------------

led_Y_ne_0:					; CODE XREF: led_switch+10j
		rcall	Y_check_4
		breq	led_Y_eq_4_or_1
		rcall	Y_check_1
		brne	led_return

led_Y_eq_4_or_1:				; CODE XREF: led_switch+15j
		in	r30, PORTD	; status (both)
		ldi	r26, 0x60

set_reg:				; CODE XREF: led_switch+4j
					; led_switch+9j ...
		eor	r30, r26
		out	PORTD, r30

led_return:					; CODE XREF: led_status_red_on+12j
					; led_on:returnj ...
		adiw	r28, 1		; Y += 1 (since	1 byte was used	for call)
		ret
; End of function led_switch


; =============== S U B	R O U T	I N E =======================================


xef_setup:				; CODE XREF: setup+10p
		ldi	r30, 0x55
		sts	short_packet_0, r30
		sts	short_packet_1, r30
		sts	short_packet_2, r30
		ldi	r30, 0x85
		sts	short_packet_3, r30
		sts	short_packet_4, r30
		sts	short_packet_5, r30
		ldi	r30, 0b10000101
		ldi	r31, 0b10000001
		rcall	xef_command	; RTParam0 = 0b10000101
					; -> bit syncronizer enabled, filter bandwidth 600 kHz,
					;    CLKOUT divider enabled
		ldi	r30, 0b11111
		ldi	r31, 0b10000010
		rcall	xef_command	; RTParam1 = 0b11111
					; -> 902-928 MHz band, pattern recognition enabled,
					;    use SWITCH	for configuration, I&Q amplifiers enabled
		ldi	r30, 0xF0
		ldi	r31, 0b10000011
		rcall	xef_command	; FSParam_Dev =	0xf0
		ldi	r30, 0
		ldi	r31, 0b10000100
		rcall	xef_command	; FSParam_Br = 0x0
		ldi	r30, 0
		ldi	r31, 0b10000101
		rcall	xef_command	; FSParam_OSR =	0x0
		ldi	r30, 0xC1
		ldi	r31, 0b10001110
		rcall	xef_command	; ADParam0 = 0xC1
					; -> pattern size = 32 bits, 1 error tolerated
		ldi	r30, 0
		ldi	r31, 0b10001111
		rcall	xef_command	; ADParam1 = 0x0
		ldi	r30, 0
		ldi	r31, 0b10010000
		rcall	xef_command	; ADParam2 = 0x0
		ldi	r30, 0
		ldi	r31, 0b10010001
		rcall	xef_command	; ADParam3 = 0x0
		ldi	r30, 0
		ldi	r31, 0b10010010
		rcall	xef_command	; ADParam4 = 0x0
		ldi	r30, 0x88
		ldi	r31, 0b10001001
		rcall	xef_command	; SWParam_Mode_2 = 0x88
					; -> RX	Mode, Mode B (high linearity), tx power	0
		rcall	xef_sleep
		ret
; End of function xef_setup

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR frequency_set

loc_446:				; CODE XREF: frequency_set+6j
		ld	r30, Y
		ldd	r31, Y+1
		sts	current_channel_0, r30
		sts	current_channel_1, r31
		cpi	r30, 0x41 ; 'A'
		ldi	r26, 0x21 ; '!'
		cpc	r31, r26
		brne	loc_45D
		ldi	r30, 0xF
		ldi	r31, 0b10000111
		rcall	xef_command	; (16 bit reg)
		ldi	r30, 0xA0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xfa0
					; -> freq = 917000000 Hz
		ldi	r30, 0xA6
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0x28 ; '('
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xa628
					; -> freq = 903500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_45D:				; CODE XREF: frequency_set-26Bj
		cpi	r30, 0x42 ; 'B'
		ldi	r26, 0x21 ; '!'
		cpc	r31, r26
		brne	loc_46C
		ldi	r30, 0xF0
		ldi	r31, 0b10000111
		rcall	xef_command	; (16 bit reg)
		ldi	r30, 0x60
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xf060
					; -> freq = 913000000 Hz
		ldi	r30, 0xAD
		ldi	r31, 0b10001010
		rcall	xef_command
		rcall	xef_set_swparam_freq2_lower_0xf8 ; SWParam_Freq_2 = 0xadf8
					; -> freq = 904500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_46C:				; CODE XREF: frequency_set-25Aj
		cpi	r30, 0x43 ; 'C'
		ldi	r26, 0x21 ; '!'
		cpc	r31, r26
		brne	loc_47B
		ldi	r30, 0xF8
		ldi	r31, 0b10000111
		rcall	xef_command	; (16 bit reg)
		ldi	r30, 0x30 ; '0'
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xf830
					; -> freq = 914000000 Hz
		ldi	r30, 0xB9
		ldi	r31, 0b10001010
		rcall	xef_command
		rcall	xef_set_swparam_freq2_lower_0xb0 ; SWParam_Freq_2 = 0xb9b0
					; -> freq = 906000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_47B:				; CODE XREF: frequency_set-24Bj
		cpi	r30, 0x44 ; 'D'
		ldi	r26, 0x21 ; '!'
		cpc	r31, r26
		brne	loc_48C
		ldi	r30, 0
		ldi	r31, 0b10000111
		rcall	xef_command	; (16 bit reg)
		ldi	r30, 0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x0000
					; -> freq = 915000000 Hz
		ldi	r30, 0xC5
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0x68
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xc568
					; -> freq = 907500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_48C:				; CODE XREF: frequency_set-23Cj
		cpi	r30, 0x41 ; 'A'
		ldi	r26, 0x22 ; '"'
		cpc	r31, r26
		brne	loc_49D
		ldi	r30, 7
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xD0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x7d0
					; -> freq = 916000000 Hz
		ldi	r30, 0xCD
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0x38
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xcd38
					; -> freq = 908500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_49D:				; CODE XREF: frequency_set-22Bj
		cpi	r30, 0x42 ; 'B'
		ldi	r26, 0x22 ; '"'
		cpc	r31, r26
		brne	loc_4AE
		ldi	r30, 0x1F
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0x40 ; '@'
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x1f40
					; -> freq = 919000000 Hz
		ldi	r30, 0xD8
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0xF0
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xd8f0
					; -> freq = 910000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4AE:				; CODE XREF: frequency_set-21Aj
		cpi	r30, 0x43 ; 'C'
		ldi	r26, 0x22 ; '"'
		cpc	r31, r26
		brne	loc_4BF
		ldi	r30, 0x27 ; '''
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0x10
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x2710
					; -> freq = 920000000 Hz
		ldi	r30, 0xE4
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0xA8
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xe4a8
					; -> freq = 911500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4BF:				; CODE XREF: frequency_set-209j
		cpi	r30, 0x44 ; 'D'
		ldi	r26, 0x22 ; '"'
		cpc	r31, r26
		brne	loc_4D0
		ldi	r30, 0x2E ; '.'
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xE0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x2ee0
					; -> freq = 921000000 Hz
		ldi	r30, 0xEC
		ldi	r31, 0x8A
		rcall	xef_command
		ldi	r30, 0x78
		ldi	r31, 0x8B
		rcall	xef_command	; SWParam_Freq_2 = 0xec78
					; -> freq = 912500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4D0:				; CODE XREF: frequency_set-1F8j
		cpi	r30, 0x41 ; 'A'
		ldi	r26, 0x23 ; '#'
		cpc	r31, r26
		brne	loc_4E1
		ldi	r30, 0x36 ; '6'
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xB0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0x36b0
					; -> freq = 922000000 Hz
		ldi	r30, 0xF8
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0x30
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xf830
					; -> freq = 914000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4E1:				; CODE XREF: frequency_set-1E7j
		cpi	r30, 0x42 ; 'B'
		ldi	r26, 0x23 ; '#'
		cpc	r31, r26
		brne	loc_4F0
		ldi	r30, 0x3E ; '>'
		ldi	r31, 0b10000111
		rcall	xef_command
		rcall	xef_set_swparam_freq1_lower_0x80 ; SWParam_Freq_1 = 0x3e80
					; -> freq = 923000000 Hz
		ldi	r30, 3
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0xE8
		ldi	r31, 0x8B
		rcall	xef_command	; SWParam_Freq_2 = 0x3e8
					; -> freq = 915500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4F0:				; CODE XREF: frequency_set-1D6j
		cpi	r30, 0x43 ; 'C'
		ldi	r26, 0x23 ; '#'
		cpc	r31, r26
		brne	loc_4FF
		ldi	r30, 0xC1
		ldi	r31, 0b10000111
		rcall	xef_command
		rcall	xef_set_swparam_freq1_lower_0x80 ; SWParam_Freq_1 = 0xc180
					; -> freq = 907000000 Hz
		ldi	r30, 0xB
		ldi	r31, 0b10001010
		rcall	xef_command
		ldi	r30, 0xB8
		ldi	r31, 0b10001011
		rcall	xef_command	; SWParam_Freq_2 = 0xbb8
					; -> freq = 916500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_4FF:				; CODE XREF: frequency_set-1C7j
		cpi	r30, 0x44 ; 'D'
		ldi	r26, 0x23 ; '#'
		cpc	r31, r26
		brne	loc_510
		ldi	r30, 0xC9
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0x50
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xc950
					; -> freq = 908000000 Hz
		ldi	r30, 0x17
		ldi	r31, 0x8A
		rcall	xef_command
		ldi	r30, 0x70
		ldi	r31, 0x8B
		rcall	xef_command	; SWParam_Freq_2 = 0x1770
					; -> freq = 918000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_510:				; CODE XREF: frequency_set-1B8j
		cpi	r30, 0x41 ; 'A'
		ldi	r26, 0x24 ; '$'
		cpc	r31, r26
		brne	loc_521
		ldi	r30, 0xB5
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xC8
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xb5c8
					; -> freq = 905500000 Hz
		ldi	r30, 0x1F
		ldi	r31, 0x8A
		rcall	xef_command
		ldi	r30, 0x40
		ldi	r31, 0x8B
		rcall	xef_command	; SWParam_Freq_2 = 0x1f40
					; -> freq = 919000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_521:				; CODE XREF: frequency_set-1A7j
		cpi	r30, 0x42 ; 'B'
		ldi	r26, 0x24 ; '$'
		cpc	r31, r26
		brne	loc_530
		ldi	r30, 0xD1
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0x20 ; ' '
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xd120
					; -> freq = 909000000 Hz
		ldi	r30, 0x2A
		ldi	r31, 0x8A
		rcall	xef_command
		rcall	xef_set_swparam_freq2_lower_0xf8 ; SWParam_Freq_2 = 0x2af8
					; -> freq = 920500000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_530:				; CODE XREF: frequency_set-196j
		cpi	r30, 0x43 ; 'C'
		ldi	r26, 0x24 ; '$'
		cpc	r31, r26
		brne	loc_53F
		ldi	r30, 0xE0
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xC0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xe0c0
					; -> freq = 911000000 Hz
		ldi	r30, 0x36
		ldi	r31, 0x8A
		rcall	xef_command
		rcall	xef_set_swparam_freq2_lower_0xb0 ; SWParam_Freq_2 = 0x36b0
					; -> freq = 922000000 Hz
		rjmp	Y_add_2_ret
; ---------------------------------------------------------------------------

loc_53F:				; CODE XREF: frequency_set-187j
		cpi	r30, 0x44 ; 'D'
		ldi	r26, 0x24 ; '$'
		cpc	r31, r26
		brne	Y_add_2_ret
		ldi	r30, 0xD8
		ldi	r31, 0b10000111
		rcall	xef_command
		ldi	r30, 0xF0
		ldi	r31, 0b10001000
		rcall	xef_command	; SWParam_Freq_1 = 0xd8f0
					; -> freq = 910000000 Hz
		ldi	r30, 0x3E
		ldi	r31, 0x8A
		rcall	xef_command
		ldi	r30, 0x80
		ldi	r31, 0x8B
		rcall	xef_command	; SWParam_Freq_2 = 0x3e80
; END OF FUNCTION CHUNK	FOR frequency_set ; -> freq = 923000000	Hz
; START	OF FUNCTION CHUNK FOR spi_write_byte

Y_add_2_ret:				; CODE XREF: spi_write_byte+Dj
					; led_status_green_on+10j ...
		adiw	r28, 2		; Y += 2
		ret
; END OF FUNCTION CHUNK	FOR spi_write_byte

; =============== S U B	R O U T	I N E =======================================


xef_switch_mode_tx:			; CODE XREF: xef_send_short_sync:send_packetp
					; xef_send_long_sync:send_packetp
		sbi	PORTD, PORTD3	; xef SWITCH mode 2 (receive)
		ldi	r30, 0xF0
		ldi	r31, 0b10000110
		rcall	xef_command	; SWParam_Mode_1 = 0xF0
					; -> TX	Mode, 15 dB (max), Mode	B (high	linearity)
		cbi	PORTD, PORTD3	; xef SWITCH mode 1 (transmit)
		ret
; End of function xef_switch_mode_tx


; =============== S U B	R O U T	I N E =======================================


xef_switch_mode_rx:			; CODE XREF: xef_send_short_sync:setup_receivep
					; xef_send_long_sync:setup_receivep
		sbi	PORTD, PORTD3	; xef SWITCH mode 2 (receive)
		ret
; End of function xef_switch_mode_rx


; =============== S U B	R O U T	I N E =======================================

; Set it to sleep

xef_sleep:				; CODE XREF: __RESET:xef_off_mode_5_donep
					; __RESET+111p	...
		sbi	PORTD, PORTD3	; xef SWITCH mode 2 (receive)
		ldi	r30, 0b110000
		ldi	r31, 0b10000110
		rcall	xef_command	; SWParam_Mode_1 = 0x30
					; -> Sleep mode, 15 dBm	transmit power,	Mode A (high sensitivity)
		cbi	PORTD, PORTD3	; xef SWITCH mode 1 (transmit)
		ret
; End of function xef_sleep

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR xef_command

xef_command_common:			; CODE XREF: xef_command+2j
					; xef_command_r21_r20+2j
		st	-Y, r16
		ldd	r30, Y+1	; param0
		ldd	r31, Y+2	; param1
		andi	r30, 0		; r30 =	0...
		mov	r30, r31
		ldi	r31, 0
		mov	r16, r30
		cbi	PORTB, PORTB2	; B2 off -> SS enable
		rcall	spi_write_byte_r16
		ldd	r16, Y+1
		rcall	spi_write_byte_r16
		ser	r30
		st	-Y, r30
		rcall	spi_write_byte
		sbi	PORTB, PORTB2	; B2 on	-> SS disable
		ld	r16, Y
		adiw	r28, 3
		ret
; END OF FUNCTION CHUNK	FOR xef_command

; =============== S U B	R O U T	I N E =======================================

; Send a short sync data packet	(only 3x 0x55 at the start)
; -> save power, don't need long sync if already done
; params:
; Y: data to send

xef_send_short_sync:			; CODE XREF: __RESET+DEp
		rcall	Y_push_r21_to_r16
		ldi	r30, 0x90
		ldi	r31, 1
		rcall	Z_val_and_equals_0xf0
		ldi	r30, 0x90
		ldi	r31, 1
		push	r31
		push	r30
		rcall	set_r30_to_Z_val_or_Y_plus_6_val ; r30 = 0x190 | paramY	-> command
		pop	r26
		pop	r27
		st	X, r30		; X = vote to transmit.	gets clobbered though...
		ldi	r30, 0x8D
		ldi	r31, 1
		ld	r19, Z
		ldi	r18, 7

sum_id_bytes:				; CODE XREF: xef_send_short_sync+19j
		ldi	r30, 9
		cp	r30, r18
		brcs	save_id_bytes_sum
		rcall	mov_r30_r18_mov_r31_0
		subi	r30, 0x79
		sbci	r31, 0xFE
		ld	r30, Z
		add	r19, r30
		subi	r18, 0xFF
		rjmp	sum_id_bytes
; ---------------------------------------------------------------------------

save_id_bytes_sum:			; CODE XREF: xef_send_short_sync+12j
		sts	short_packet_10, r19 ; sum of	id0 to id4

save_pattern:
		lds	r30, short_packet_6_id_0
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010011
		rcall	xef_command_r21_r20 ; set PATParam_Pattern byte	0
		lds	r30, short_packet_7_id_1
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010100
		rcall	xef_command_r21_r20 ; set PATParam_Pattern byte	1
		lds	r30, short_packet_8_id_2
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010101
		rcall	xef_command_r21_r20 ; set PATParam_Pattern byte	2
		lds	r30, short_packet_9_id_3
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010110
		rcall	xef_command_r21_r20 ; set PATParam_Pattern byte	3

send_packet:
		rcall	xef_switch_mode_tx
		ldi	r16, 0x87
		ldi	r17, 1		; offset: 0x187
		st	-Y, r17
		st	-Y, r16
		rcall	send_11_bytes

setup_receive:
		rcall	xef_switch_mode_rx
		rjmp	pop_and_return
; End of function xef_send_short_sync


; =============== S U B	R O U T	I N E =======================================

; Send a long sync data	packet (6x 0x55	at the start)
; -> need to sync after	switching to a new channel
; Y: data to send

xef_send_long_sync:			; CODE XREF: __RESET+D8p
		rcall	Y_push_r21_to_r16
		ldi	r30, 0x55 ; 'U'
		sts	long_packet_0, r30
		sts	long_packet_1, r30
		sts	long_packet_2, r30
		sts	long_packet_3, r30
		sts	long_packet_4, r30
		sts	long_packet_5, r30
		lds	r30, short_packet_3
		sts	long_packet_6, r30
		lds	r30, short_packet_4
		sts	long_packet_7, r30
		lds	r30, short_packet_5
		sts	long_packet_8, r30
		lds	r30, short_packet_6_id_0
		sts	long_packet_9_id_0, r30
		lds	r30, short_packet_7_id_1
		sts	long_packet_10_id_1, r30
		lds	r30, short_packet_8_id_2
		sts	long_packet_11_id_2, r30
		lds	r30, short_packet_9_id_3
		sts	long_packet_12_id_3, r30
		ldi	r30, 0x9E
		ldi	r31, 1
		rcall	Z_val_and_equals_0xf0 ;	byte 12	(id3) &= 0xf0 (clear the vote)
		ldi	r30, 0x9E
		ldi	r31, 1
		push	r31
		push	r30
		rcall	set_r30_to_Z_val_or_Y_plus_6_val ; r30 = byte 12 (id3) |= paramY
		pop	r26
		pop	r27
		st	X, r30		; byte 12 |= paramY
		ldi	r30, 0x9B
		ldi	r31, 1
		ld	r19, Z		; r19 =	*0x19b = byte 9	(id0)
		ldi	r18, 10

sum_4_vote_bytes:			; CODE XREF: xef_send_long_sync+42j
		ldi	r30, 12
		cp	r30, r18
		brcs	sum_done	; if jump r18 >= r30? (again, not like arm)
		rcall	mov_r30_r18_mov_r31_0
		subi	r30, 0x6E
		sbci	r31, 0xFE	; Z += 0x192 (-= 0xfe6e)
		ld	r30, Z
		add	r19, r30
		subi	r18, -1
		rjmp	sum_4_vote_bytes
; ---------------------------------------------------------------------------

sum_done:				; CODE XREF: xef_send_long_sync+3Bj
		sts	long_packet_13,	r19 ; byte 13 =	sum(bytes 9-12)

pattern_setup:				; look for a match of the 4 id bytes + vote that we are	sending
		lds	r30, long_packet_9_id_0
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010011
		rcall	xef_command_r21_r20
		lds	r30, long_packet_10_id_1
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010100
		rcall	xef_command_r21_r20
		lds	r30, long_packet_11_id_2
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010101
		rcall	xef_command_r21_r20
		lds	r30, long_packet_12_id_3
		rcall	mov_r20_r30_mov_r21_0
		ori	r21, 0b10010110
		rcall	xef_command_r21_r20

packet_send:
		rcall	xef_switch_mode_tx
		ldi	r16, 0x92
		ldi	r17, 1
		st	-Y, r17
		st	-Y, r16
		rcall	send_14_bytes	; offset 0x192

setup_pattern_rx:
		rcall	xef_switch_mode_rx

pop_and_return:				; CODE XREF: xef_send_short_sync+37j
		rcall	Y_pop_r16_to_r21
		adiw	r28, 7
		ret
; End of function xef_send_long_sync


; =============== S U B	R O U T	I N E =======================================

; input:
; eeprom0 = abcdefgh
; eeprom1 = ijklmnop
; eeprom2 = qrstuvwx
; output: (capital = inverse of	bit)
; clicker_id_byte_0 = defghiIi
; clicker_id_byte_1 = jklmnoOo
; clicker_id_byte_2 = pqrstuUu
; clicker_id_byte_3 = vwxX0000

id_encode:				; CODE XREF: setup+22p
		rcall	Y_push_r21_to_r16
		rcall	eeprom_read_id_byte_0
		mov	r16, r30
		rcall	eeprom_read_id_byte_1
		mov	r17, r30
		rcall	eeprom_read_id_byte_2
		mov	r18, r30
		mov	r30, r16
		rcall	lsl_r30_3_times
		andi	r30, 0xF8
		mov	r19, r30
		mov	r30, r17
		swap	r30
		andi	r30, 0xF
		lsr	r30
		andi	r30, 4
		or	r19, r30
		rcall	parse_r19_bit_2_checksum_ish
		or	r19, r30
		sts	short_packet_6_id_0, r19
		mov	r30, r17
		lsl	r30
		andi	r30, 0xFC
		mov	r19, r30
		rcall	parse_r19_bit_2_checksum_ish
		or	r19, r30
		sts	short_packet_7_id_1, r19
		mov	r30, r17
		swap	r30
		andi	r30, 0xF0
		lsl	r30
		lsl	r30
		lsl	r30
		andi	r30, 0x80
		mov	r19, r30
		mov	r30, r18
		lsr	r30
		andi	r30, 0x7C
		or	r19, r30
		rcall	parse_r19_bit_2_checksum_ish
		or	r19, r30
		sts	short_packet_8_id_2, r19
		mov	r30, r18
		swap	r30
		andi	r30, 0xF0
		lsl	r30
		andi	r30, 0xE0
		mov	r19, r30
		mov	r30, r19
		lsr	r30
		andi	r30, 0x10
		ldi	r26, 0x10
		eor	r30, r26
		mov	r21, r30
		or	r19, r21
		sts	short_packet_9_id_3, r19
		rcall	Y_pop_r16_to_r21
		adiw	r28, 6
		ret
; End of function id_encode


; =============== S U B	R O U T	I N E =======================================

; Y = pointer to 14 bytes
; -> used to send actual data

send_14_bytes:				; CODE XREF: xef_send_long_sync+5Ep
		rcall	Y_read_r30_r31_no_pop
		sbi	DDRD, DDD1	; XEF DATA direction = out
		cli			; disable interrupts
		ld	r26, Y		; Y has	a word pointer to the data to send
		ldd	r27, Y+1
		ldi	r22, 8		; r22 =	bits left in current byte
		ldi	r23, 14		; r23 =	num bytes left = 14
		rjmp	send_bytes_main
; End of function send_14_bytes


; =============== S U B	R O U T	I N E =======================================


Y_add_2:
		adiw	r28, 2
		ret
; End of function Y_add_2


; =============== S U B	R O U T	I N E =======================================

; Y = pointer to 11 bytes
; -> used to send channel register thing

send_11_bytes:				; CODE XREF: xef_send_short_sync+35p
		rcall	Y_read_r30_r31_no_pop
		sbi	DDRD, DDD1	; XEF DATA direction = out
		cli			; disable interrupts
		ld	r26, Y		; Y has	a word pointer to the data to send
		ldd	r27, Y+1
		ldi	r22, 8		; r22 =	bits left in current byte
		ldi	r23, 11		; r23 =	num bytes left = 11

send_bytes_main:			; CODE XREF: send_14_bytes+7j
					; send_11_bytes+2Dj
		ld	r24, X		; r24 =	data is	stored at *X (load next	byte)
		adiw	r26, 1

send_bit:				; CODE XREF: send_11_bytes+24j
		sbrs	r24, 7		; r24 =	data (send bit 7)
		rjmp	send_bit_0

send_bit_1:
		nop
		nop
		nop
		sbi	PORTD, PORTD1
		rjmp	bit_done
; ---------------------------------------------------------------------------

send_bit_0:				; CODE XREF: send_11_bytes+Aj
		nop
		nop
		cbi	PORTD, PORTD1
		nop
		nop

bit_done:				; CODE XREF: send_11_bytes+Fj
		subi	r22, 1		; r22 =	bits left in current byte
		breq	next_byte
		lsl	r24		; r24 =	data (put next bit to send in bit 7)
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		rjmp	send_bit
; ---------------------------------------------------------------------------

next_byte:				; CODE XREF: send_11_bytes+16j
		subi	r23, 1		; r23 =	num bytes left
		breq	transmit_done
		ldi	r22, 8		; r22 =	bits left in current byte
		nop
		nop
		nop
		nop
		nop
		rjmp	send_bytes_main
; ---------------------------------------------------------------------------

transmit_done:				; CODE XREF: send_11_bytes+26j
		sei
		ldi	r25, 5

finish_transmit:			; CODE XREF: send_11_bytes+31j
		subi	r25, 1		; loop 5 cycles	to let it finish up
		brne	finish_transmit
		cbi	DDRD, DDD1	; XEF DATA direction = in
		adiw	r28, 2
		ret
; End of function send_11_bytes


; =============== S U B	R O U T	I N E =======================================

; timer	that counts down from 4	using the hw timer's count

timer_40ms_reset:			; CODE XREF: __RESET+44p setup+1Fp
		ldi	r30, 4
		ldi	r31, 0
		sts	timer_40ms_L, r30 ; 4
		sts	timer_40ms_H, r31 ; 0
		ret
; End of function timer_40ms_reset


; =============== S U B	R O U T	I N E =======================================

; timer	that counts down from 5	using the hw timer's count

timer_50ms_reset:			; CODE XREF: __RESET+50p setup+20p
		ldi	r30, 5
		ldi	r31, 0
		sts	timer_50ms_L, r30 ; 5
		sts	timer_50ms_H, r31 ; 0
		ret
; End of function timer_50ms_reset


; =============== S U B	R O U T	I N E =======================================


timer_pattern_timeout_10ms_eq_0:	; CODE XREF: __RESET:update_timer_pattern_timeout_10msp
					; __RESET:mode_5p
		lds	r30, timer_pattern_timeout_10ms_L
		lds	r31, timer_pattern_timeout_10ms_H
		sbiw	r30, 0
		ret
; End of function timer_pattern_timeout_10ms_eq_0


; =============== S U B	R O U T	I N E =======================================


timer_1s_eq_0:				; CODE XREF: __RESET:update_timer_1sp
					; __RESET:mode_donep
		lds	r30, timer_1s
		cpi	r30, 0
		ret
; End of function timer_1s_eq_0


; =============== S U B	R O U T	I N E =======================================

; called when the frequency has	been synced via	a long
; xef_send_data	call

frequency_not_synced_set_0:		; CODE XREF: __RESET+6Bp __RESET+15Dp	...
		ldi	r30, 0
		sts	frequency_not_synced, r30 ; 0
		ret
; End of function frequency_not_synced_set_0


; =============== S U B	R O U T	I N E =======================================


power_off_wrapper:			; CODE XREF: __RESET:button_check_0x1_power_offp
					; __RESET+174p
		ldi	r30, 0
		ldi	r31, 0
		st	-Y, r31
		st	-Y, r30
		rjmp	power_off
; End of function power_off_wrapper


; =============== S U B	R O U T	I N E =======================================

; checks if nothing is pressed

button_state_check_nothing:		; CODE XREF: __RESET:mode_0p
					; __RESET:mode_1p ...
		lds	r26, button_state
		cpi	r26, -1
		ret
; End of function button_state_check_nothing


; =============== S U B	R O U T	I N E =======================================

; checks if A is currently pressed
; note:	the main loop does screwed up stuff by chaining
; the "lds r30, button_state" call here and using r30
; on its own later.

button_state_check_A:			; CODE XREF: __RESET+84p __RESET+A6p ...
		lds	r30, button_state
		cpi	r30, 2
		ret
; End of function button_state_check_A


; =============== S U B	R O U T	I N E =======================================


mov_r30_r16_mov_r31_0:			; CODE XREF: __RESET+97p __RESET+C0p
		mov	r30, r16
		ldi	r31, 0
		ret
; End of function mov_r30_r16_mov_r31_0


; =============== S U B	R O U T	I N E =======================================


led_status_1_on_forever:		; CODE XREF: __RESET+9Dp __RESET+163p
		st	-Y, r30
		ldi	r30, 0
		st	-Y, r30
		rjmp	led_status_green_on
; End of function led_status_1_on_forever


; =============== S U B	R O U T	I N E =======================================

; params:
; r30: channel character 0
; r31: channel character 1

frequency_set:				; CODE XREF: __RESET+C3p __RESET+CEp

; FUNCTION CHUNK AT 0446 SIZE 00000109 BYTES

		sts	new_channel_0, r30
		sts	new_channel_1, r31
		st	-Y, r31
		st	-Y, r30
		rjmp	loc_446
; End of function frequency_set


; =============== S U B	R O U T	I N E =======================================


mode_set_3:				; CODE XREF: __RESET+C7p
					; __RESET:setup_not_donep
		ldi	r30, 3
		sts	current_mode, r30
		ret
; End of function mode_set_3


; =============== S U B	R O U T	I N E =======================================


set_0x165_1:				; CODE XREF: __RESET+C8p
					; __RESET:loc_174p
		ldi	r30, 1
		sts	xef_failure_count, r30
		ret
; End of function set_0x165_1


; =============== S U B	R O U T	I N E =======================================

; combo	mash function...

led_status_off_and_push_Y_data_to_send:	; CODE XREF: __RESET:mode_3p
					; __RESET+DDp
		rcall	led_status_off_and_clear_timer
		lds	r30, data_to_send
		st	-Y, r30
		ret
; End of function led_status_off_and_push_Y_data_to_send


; =============== S U B	R O U T	I N E =======================================


xef_pattern_setup:			; CODE XREF: __RESET+D9p __RESET+DFp
		clr	r5
		ldi	r30, 1
		ldi	r31, 0
		sts	timer_pattern_timeout_10ms_L, r30
		sts	timer_pattern_timeout_10ms_H, r31 ; set	to 1 tick (will	be set to 0 after that -> timeout)
		ldi	r30, 5
		ret
; End of function xef_pattern_setup


; =============== S U B	R O U T	I N E =======================================


Y_push_3:				; CODE XREF: __RESET:three_or_more_failsp
					; power_off_button_on_and_c:loc_316p ...
		ldi	r30, 3
		st	-Y, r30
		ret
; End of function Y_push_3


; =============== S U B	R O U T	I N E =======================================


mode_set_7:				; CODE XREF: __RESET+F4p __RESET+10Dp
		ldi	r30, 7
		sts	current_mode, r30
		ret
; End of function mode_set_7


; =============== S U B	R O U T	I N E =======================================


Y_push_2:				; CODE XREF: __RESET+10Ap
					; power_off_button_on_and_c:loc_344p ...
		ldi	r30, 2
		st	-Y, r30
		ret
; End of function Y_push_2


; =============== S U B	R O U T	I N E =======================================


Y_push_1:				; CODE XREF: __RESET+10Bp led_setup+3p ...
		ldi	r30, 1
		st	-Y, r30
		ret
; End of function Y_push_1


; =============== S U B	R O U T	I N E =======================================


mode_set_4:				; CODE XREF: __RESET+122p __RESET+12Cp ...
		ldi	r30, 4
		sts	current_mode, r30
		ret
; End of function mode_set_4


; =============== S U B	R O U T	I N E =======================================


timer_1s_reset:				; CODE XREF: __RESET:power_off_timer_ne_0p
					; setup+18p
		ldi	r30, 100
		sts	timer_1s, r30	; 100
		ret
; End of function timer_1s_reset


; =============== S U B	R O U T	I N E =======================================

; set the count	to 99. the timer counts	up to 255,
; so 99	gives us 156 interrupts	until a	"timestep"
; -> 256*156/4000000 = 0.009984	s or ~10 ms

timer_reset_counter:			; CODE XREF: timer_setup+5p
					; TIMER0_OVF+3p
		ldi	r30, 99
		out	TCNT0, r30	; timer0 counter = 99
		ret
; End of function timer_reset_counter


; =============== S U B	R O U T	I N E =======================================


button_set_something_pressed_0:		; CODE XREF: button_resetp
					; button_update_state:no_buttons_pressedp
		ldi	r30, 0
		sts	button_something_pressed, r30 ;	0
		ret
; End of function button_set_something_pressed_0


; =============== S U B	R O U T	I N E =======================================


button_set_debounce_0:			; CODE XREF: button_reset+3p
					; button_update_state:same_button_pressedp ...
		ldi	r30, 0
		sts	button_debounce, r30 ; 0
		ret
; End of function button_set_debounce_0


; =============== S U B	R O U T	I N E =======================================


button_set_power_held_count_0:		; CODE XREF: button_reset+7p
					; button_update_state:power_held_ge_200p ...
		ldi	r30, 0
		sts	button_power_held_count, r30 ; 0
		ret
; End of function button_set_power_held_count_0


; =============== S U B	R O U T	I N E =======================================


button_set_power_held_from_start_0:	; CODE XREF: button_update_state+1Bp
					; button_update_state:first_releasep
		ldi	r30, 0
		sts	button_power_held_from_start, r30 ; 0
		ret
; End of function button_set_power_held_from_start_0


; =============== S U B	R O U T	I N E =======================================

; returns 1 if the power button	hasn't been released
; yet (to avoid	issues when the	iclicker is
; immediately turned on)

button_check_power_held_from_start:	; CODE XREF: button_update_state:power_and_c_pressedp
					; button_update_state+27p
		lds	r30, button_power_held_from_start
		cpi	r30, 0
		ret
; End of function button_check_power_held_from_start


; =============== S U B	R O U T	I N E =======================================


button_last_pressed_cmp_r16:		; CODE XREF: button_update_state:power_not_heldp
					; button_update_state:some_button_pressedp
		lds	r26, button_last_pressed
		cp	r16, r26
		ret
; End of function button_last_pressed_cmp_r16


; =============== S U B	R O U T	I N E =======================================


Y_push_5:				; CODE XREF: led_setupp led_off_allp ...
		ldi	r30, 5
		st	-Y, r30		; push 5 to Y
		ret
; End of function Y_push_5


; =============== S U B	R O U T	I N E =======================================


led_low_battery_off:			; CODE XREF: led_setup+2p
					; led_off_all+4p ...
		ldi	r30, 0
		st	-Y, r30		; push 0 to Y
		rjmp	led_off		; low battery led off
; End of function led_low_battery_off


; =============== S U B	R O U T	I N E =======================================


led_channel_select_time_left_set_50:	; CODE XREF: led_setup+Ap
					; led_update+3Cp
		ldi	r30, 50
		sts	led_channel_select_time_left, r30 ; 50
		ret
; End of function led_channel_select_time_left_set_50


; =============== S U B	R O U T	I N E =======================================


channel_is_selected_set_false:		; CODE XREF: led_setup+Bp
					; channel_is_selected_set_false_wrapperp
		ldi	r30, 0
		sts	channel_is_selected, r30 ; 0
		ret
; End of function channel_is_selected_set_false


; =============== S U B	R O U T	I N E =======================================


led_status_time_left_clear:		; CODE XREF: led_setup+Cp
					; led_status_off_and_clear_timer+2p
		ldi	r30, 0
		sts	led_status_red_time_left_L, r30	; 0
		sts	led_status_red_time_left_H, r30	; 0
		ldi	r30, 0
		sts	led_status_time_left_L,	r30 ; 0
		sts	led_status_time_left_H,	r30 ; 0
		ret
; End of function led_status_time_left_clear


; =============== S U B	R O U T	I N E =======================================


led_status_mark_off:			; CODE XREF: led_setup+Dp
					; led_status_off+1j
		ldi	r30, 0
		sts	led_status_on, r30
		ret
; End of function led_status_mark_off


; =============== S U B	R O U T	I N E =======================================

; turn the led code in r30 on

led_on_r30:				; CODE XREF: led_status_green_on+1p
					; led_status_red_on+1p	...
		st	-Y, r30
		rjmp	led_on
; End of function led_on_r30


; =============== S U B	R O U T	I N E =======================================


Y_check_1:				; CODE XREF: led_status_green_on+2p
					; led_on+12p ...
		ld	r26, Y
		cpi	r26, 1
		ret
; End of function Y_check_1


; =============== S U B	R O U T	I N E =======================================


led_status_mark_on:			; CODE XREF: led_status_green_on+Ap
					; led_status_red_on+11p
		ldi	r30, 1
		sts	led_status_on, r30
		ret
; End of function led_status_mark_on


; =============== S U B	R O U T	I N E =======================================


set_led_status_red_switch_timer_100ms:	; CODE XREF: led_status_red_on+Bp
					; led_update+18p
		ldi	r30, 10
		sts	led_status_red_switch_timer, r30
		ret
; End of function set_led_status_red_switch_timer_100ms


; =============== S U B	R O U T	I N E =======================================


cmp_Y_plus_7_6_to_r17_r16:		; CODE XREF: power_off_button_on_and_c:loc_30Ap
					; power_off_button_on_and_c:loc_338p
		ldd	r30, Y+6
		ldd	r31, Y+7
		cp	r16, r30
		cpc	r17, r31
		ret
; End of function cmp_Y_plus_7_6_to_r17_r16


; =============== S U B	R O U T	I N E =======================================


set_r21_r20_to_r19_r18_plus_1:		; CODE XREF: power_off_button_on_and_c+10p
					; power_off_button_on_and_c+1Cp ...
		mov	r30, r18
		mov	r31, r19
		adiw	r30, 1
		mov	r20, r30
		mov	r21, r31
		ret
; End of function set_r21_r20_to_r19_r18_plus_1


; =============== S U B	R O U T	I N E =======================================


led_status_red_time_left_cmp_0:		; CODE XREF: led_updatep led_update+Bp
		lds	r30, led_status_red_time_left_L
		lds	r31, led_status_red_time_left_H
		sbiw	r30, 0
		ret
; End of function led_status_red_time_left_cmp_0


; =============== S U B	R O U T	I N E =======================================

; called with LEDCode 1	both times

led_status_off:				; CODE XREF: led_update+1Bp
					; led_update+2Bp
		rcall	led_off		; status leds off
		rjmp	led_status_mark_off
; End of function led_status_off


; =============== S U B	R O U T	I N E =======================================


led_status_time_left_cmp_0:		; CODE XREF: led_update:loc_37Fp
					; led_update+28p
		lds	r30, led_status_time_left_L
		lds	r31, led_status_time_left_H
		sbiw	r30, 0
		ret
; End of function led_status_time_left_cmp_0


; =============== S U B	R O U T	I N E =======================================


Y_check_5:				; CODE XREF: led_onp led_offp	...
		ld	r26, Y
		cpi	r26, 5
		ret
; End of function Y_check_5


; =============== S U B	R O U T	I N E =======================================


Y_check_3:				; CODE XREF: led_on:Y_ne_5p
					; led_off:loc_3E3p ...
		ld	r26, Y
		cpi	r26, 3
		ret
; End of function Y_check_3


; =============== S U B	R O U T	I N E =======================================


Y_check_2:				; CODE XREF: led_on:Y_ne_3p
					; led_off:loc_3E7p ...
		ld	r26, Y
		cpi	r26, 2
		ret
; End of function Y_check_2


; =============== S U B	R O U T	I N E =======================================


Y_check_0:				; CODE XREF: led_on:Y_ne_2p
					; led_off:loc_3EBp ...
		ld	r30, Y
		cpi	r30, 0
		ret
; End of function Y_check_0


; =============== S U B	R O U T	I N E =======================================


Y_check_4:				; CODE XREF: led_on:Y_ne_0p
					; led_off:loc_3EFp ...
		ld	r26, Y
		cpi	r26, 4
		ret
; End of function Y_check_4


; =============== S U B	R O U T	I N E =======================================

; send a command to the	xef
; format is:
; r21/r31: [0b10][1 bit	r/w][5 bit addr]
; r20/r30: [8 bits data]
; (additionally, a byte	of 0b11111111 is sent to end)

xef_command:				; CODE XREF: xef_setup+10p
					; xef_setup+13p ...

; FUNCTION CHUNK AT 055F SIZE 00000012 BYTES

		st	-Y, r31
		st	-Y, r30
		rjmp	xef_command_common
; End of function xef_command


; =============== S U B	R O U T	I N E =======================================


xef_set_swparam_freq2_lower_0xf8:	; CODE XREF: frequency_set-250p
					; frequency_set-18Cp
		ldi	r30, 0xF8
		ldi	r31, 0b10001011
		rjmp	xef_command
; End of function xef_set_swparam_freq2_lower_0xf8


; =============== S U B	R O U T	I N E =======================================


xef_set_swparam_freq2_lower_0xb0:	; CODE XREF: frequency_set-241p
					; frequency_set-17Dp
		ldi	r30, 0xB0
		ldi	r31, 0b10001011
		rjmp	xef_command
; End of function xef_set_swparam_freq2_lower_0xb0


; =============== S U B	R O U T	I N E =======================================


xef_set_swparam_freq1_lower_0x80:	; CODE XREF: frequency_set-1D2p
					; frequency_set-1C3p
		ldi	r30, 0x80
		ldi	r31, 0b10001000
		rjmp	xef_command
; End of function xef_set_swparam_freq1_lower_0x80


; =============== S U B	R O U T	I N E =======================================

; send the byte	in r16

spi_write_byte_r16:			; CODE XREF: xef_command-1F2p
					; xef_command-1F0p
		st	-Y, r16
		rjmp	spi_write_byte
; End of function spi_write_byte_r16


; =============== S U B	R O U T	I N E =======================================


Z_val_and_equals_0xf0:			; CODE XREF: xef_send_short_sync+3p
					; xef_send_long_sync+2Cp
		movw	r26, r30	; X = Z
		ld	r30, X		; r30 =	*X
		andi	r30, 0xF0	; r30 &= 0xf0
		st	X, r30		; *X = r30
		ret
; End of function Z_val_and_equals_0xf0


; =============== S U B	R O U T	I N E =======================================


set_r30_to_Z_val_or_Y_plus_6_val:	; CODE XREF: xef_send_short_sync+8p
					; xef_send_long_sync+31p
		ld	r30, Z
		ldd	r26, Y+6
		or	r30, r26
		ret
; End of function set_r30_to_Z_val_or_Y_plus_6_val


; =============== S U B	R O U T	I N E =======================================


mov_r30_r18_mov_r31_0:			; CODE XREF: xef_send_short_sync+13p
					; xef_send_long_sync+3Cp
		mov	r30, r18
		ldi	r31, 0
		ret
; End of function mov_r30_r18_mov_r31_0


; =============== S U B	R O U T	I N E =======================================


mov_r20_r30_mov_r21_0:			; CODE XREF: xef_send_short_sync+1Ep
					; xef_send_short_sync+23p ...
		ldi	r31, 0
		mov	r20, r30
		mov	r21, r31
		ret
; End of function mov_r20_r30_mov_r21_0


; =============== S U B	R O U T	I N E =======================================

; alternate start for xef_send_word using r20/r21
; instead of r30/r31.
;
; send a command to the	xef
; format is:
; r21/r31: [0b10][1 bit	r/w][5 bit addr]
; r20/r30: [8 bits data]
; (additionally, a byte	of 0b11111111 is sent to end)

xef_command_r21_r20:			; CODE XREF: xef_send_short_sync+20p
					; xef_send_short_sync+25p ...
		st	-Y, r21
		st	-Y, r20
		rjmp	xef_command_common
; End of function xef_command_r21_r20


; =============== S U B	R O U T	I N E =======================================

; return !(((r19>>2)&1)<<1) | ((r19>>2)&1);
; -> takes bit 2 of r19, and returns that bit in bit 0,
;    and not that bit in bit 1

parse_r19_bit_2_checksum_ish:		; CODE XREF: id_encode+11p
					; id_encode+19p ...
		mov	r30, r19
		lsr	r30
		lsr	r30
		andi	r30, 1
		mov	r20, r30
		mov	r30, r20
		lsl	r30
		andi	r30, 2
		ldi	r26, 2
		eor	r30, r26
		mov	r21, r30
		mov	r30, r21
		or	r30, r20
		ret
; End of function parse_r19_bit_2_checksum_ish


; =============== S U B	R O U T	I N E =======================================

; read r30 and r31 without touching Y.
; The st and std seem pointless...

Y_read_r30_r31_no_pop:			; CODE XREF: send_14_bytesp
					; send_11_bytesp
		ld	r30, Y
		ldd	r31, Y+1
		st	Y, r30
		std	Y+1, r31
		ret
; End of function Y_read_r30_r31_no_pop


; =============== S U B	R O U T	I N E =======================================

; return 1 if X	>= Z

is_X_le_Z:				; CODE XREF: battery_is_dying+6p
		cp	r26, r30
		cpc	r27, r31
		ldi	r30, 1
		brcs	le		; (ge in arm...)
		clr	r30

le:					; CODE XREF: is_X_le_Z+3j
		ret
; End of function is_X_le_Z


; =============== S U B	R O U T	I N E =======================================

; params:
; X: eeprom addr (reads	at this	+ 1)
; return:
; r31: byte read

eeprom_read_byte_X_plus_1:		; CODE XREF: eeprom_read_version_major+2p
		adiw	r26, 1
		rcall	eeprom_read_byte
		mov	r31, r30
		sbiw	r26, 1
; End of function eeprom_read_byte_X_plus_1


; =============== S U B	R O U T	I N E =======================================

; params:
; X: eeprom addr
; return:
; r30: byte read

eeprom_read_byte:			; CODE XREF: eeprom_read_id_byte_0+2p
					; eeprom_read_id_byte_1+2p ...
		sbic	EECR, EEWE	; eeprom write enabled
		rjmp	eeprom_read_byte ; loop	until eeprom write not in progress
		push	r31
		in	r31, SREG	; read status register
		cli			; disable interrupts
		out	EEARL, r26
		out	EEARH, r27	; load eeprom addr from	r27/r26
		sbi	EECR, EERE	; read enable
		in	r30, EEDR	; read in data
		out	SREG, r31	; write	status register	(no changes -> clear bits?)
		pop	r31
		ret
; End of function eeprom_read_byte


; =============== S U B	R O U T	I N E =======================================


lsl_r30_3_times:			; CODE XREF: id_encode+8p
		lsl	r30
		lsl	r30
		lsl	r30
		ret
; End of function lsl_r30_3_times


; =============== S U B	R O U T	I N E =======================================


Y_push_r21_to_r16:			; CODE XREF: power_off_button_on_and_c+1p
					; xef_send_short_syncp	...
		st	-Y, r21
		st	-Y, r20
		st	-Y, r19
		st	-Y, r18		; note:	this keeps on going into the next function, so
; End of function Y_push_r21_to_r16	; we actually push all of r21 to r16


; =============== S U B	R O U T	I N E =======================================


Y_push_r17_r16:				; CODE XREF: button_update_statep
		st	-Y, r17
		st	-Y, r16
		ret
; End of function Y_push_r17_r16


; =============== S U B	R O U T	I N E =======================================


Y_pop_r16_to_r21:			; CODE XREF: power_off_button_on_and_c:loc_35Fp
					; xef_send_long_sync:pop_and_returnp ...
		ldd	r21, Y+5
		ldd	r20, Y+4
		ldd	r19, Y+3
		ldd	r18, Y+2
		ldd	r17, Y+1
		ld	r16, Y
		ret
; End of function Y_pop_r16_to_r21


; =============== S U B	R O U T	I N E =======================================


Y_pop_r16_r17:				; CODE XREF: button_update_state:returnp
		ld	r16, Y+
		ld	r17, Y+
		ret
; End of function Y_pop_r16_r17

; ===========================================================================

; Segment type:	Pure data
.section .eeprom ;	EEPROM
		.byte 0x1A		; id byte 0
		.byte 0xAB ; «		; id byte 1
		.byte 0x89 ; 		; id byte 2
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.byte    0
		.string "Copyright © Interactive Learning" ; copyright
		.string " Version 02.05"  ; version string
		.byte    5		; version major
		.byte    2		; version minor
