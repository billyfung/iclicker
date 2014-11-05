
flash.hex:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	13 c0       	rjmp	.+38     	;  0x28
   2:	b8 c1       	rjmp	.+880    	;  0x374
   4:	fd cf       	rjmp	.-6      	;  0x0
   6:	fc cf       	rjmp	.-8      	;  0x0
   8:	fb cf       	rjmp	.-10     	;  0x0
   a:	fa cf       	rjmp	.-12     	;  0x0
   c:	f9 cf       	rjmp	.-14     	;  0x0
   e:	f8 cf       	rjmp	.-16     	;  0x0
  10:	f7 cf       	rjmp	.-18     	;  0x0
  12:	c7 c1       	rjmp	.+910    	;  0x3a2
  14:	f5 cf       	rjmp	.-22     	;  0x0
  16:	f4 cf       	rjmp	.-24     	;  0x0
  18:	f3 cf       	rjmp	.-26     	;  0x0
  1a:	f2 cf       	rjmp	.-28     	;  0x0
  1c:	2b c2       	rjmp	.+1110   	;  0x474
  1e:	f0 cf       	rjmp	.-32     	;  0x0
  20:	ef cf       	rjmp	.-34     	;  0x0
  22:	ee cf       	rjmp	.-36     	;  0x0
  24:	ed cf       	rjmp	.-38     	;  0x0
  26:	00 00       	nop
  28:	f8 94       	cli
  2a:	ee 27       	eor	r30, r30
  2c:	ec bb       	out	0x1c, r30	; 28
  2e:	f1 e0       	ldi	r31, 0x01	; 1
  30:	fb bf       	out	0x3b, r31	; 59
  32:	eb bf       	out	0x3b, r30	; 59
  34:	e5 bf       	out	0x35, r30	; 53
  36:	f8 e1       	ldi	r31, 0x18	; 24
  38:	f1 bd       	out	0x21, r31	; 33
  3a:	e1 bd       	out	0x21, r30	; 33
  3c:	8d e0       	ldi	r24, 0x0D	; 13
  3e:	a2 e0       	ldi	r26, 0x02	; 2
  40:	bb 27       	eor	r27, r27
  42:	ed 93       	st	X+, r30
  44:	8a 95       	dec	r24
  46:	e9 f7       	brne	.-6      	;  0x42
  48:	80 e0       	ldi	r24, 0x00	; 0
  4a:	94 e0       	ldi	r25, 0x04	; 4
  4c:	a0 e6       	ldi	r26, 0x60	; 96
  4e:	ed 93       	st	X+, r30
  50:	01 97       	sbiw	r24, 0x01	; 1
  52:	e9 f7       	brne	.-6      	;  0x4e
  54:	e6 e2       	ldi	r30, 0x26	; 38
  56:	f0 e0       	ldi	r31, 0x00	; 0
  58:	85 91       	lpm	r24, Z+
  5a:	95 91       	lpm	r25, Z+
  5c:	00 97       	sbiw	r24, 0x00	; 0
  5e:	61 f0       	breq	.+24     	;  0x78
  60:	a5 91       	lpm	r26, Z+
  62:	b5 91       	lpm	r27, Z+
  64:	05 90       	lpm	r0, Z+
  66:	15 90       	lpm	r1, Z+
  68:	bf 01       	movw	r22, r30
  6a:	f0 01       	movw	r30, r0
  6c:	05 90       	lpm	r0, Z+
  6e:	0d 92       	st	X+, r0
  70:	01 97       	sbiw	r24, 0x01	; 1
  72:	e1 f7       	brne	.-8      	;  0x6c
  74:	fb 01       	movw	r30, r22
  76:	f0 cf       	rjmp	.-32     	;  0x58
  78:	ef e5       	ldi	r30, 0x5F	; 95
  7a:	ed bf       	out	0x3d, r30	; 61
  7c:	e4 e0       	ldi	r30, 0x04	; 4
  7e:	ee bf       	out	0x3e, r30	; 62
  80:	c0 e6       	ldi	r28, 0x60	; 96
  82:	d1 e0       	ldi	r29, 0x01	; 1
  84:	00 c0       	rjmp	.+0      	;  0x86
  86:	49 d1       	rcall	.+658    	;  0x31a
  88:	ef ef       	ldi	r30, 0xFF	; 255
  8a:	e0 93 62 01 	sts	0x0162, r30
  8e:	44 fe       	sbrs	r4, 4
  90:	3c c0       	rjmp	.+120    	;  0x10a
  92:	f8 94       	cli
  94:	ef ee       	ldi	r30, 0xEF	; 239
  96:	4e 22       	and	r4, r30
  98:	78 94       	sei
  9a:	e0 91 6d 01 	lds	r30, 0x016D
  9e:	f0 91 6e 01 	lds	r31, 0x016E
  a2:	31 97       	sbiw	r30, 0x01	; 1
  a4:	e0 93 6d 01 	sts	0x016D, r30
  a8:	f0 93 6e 01 	sts	0x016E, r31
  ac:	30 97       	sbiw	r30, 0x00	; 0
  ae:	09 f4       	brne	.+2      	;  0xb2
  b0:	31 d6       	rcall	.+3170   	;  0xd14
  b2:	e0 91 6f 01 	lds	r30, 0x016F
  b6:	f0 91 70 01 	lds	r31, 0x0170
  ba:	31 97       	sbiw	r30, 0x01	; 1
  bc:	e0 93 6f 01 	sts	0x016F, r30
  c0:	f0 93 70 01 	sts	0x0170, r31
  c4:	30 97       	sbiw	r30, 0x00	; 0
  c6:	09 f4       	brne	.+2      	;  0xca
  c8:	2c d6       	rcall	.+3160   	;  0xd22
  ca:	32 d6       	rcall	.+3172   	;  0xd30
  cc:	49 f0       	breq	.+18     	;  0xe0
  ce:	e0 91 6b 01 	lds	r30, 0x016B
  d2:	f0 91 6c 01 	lds	r31, 0x016C
  d6:	31 97       	sbiw	r30, 0x01	; 1
  d8:	e0 93 6b 01 	sts	0x016B, r30
  dc:	f0 93 6c 01 	sts	0x016C, r31
  e0:	2d d6       	rcall	.+3162   	;  0xd3c
  e2:	29 f0       	breq	.+10     	;  0xee
  e4:	e0 91 68 01 	lds	r30, 0x0168
  e8:	e1 50       	subi	r30, 0x01	; 1
  ea:	e0 93 68 01 	sts	0x0168, r30
  ee:	e6 d1       	rcall	.+972    	;  0x4bc
  f0:	e0 93 62 01 	sts	0x0162, r30
  f4:	a0 91 62 01 	lds	r26, 0x0162
  f8:	a1 31       	cpi	r26, 0x11	; 17
  fa:	29 f4       	brne	.+10     	;  0x106
  fc:	81 d2       	rcall	.+1282   	;  0x600
  fe:	22 d6       	rcall	.+3140   	;  0xd44
 100:	e0 e0       	ldi	r30, 0x00	; 0
 102:	e0 93 63 01 	sts	0x0163, r30
 106:	91 d1       	rcall	.+802    	;  0x42a
 108:	dd d2       	rcall	.+1466   	;  0x6c4
 10a:	a0 91 62 01 	lds	r26, 0x0162
 10e:	a1 30       	cpi	r26, 0x01	; 1
 110:	09 f4       	brne	.+2      	;  0x114
 112:	1c d6       	rcall	.+3128   	;  0xd4c
 114:	a0 91 62 01 	lds	r26, 0x0162
 118:	a2 31       	cpi	r26, 0x12	; 18
 11a:	21 f4       	brne	.+8      	;  0x124
 11c:	58 d1       	rcall	.+688    	;  0x3ce
 11e:	fa 93       	st	-Y, r31
 120:	ea 93       	st	-Y, r30
 122:	2d d1       	rcall	.+602    	;  0x37e
 124:	e0 91 63 01 	lds	r30, 0x0163
 128:	e0 30       	cpi	r30, 0x00	; 0
 12a:	01 f5       	brne	.+64     	;  0x16c
 12c:	14 d6       	rcall	.+3112   	;  0xd56
 12e:	e9 f0       	breq	.+58     	;  0x16a
 130:	16 d6       	rcall	.+3116   	;  0xd5e
 132:	11 f4       	brne	.+4      	;  0x138
 134:	01 e2       	ldi	r16, 0x21	; 33
 136:	0d c0       	rjmp	.+26     	;  0x152
 138:	e4 30       	cpi	r30, 0x04	; 4
 13a:	11 f4       	brne	.+4      	;  0x140
 13c:	02 e2       	ldi	r16, 0x22	; 34
 13e:	09 c0       	rjmp	.+18     	;  0x152
 140:	e8 30       	cpi	r30, 0x08	; 8
 142:	11 f4       	brne	.+4      	;  0x148
 144:	03 e2       	ldi	r16, 0x23	; 35
 146:	05 c0       	rjmp	.+10     	;  0x152
 148:	e0 32       	cpi	r30, 0x20	; 32
 14a:	11 f4       	brne	.+4      	;  0x150
 14c:	04 e2       	ldi	r16, 0x24	; 36
 14e:	01 c0       	rjmp	.+2      	;  0x152
 150:	0f ef       	ldi	r16, 0xFF	; 255
 152:	0f 3f       	cpi	r16, 0xFF	; 255
 154:	51 f0       	breq	.+20     	;  0x16a
 156:	07 d6       	rcall	.+3086   	;  0xd66
 158:	e0 93 60 01 	sts	0x0160, r30
 15c:	f0 93 61 01 	sts	0x0161, r31
 160:	e4 e0       	ldi	r30, 0x04	; 4
 162:	04 d6       	rcall	.+3080   	;  0xd6c
 164:	e1 e0       	ldi	r30, 0x01	; 1
 166:	e0 93 63 01 	sts	0x0163, r30
 16a:	c5 c0       	rjmp	.+394    	;  0x2f6
 16c:	e1 30       	cpi	r30, 0x01	; 1
 16e:	31 f5       	brne	.+76     	;  0x1bc
 170:	f2 d5       	rcall	.+3044   	;  0xd56
 172:	19 f1       	breq	.+70     	;  0x1ba
 174:	f4 d5       	rcall	.+3048   	;  0xd5e
 176:	11 f4       	brne	.+4      	;  0x17c
 178:	01 e4       	ldi	r16, 0x41	; 65
 17a:	0d c0       	rjmp	.+26     	;  0x196
 17c:	e4 30       	cpi	r30, 0x04	; 4
 17e:	11 f4       	brne	.+4      	;  0x184
 180:	02 e4       	ldi	r16, 0x42	; 66
 182:	09 c0       	rjmp	.+18     	;  0x196
 184:	e8 30       	cpi	r30, 0x08	; 8
 186:	11 f4       	brne	.+4      	;  0x18c
 188:	03 e4       	ldi	r16, 0x43	; 67
 18a:	05 c0       	rjmp	.+10     	;  0x196
 18c:	e0 32       	cpi	r30, 0x20	; 32
 18e:	11 f4       	brne	.+4      	;  0x194
 190:	04 e4       	ldi	r16, 0x44	; 68
 192:	01 c0       	rjmp	.+2      	;  0x196
 194:	0f ef       	ldi	r16, 0xFF	; 255
 196:	0f 3f       	cpi	r16, 0xFF	; 255
 198:	81 f0       	breq	.+32     	;  0x1ba
 19a:	e0 91 60 01 	lds	r30, 0x0160
 19e:	f0 91 61 01 	lds	r31, 0x0161
 1a2:	fe 2f       	mov	r31, r30
 1a4:	e0 e0       	ldi	r30, 0x00	; 0
 1a6:	df 01       	movw	r26, r30
 1a8:	de d5       	rcall	.+3004   	;  0xd66
 1aa:	ea 2b       	or	r30, r26
 1ac:	fb 2b       	or	r31, r27
 1ae:	e2 d5       	rcall	.+3012   	;  0xd74
 1b0:	e2 e0       	ldi	r30, 0x02	; 2
 1b2:	e0 93 64 01 	sts	0x0164, r30
 1b6:	e5 d5       	rcall	.+3018   	;  0xd82
 1b8:	e8 d5       	rcall	.+3024   	;  0xd8a
 1ba:	9d c0       	rjmp	.+314    	;  0x2f6
 1bc:	e2 30       	cpi	r30, 0x02	; 2
 1be:	49 f4       	brne	.+18     	;  0x1d2
 1c0:	e1 e4       	ldi	r30, 0x41	; 65
 1c2:	f1 e2       	ldi	r31, 0x21	; 33
 1c4:	d7 d5       	rcall	.+2990   	;  0xd74
 1c6:	18 d2       	rcall	.+1072   	;  0x5f8
 1c8:	e1 e0       	ldi	r30, 0x01	; 1
 1ca:	e0 93 66 01 	sts	0x0166, r30
 1ce:	e8 e0       	ldi	r30, 0x08	; 8
 1d0:	90 c0       	rjmp	.+288    	;  0x2f2
 1d2:	e3 30       	cpi	r30, 0x03	; 3
 1d4:	21 f4       	brne	.+8      	;  0x1de
 1d6:	dd d5       	rcall	.+3002   	;  0xd92
 1d8:	bc d4       	rcall	.+2424   	;  0xb52
 1da:	e0 d5       	rcall	.+3008   	;  0xd9c
 1dc:	8a c0       	rjmp	.+276    	;  0x2f2
 1de:	e4 30       	cpi	r30, 0x04	; 4
 1e0:	21 f4       	brne	.+8      	;  0x1ea
 1e2:	d7 d5       	rcall	.+2990   	;  0xd92
 1e4:	7e d4       	rcall	.+2300   	;  0xae2
 1e6:	da d5       	rcall	.+2996   	;  0xd9c
 1e8:	84 c0       	rjmp	.+264    	;  0x2f2
 1ea:	e5 30       	cpi	r30, 0x05	; 5
 1ec:	89 f5       	brne	.+98     	;  0x250
 1ee:	a0 d5       	rcall	.+2880   	;  0xd30
 1f0:	d9 f4       	brne	.+54     	;  0x228
 1f2:	a0 91 65 01 	lds	r26, 0x0165
 1f6:	a3 30       	cpi	r26, 0x03	; 3
 1f8:	48 f4       	brcc	.+18     	;  0x20c
 1fa:	e0 91 65 01 	lds	r30, 0x0165
 1fe:	ef 5f       	subi	r30, 0xFF	; 255
 200:	e0 93 65 01 	sts	0x0165, r30
 204:	e6 e0       	ldi	r30, 0x06	; 6
 206:	e0 93 63 01 	sts	0x0163, r30
 20a:	0c c0       	rjmp	.+24     	;  0x224
 20c:	d0 d5       	rcall	.+2976   	;  0xdae
 20e:	db d1       	rcall	.+950    	;  0x5c6
 210:	d1 d5       	rcall	.+2978   	;  0xdb4
 212:	a0 91 64 01 	lds	r26, 0x0164
 216:	a2 30       	cpi	r26, 0x02	; 2
 218:	11 f4       	brne	.+4      	;  0x21e
 21a:	e0 e0       	ldi	r30, 0x00	; 0
 21c:	01 c0       	rjmp	.+2      	;  0x220
 21e:	e8 e0       	ldi	r30, 0x08	; 8
 220:	e0 93 67 01 	sts	0x0167, r30
 224:	46 d4       	rcall	.+2188   	;  0xab2
 226:	13 c0       	rjmp	.+38     	;  0x24e
 228:	e1 e0       	ldi	r30, 0x01	; 1
 22a:	e5 15       	cp	r30, r5
 22c:	81 f4       	brne	.+32     	;  0x24e
 22e:	e8 e1       	ldi	r30, 0x18	; 24
 230:	f5 e1       	ldi	r31, 0x15	; 21
 232:	e0 93 69 01 	sts	0x0169, r30
 236:	f0 93 6a 01 	sts	0x016A, r31
 23a:	55 24       	eor	r5, r5
 23c:	bf d5       	rcall	.+2942   	;  0xdbc
 23e:	c1 d5       	rcall	.+2946   	;  0xdc2
 240:	b1 d1       	rcall	.+866    	;  0x5a4
 242:	b8 d5       	rcall	.+2928   	;  0xdb4
 244:	e8 e0       	ldi	r30, 0x08	; 8
 246:	e0 93 67 01 	sts	0x0167, r30
 24a:	33 d4       	rcall	.+2150   	;  0xab2
 24c:	d5 d1       	rcall	.+938    	;  0x5f8
 24e:	53 c0       	rjmp	.+166    	;  0x2f6
 250:	e6 30       	cpi	r30, 0x06	; 6
 252:	c1 f4       	brne	.+48     	;  0x284
 254:	a0 91 65 01 	lds	r26, 0x0165
 258:	a2 30       	cpi	r26, 0x02	; 2
 25a:	51 f4       	brne	.+20     	;  0x270
 25c:	a0 91 6d 01 	lds	r26, 0x016D
 260:	b0 91 6e 01 	lds	r27, 0x016E
 264:	a1 30       	cpi	r26, 0x01	; 1
 266:	e0 e0       	ldi	r30, 0x00	; 0
 268:	be 07       	cpc	r27, r30
 26a:	09 f4       	brne	.+2      	;  0x26e
 26c:	ad d5       	rcall	.+2906   	;  0xdc8
 26e:	09 c0       	rjmp	.+18     	;  0x282
 270:	a0 91 6f 01 	lds	r26, 0x016F
 274:	b0 91 70 01 	lds	r27, 0x0170
 278:	a1 30       	cpi	r26, 0x01	; 1
 27a:	e0 e0       	ldi	r30, 0x00	; 0
 27c:	be 07       	cpc	r27, r30
 27e:	09 f4       	brne	.+2      	;  0x282
 280:	a3 d5       	rcall	.+2886   	;  0xdc8
 282:	39 c0       	rjmp	.+114    	;  0x2f6
 284:	e7 30       	cpi	r30, 0x07	; 7
 286:	49 f4       	brne	.+18     	;  0x29a
 288:	e0 91 84 01 	lds	r30, 0x0184
 28c:	e0 30       	cpi	r30, 0x00	; 0
 28e:	21 f4       	brne	.+8      	;  0x298
 290:	e0 91 67 01 	lds	r30, 0x0167
 294:	e0 93 63 01 	sts	0x0163, r30
 298:	2e c0       	rjmp	.+92     	;  0x2f6
 29a:	e8 30       	cpi	r30, 0x08	; 8
 29c:	39 f5       	brne	.+78     	;  0x2ec
 29e:	5b d5       	rcall	.+2742   	;  0xd56
 2a0:	21 f1       	breq	.+72     	;  0x2ea
 2a2:	5d d5       	rcall	.+2746   	;  0xd5e
 2a4:	11 f4       	brne	.+4      	;  0x2aa
 2a6:	e1 e0       	ldi	r30, 0x01	; 1
 2a8:	11 c0       	rjmp	.+34     	;  0x2cc
 2aa:	e4 30       	cpi	r30, 0x04	; 4
 2ac:	11 f4       	brne	.+4      	;  0x2b2
 2ae:	e5 e0       	ldi	r30, 0x05	; 5
 2b0:	0d c0       	rjmp	.+26     	;  0x2cc
 2b2:	e8 30       	cpi	r30, 0x08	; 8
 2b4:	11 f4       	brne	.+4      	;  0x2ba
 2b6:	ed e0       	ldi	r30, 0x0D	; 13
 2b8:	09 c0       	rjmp	.+18     	;  0x2cc
 2ba:	e0 32       	cpi	r30, 0x20	; 32
 2bc:	11 f4       	brne	.+4      	;  0x2c2
 2be:	ee e0       	ldi	r30, 0x0E	; 14
 2c0:	05 c0       	rjmp	.+10     	;  0x2cc
 2c2:	e0 31       	cpi	r30, 0x10	; 16
 2c4:	11 f4       	brne	.+4      	;  0x2ca
 2c6:	ea e0       	ldi	r30, 0x0A	; 10
 2c8:	01 c0       	rjmp	.+2      	;  0x2cc
 2ca:	ef ef       	ldi	r30, 0xFF	; 255
 2cc:	e0 93 64 01 	sts	0x0164, r30
 2d0:	a0 91 64 01 	lds	r26, 0x0164
 2d4:	af 3f       	cpi	r26, 0xFF	; 255
 2d6:	49 f0       	breq	.+18     	;  0x2ea
 2d8:	e0 91 66 01 	lds	r30, 0x0166
 2dc:	e0 30       	cpi	r30, 0x00	; 0
 2de:	19 f0       	breq	.+6      	;  0x2e6
 2e0:	50 d5       	rcall	.+2720   	;  0xd82
 2e2:	30 d5       	rcall	.+2656   	;  0xd44
 2e4:	01 c0       	rjmp	.+2      	;  0x2e8
 2e6:	70 d5       	rcall	.+2784   	;  0xdc8
 2e8:	50 d5       	rcall	.+2720   	;  0xd8a
 2ea:	05 c0       	rjmp	.+10     	;  0x2f6
 2ec:	e3 e0       	ldi	r30, 0x03	; 3
 2ee:	3e d5       	rcall	.+2684   	;  0xd6c
 2f0:	e0 e0       	ldi	r30, 0x00	; 0
 2f2:	e0 93 63 01 	sts	0x0163, r30
 2f6:	22 d5       	rcall	.+2628   	;  0xd3c
 2f8:	71 f4       	brne	.+28     	;  0x316
 2fa:	e0 91 69 01 	lds	r30, 0x0169
 2fe:	f0 91 6a 01 	lds	r31, 0x016A
 302:	31 97       	sbiw	r30, 0x01	; 1
 304:	e0 93 69 01 	sts	0x0169, r30
 308:	f0 93 6a 01 	sts	0x016A, r31
 30c:	30 97       	sbiw	r30, 0x00	; 0
 30e:	11 f4       	brne	.+4      	;  0x314
 310:	1d d5       	rcall	.+2618   	;  0xd4c
 312:	01 c0       	rjmp	.+2      	;  0x316
 314:	5d d5       	rcall	.+2746   	;  0xdd0
 316:	b8 ce       	rjmp	.-656    	;  0x88
 318:	ff cf       	rjmp	.-2      	;  0x318
 31a:	f8 94       	cli
 31c:	ee e2       	ldi	r30, 0x2E	; 46
 31e:	e7 bb       	out	0x17, r30	; 23
 320:	e2 e0       	ldi	r30, 0x02	; 2
 322:	e8 bb       	out	0x18, r30	; 24
 324:	e8 ef       	ldi	r30, 0xF8	; 248
 326:	e1 bb       	out	0x11, r30	; 17
 328:	e2 bb       	out	0x12, r30	; 18
 32a:	e0 e0       	ldi	r30, 0x00	; 0
 32c:	e4 bb       	out	0x14, r30	; 20
 32e:	ef e3       	ldi	r30, 0x3F	; 63
 330:	e5 bb       	out	0x15, r30	; 21
 332:	68 d0       	rcall	.+208    	;  0x404
 334:	24 d1       	rcall	.+584    	;  0x57e
 336:	b9 d0       	rcall	.+370    	;  0x4aa
 338:	4e d0       	rcall	.+156    	;  0x3d6
 33a:	77 d2       	rcall	.+1262   	;  0x82a
 33c:	2b d0       	rcall	.+86     	;  0x394
 33e:	44 24       	eor	r4, r4
 340:	e0 e0       	ldi	r30, 0x00	; 0
 342:	e0 93 6b 01 	sts	0x016B, r30
 346:	e0 93 6c 01 	sts	0x016C, r30
 34a:	42 d5       	rcall	.+2692   	;  0xdd0
 34c:	ec e2       	ldi	r30, 0x2C	; 44
 34e:	f1 e0       	ldi	r31, 0x01	; 1
 350:	e0 93 69 01 	sts	0x0169, r30
 354:	f0 93 6a 01 	sts	0x016A, r31
 358:	dd d4       	rcall	.+2490   	;  0xd14
 35a:	e3 d4       	rcall	.+2502   	;  0xd22
 35c:	f3 d4       	rcall	.+2534   	;  0xd44
 35e:	5c d4       	rcall	.+2232   	;  0xc18
 360:	e2 e0       	ldi	r30, 0x02	; 2
 362:	e0 93 63 01 	sts	0x0163, r30
 366:	e3 e0       	ldi	r30, 0x03	; 3
 368:	e5 bf       	out	0x35, r30	; 53
 36a:	e0 e4       	ldi	r30, 0x40	; 64
 36c:	ea bf       	out	0x3a, r30	; 58
 36e:	eb bf       	out	0x3b, r30	; 59
 370:	78 94       	sei
 372:	08 95       	ret
 374:	ea 93       	st	-Y, r30
 376:	e1 e0       	ldi	r30, 0x01	; 1
 378:	5e 2e       	mov	r5, r30
 37a:	e9 91       	ld	r30, Y+
 37c:	18 95       	reti
 37e:	f8 94       	cli
 380:	35 d1       	rcall	.+618    	;  0x5ec
 382:	e8 81       	ld	r30, Y
 384:	f9 81       	ldd	r31, Y+1	; 0x01
 386:	30 97       	sbiw	r30, 0x00	; 0
 388:	19 f0       	breq	.+6      	;  0x390
 38a:	fa 93       	st	-Y, r31
 38c:	ea 93       	st	-Y, r30
 38e:	3a d1       	rcall	.+628    	;  0x604
 390:	c1 98       	cbi	0x18, 1	; 24
 392:	ff cf       	rjmp	.-2      	;  0x392
 394:	e1 e0       	ldi	r30, 0x01	; 1
 396:	e8 bf       	out	0x38, r30	; 56
 398:	e9 bf       	out	0x39, r30	; 57
 39a:	e4 e0       	ldi	r30, 0x04	; 4
 39c:	e3 bf       	out	0x33, r30	; 51
 39e:	1c d5       	rcall	.+2616   	;  0xdd8
 3a0:	08 95       	ret
 3a2:	ea 93       	st	-Y, r30
 3a4:	ef b7       	in	r30, 0x3f	; 63
 3a6:	ea 93       	st	-Y, r30
 3a8:	17 d5       	rcall	.+2606   	;  0xdd8
 3aa:	e0 e1       	ldi	r30, 0x10	; 16
 3ac:	4e 2a       	or	r4, r30
 3ae:	e9 91       	ld	r30, Y+
 3b0:	ef bf       	out	0x3f, r30	; 63
 3b2:	e9 91       	ld	r30, Y+
 3b4:	18 95       	reti
 3b6:	a0 e0       	ldi	r26, 0x00	; 0
 3b8:	b0 e0       	ldi	r27, 0x00	; 0
 3ba:	b9 d5       	rcall	.+2930   	;  0xf2e
 3bc:	08 95       	ret
 3be:	a1 e0       	ldi	r26, 0x01	; 1
 3c0:	b0 e0       	ldi	r27, 0x00	; 0
 3c2:	b5 d5       	rcall	.+2922   	;  0xf2e
 3c4:	08 95       	ret
 3c6:	a2 e0       	ldi	r26, 0x02	; 2
 3c8:	b0 e0       	ldi	r27, 0x00	; 0
 3ca:	b1 d5       	rcall	.+2914   	;  0xf2e
 3cc:	08 95       	ret
 3ce:	a0 e4       	ldi	r26, 0x40	; 64
 3d0:	b0 e0       	ldi	r27, 0x00	; 0
 3d2:	a9 d5       	rcall	.+2898   	;  0xf26
 3d4:	08 95       	ret
 3d6:	0a 93       	st	-Y, r16
 3d8:	e9 e5       	ldi	r30, 0x59	; 89
 3da:	ed b9       	out	0x0d, r30	; 13
 3dc:	0e b1       	in	r16, 0x0e	; 14
 3de:	0f b1       	in	r16, 0x0f	; 15
 3e0:	00 e0       	ldi	r16, 0x00	; 0
 3e2:	c2 9a       	sbi	0x18, 2	; 24
 3e4:	09 91       	ld	r16, Y+
 3e6:	08 95       	ret
 3e8:	0a 93       	st	-Y, r16
 3ea:	f8 94       	cli
 3ec:	e9 81       	ldd	r30, Y+1	; 0x01
 3ee:	ef b9       	out	0x0f, r30	; 15
 3f0:	ee b1       	in	r30, 0x0e	; 14
 3f2:	e0 78       	andi	r30, 0x80	; 128
 3f4:	e0 38       	cpi	r30, 0x80	; 128
 3f6:	e1 f7       	brne	.-8      	;  0x3f0
 3f8:	0e b1       	in	r16, 0x0e	; 14
 3fa:	0f b1       	in	r16, 0x0f	; 15
 3fc:	78 94       	sei
 3fe:	e0 2f       	mov	r30, r16
 400:	08 81       	ld	r16, Y
 402:	4d c3       	rjmp	.+1690   	;  0xa9e
 404:	e7 e4       	ldi	r30, 0x47	; 71
 406:	e7 b9       	out	0x07, r30	; 7
 408:	ee e0       	ldi	r30, 0x0E	; 14
 40a:	e6 b9       	out	0x06, r30	; 6
 40c:	b8 9a       	sbi	0x17, 0	; 23
 40e:	c0 98       	cbi	0x18, 0	; 24
 410:	ef ef       	ldi	r30, 0xFF	; 255
 412:	f3 e0       	ldi	r31, 0x03	; 3
 414:	e0 93 71 01 	sts	0x0171, r30
 418:	f0 93 72 01 	sts	0x0172, r31
 41c:	e4 e4       	ldi	r30, 0x44	; 68
 41e:	f6 e1       	ldi	r31, 0x16	; 22
 420:	e0 93 73 01 	sts	0x0173, r30
 424:	f0 93 74 01 	sts	0x0174, r31
 428:	08 95       	ret
 42a:	e0 91 73 01 	lds	r30, 0x0173
 42e:	f0 91 74 01 	lds	r31, 0x0174
 432:	31 96       	adiw	r30, 0x01	; 1
 434:	e0 93 73 01 	sts	0x0173, r30
 438:	f0 93 74 01 	sts	0x0174, r31
 43c:	a0 91 73 01 	lds	r26, 0x0173
 440:	b0 91 74 01 	lds	r27, 0x0174
 444:	af 36       	cpi	r26, 0x6F	; 111
 446:	e7 e1       	ldi	r30, 0x17	; 23
 448:	be 07       	cpc	r27, r30
 44a:	19 f4       	brne	.+6      	;  0x452
 44c:	c0 9a       	sbi	0x18, 0	; 24
 44e:	37 9a       	sbi	0x06, 7	; 6
 450:	10 c0       	rjmp	.+32     	;  0x472
 452:	a0 91 73 01 	lds	r26, 0x0173
 456:	b0 91 74 01 	lds	r27, 0x0174
 45a:	a0 37       	cpi	r26, 0x70	; 112
 45c:	e7 e1       	ldi	r30, 0x17	; 23
 45e:	be 07       	cpc	r27, r30
 460:	40 f0       	brcs	.+16     	;  0x472
 462:	e0 e0       	ldi	r30, 0x00	; 0
 464:	e0 93 73 01 	sts	0x0173, r30
 468:	e0 93 74 01 	sts	0x0174, r30
 46c:	e6 b1       	in	r30, 0x06	; 6
 46e:	e0 6c       	ori	r30, 0xC0	; 192
 470:	e6 b9       	out	0x06, r30	; 6
 472:	08 95       	ret
 474:	ea 93       	st	-Y, r30
 476:	fa 93       	st	-Y, r31
 478:	ef b7       	in	r30, 0x3f	; 63
 47a:	ea 93       	st	-Y, r30
 47c:	e4 b1       	in	r30, 0x04	; 4
 47e:	f5 b1       	in	r31, 0x05	; 5
 480:	e0 93 71 01 	sts	0x0171, r30
 484:	f0 93 72 01 	sts	0x0172, r31
 488:	e6 b1       	in	r30, 0x06	; 6
 48a:	ef 73       	andi	r30, 0x3F	; 63
 48c:	e6 b9       	out	0x06, r30	; 6
 48e:	c0 98       	cbi	0x18, 0	; 24
 490:	e9 91       	ld	r30, Y+
 492:	ef bf       	out	0x3f, r30	; 63
 494:	f9 91       	ld	r31, Y+
 496:	e9 91       	ld	r30, Y+
 498:	18 95       	reti
 49a:	a0 91 71 01 	lds	r26, 0x0171
 49e:	b0 91 72 01 	lds	r27, 0x0172
 4a2:	ec e1       	ldi	r30, 0x1C	; 28
 4a4:	f2 e0       	ldi	r31, 0x02	; 2
 4a6:	39 d5       	rcall	.+2674   	;  0xf1a
 4a8:	08 95       	ret
 4aa:	99 d4       	rcall	.+2354   	;  0xdde
 4ac:	e0 93 75 01 	sts	0x0175, r30
 4b0:	9a d4       	rcall	.+2356   	;  0xde6
 4b2:	e1 e0       	ldi	r30, 0x01	; 1
 4b4:	e0 93 77 01 	sts	0x0177, r30
 4b8:	9a d4       	rcall	.+2356   	;  0xdee
 4ba:	08 95       	ret
 4bc:	4c d5       	rcall	.+2712   	;  0xf56
 4be:	1f ef       	ldi	r17, 0xFF	; 255
 4c0:	e0 91 76 01 	lds	r30, 0x0176
 4c4:	ef 5f       	subi	r30, 0xFF	; 255
 4c6:	e0 93 76 01 	sts	0x0176, r30
 4ca:	e3 b3       	in	r30, 0x13	; 19
 4cc:	ef 73       	andi	r30, 0x3F	; 63
 4ce:	af e3       	ldi	r26, 0x3F	; 63
 4d0:	ea 27       	eor	r30, r26
 4d2:	0e 2f       	mov	r16, r30
 4d4:	e0 91 78 01 	lds	r30, 0x0178
 4d8:	e0 30       	cpi	r30, 0x00	; 0
 4da:	e1 f0       	breq	.+56     	;  0x514
 4dc:	01 30       	cpi	r16, 0x01	; 1
 4de:	69 f4       	brne	.+26     	;  0x4fa
 4e0:	ef 5f       	subi	r30, 0xFF	; 255
 4e2:	e0 93 78 01 	sts	0x0178, r30
 4e6:	a0 91 78 01 	lds	r26, 0x0178
 4ea:	e8 ec       	ldi	r30, 0xC8	; 200
 4ec:	ea 17       	cp	r30, r26
 4ee:	20 f4       	brcc	.+8      	;  0x4f8
 4f0:	7e d4       	rcall	.+2300   	;  0xdee
 4f2:	81 d4       	rcall	.+2306   	;  0xdf6
 4f4:	e1 e1       	ldi	r30, 0x11	; 17
 4f6:	41 c0       	rjmp	.+130    	;  0x57a
 4f8:	0d c0       	rjmp	.+26     	;  0x514
 4fa:	09 30       	cpi	r16, 0x09	; 9
 4fc:	29 f4       	brne	.+10     	;  0x508
 4fe:	7f d4       	rcall	.+2302   	;  0xdfe
 500:	11 f4       	brne	.+4      	;  0x506
 502:	e2 e1       	ldi	r30, 0x12	; 18
 504:	3a c0       	rjmp	.+116    	;  0x57a
 506:	06 c0       	rjmp	.+12     	;  0x514
 508:	72 d4       	rcall	.+2276   	;  0xdee
 50a:	79 d4       	rcall	.+2290   	;  0xdfe
 50c:	11 f4       	brne	.+4      	;  0x512
 50e:	e1 e0       	ldi	r30, 0x01	; 1
 510:	34 c0       	rjmp	.+104    	;  0x57a
 512:	71 d4       	rcall	.+2274   	;  0xdf6
 514:	78 d4       	rcall	.+2288   	;  0xe06
 516:	31 f4       	brne	.+12     	;  0x524
 518:	66 d4       	rcall	.+2252   	;  0xde6
 51a:	00 30       	cpi	r16, 0x00	; 0
 51c:	19 f4       	brne	.+6      	;  0x524
 51e:	5f d4       	rcall	.+2238   	;  0xdde
 520:	e0 93 77 01 	sts	0x0177, r30
 524:	70 d4       	rcall	.+2272   	;  0xe06
 526:	21 f0       	breq	.+8      	;  0x530
 528:	a0 91 76 01 	lds	r26, 0x0176
 52c:	a3 30       	cpi	r26, 0x03	; 3
 52e:	08 f4       	brcc	.+2      	;  0x532
 530:	23 c0       	rjmp	.+70     	;  0x578
 532:	59 d4       	rcall	.+2226   	;  0xde6
 534:	00 93 75 01 	sts	0x0175, r16
 538:	e0 91 79 01 	lds	r30, 0x0179
 53c:	e0 30       	cpi	r30, 0x00	; 0
 53e:	e1 f4       	brne	.+56     	;  0x578
 540:	01 30       	cpi	r16, 0x01	; 1
 542:	21 f4       	brne	.+8      	;  0x54c
 544:	e1 e0       	ldi	r30, 0x01	; 1
 546:	e0 93 78 01 	sts	0x0178, r30
 54a:	13 c0       	rjmp	.+38     	;  0x572
 54c:	02 30       	cpi	r16, 0x02	; 2
 54e:	11 f4       	brne	.+4      	;  0x554
 550:	12 e0       	ldi	r17, 0x02	; 2
 552:	0f c0       	rjmp	.+30     	;  0x572
 554:	04 30       	cpi	r16, 0x04	; 4
 556:	11 f4       	brne	.+4      	;  0x55c
 558:	14 e0       	ldi	r17, 0x04	; 4
 55a:	0b c0       	rjmp	.+22     	;  0x572
 55c:	08 30       	cpi	r16, 0x08	; 8
 55e:	11 f4       	brne	.+4      	;  0x564
 560:	18 e0       	ldi	r17, 0x08	; 8
 562:	07 c0       	rjmp	.+14     	;  0x572
 564:	00 32       	cpi	r16, 0x20	; 32
 566:	11 f4       	brne	.+4      	;  0x56c
 568:	10 e2       	ldi	r17, 0x20	; 32
 56a:	03 c0       	rjmp	.+6      	;  0x572
 56c:	00 31       	cpi	r16, 0x10	; 16
 56e:	09 f4       	brne	.+2      	;  0x572
 570:	10 e1       	ldi	r17, 0x10	; 16
 572:	e1 e0       	ldi	r30, 0x01	; 1
 574:	e0 93 79 01 	sts	0x0179, r30
 578:	e1 2f       	mov	r30, r17
 57a:	f7 d4       	rcall	.+2542   	;  0xf6a
 57c:	08 95       	ret
 57e:	47 d4       	rcall	.+2190   	;  0xe0e
 580:	06 d1       	rcall	.+524    	;  0x78e
 582:	48 d4       	rcall	.+2192   	;  0xe14
 584:	1e d4       	rcall	.+2108   	;  0xdc2
 586:	1b d1       	rcall	.+566    	;  0x7be
 588:	e0 e0       	ldi	r30, 0x00	; 0
 58a:	e0 93 7a 01 	sts	0x017A, r30
 58e:	e0 93 7b 01 	sts	0x017B, r30
 592:	43 d4       	rcall	.+2182   	;  0xe1a
 594:	46 d4       	rcall	.+2188   	;  0xe22
 596:	49 d4       	rcall	.+2194   	;  0xe2a
 598:	53 d4       	rcall	.+2214   	;  0xe40
 59a:	08 95       	ret
 59c:	12 d4       	rcall	.+2084   	;  0xdc2
 59e:	0f d1       	rcall	.+542    	;  0x7be
 5a0:	44 d4       	rcall	.+2184   	;  0xe2a
 5a2:	08 95       	ret
 5a4:	e9 81       	ldd	r30, Y+1	; 0x01
 5a6:	50 d4       	rcall	.+2208   	;  0xe48
 5a8:	51 d4       	rcall	.+2210   	;  0xe4c
 5aa:	39 f4       	brne	.+14     	;  0x5ba
 5ac:	eb e4       	ldi	r30, 0x4B	; 75
 5ae:	f0 e0       	ldi	r31, 0x00	; 0
 5b0:	e0 93 82 01 	sts	0x0182, r30
 5b4:	f0 93 83 01 	sts	0x0183, r31
 5b8:	4c d4       	rcall	.+2200   	;  0xe52
 5ba:	e0 e0       	ldi	r30, 0x00	; 0
 5bc:	e0 93 7e 01 	sts	0x017E, r30
 5c0:	e0 93 7f 01 	sts	0x017F, r30
 5c4:	6c c2       	rjmp	.+1240   	;  0xa9e
 5c6:	e8 81       	ld	r30, Y
 5c8:	3f d4       	rcall	.+2174   	;  0xe48
 5ca:	e8 81       	ld	r30, Y
 5cc:	e0 93 81 01 	sts	0x0181, r30
 5d0:	e4 e6       	ldi	r30, 0x64	; 100
 5d2:	f0 e0       	ldi	r31, 0x00	; 0
 5d4:	e0 93 7e 01 	sts	0x017E, r30
 5d8:	f0 93 7f 01 	sts	0x017F, r31
 5dc:	3e d4       	rcall	.+2172   	;  0xe5a
 5de:	e0 e0       	ldi	r30, 0x00	; 0
 5e0:	e0 93 82 01 	sts	0x0182, r30
 5e4:	e0 93 83 01 	sts	0x0183, r30
 5e8:	34 d4       	rcall	.+2152   	;  0xe52
 5ea:	1d c1       	rjmp	.+570    	;  0x826
 5ec:	10 d4       	rcall	.+2080   	;  0xe0e
 5ee:	e7 d0       	rcall	.+462    	;  0x7be
 5f0:	e8 d3       	rcall	.+2000   	;  0xdc2
 5f2:	e5 d0       	rcall	.+458    	;  0x7be
 5f4:	0f d4       	rcall	.+2078   	;  0xe14
 5f6:	08 95       	ret
 5f8:	e1 e0       	ldi	r30, 0x01	; 1
 5fa:	e0 93 7d 01 	sts	0x017D, r30
 5fe:	08 95       	ret
 600:	10 d4       	rcall	.+2080   	;  0xe22
 602:	08 95       	ret
 604:	22 97       	sbiw	r28, 0x02	; 2
 606:	a3 d4       	rcall	.+2374   	;  0xf4e
 608:	e9 85       	ldd	r30, Y+9	; 0x09
 60a:	f0 70       	andi	r31, 0x00	; 0
 60c:	ee 83       	std	Y+6, r30	; 0x06
 60e:	ff 83       	std	Y+7, r31	; 0x07
 610:	00 e0       	ldi	r16, 0x00	; 0
 612:	10 e0       	ldi	r17, 0x00	; 0
 614:	26 d4       	rcall	.+2124   	;  0xe62
 616:	28 f5       	brcc	.+74     	;  0x662
 618:	20 e0       	ldi	r18, 0x00	; 0
 61a:	30 e0       	ldi	r19, 0x00	; 0
 61c:	20 32       	cpi	r18, 0x20	; 32
 61e:	ee e4       	ldi	r30, 0x4E	; 78
 620:	3e 07       	cpc	r19, r30
 622:	20 f4       	brcc	.+8      	;  0x62c
 624:	23 d4       	rcall	.+2118   	;  0xe6c
 626:	2f 5f       	subi	r18, 0xFF	; 255
 628:	3f 4f       	sbci	r19, 0xFF	; 255
 62a:	f8 cf       	rjmp	.-16     	;  0x61c
 62c:	c0 d3       	rcall	.+1920   	;  0xdae
 62e:	af d0       	rcall	.+350    	;  0x78e
 630:	20 e0       	ldi	r18, 0x00	; 0
 632:	30 e0       	ldi	r19, 0x00	; 0
 634:	20 33       	cpi	r18, 0x30	; 48
 636:	e5 e7       	ldi	r30, 0x75	; 117
 638:	3e 07       	cpc	r19, r30
 63a:	20 f4       	brcc	.+8      	;  0x644
 63c:	17 d4       	rcall	.+2094   	;  0xe6c
 63e:	2f 5f       	subi	r18, 0xFF	; 255
 640:	3f 4f       	sbci	r19, 0xFF	; 255
 642:	f8 cf       	rjmp	.-16     	;  0x634
 644:	b4 d3       	rcall	.+1896   	;  0xdae
 646:	bb d0       	rcall	.+374    	;  0x7be
 648:	20 e0       	ldi	r18, 0x00	; 0
 64a:	30 e0       	ldi	r19, 0x00	; 0
 64c:	20 33       	cpi	r18, 0x30	; 48
 64e:	e5 e7       	ldi	r30, 0x75	; 117
 650:	3e 07       	cpc	r19, r30
 652:	20 f4       	brcc	.+8      	;  0x65c
 654:	0b d4       	rcall	.+2070   	;  0xe6c
 656:	2f 5f       	subi	r18, 0xFF	; 255
 658:	3f 4f       	sbci	r19, 0xFF	; 255
 65a:	f8 cf       	rjmp	.-16     	;  0x64c
 65c:	0f 5f       	subi	r16, 0xFF	; 255
 65e:	1f 4f       	sbci	r17, 0xFF	; 255
 660:	d9 cf       	rjmp	.-78     	;  0x614
 662:	e8 85       	ldd	r30, Y+8	; 0x08
 664:	f9 85       	ldd	r31, Y+9	; 0x09
 666:	f0 70       	andi	r31, 0x00	; 0
 668:	ee 83       	std	Y+6, r30	; 0x06
 66a:	ff 83       	std	Y+7, r31	; 0x07
 66c:	00 e0       	ldi	r16, 0x00	; 0
 66e:	10 e0       	ldi	r17, 0x00	; 0
 670:	f8 d3       	rcall	.+2032   	;  0xe62
 672:	28 f5       	brcc	.+74     	;  0x6be
 674:	20 e0       	ldi	r18, 0x00	; 0
 676:	30 e0       	ldi	r19, 0x00	; 0
 678:	20 32       	cpi	r18, 0x20	; 32
 67a:	ee e4       	ldi	r30, 0x4E	; 78
 67c:	3e 07       	cpc	r19, r30
 67e:	20 f4       	brcc	.+8      	;  0x688
 680:	f5 d3       	rcall	.+2026   	;  0xe6c
 682:	2f 5f       	subi	r18, 0xFF	; 255
 684:	3f 4f       	sbci	r19, 0xFF	; 255
 686:	f8 cf       	rjmp	.-16     	;  0x678
 688:	99 d3       	rcall	.+1842   	;  0xdbc
 68a:	81 d0       	rcall	.+258    	;  0x78e
 68c:	20 e0       	ldi	r18, 0x00	; 0
 68e:	30 e0       	ldi	r19, 0x00	; 0
 690:	20 33       	cpi	r18, 0x30	; 48
 692:	e5 e7       	ldi	r30, 0x75	; 117
 694:	3e 07       	cpc	r19, r30
 696:	20 f4       	brcc	.+8      	;  0x6a0
 698:	e9 d3       	rcall	.+2002   	;  0xe6c
 69a:	2f 5f       	subi	r18, 0xFF	; 255
 69c:	3f 4f       	sbci	r19, 0xFF	; 255
 69e:	f8 cf       	rjmp	.-16     	;  0x690
 6a0:	8d d3       	rcall	.+1818   	;  0xdbc
 6a2:	8d d0       	rcall	.+282    	;  0x7be
 6a4:	20 e0       	ldi	r18, 0x00	; 0
 6a6:	30 e0       	ldi	r19, 0x00	; 0
 6a8:	20 33       	cpi	r18, 0x30	; 48
 6aa:	e5 e7       	ldi	r30, 0x75	; 117
 6ac:	3e 07       	cpc	r19, r30
 6ae:	20 f4       	brcc	.+8      	;  0x6b8
 6b0:	dd d3       	rcall	.+1978   	;  0xe6c
 6b2:	2f 5f       	subi	r18, 0xFF	; 255
 6b4:	3f 4f       	sbci	r19, 0xFF	; 255
 6b6:	f8 cf       	rjmp	.-16     	;  0x6a8
 6b8:	0f 5f       	subi	r16, 0xFF	; 255
 6ba:	1f 4f       	sbci	r17, 0xFF	; 255
 6bc:	d9 cf       	rjmp	.-78     	;  0x670
 6be:	4e d4       	rcall	.+2204   	;  0xf5c
 6c0:	2a 96       	adiw	r28, 0x0a	; 10
 6c2:	08 95       	ret
 6c4:	d9 d3       	rcall	.+1970   	;  0xe78
 6c6:	d9 f0       	breq	.+54     	;  0x6fe
 6c8:	e0 91 7e 01 	lds	r30, 0x017E
 6cc:	f0 91 7f 01 	lds	r31, 0x017F
 6d0:	31 97       	sbiw	r30, 0x01	; 1
 6d2:	e0 93 7e 01 	sts	0x017E, r30
 6d6:	f0 93 7f 01 	sts	0x017F, r31
 6da:	ce d3       	rcall	.+1948   	;  0xe78
 6dc:	69 f0       	breq	.+26     	;  0x6f8
 6de:	e0 91 80 01 	lds	r30, 0x0180
 6e2:	e1 50       	subi	r30, 0x01	; 1
 6e4:	e0 93 80 01 	sts	0x0180, r30
 6e8:	e0 30       	cpi	r30, 0x00	; 0
 6ea:	29 f4       	brne	.+10     	;  0x6f6
 6ec:	e0 91 81 01 	lds	r30, 0x0181
 6f0:	ea 93       	st	-Y, r30
 6f2:	7d d0       	rcall	.+250    	;  0x7ee
 6f4:	b2 d3       	rcall	.+1892   	;  0xe5a
 6f6:	02 c0       	rjmp	.+4      	;  0x6fc
 6f8:	64 d3       	rcall	.+1736   	;  0xdc2
 6fa:	c4 d3       	rcall	.+1928   	;  0xe84
 6fc:	0f c0       	rjmp	.+30     	;  0x71c
 6fe:	c4 d3       	rcall	.+1928   	;  0xe88
 700:	69 f0       	breq	.+26     	;  0x71c
 702:	e0 91 82 01 	lds	r30, 0x0182
 706:	f0 91 83 01 	lds	r31, 0x0183
 70a:	31 97       	sbiw	r30, 0x01	; 1
 70c:	e0 93 82 01 	sts	0x0182, r30
 710:	f0 93 83 01 	sts	0x0183, r31
 714:	b9 d3       	rcall	.+1906   	;  0xe88
 716:	11 f4       	brne	.+4      	;  0x71c
 718:	54 d3       	rcall	.+1704   	;  0xdc2
 71a:	b4 d3       	rcall	.+1896   	;  0xe84
 71c:	e0 91 7d 01 	lds	r30, 0x017D
 720:	e0 30       	cpi	r30, 0x00	; 0
 722:	19 f0       	breq	.+6      	;  0x72a
 724:	74 d3       	rcall	.+1768   	;  0xe0e
 726:	33 d0       	rcall	.+102    	;  0x78e
 728:	0a c0       	rjmp	.+20     	;  0x73e
 72a:	e0 91 7c 01 	lds	r30, 0x017C
 72e:	e1 50       	subi	r30, 0x01	; 1
 730:	e0 93 7c 01 	sts	0x017C, r30
 734:	e0 30       	cpi	r30, 0x00	; 0
 736:	19 f4       	brne	.+6      	;  0x73e
 738:	6a d3       	rcall	.+1748   	;  0xe0e
 73a:	59 d0       	rcall	.+178    	;  0x7ee
 73c:	6e d3       	rcall	.+1756   	;  0xe1a
 73e:	ad de       	rcall	.-678    	;  0x49a
 740:	e0 30       	cpi	r30, 0x00	; 0
 742:	19 f1       	breq	.+70     	;  0x78a
 744:	e0 91 7a 01 	lds	r30, 0x017A
 748:	f0 91 7b 01 	lds	r31, 0x017B
 74c:	31 96       	adiw	r30, 0x01	; 1
 74e:	e0 93 7a 01 	sts	0x017A, r30
 752:	f0 93 7b 01 	sts	0x017B, r31
 756:	a0 91 7a 01 	lds	r26, 0x017A
 75a:	b0 91 7b 01 	lds	r27, 0x017B
 75e:	a8 3e       	cpi	r26, 0xE8	; 232
 760:	e3 e0       	ldi	r30, 0x03	; 3
 762:	be 07       	cpc	r27, r30
 764:	28 f0       	brcs	.+10     	;  0x770
 766:	e0 e0       	ldi	r30, 0x00	; 0
 768:	e0 93 7a 01 	sts	0x017A, r30
 76c:	e0 93 7b 01 	sts	0x017B, r30
 770:	a0 91 7a 01 	lds	r26, 0x017A
 774:	b0 91 7b 01 	lds	r27, 0x017B
 778:	aa 30       	cpi	r26, 0x0A	; 10
 77a:	e0 e0       	ldi	r30, 0x00	; 0
 77c:	be 07       	cpc	r27, r30
 77e:	18 f4       	brcc	.+6      	;  0x786
 780:	e0 e0       	ldi	r30, 0x00	; 0
 782:	62 d3       	rcall	.+1732   	;  0xe48
 784:	01 c0       	rjmp	.+2      	;  0x788
 786:	46 d3       	rcall	.+1676   	;  0xe14
 788:	01 c0       	rjmp	.+2      	;  0x78c
 78a:	44 d3       	rcall	.+1672   	;  0xe14
 78c:	08 95       	ret
 78e:	82 d3       	rcall	.+1796   	;  0xe94
 790:	11 f4       	brne	.+4      	;  0x796
 792:	97 98       	cbi	0x12, 7	; 18
 794:	13 c0       	rjmp	.+38     	;  0x7bc
 796:	81 d3       	rcall	.+1794   	;  0xe9a
 798:	11 f4       	brne	.+4      	;  0x79e
 79a:	96 98       	cbi	0x12, 6	; 18
 79c:	0f c0       	rjmp	.+30     	;  0x7bc
 79e:	80 d3       	rcall	.+1792   	;  0xea0
 7a0:	11 f4       	brne	.+4      	;  0x7a6
 7a2:	95 98       	cbi	0x12, 5	; 18
 7a4:	0b c0       	rjmp	.+22     	;  0x7bc
 7a6:	7f d3       	rcall	.+1790   	;  0xea6
 7a8:	11 f4       	brne	.+4      	;  0x7ae
 7aa:	94 98       	cbi	0x12, 4	; 18
 7ac:	07 c0       	rjmp	.+14     	;  0x7bc
 7ae:	7e d3       	rcall	.+1788   	;  0xeac
 7b0:	11 f0       	breq	.+4      	;  0x7b6
 7b2:	4c d3       	rcall	.+1688   	;  0xe4c
 7b4:	19 f4       	brne	.+6      	;  0x7bc
 7b6:	e2 b3       	in	r30, 0x12	; 18
 7b8:	ef 79       	andi	r30, 0x9F	; 159
 7ba:	e2 bb       	out	0x12, r30	; 18
 7bc:	34 c0       	rjmp	.+104    	;  0x826
 7be:	6a d3       	rcall	.+1748   	;  0xe94
 7c0:	11 f4       	brne	.+4      	;  0x7c6
 7c2:	97 9a       	sbi	0x12, 7	; 18
 7c4:	13 c0       	rjmp	.+38     	;  0x7ec
 7c6:	69 d3       	rcall	.+1746   	;  0xe9a
 7c8:	11 f4       	brne	.+4      	;  0x7ce
 7ca:	96 9a       	sbi	0x12, 6	; 18
 7cc:	0f c0       	rjmp	.+30     	;  0x7ec
 7ce:	68 d3       	rcall	.+1744   	;  0xea0
 7d0:	11 f4       	brne	.+4      	;  0x7d6
 7d2:	95 9a       	sbi	0x12, 5	; 18
 7d4:	0b c0       	rjmp	.+22     	;  0x7ec
 7d6:	67 d3       	rcall	.+1742   	;  0xea6
 7d8:	11 f4       	brne	.+4      	;  0x7de
 7da:	94 9a       	sbi	0x12, 4	; 18
 7dc:	07 c0       	rjmp	.+14     	;  0x7ec
 7de:	66 d3       	rcall	.+1740   	;  0xeac
 7e0:	11 f0       	breq	.+4      	;  0x7e6
 7e2:	34 d3       	rcall	.+1640   	;  0xe4c
 7e4:	19 f4       	brne	.+6      	;  0x7ec
 7e6:	e2 b3       	in	r30, 0x12	; 18
 7e8:	e0 66       	ori	r30, 0x60	; 96
 7ea:	e2 bb       	out	0x12, r30	; 18
 7ec:	1c c0       	rjmp	.+56     	;  0x826
 7ee:	52 d3       	rcall	.+1700   	;  0xe94
 7f0:	19 f4       	brne	.+6      	;  0x7f8
 7f2:	e2 b3       	in	r30, 0x12	; 18
 7f4:	a0 e8       	ldi	r26, 0x80	; 128
 7f6:	15 c0       	rjmp	.+42     	;  0x822
 7f8:	50 d3       	rcall	.+1696   	;  0xe9a
 7fa:	19 f4       	brne	.+6      	;  0x802
 7fc:	e2 b3       	in	r30, 0x12	; 18
 7fe:	a0 e4       	ldi	r26, 0x40	; 64
 800:	10 c0       	rjmp	.+32     	;  0x822
 802:	4e d3       	rcall	.+1692   	;  0xea0
 804:	19 f4       	brne	.+6      	;  0x80c
 806:	e2 b3       	in	r30, 0x12	; 18
 808:	a0 e2       	ldi	r26, 0x20	; 32
 80a:	0b c0       	rjmp	.+22     	;  0x822
 80c:	4c d3       	rcall	.+1688   	;  0xea6
 80e:	19 f4       	brne	.+6      	;  0x816
 810:	e2 b3       	in	r30, 0x12	; 18
 812:	a0 e1       	ldi	r26, 0x10	; 16
 814:	06 c0       	rjmp	.+12     	;  0x822
 816:	4a d3       	rcall	.+1684   	;  0xeac
 818:	11 f0       	breq	.+4      	;  0x81e
 81a:	18 d3       	rcall	.+1584   	;  0xe4c
 81c:	21 f4       	brne	.+8      	;  0x826
 81e:	e2 b3       	in	r30, 0x12	; 18
 820:	a0 e6       	ldi	r26, 0x60	; 96
 822:	ea 27       	eor	r30, r26
 824:	e2 bb       	out	0x12, r30	; 18
 826:	21 96       	adiw	r28, 0x01	; 1
 828:	08 95       	ret
 82a:	e5 e5       	ldi	r30, 0x55	; 85
 82c:	e0 93 87 01 	sts	0x0187, r30
 830:	e0 93 88 01 	sts	0x0188, r30
 834:	e0 93 89 01 	sts	0x0189, r30
 838:	e5 e8       	ldi	r30, 0x85	; 133
 83a:	e0 93 8a 01 	sts	0x018A, r30
 83e:	e0 93 8b 01 	sts	0x018B, r30
 842:	e0 93 8c 01 	sts	0x018C, r30
 846:	e5 e8       	ldi	r30, 0x85	; 133
 848:	f1 e8       	ldi	r31, 0x81	; 129
 84a:	33 d3       	rcall	.+1638   	;  0xeb2
 84c:	ef e1       	ldi	r30, 0x1F	; 31
 84e:	f2 e8       	ldi	r31, 0x82	; 130
 850:	30 d3       	rcall	.+1632   	;  0xeb2
 852:	e0 ef       	ldi	r30, 0xF0	; 240
 854:	f3 e8       	ldi	r31, 0x83	; 131
 856:	2d d3       	rcall	.+1626   	;  0xeb2
 858:	e0 e0       	ldi	r30, 0x00	; 0
 85a:	f4 e8       	ldi	r31, 0x84	; 132
 85c:	2a d3       	rcall	.+1620   	;  0xeb2
 85e:	e0 e0       	ldi	r30, 0x00	; 0
 860:	f5 e8       	ldi	r31, 0x85	; 133
 862:	27 d3       	rcall	.+1614   	;  0xeb2
 864:	e1 ec       	ldi	r30, 0xC1	; 193
 866:	fe e8       	ldi	r31, 0x8E	; 142
 868:	24 d3       	rcall	.+1608   	;  0xeb2
 86a:	e0 e0       	ldi	r30, 0x00	; 0
 86c:	ff e8       	ldi	r31, 0x8F	; 143
 86e:	21 d3       	rcall	.+1602   	;  0xeb2
 870:	e0 e0       	ldi	r30, 0x00	; 0
 872:	f0 e9       	ldi	r31, 0x90	; 144
 874:	1e d3       	rcall	.+1596   	;  0xeb2
 876:	e0 e0       	ldi	r30, 0x00	; 0
 878:	f1 e9       	ldi	r31, 0x91	; 145
 87a:	1b d3       	rcall	.+1590   	;  0xeb2
 87c:	e0 e0       	ldi	r30, 0x00	; 0
 87e:	f2 e9       	ldi	r31, 0x92	; 146
 880:	18 d3       	rcall	.+1584   	;  0xeb2
 882:	e8 e8       	ldi	r30, 0x88	; 136
 884:	f9 e8       	ldi	r31, 0x89	; 137
 886:	15 d3       	rcall	.+1578   	;  0xeb2
 888:	14 d1       	rcall	.+552    	;  0xab2
 88a:	08 95       	ret
 88c:	e8 81       	ld	r30, Y
 88e:	f9 81       	ldd	r31, Y+1	; 0x01
 890:	e0 93 85 01 	sts	0x0185, r30
 894:	f0 93 86 01 	sts	0x0186, r31
 898:	e1 34       	cpi	r30, 0x41	; 65
 89a:	a1 e2       	ldi	r26, 0x21	; 33
 89c:	fa 07       	cpc	r31, r26
 89e:	69 f4       	brne	.+26     	;  0x8ba
 8a0:	ef e0       	ldi	r30, 0x0F	; 15
 8a2:	f7 e8       	ldi	r31, 0x87	; 135
 8a4:	06 d3       	rcall	.+1548   	;  0xeb2
 8a6:	e0 ea       	ldi	r30, 0xA0	; 160
 8a8:	f8 e8       	ldi	r31, 0x88	; 136
 8aa:	03 d3       	rcall	.+1542   	;  0xeb2
 8ac:	e6 ea       	ldi	r30, 0xA6	; 166
 8ae:	fa e8       	ldi	r31, 0x8A	; 138
 8b0:	00 d3       	rcall	.+1536   	;  0xeb2
 8b2:	e8 e2       	ldi	r30, 0x28	; 40
 8b4:	fb e8       	ldi	r31, 0x8B	; 139
 8b6:	fd d2       	rcall	.+1530   	;  0xeb2
 8b8:	f2 c0       	rjmp	.+484    	;  0xa9e
 8ba:	e2 34       	cpi	r30, 0x42	; 66
 8bc:	a1 e2       	ldi	r26, 0x21	; 33
 8be:	fa 07       	cpc	r31, r26
 8c0:	59 f4       	brne	.+22     	;  0x8d8
 8c2:	e0 ef       	ldi	r30, 0xF0	; 240
 8c4:	f7 e8       	ldi	r31, 0x87	; 135
 8c6:	f5 d2       	rcall	.+1514   	;  0xeb2
 8c8:	e0 e6       	ldi	r30, 0x60	; 96
 8ca:	f8 e8       	ldi	r31, 0x88	; 136
 8cc:	f2 d2       	rcall	.+1508   	;  0xeb2
 8ce:	ed ea       	ldi	r30, 0xAD	; 173
 8d0:	fa e8       	ldi	r31, 0x8A	; 138
 8d2:	ef d2       	rcall	.+1502   	;  0xeb2
 8d4:	f1 d2       	rcall	.+1506   	;  0xeb8
 8d6:	e3 c0       	rjmp	.+454    	;  0xa9e
 8d8:	e3 34       	cpi	r30, 0x43	; 67
 8da:	a1 e2       	ldi	r26, 0x21	; 33
 8dc:	fa 07       	cpc	r31, r26
 8de:	59 f4       	brne	.+22     	;  0x8f6
 8e0:	e8 ef       	ldi	r30, 0xF8	; 248
 8e2:	f7 e8       	ldi	r31, 0x87	; 135
 8e4:	e6 d2       	rcall	.+1484   	;  0xeb2
 8e6:	e0 e3       	ldi	r30, 0x30	; 48
 8e8:	f8 e8       	ldi	r31, 0x88	; 136
 8ea:	e3 d2       	rcall	.+1478   	;  0xeb2
 8ec:	e9 eb       	ldi	r30, 0xB9	; 185
 8ee:	fa e8       	ldi	r31, 0x8A	; 138
 8f0:	e0 d2       	rcall	.+1472   	;  0xeb2
 8f2:	e5 d2       	rcall	.+1482   	;  0xebe
 8f4:	d4 c0       	rjmp	.+424    	;  0xa9e
 8f6:	e4 34       	cpi	r30, 0x44	; 68
 8f8:	a1 e2       	ldi	r26, 0x21	; 33
 8fa:	fa 07       	cpc	r31, r26
 8fc:	69 f4       	brne	.+26     	;  0x918
 8fe:	e0 e0       	ldi	r30, 0x00	; 0
 900:	f7 e8       	ldi	r31, 0x87	; 135
 902:	d7 d2       	rcall	.+1454   	;  0xeb2
 904:	e0 e0       	ldi	r30, 0x00	; 0
 906:	f8 e8       	ldi	r31, 0x88	; 136
 908:	d4 d2       	rcall	.+1448   	;  0xeb2
 90a:	e5 ec       	ldi	r30, 0xC5	; 197
 90c:	fa e8       	ldi	r31, 0x8A	; 138
 90e:	d1 d2       	rcall	.+1442   	;  0xeb2
 910:	e8 e6       	ldi	r30, 0x68	; 104
 912:	fb e8       	ldi	r31, 0x8B	; 139
 914:	ce d2       	rcall	.+1436   	;  0xeb2
 916:	c3 c0       	rjmp	.+390    	;  0xa9e
 918:	e1 34       	cpi	r30, 0x41	; 65
 91a:	a2 e2       	ldi	r26, 0x22	; 34
 91c:	fa 07       	cpc	r31, r26
 91e:	69 f4       	brne	.+26     	;  0x93a
 920:	e7 e0       	ldi	r30, 0x07	; 7
 922:	f7 e8       	ldi	r31, 0x87	; 135
 924:	c6 d2       	rcall	.+1420   	;  0xeb2
 926:	e0 ed       	ldi	r30, 0xD0	; 208
 928:	f8 e8       	ldi	r31, 0x88	; 136
 92a:	c3 d2       	rcall	.+1414   	;  0xeb2
 92c:	ed ec       	ldi	r30, 0xCD	; 205
 92e:	fa e8       	ldi	r31, 0x8A	; 138
 930:	c0 d2       	rcall	.+1408   	;  0xeb2
 932:	e8 e3       	ldi	r30, 0x38	; 56
 934:	fb e8       	ldi	r31, 0x8B	; 139
 936:	bd d2       	rcall	.+1402   	;  0xeb2
 938:	b2 c0       	rjmp	.+356    	;  0xa9e
 93a:	e2 34       	cpi	r30, 0x42	; 66
 93c:	a2 e2       	ldi	r26, 0x22	; 34
 93e:	fa 07       	cpc	r31, r26
 940:	69 f4       	brne	.+26     	;  0x95c
 942:	ef e1       	ldi	r30, 0x1F	; 31
 944:	f7 e8       	ldi	r31, 0x87	; 135
 946:	b5 d2       	rcall	.+1386   	;  0xeb2
 948:	e0 e4       	ldi	r30, 0x40	; 64
 94a:	f8 e8       	ldi	r31, 0x88	; 136
 94c:	b2 d2       	rcall	.+1380   	;  0xeb2
 94e:	e8 ed       	ldi	r30, 0xD8	; 216
 950:	fa e8       	ldi	r31, 0x8A	; 138
 952:	af d2       	rcall	.+1374   	;  0xeb2
 954:	e0 ef       	ldi	r30, 0xF0	; 240
 956:	fb e8       	ldi	r31, 0x8B	; 139
 958:	ac d2       	rcall	.+1368   	;  0xeb2
 95a:	a1 c0       	rjmp	.+322    	;  0xa9e
 95c:	e3 34       	cpi	r30, 0x43	; 67
 95e:	a2 e2       	ldi	r26, 0x22	; 34
 960:	fa 07       	cpc	r31, r26
 962:	69 f4       	brne	.+26     	;  0x97e
 964:	e7 e2       	ldi	r30, 0x27	; 39
 966:	f7 e8       	ldi	r31, 0x87	; 135
 968:	a4 d2       	rcall	.+1352   	;  0xeb2
 96a:	e0 e1       	ldi	r30, 0x10	; 16
 96c:	f8 e8       	ldi	r31, 0x88	; 136
 96e:	a1 d2       	rcall	.+1346   	;  0xeb2
 970:	e4 ee       	ldi	r30, 0xE4	; 228
 972:	fa e8       	ldi	r31, 0x8A	; 138
 974:	9e d2       	rcall	.+1340   	;  0xeb2
 976:	e8 ea       	ldi	r30, 0xA8	; 168
 978:	fb e8       	ldi	r31, 0x8B	; 139
 97a:	9b d2       	rcall	.+1334   	;  0xeb2
 97c:	90 c0       	rjmp	.+288    	;  0xa9e
 97e:	e4 34       	cpi	r30, 0x44	; 68
 980:	a2 e2       	ldi	r26, 0x22	; 34
 982:	fa 07       	cpc	r31, r26
 984:	69 f4       	brne	.+26     	;  0x9a0
 986:	ee e2       	ldi	r30, 0x2E	; 46
 988:	f7 e8       	ldi	r31, 0x87	; 135
 98a:	93 d2       	rcall	.+1318   	;  0xeb2
 98c:	e0 ee       	ldi	r30, 0xE0	; 224
 98e:	f8 e8       	ldi	r31, 0x88	; 136
 990:	90 d2       	rcall	.+1312   	;  0xeb2
 992:	ec ee       	ldi	r30, 0xEC	; 236
 994:	fa e8       	ldi	r31, 0x8A	; 138
 996:	8d d2       	rcall	.+1306   	;  0xeb2
 998:	e8 e7       	ldi	r30, 0x78	; 120
 99a:	fb e8       	ldi	r31, 0x8B	; 139
 99c:	8a d2       	rcall	.+1300   	;  0xeb2
 99e:	7f c0       	rjmp	.+254    	;  0xa9e
 9a0:	e1 34       	cpi	r30, 0x41	; 65
 9a2:	a3 e2       	ldi	r26, 0x23	; 35
 9a4:	fa 07       	cpc	r31, r26
 9a6:	69 f4       	brne	.+26     	;  0x9c2
 9a8:	e6 e3       	ldi	r30, 0x36	; 54
 9aa:	f7 e8       	ldi	r31, 0x87	; 135
 9ac:	82 d2       	rcall	.+1284   	;  0xeb2
 9ae:	e0 eb       	ldi	r30, 0xB0	; 176
 9b0:	f8 e8       	ldi	r31, 0x88	; 136
 9b2:	7f d2       	rcall	.+1278   	;  0xeb2
 9b4:	e8 ef       	ldi	r30, 0xF8	; 248
 9b6:	fa e8       	ldi	r31, 0x8A	; 138
 9b8:	7c d2       	rcall	.+1272   	;  0xeb2
 9ba:	e0 e3       	ldi	r30, 0x30	; 48
 9bc:	fb e8       	ldi	r31, 0x8B	; 139
 9be:	79 d2       	rcall	.+1266   	;  0xeb2
 9c0:	6e c0       	rjmp	.+220    	;  0xa9e
 9c2:	e2 34       	cpi	r30, 0x42	; 66
 9c4:	a3 e2       	ldi	r26, 0x23	; 35
 9c6:	fa 07       	cpc	r31, r26
 9c8:	59 f4       	brne	.+22     	;  0x9e0
 9ca:	ee e3       	ldi	r30, 0x3E	; 62
 9cc:	f7 e8       	ldi	r31, 0x87	; 135
 9ce:	71 d2       	rcall	.+1250   	;  0xeb2
 9d0:	79 d2       	rcall	.+1266   	;  0xec4
 9d2:	e3 e0       	ldi	r30, 0x03	; 3
 9d4:	fa e8       	ldi	r31, 0x8A	; 138
 9d6:	6d d2       	rcall	.+1242   	;  0xeb2
 9d8:	e8 ee       	ldi	r30, 0xE8	; 232
 9da:	fb e8       	ldi	r31, 0x8B	; 139
 9dc:	6a d2       	rcall	.+1236   	;  0xeb2
 9de:	5f c0       	rjmp	.+190    	;  0xa9e
 9e0:	e3 34       	cpi	r30, 0x43	; 67
 9e2:	a3 e2       	ldi	r26, 0x23	; 35
 9e4:	fa 07       	cpc	r31, r26
 9e6:	59 f4       	brne	.+22     	;  0x9fe
 9e8:	e1 ec       	ldi	r30, 0xC1	; 193
 9ea:	f7 e8       	ldi	r31, 0x87	; 135
 9ec:	62 d2       	rcall	.+1220   	;  0xeb2
 9ee:	6a d2       	rcall	.+1236   	;  0xec4
 9f0:	eb e0       	ldi	r30, 0x0B	; 11
 9f2:	fa e8       	ldi	r31, 0x8A	; 138
 9f4:	5e d2       	rcall	.+1212   	;  0xeb2
 9f6:	e8 eb       	ldi	r30, 0xB8	; 184
 9f8:	fb e8       	ldi	r31, 0x8B	; 139
 9fa:	5b d2       	rcall	.+1206   	;  0xeb2
 9fc:	50 c0       	rjmp	.+160    	;  0xa9e
 9fe:	e4 34       	cpi	r30, 0x44	; 68
 a00:	a3 e2       	ldi	r26, 0x23	; 35
 a02:	fa 07       	cpc	r31, r26
 a04:	69 f4       	brne	.+26     	;  0xa20
 a06:	e9 ec       	ldi	r30, 0xC9	; 201
 a08:	f7 e8       	ldi	r31, 0x87	; 135
 a0a:	53 d2       	rcall	.+1190   	;  0xeb2
 a0c:	e0 e5       	ldi	r30, 0x50	; 80
 a0e:	f8 e8       	ldi	r31, 0x88	; 136
 a10:	50 d2       	rcall	.+1184   	;  0xeb2
 a12:	e7 e1       	ldi	r30, 0x17	; 23
 a14:	fa e8       	ldi	r31, 0x8A	; 138
 a16:	4d d2       	rcall	.+1178   	;  0xeb2
 a18:	e0 e7       	ldi	r30, 0x70	; 112
 a1a:	fb e8       	ldi	r31, 0x8B	; 139
 a1c:	4a d2       	rcall	.+1172   	;  0xeb2
 a1e:	3f c0       	rjmp	.+126    	;  0xa9e
 a20:	e1 34       	cpi	r30, 0x41	; 65
 a22:	a4 e2       	ldi	r26, 0x24	; 36
 a24:	fa 07       	cpc	r31, r26
 a26:	69 f4       	brne	.+26     	;  0xa42
 a28:	e5 eb       	ldi	r30, 0xB5	; 181
 a2a:	f7 e8       	ldi	r31, 0x87	; 135
 a2c:	42 d2       	rcall	.+1156   	;  0xeb2
 a2e:	e8 ec       	ldi	r30, 0xC8	; 200
 a30:	f8 e8       	ldi	r31, 0x88	; 136
 a32:	3f d2       	rcall	.+1150   	;  0xeb2
 a34:	ef e1       	ldi	r30, 0x1F	; 31
 a36:	fa e8       	ldi	r31, 0x8A	; 138
 a38:	3c d2       	rcall	.+1144   	;  0xeb2
 a3a:	e0 e4       	ldi	r30, 0x40	; 64
 a3c:	fb e8       	ldi	r31, 0x8B	; 139
 a3e:	39 d2       	rcall	.+1138   	;  0xeb2
 a40:	2e c0       	rjmp	.+92     	;  0xa9e
 a42:	e2 34       	cpi	r30, 0x42	; 66
 a44:	a4 e2       	ldi	r26, 0x24	; 36
 a46:	fa 07       	cpc	r31, r26
 a48:	59 f4       	brne	.+22     	;  0xa60
 a4a:	e1 ed       	ldi	r30, 0xD1	; 209
 a4c:	f7 e8       	ldi	r31, 0x87	; 135
 a4e:	31 d2       	rcall	.+1122   	;  0xeb2
 a50:	e0 e2       	ldi	r30, 0x20	; 32
 a52:	f8 e8       	ldi	r31, 0x88	; 136
 a54:	2e d2       	rcall	.+1116   	;  0xeb2
 a56:	ea e2       	ldi	r30, 0x2A	; 42
 a58:	fa e8       	ldi	r31, 0x8A	; 138
 a5a:	2b d2       	rcall	.+1110   	;  0xeb2
 a5c:	2d d2       	rcall	.+1114   	;  0xeb8
 a5e:	1f c0       	rjmp	.+62     	;  0xa9e
 a60:	e3 34       	cpi	r30, 0x43	; 67
 a62:	a4 e2       	ldi	r26, 0x24	; 36
 a64:	fa 07       	cpc	r31, r26
 a66:	59 f4       	brne	.+22     	;  0xa7e
 a68:	e0 ee       	ldi	r30, 0xE0	; 224
 a6a:	f7 e8       	ldi	r31, 0x87	; 135
 a6c:	22 d2       	rcall	.+1092   	;  0xeb2
 a6e:	e0 ec       	ldi	r30, 0xC0	; 192
 a70:	f8 e8       	ldi	r31, 0x88	; 136
 a72:	1f d2       	rcall	.+1086   	;  0xeb2
 a74:	e6 e3       	ldi	r30, 0x36	; 54
 a76:	fa e8       	ldi	r31, 0x8A	; 138
 a78:	1c d2       	rcall	.+1080   	;  0xeb2
 a7a:	21 d2       	rcall	.+1090   	;  0xebe
 a7c:	10 c0       	rjmp	.+32     	;  0xa9e
 a7e:	e4 34       	cpi	r30, 0x44	; 68
 a80:	a4 e2       	ldi	r26, 0x24	; 36
 a82:	fa 07       	cpc	r31, r26
 a84:	61 f4       	brne	.+24     	;  0xa9e
 a86:	e8 ed       	ldi	r30, 0xD8	; 216
 a88:	f7 e8       	ldi	r31, 0x87	; 135
 a8a:	13 d2       	rcall	.+1062   	;  0xeb2
 a8c:	e0 ef       	ldi	r30, 0xF0	; 240
 a8e:	f8 e8       	ldi	r31, 0x88	; 136
 a90:	10 d2       	rcall	.+1056   	;  0xeb2
 a92:	ee e3       	ldi	r30, 0x3E	; 62
 a94:	fa e8       	ldi	r31, 0x8A	; 138
 a96:	0d d2       	rcall	.+1050   	;  0xeb2
 a98:	e0 e8       	ldi	r30, 0x80	; 128
 a9a:	fb e8       	ldi	r31, 0x8B	; 139
 a9c:	0a d2       	rcall	.+1044   	;  0xeb2
 a9e:	22 96       	adiw	r28, 0x02	; 2
 aa0:	08 95       	ret
 aa2:	93 9a       	sbi	0x12, 3	; 18
 aa4:	e0 ef       	ldi	r30, 0xF0	; 240
 aa6:	f6 e8       	ldi	r31, 0x86	; 134
 aa8:	04 d2       	rcall	.+1032   	;  0xeb2
 aaa:	93 98       	cbi	0x12, 3	; 18
 aac:	08 95       	ret
 aae:	93 9a       	sbi	0x12, 3	; 18
 ab0:	08 95       	ret
 ab2:	93 9a       	sbi	0x12, 3	; 18
 ab4:	e0 e3       	ldi	r30, 0x30	; 48
 ab6:	f6 e8       	ldi	r31, 0x86	; 134
 ab8:	fc d1       	rcall	.+1016   	;  0xeb2
 aba:	93 98       	cbi	0x12, 3	; 18
 abc:	08 95       	ret
 abe:	0a 93       	st	-Y, r16
 ac0:	e9 81       	ldd	r30, Y+1	; 0x01
 ac2:	fa 81       	ldd	r31, Y+2	; 0x02
 ac4:	e0 70       	andi	r30, 0x00	; 0
 ac6:	ef 2f       	mov	r30, r31
 ac8:	f0 e0       	ldi	r31, 0x00	; 0
 aca:	0e 2f       	mov	r16, r30
 acc:	c2 98       	cbi	0x18, 2	; 24
 ace:	fd d1       	rcall	.+1018   	;  0xeca
 ad0:	09 81       	ldd	r16, Y+1	; 0x01
 ad2:	fb d1       	rcall	.+1014   	;  0xeca
 ad4:	ef ef       	ldi	r30, 0xFF	; 255
 ad6:	ea 93       	st	-Y, r30
 ad8:	87 dc       	rcall	.-1778   	;  0x3e8
 ada:	c2 9a       	sbi	0x18, 2	; 24
 adc:	08 81       	ld	r16, Y
 ade:	23 96       	adiw	r28, 0x03	; 3
 ae0:	08 95       	ret
 ae2:	35 d2       	rcall	.+1130   	;  0xf4e
 ae4:	e0 e9       	ldi	r30, 0x90	; 144
 ae6:	f1 e0       	ldi	r31, 0x01	; 1
 ae8:	f2 d1       	rcall	.+996    	;  0xece
 aea:	e0 e9       	ldi	r30, 0x90	; 144
 aec:	f1 e0       	ldi	r31, 0x01	; 1
 aee:	ff 93       	push	r31
 af0:	ef 93       	push	r30
 af2:	f2 d1       	rcall	.+996    	;  0xed8
 af4:	af 91       	pop	r26
 af6:	bf 91       	pop	r27
 af8:	ec 93       	st	X, r30
 afa:	ed e8       	ldi	r30, 0x8D	; 141
 afc:	f1 e0       	ldi	r31, 0x01	; 1
 afe:	30 81       	ld	r19, Z
 b00:	27 e0       	ldi	r18, 0x07	; 7
 b02:	e9 e0       	ldi	r30, 0x09	; 9
 b04:	e2 17       	cp	r30, r18
 b06:	38 f0       	brcs	.+14     	;  0xb16
 b08:	eb d1       	rcall	.+982    	;  0xee0
 b0a:	e9 57       	subi	r30, 0x79	; 121
 b0c:	fe 4f       	sbci	r31, 0xFE	; 254
 b0e:	e0 81       	ld	r30, Z
 b10:	3e 0f       	add	r19, r30
 b12:	2f 5f       	subi	r18, 0xFF	; 255
 b14:	f6 cf       	rjmp	.-20     	;  0xb02
 b16:	30 93 91 01 	sts	0x0191, r19
 b1a:	e0 91 8d 01 	lds	r30, 0x018D
 b1e:	e3 d1       	rcall	.+966    	;  0xee6
 b20:	53 69       	ori	r21, 0x93	; 147
 b22:	e5 d1       	rcall	.+970    	;  0xeee
 b24:	e0 91 8e 01 	lds	r30, 0x018E
 b28:	de d1       	rcall	.+956    	;  0xee6
 b2a:	54 69       	ori	r21, 0x94	; 148
 b2c:	e0 d1       	rcall	.+960    	;  0xeee
 b2e:	e0 91 8f 01 	lds	r30, 0x018F
 b32:	d9 d1       	rcall	.+946    	;  0xee6
 b34:	55 69       	ori	r21, 0x95	; 149
 b36:	db d1       	rcall	.+950    	;  0xeee
 b38:	e0 91 90 01 	lds	r30, 0x0190
 b3c:	d4 d1       	rcall	.+936    	;  0xee6
 b3e:	56 69       	ori	r21, 0x96	; 150
 b40:	d6 d1       	rcall	.+940    	;  0xeee
 b42:	af df       	rcall	.-162    	;  0xaa2
 b44:	07 e8       	ldi	r16, 0x87	; 135
 b46:	11 e0       	ldi	r17, 0x01	; 1
 b48:	1a 93       	st	-Y, r17
 b4a:	0a 93       	st	-Y, r16
 b4c:	ae d0       	rcall	.+348    	;  0xcaa
 b4e:	af df       	rcall	.-162    	;  0xaae
 b50:	60 c0       	rjmp	.+192    	;  0xc12
 b52:	fd d1       	rcall	.+1018   	;  0xf4e
 b54:	e5 e5       	ldi	r30, 0x55	; 85
 b56:	e0 93 92 01 	sts	0x0192, r30
 b5a:	e0 93 93 01 	sts	0x0193, r30
 b5e:	e0 93 94 01 	sts	0x0194, r30
 b62:	e0 93 95 01 	sts	0x0195, r30
 b66:	e0 93 96 01 	sts	0x0196, r30
 b6a:	e0 93 97 01 	sts	0x0197, r30
 b6e:	e0 91 8a 01 	lds	r30, 0x018A
 b72:	e0 93 98 01 	sts	0x0198, r30
 b76:	e0 91 8b 01 	lds	r30, 0x018B
 b7a:	e0 93 99 01 	sts	0x0199, r30
 b7e:	e0 91 8c 01 	lds	r30, 0x018C
 b82:	e0 93 9a 01 	sts	0x019A, r30
 b86:	e0 91 8d 01 	lds	r30, 0x018D
 b8a:	e0 93 9b 01 	sts	0x019B, r30
 b8e:	e0 91 8e 01 	lds	r30, 0x018E
 b92:	e0 93 9c 01 	sts	0x019C, r30
 b96:	e0 91 8f 01 	lds	r30, 0x018F
 b9a:	e0 93 9d 01 	sts	0x019D, r30
 b9e:	e0 91 90 01 	lds	r30, 0x0190
 ba2:	e0 93 9e 01 	sts	0x019E, r30
 ba6:	ee e9       	ldi	r30, 0x9E	; 158
 ba8:	f1 e0       	ldi	r31, 0x01	; 1
 baa:	91 d1       	rcall	.+802    	;  0xece
 bac:	ee e9       	ldi	r30, 0x9E	; 158
 bae:	f1 e0       	ldi	r31, 0x01	; 1
 bb0:	ff 93       	push	r31
 bb2:	ef 93       	push	r30
 bb4:	91 d1       	rcall	.+802    	;  0xed8
 bb6:	af 91       	pop	r26
 bb8:	bf 91       	pop	r27
 bba:	ec 93       	st	X, r30
 bbc:	eb e9       	ldi	r30, 0x9B	; 155
 bbe:	f1 e0       	ldi	r31, 0x01	; 1
 bc0:	30 81       	ld	r19, Z
 bc2:	2a e0       	ldi	r18, 0x0A	; 10
 bc4:	ec e0       	ldi	r30, 0x0C	; 12
 bc6:	e2 17       	cp	r30, r18
 bc8:	38 f0       	brcs	.+14     	;  0xbd8
 bca:	8a d1       	rcall	.+788    	;  0xee0
 bcc:	ee 56       	subi	r30, 0x6E	; 110
 bce:	fe 4f       	sbci	r31, 0xFE	; 254
 bd0:	e0 81       	ld	r30, Z
 bd2:	3e 0f       	add	r19, r30
 bd4:	2f 5f       	subi	r18, 0xFF	; 255
 bd6:	f6 cf       	rjmp	.-20     	;  0xbc4
 bd8:	30 93 9f 01 	sts	0x019F, r19
 bdc:	e0 91 9b 01 	lds	r30, 0x019B
 be0:	82 d1       	rcall	.+772    	;  0xee6
 be2:	53 69       	ori	r21, 0x93	; 147
 be4:	84 d1       	rcall	.+776    	;  0xeee
 be6:	e0 91 9c 01 	lds	r30, 0x019C
 bea:	7d d1       	rcall	.+762    	;  0xee6
 bec:	54 69       	ori	r21, 0x94	; 148
 bee:	7f d1       	rcall	.+766    	;  0xeee
 bf0:	e0 91 9d 01 	lds	r30, 0x019D
 bf4:	78 d1       	rcall	.+752    	;  0xee6
 bf6:	55 69       	ori	r21, 0x95	; 149
 bf8:	7a d1       	rcall	.+756    	;  0xeee
 bfa:	e0 91 9e 01 	lds	r30, 0x019E
 bfe:	73 d1       	rcall	.+742    	;  0xee6
 c00:	56 69       	ori	r21, 0x96	; 150
 c02:	75 d1       	rcall	.+746    	;  0xeee
 c04:	4e df       	rcall	.-356    	;  0xaa2
 c06:	02 e9       	ldi	r16, 0x92	; 146
 c08:	11 e0       	ldi	r17, 0x01	; 1
 c0a:	1a 93       	st	-Y, r17
 c0c:	0a 93       	st	-Y, r16
 c0e:	43 d0       	rcall	.+134    	;  0xc96
 c10:	4e df       	rcall	.-356    	;  0xaae
 c12:	a4 d1       	rcall	.+840    	;  0xf5c
 c14:	27 96       	adiw	r28, 0x07	; 7
 c16:	08 95       	ret
 c18:	9a d1       	rcall	.+820    	;  0xf4e
 c1a:	cd db       	rcall	.-2150   	;  0x3b6
 c1c:	0e 2f       	mov	r16, r30
 c1e:	cf db       	rcall	.-2146   	;  0x3be
 c20:	1e 2f       	mov	r17, r30
 c22:	d1 db       	rcall	.-2142   	;  0x3c6
 c24:	2e 2f       	mov	r18, r30
 c26:	e0 2f       	mov	r30, r16
 c28:	8e d1       	rcall	.+796    	;  0xf46
 c2a:	e8 7f       	andi	r30, 0xF8	; 248
 c2c:	3e 2f       	mov	r19, r30
 c2e:	e1 2f       	mov	r30, r17
 c30:	e2 95       	swap	r30
 c32:	ef 70       	andi	r30, 0x0F	; 15
 c34:	e6 95       	lsr	r30
 c36:	e4 70       	andi	r30, 0x04	; 4
 c38:	3e 2b       	or	r19, r30
 c3a:	5c d1       	rcall	.+696    	;  0xef4
 c3c:	3e 2b       	or	r19, r30
 c3e:	30 93 8d 01 	sts	0x018D, r19
 c42:	e1 2f       	mov	r30, r17
 c44:	ee 0f       	add	r30, r30
 c46:	ec 7f       	andi	r30, 0xFC	; 252
 c48:	3e 2f       	mov	r19, r30
 c4a:	54 d1       	rcall	.+680    	;  0xef4
 c4c:	3e 2b       	or	r19, r30
 c4e:	30 93 8e 01 	sts	0x018E, r19
 c52:	e1 2f       	mov	r30, r17
 c54:	e2 95       	swap	r30
 c56:	e0 7f       	andi	r30, 0xF0	; 240
 c58:	ee 0f       	add	r30, r30
 c5a:	ee 0f       	add	r30, r30
 c5c:	ee 0f       	add	r30, r30
 c5e:	e0 78       	andi	r30, 0x80	; 128
 c60:	3e 2f       	mov	r19, r30
 c62:	e2 2f       	mov	r30, r18
 c64:	e6 95       	lsr	r30
 c66:	ec 77       	andi	r30, 0x7C	; 124
 c68:	3e 2b       	or	r19, r30
 c6a:	44 d1       	rcall	.+648    	;  0xef4
 c6c:	3e 2b       	or	r19, r30
 c6e:	30 93 8f 01 	sts	0x018F, r19
 c72:	e2 2f       	mov	r30, r18
 c74:	e2 95       	swap	r30
 c76:	e0 7f       	andi	r30, 0xF0	; 240
 c78:	ee 0f       	add	r30, r30
 c7a:	e0 7e       	andi	r30, 0xE0	; 224
 c7c:	3e 2f       	mov	r19, r30
 c7e:	e3 2f       	mov	r30, r19
 c80:	e6 95       	lsr	r30
 c82:	e0 71       	andi	r30, 0x10	; 16
 c84:	a0 e1       	ldi	r26, 0x10	; 16
 c86:	ea 27       	eor	r30, r26
 c88:	5e 2f       	mov	r21, r30
 c8a:	35 2b       	or	r19, r21
 c8c:	30 93 90 01 	sts	0x0190, r19
 c90:	65 d1       	rcall	.+714    	;  0xf5c
 c92:	26 96       	adiw	r28, 0x06	; 6
 c94:	08 95       	ret
 c96:	3c d1       	rcall	.+632    	;  0xf10
 c98:	89 9a       	sbi	0x11, 1	; 17
 c9a:	f8 94       	cli
 c9c:	a8 81       	ld	r26, Y
 c9e:	b9 81       	ldd	r27, Y+1	; 0x01
 ca0:	68 e0       	ldi	r22, 0x08	; 8
 ca2:	7e e0       	ldi	r23, 0x0E	; 14
 ca4:	09 c0       	rjmp	.+18     	;  0xcb8
 ca6:	22 96       	adiw	r28, 0x02	; 2
 ca8:	08 95       	ret
 caa:	32 d1       	rcall	.+612    	;  0xf10
 cac:	89 9a       	sbi	0x11, 1	; 17
 cae:	f8 94       	cli
 cb0:	a8 81       	ld	r26, Y
 cb2:	b9 81       	ldd	r27, Y+1	; 0x01
 cb4:	68 e0       	ldi	r22, 0x08	; 8
 cb6:	7b e0       	ldi	r23, 0x0B	; 11
 cb8:	8c 91       	ld	r24, X
 cba:	11 96       	adiw	r26, 0x01	; 1
 cbc:	87 ff       	sbrs	r24, 7
 cbe:	05 c0       	rjmp	.+10     	;  0xcca
 cc0:	00 00       	nop
 cc2:	00 00       	nop
 cc4:	00 00       	nop
 cc6:	91 9a       	sbi	0x12, 1	; 18
 cc8:	05 c0       	rjmp	.+10     	;  0xcd4
 cca:	00 00       	nop
 ccc:	00 00       	nop
 cce:	91 98       	cbi	0x12, 1	; 18
 cd0:	00 00       	nop
 cd2:	00 00       	nop
 cd4:	61 50       	subi	r22, 0x01	; 1
 cd6:	71 f0       	breq	.+28     	;  0xcf4
 cd8:	88 0f       	add	r24, r24
	...
 cf2:	e4 cf       	rjmp	.-56     	;  0xcbc
 cf4:	71 50       	subi	r23, 0x01	; 1
 cf6:	39 f0       	breq	.+14     	;  0xd06
 cf8:	68 e0       	ldi	r22, 0x08	; 8
	...
 d02:	00 00       	nop
 d04:	d9 cf       	rjmp	.-78     	;  0xcb8
 d06:	78 94       	sei
 d08:	95 e0       	ldi	r25, 0x05	; 5
 d0a:	91 50       	subi	r25, 0x01	; 1
 d0c:	f1 f7       	brne	.-4      	;  0xd0a
 d0e:	89 98       	cbi	0x11, 1	; 17
 d10:	22 96       	adiw	r28, 0x02	; 2
 d12:	08 95       	ret
 d14:	e4 e0       	ldi	r30, 0x04	; 4
 d16:	f0 e0       	ldi	r31, 0x00	; 0
 d18:	e0 93 6d 01 	sts	0x016D, r30
 d1c:	f0 93 6e 01 	sts	0x016E, r31
 d20:	08 95       	ret
 d22:	e5 e0       	ldi	r30, 0x05	; 5
 d24:	f0 e0       	ldi	r31, 0x00	; 0
 d26:	e0 93 6f 01 	sts	0x016F, r30
 d2a:	f0 93 70 01 	sts	0x0170, r31
 d2e:	08 95       	ret
 d30:	e0 91 6b 01 	lds	r30, 0x016B
 d34:	f0 91 6c 01 	lds	r31, 0x016C
 d38:	30 97       	sbiw	r30, 0x00	; 0
 d3a:	08 95       	ret
 d3c:	e0 91 68 01 	lds	r30, 0x0168
 d40:	e0 30       	cpi	r30, 0x00	; 0
 d42:	08 95       	ret
 d44:	e0 e0       	ldi	r30, 0x00	; 0
 d46:	e0 93 66 01 	sts	0x0166, r30
 d4a:	08 95       	ret
 d4c:	e0 e0       	ldi	r30, 0x00	; 0
 d4e:	f0 e0       	ldi	r31, 0x00	; 0
 d50:	fa 93       	st	-Y, r31
 d52:	ea 93       	st	-Y, r30
 d54:	14 cb       	rjmp	.-2520   	;  0x37e
 d56:	a0 91 62 01 	lds	r26, 0x0162
 d5a:	af 3f       	cpi	r26, 0xFF	; 255
 d5c:	08 95       	ret
 d5e:	e0 91 62 01 	lds	r30, 0x0162
 d62:	e2 30       	cpi	r30, 0x02	; 2
 d64:	08 95       	ret
 d66:	e0 2f       	mov	r30, r16
 d68:	f0 e0       	ldi	r31, 0x00	; 0
 d6a:	08 95       	ret
 d6c:	ea 93       	st	-Y, r30
 d6e:	e0 e0       	ldi	r30, 0x00	; 0
 d70:	ea 93       	st	-Y, r30
 d72:	18 cc       	rjmp	.-2000   	;  0x5a4
 d74:	e0 93 60 01 	sts	0x0160, r30
 d78:	f0 93 61 01 	sts	0x0161, r31
 d7c:	fa 93       	st	-Y, r31
 d7e:	ea 93       	st	-Y, r30
 d80:	85 cd       	rjmp	.-1270   	;  0x88c
 d82:	e3 e0       	ldi	r30, 0x03	; 3
 d84:	e0 93 63 01 	sts	0x0163, r30
 d88:	08 95       	ret
 d8a:	e1 e0       	ldi	r30, 0x01	; 1
 d8c:	e0 93 65 01 	sts	0x0165, r30
 d90:	08 95       	ret
 d92:	04 dc       	rcall	.-2040   	;  0x59c
 d94:	e0 91 64 01 	lds	r30, 0x0164
 d98:	ea 93       	st	-Y, r30
 d9a:	08 95       	ret
 d9c:	55 24       	eor	r5, r5
 d9e:	e1 e0       	ldi	r30, 0x01	; 1
 da0:	f0 e0       	ldi	r31, 0x00	; 0
 da2:	e0 93 6b 01 	sts	0x016B, r30
 da6:	f0 93 6c 01 	sts	0x016C, r31
 daa:	e5 e0       	ldi	r30, 0x05	; 5
 dac:	08 95       	ret
 dae:	e3 e0       	ldi	r30, 0x03	; 3
 db0:	ea 93       	st	-Y, r30
 db2:	08 95       	ret
 db4:	e7 e0       	ldi	r30, 0x07	; 7
 db6:	e0 93 63 01 	sts	0x0163, r30
 dba:	08 95       	ret
 dbc:	e2 e0       	ldi	r30, 0x02	; 2
 dbe:	ea 93       	st	-Y, r30
 dc0:	08 95       	ret
 dc2:	e1 e0       	ldi	r30, 0x01	; 1
 dc4:	ea 93       	st	-Y, r30
 dc6:	08 95       	ret
 dc8:	e4 e0       	ldi	r30, 0x04	; 4
 dca:	e0 93 63 01 	sts	0x0163, r30
 dce:	08 95       	ret
 dd0:	e4 e6       	ldi	r30, 0x64	; 100
 dd2:	e0 93 68 01 	sts	0x0168, r30
 dd6:	08 95       	ret
 dd8:	e3 e6       	ldi	r30, 0x63	; 99
 dda:	e2 bf       	out	0x32, r30	; 50
 ddc:	08 95       	ret
 dde:	e0 e0       	ldi	r30, 0x00	; 0
 de0:	e0 93 79 01 	sts	0x0179, r30
 de4:	08 95       	ret
 de6:	e0 e0       	ldi	r30, 0x00	; 0
 de8:	e0 93 76 01 	sts	0x0176, r30
 dec:	08 95       	ret
 dee:	e0 e0       	ldi	r30, 0x00	; 0
 df0:	e0 93 78 01 	sts	0x0178, r30
 df4:	08 95       	ret
 df6:	e0 e0       	ldi	r30, 0x00	; 0
 df8:	e0 93 77 01 	sts	0x0177, r30
 dfc:	08 95       	ret
 dfe:	e0 91 77 01 	lds	r30, 0x0177
 e02:	e0 30       	cpi	r30, 0x00	; 0
 e04:	08 95       	ret
 e06:	a0 91 75 01 	lds	r26, 0x0175
 e0a:	0a 17       	cp	r16, r26
 e0c:	08 95       	ret
 e0e:	e5 e0       	ldi	r30, 0x05	; 5
 e10:	ea 93       	st	-Y, r30
 e12:	08 95       	ret
 e14:	e0 e0       	ldi	r30, 0x00	; 0
 e16:	ea 93       	st	-Y, r30
 e18:	d2 cc       	rjmp	.-1628   	;  0x7be
 e1a:	e2 e3       	ldi	r30, 0x32	; 50
 e1c:	e0 93 7c 01 	sts	0x017C, r30
 e20:	08 95       	ret
 e22:	e0 e0       	ldi	r30, 0x00	; 0
 e24:	e0 93 7d 01 	sts	0x017D, r30
 e28:	08 95       	ret
 e2a:	e0 e0       	ldi	r30, 0x00	; 0
 e2c:	e0 93 7e 01 	sts	0x017E, r30
 e30:	e0 93 7f 01 	sts	0x017F, r30
 e34:	e0 e0       	ldi	r30, 0x00	; 0
 e36:	e0 93 82 01 	sts	0x0182, r30
 e3a:	e0 93 83 01 	sts	0x0183, r30
 e3e:	08 95       	ret
 e40:	e0 e0       	ldi	r30, 0x00	; 0
 e42:	e0 93 84 01 	sts	0x0184, r30
 e46:	08 95       	ret
 e48:	ea 93       	st	-Y, r30
 e4a:	a1 cc       	rjmp	.-1726   	;  0x78e
 e4c:	a8 81       	ld	r26, Y
 e4e:	a1 30       	cpi	r26, 0x01	; 1
 e50:	08 95       	ret
 e52:	e1 e0       	ldi	r30, 0x01	; 1
 e54:	e0 93 84 01 	sts	0x0184, r30
 e58:	08 95       	ret
 e5a:	ea e0       	ldi	r30, 0x0A	; 10
 e5c:	e0 93 80 01 	sts	0x0180, r30
 e60:	08 95       	ret
 e62:	ee 81       	ldd	r30, Y+6	; 0x06
 e64:	ff 81       	ldd	r31, Y+7	; 0x07
 e66:	0e 17       	cp	r16, r30
 e68:	1f 07       	cpc	r17, r31
 e6a:	08 95       	ret
 e6c:	e2 2f       	mov	r30, r18
 e6e:	f3 2f       	mov	r31, r19
 e70:	31 96       	adiw	r30, 0x01	; 1
 e72:	4e 2f       	mov	r20, r30
 e74:	5f 2f       	mov	r21, r31
 e76:	08 95       	ret
 e78:	e0 91 7e 01 	lds	r30, 0x017E
 e7c:	f0 91 7f 01 	lds	r31, 0x017F
 e80:	30 97       	sbiw	r30, 0x00	; 0
 e82:	08 95       	ret
 e84:	9c dc       	rcall	.-1736   	;  0x7be
 e86:	dc cf       	rjmp	.-72     	;  0xe40
 e88:	e0 91 82 01 	lds	r30, 0x0182
 e8c:	f0 91 83 01 	lds	r31, 0x0183
 e90:	30 97       	sbiw	r30, 0x00	; 0
 e92:	08 95       	ret
 e94:	a8 81       	ld	r26, Y
 e96:	a5 30       	cpi	r26, 0x05	; 5
 e98:	08 95       	ret
 e9a:	a8 81       	ld	r26, Y
 e9c:	a3 30       	cpi	r26, 0x03	; 3
 e9e:	08 95       	ret
 ea0:	a8 81       	ld	r26, Y
 ea2:	a2 30       	cpi	r26, 0x02	; 2
 ea4:	08 95       	ret
 ea6:	e8 81       	ld	r30, Y
 ea8:	e0 30       	cpi	r30, 0x00	; 0
 eaa:	08 95       	ret
 eac:	a8 81       	ld	r26, Y
 eae:	a4 30       	cpi	r26, 0x04	; 4
 eb0:	08 95       	ret
 eb2:	fa 93       	st	-Y, r31
 eb4:	ea 93       	st	-Y, r30
 eb6:	03 ce       	rjmp	.-1018   	;  0xabe
 eb8:	e8 ef       	ldi	r30, 0xF8	; 248
 eba:	fb e8       	ldi	r31, 0x8B	; 139
 ebc:	fa cf       	rjmp	.-12     	;  0xeb2
 ebe:	e0 eb       	ldi	r30, 0xB0	; 176
 ec0:	fb e8       	ldi	r31, 0x8B	; 139
 ec2:	f7 cf       	rjmp	.-18     	;  0xeb2
 ec4:	e0 e8       	ldi	r30, 0x80	; 128
 ec6:	f8 e8       	ldi	r31, 0x88	; 136
 ec8:	f4 cf       	rjmp	.-24     	;  0xeb2
 eca:	0a 93       	st	-Y, r16
 ecc:	8d ca       	rjmp	.-2790   	;  0x3e8
 ece:	df 01       	movw	r26, r30
 ed0:	ec 91       	ld	r30, X
 ed2:	e0 7f       	andi	r30, 0xF0	; 240
 ed4:	ec 93       	st	X, r30
 ed6:	08 95       	ret
 ed8:	e0 81       	ld	r30, Z
 eda:	ae 81       	ldd	r26, Y+6	; 0x06
 edc:	ea 2b       	or	r30, r26
 ede:	08 95       	ret
 ee0:	e2 2f       	mov	r30, r18
 ee2:	f0 e0       	ldi	r31, 0x00	; 0
 ee4:	08 95       	ret
 ee6:	f0 e0       	ldi	r31, 0x00	; 0
 ee8:	4e 2f       	mov	r20, r30
 eea:	5f 2f       	mov	r21, r31
 eec:	08 95       	ret
 eee:	5a 93       	st	-Y, r21
 ef0:	4a 93       	st	-Y, r20
 ef2:	e5 cd       	rjmp	.-1078   	;  0xabe
 ef4:	e3 2f       	mov	r30, r19
 ef6:	e6 95       	lsr	r30
 ef8:	e6 95       	lsr	r30
 efa:	e1 70       	andi	r30, 0x01	; 1
 efc:	4e 2f       	mov	r20, r30
 efe:	e4 2f       	mov	r30, r20
 f00:	ee 0f       	add	r30, r30
 f02:	e2 70       	andi	r30, 0x02	; 2
 f04:	a2 e0       	ldi	r26, 0x02	; 2
 f06:	ea 27       	eor	r30, r26
 f08:	5e 2f       	mov	r21, r30
 f0a:	e5 2f       	mov	r30, r21
 f0c:	e4 2b       	or	r30, r20
 f0e:	08 95       	ret
 f10:	e8 81       	ld	r30, Y
 f12:	f9 81       	ldd	r31, Y+1	; 0x01
 f14:	e8 83       	st	Y, r30
 f16:	f9 83       	std	Y+1, r31	; 0x01
 f18:	08 95       	ret
 f1a:	ae 17       	cp	r26, r30
 f1c:	bf 07       	cpc	r27, r31
 f1e:	e1 e0       	ldi	r30, 0x01	; 1
 f20:	08 f0       	brcs	.+2      	;  0xf24
 f22:	ee 27       	eor	r30, r30
 f24:	08 95       	ret
 f26:	11 96       	adiw	r26, 0x01	; 1
 f28:	02 d0       	rcall	.+4      	;  0xf2e
 f2a:	fe 2f       	mov	r31, r30
 f2c:	11 97       	sbiw	r26, 0x01	; 1
 f2e:	e1 99       	sbic	0x1c, 1	; 28
 f30:	fe cf       	rjmp	.-4      	;  0xf2e
 f32:	ff 93       	push	r31
 f34:	ff b7       	in	r31, 0x3f	; 63
 f36:	f8 94       	cli
 f38:	ae bb       	out	0x1e, r26	; 30
 f3a:	bf bb       	out	0x1f, r27	; 31
 f3c:	e0 9a       	sbi	0x1c, 0	; 28
 f3e:	ed b3       	in	r30, 0x1d	; 29
 f40:	ff bf       	out	0x3f, r31	; 63
 f42:	ff 91       	pop	r31
 f44:	08 95       	ret
 f46:	ee 0f       	add	r30, r30
 f48:	ee 0f       	add	r30, r30
 f4a:	ee 0f       	add	r30, r30
 f4c:	08 95       	ret
 f4e:	5a 93       	st	-Y, r21
 f50:	4a 93       	st	-Y, r20
 f52:	3a 93       	st	-Y, r19
 f54:	2a 93       	st	-Y, r18
 f56:	1a 93       	st	-Y, r17
 f58:	0a 93       	st	-Y, r16
 f5a:	08 95       	ret
 f5c:	5d 81       	ldd	r21, Y+5	; 0x05
 f5e:	4c 81       	ldd	r20, Y+4	; 0x04
 f60:	3b 81       	ldd	r19, Y+3	; 0x03
 f62:	2a 81       	ldd	r18, Y+2	; 0x02
 f64:	19 81       	ldd	r17, Y+1	; 0x01
 f66:	08 81       	ld	r16, Y
 f68:	08 95       	ret
 f6a:	09 91       	ld	r16, Y+
 f6c:	19 91       	ld	r17, Y+
 f6e:	08 95       	ret
