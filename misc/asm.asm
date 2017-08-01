
/tmp/arduino_build_255242/SimpleTouch.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 35 00 	jmp	0x6a	; 0x6a <__ctors_end>
   4:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   8:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  10:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  14:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  18:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  1c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  20:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  24:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  28:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  2c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  30:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  34:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  38:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  3c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  40:	0c 94 50 03 	jmp	0x6a0	; 0x6a0 <__vector_16>
  44:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  48:	0c 94 1e 03 	jmp	0x63c	; 0x63c <__vector_18>
  4c:	0c 94 f8 02 	jmp	0x5f0	; 0x5f0 <__vector_19>
  50:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  54:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  58:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  5c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  60:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  64:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>

00000068 <__ctors_start>:
  68:	9a 03       	fmulsu	r17, r18

0000006a <__ctors_end>:
  6a:	11 24       	eor	r1, r1
  6c:	1f be       	out	0x3f, r1	; 63
  6e:	cf ef       	ldi	r28, 0xFF	; 255
  70:	d8 e0       	ldi	r29, 0x08	; 8
  72:	de bf       	out	0x3e, r29	; 62
  74:	cd bf       	out	0x3d, r28	; 61

00000076 <__do_copy_data>:
  76:	11 e0       	ldi	r17, 0x01	; 1
  78:	a0 e0       	ldi	r26, 0x00	; 0
  7a:	b1 e0       	ldi	r27, 0x01	; 1
  7c:	ec ec       	ldi	r30, 0xCC	; 204
  7e:	fa e0       	ldi	r31, 0x0A	; 10
  80:	02 c0       	rjmp	.+4      	; 0x86 <__do_copy_data+0x10>
  82:	05 90       	lpm	r0, Z+
  84:	0d 92       	st	X+, r0
  86:	ae 31       	cpi	r26, 0x1E	; 30
  88:	b1 07       	cpc	r27, r17
  8a:	d9 f7       	brne	.-10     	; 0x82 <__do_copy_data+0xc>

0000008c <__do_clear_bss>:
  8c:	22 e0       	ldi	r18, 0x02	; 2
  8e:	ae e1       	ldi	r26, 0x1E	; 30
  90:	b1 e0       	ldi	r27, 0x01	; 1
  92:	01 c0       	rjmp	.+2      	; 0x96 <.do_clear_bss_start>

00000094 <.do_clear_bss_loop>:
  94:	1d 92       	st	X+, r1

00000096 <.do_clear_bss_start>:
  96:	a7 30       	cpi	r26, 0x07	; 7
  98:	b2 07       	cpc	r27, r18
  9a:	e1 f7       	brne	.-8      	; 0x94 <.do_clear_bss_loop>

0000009c <__do_global_ctors>:
  9c:	10 e0       	ldi	r17, 0x00	; 0
  9e:	c5 e3       	ldi	r28, 0x35	; 53
  a0:	d0 e0       	ldi	r29, 0x00	; 0
  a2:	04 c0       	rjmp	.+8      	; 0xac <__do_global_ctors+0x10>
  a4:	21 97       	sbiw	r28, 0x01	; 1
  a6:	fe 01       	movw	r30, r28
  a8:	0e 94 59 05 	call	0xab2	; 0xab2 <__tablejump2__>
  ac:	c4 33       	cpi	r28, 0x34	; 52
  ae:	d1 07       	cpc	r29, r17
  b0:	c9 f7       	brne	.-14     	; 0xa4 <__do_global_ctors+0x8>
  b2:	0e 94 fd 03 	call	0x7fa	; 0x7fa <main>
  b6:	0c 94 64 05 	jmp	0xac8	; 0xac8 <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000be <_ZN5Print5writeEPKhj>:
  be:	cf 92       	push	r12
  c0:	df 92       	push	r13
  c2:	ef 92       	push	r14
  c4:	ff 92       	push	r15
  c6:	0f 93       	push	r16
  c8:	1f 93       	push	r17
  ca:	cf 93       	push	r28
  cc:	df 93       	push	r29
  ce:	6c 01       	movw	r12, r24
  d0:	7a 01       	movw	r14, r20
  d2:	8b 01       	movw	r16, r22
  d4:	c0 e0       	ldi	r28, 0x00	; 0
  d6:	d0 e0       	ldi	r29, 0x00	; 0
  d8:	ce 15       	cp	r28, r14
  da:	df 05       	cpc	r29, r15
  dc:	89 f0       	breq	.+34     	; 0x100 <_ZN5Print5writeEPKhj+0x42>
  de:	d8 01       	movw	r26, r16
  e0:	6d 91       	ld	r22, X+
  e2:	8d 01       	movw	r16, r26
  e4:	d6 01       	movw	r26, r12
  e6:	ed 91       	ld	r30, X+
  e8:	fc 91       	ld	r31, X
  ea:	01 90       	ld	r0, Z+
  ec:	f0 81       	ld	r31, Z
  ee:	e0 2d       	mov	r30, r0
  f0:	c6 01       	movw	r24, r12
  f2:	09 95       	icall
  f4:	89 2b       	or	r24, r25
  f6:	11 f4       	brne	.+4      	; 0xfc <_ZN5Print5writeEPKhj+0x3e>
  f8:	7e 01       	movw	r14, r28
  fa:	02 c0       	rjmp	.+4      	; 0x100 <_ZN5Print5writeEPKhj+0x42>
  fc:	21 96       	adiw	r28, 0x01	; 1
  fe:	ec cf       	rjmp	.-40     	; 0xd8 <_ZN5Print5writeEPKhj+0x1a>
 100:	c7 01       	movw	r24, r14
 102:	df 91       	pop	r29
 104:	cf 91       	pop	r28
 106:	1f 91       	pop	r17
 108:	0f 91       	pop	r16
 10a:	ff 90       	pop	r15
 10c:	ef 90       	pop	r14
 10e:	df 90       	pop	r13
 110:	cf 90       	pop	r12
 112:	08 95       	ret

00000114 <_ZN14HardwareSerial4readEv>:
 114:	fc 01       	movw	r30, r24
 116:	91 8d       	ldd	r25, Z+25	; 0x19
 118:	82 8d       	ldd	r24, Z+26	; 0x1a
 11a:	98 17       	cp	r25, r24
 11c:	61 f0       	breq	.+24     	; 0x136 <_ZN14HardwareSerial4readEv+0x22>
 11e:	82 8d       	ldd	r24, Z+26	; 0x1a
 120:	df 01       	movw	r26, r30
 122:	a8 0f       	add	r26, r24
 124:	b1 1d       	adc	r27, r1
 126:	5d 96       	adiw	r26, 0x1d	; 29
 128:	8c 91       	ld	r24, X
 12a:	92 8d       	ldd	r25, Z+26	; 0x1a
 12c:	9f 5f       	subi	r25, 0xFF	; 255
 12e:	9f 73       	andi	r25, 0x3F	; 63
 130:	92 8f       	std	Z+26, r25	; 0x1a
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	08 95       	ret
 136:	8f ef       	ldi	r24, 0xFF	; 255
 138:	9f ef       	ldi	r25, 0xFF	; 255
 13a:	08 95       	ret

0000013c <_ZN14HardwareSerial4peekEv>:
 13c:	fc 01       	movw	r30, r24
 13e:	91 8d       	ldd	r25, Z+25	; 0x19
 140:	82 8d       	ldd	r24, Z+26	; 0x1a
 142:	98 17       	cp	r25, r24
 144:	31 f0       	breq	.+12     	; 0x152 <_ZN14HardwareSerial4peekEv+0x16>
 146:	82 8d       	ldd	r24, Z+26	; 0x1a
 148:	e8 0f       	add	r30, r24
 14a:	f1 1d       	adc	r31, r1
 14c:	85 8d       	ldd	r24, Z+29	; 0x1d
 14e:	90 e0       	ldi	r25, 0x00	; 0
 150:	08 95       	ret
 152:	8f ef       	ldi	r24, 0xFF	; 255
 154:	9f ef       	ldi	r25, 0xFF	; 255
 156:	08 95       	ret

00000158 <_ZN14HardwareSerial9availableEv>:
 158:	fc 01       	movw	r30, r24
 15a:	91 8d       	ldd	r25, Z+25	; 0x19
 15c:	22 8d       	ldd	r18, Z+26	; 0x1a
 15e:	89 2f       	mov	r24, r25
 160:	90 e0       	ldi	r25, 0x00	; 0
 162:	80 5c       	subi	r24, 0xC0	; 192
 164:	9f 4f       	sbci	r25, 0xFF	; 255
 166:	82 1b       	sub	r24, r18
 168:	91 09       	sbc	r25, r1
 16a:	8f 73       	andi	r24, 0x3F	; 63
 16c:	99 27       	eor	r25, r25
 16e:	08 95       	ret

00000170 <_Z17Serial0_availablev>:
 170:	83 e2       	ldi	r24, 0x23	; 35
 172:	91 e0       	ldi	r25, 0x01	; 1
 174:	0e 94 ac 00 	call	0x158	; 0x158 <_ZN14HardwareSerial9availableEv>
 178:	21 e0       	ldi	r18, 0x01	; 1
 17a:	89 2b       	or	r24, r25
 17c:	09 f4       	brne	.+2      	; 0x180 <_Z17Serial0_availablev+0x10>
 17e:	20 e0       	ldi	r18, 0x00	; 0
 180:	82 2f       	mov	r24, r18
 182:	08 95       	ret

00000184 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>:
 184:	fc 01       	movw	r30, r24
 186:	84 8d       	ldd	r24, Z+28	; 0x1c
 188:	df 01       	movw	r26, r30
 18a:	a8 0f       	add	r26, r24
 18c:	b1 1d       	adc	r27, r1
 18e:	a3 5a       	subi	r26, 0xA3	; 163
 190:	bf 4f       	sbci	r27, 0xFF	; 255
 192:	2c 91       	ld	r18, X
 194:	84 8d       	ldd	r24, Z+28	; 0x1c
 196:	90 e0       	ldi	r25, 0x00	; 0
 198:	01 96       	adiw	r24, 0x01	; 1
 19a:	8f 73       	andi	r24, 0x3F	; 63
 19c:	99 27       	eor	r25, r25
 19e:	84 8f       	std	Z+28, r24	; 0x1c
 1a0:	a6 89       	ldd	r26, Z+22	; 0x16
 1a2:	b7 89       	ldd	r27, Z+23	; 0x17
 1a4:	2c 93       	st	X, r18
 1a6:	a0 89       	ldd	r26, Z+16	; 0x10
 1a8:	b1 89       	ldd	r27, Z+17	; 0x11
 1aa:	8c 91       	ld	r24, X
 1ac:	80 64       	ori	r24, 0x40	; 64
 1ae:	8c 93       	st	X, r24
 1b0:	93 8d       	ldd	r25, Z+27	; 0x1b
 1b2:	84 8d       	ldd	r24, Z+28	; 0x1c
 1b4:	98 13       	cpse	r25, r24
 1b6:	06 c0       	rjmp	.+12     	; 0x1c4 <_ZN14HardwareSerial17_tx_udr_empty_irqEv+0x40>
 1b8:	02 88       	ldd	r0, Z+18	; 0x12
 1ba:	f3 89       	ldd	r31, Z+19	; 0x13
 1bc:	e0 2d       	mov	r30, r0
 1be:	80 81       	ld	r24, Z
 1c0:	8f 7d       	andi	r24, 0xDF	; 223
 1c2:	80 83       	st	Z, r24
 1c4:	08 95       	ret

000001c6 <_ZN14HardwareSerial5writeEh>:
 1c6:	ef 92       	push	r14
 1c8:	ff 92       	push	r15
 1ca:	0f 93       	push	r16
 1cc:	1f 93       	push	r17
 1ce:	cf 93       	push	r28
 1d0:	df 93       	push	r29
 1d2:	ec 01       	movw	r28, r24
 1d4:	81 e0       	ldi	r24, 0x01	; 1
 1d6:	88 8f       	std	Y+24, r24	; 0x18
 1d8:	9b 8d       	ldd	r25, Y+27	; 0x1b
 1da:	8c 8d       	ldd	r24, Y+28	; 0x1c
 1dc:	98 13       	cpse	r25, r24
 1de:	05 c0       	rjmp	.+10     	; 0x1ea <_ZN14HardwareSerial5writeEh+0x24>
 1e0:	e8 89       	ldd	r30, Y+16	; 0x10
 1e2:	f9 89       	ldd	r31, Y+17	; 0x11
 1e4:	80 81       	ld	r24, Z
 1e6:	85 fd       	sbrc	r24, 5
 1e8:	24 c0       	rjmp	.+72     	; 0x232 <_ZN14HardwareSerial5writeEh+0x6c>
 1ea:	f6 2e       	mov	r15, r22
 1ec:	0b 8d       	ldd	r16, Y+27	; 0x1b
 1ee:	10 e0       	ldi	r17, 0x00	; 0
 1f0:	0f 5f       	subi	r16, 0xFF	; 255
 1f2:	1f 4f       	sbci	r17, 0xFF	; 255
 1f4:	0f 73       	andi	r16, 0x3F	; 63
 1f6:	11 27       	eor	r17, r17
 1f8:	e0 2e       	mov	r14, r16
 1fa:	8c 8d       	ldd	r24, Y+28	; 0x1c
 1fc:	e8 12       	cpse	r14, r24
 1fe:	0c c0       	rjmp	.+24     	; 0x218 <_ZN14HardwareSerial5writeEh+0x52>
 200:	0f b6       	in	r0, 0x3f	; 63
 202:	07 fc       	sbrc	r0, 7
 204:	fa cf       	rjmp	.-12     	; 0x1fa <_ZN14HardwareSerial5writeEh+0x34>
 206:	e8 89       	ldd	r30, Y+16	; 0x10
 208:	f9 89       	ldd	r31, Y+17	; 0x11
 20a:	80 81       	ld	r24, Z
 20c:	85 ff       	sbrs	r24, 5
 20e:	f5 cf       	rjmp	.-22     	; 0x1fa <_ZN14HardwareSerial5writeEh+0x34>
 210:	ce 01       	movw	r24, r28
 212:	0e 94 c2 00 	call	0x184	; 0x184 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
 216:	f1 cf       	rjmp	.-30     	; 0x1fa <_ZN14HardwareSerial5writeEh+0x34>
 218:	8b 8d       	ldd	r24, Y+27	; 0x1b
 21a:	fe 01       	movw	r30, r28
 21c:	e8 0f       	add	r30, r24
 21e:	f1 1d       	adc	r31, r1
 220:	e3 5a       	subi	r30, 0xA3	; 163
 222:	ff 4f       	sbci	r31, 0xFF	; 255
 224:	f0 82       	st	Z, r15
 226:	0b 8f       	std	Y+27, r16	; 0x1b
 228:	ea 89       	ldd	r30, Y+18	; 0x12
 22a:	fb 89       	ldd	r31, Y+19	; 0x13
 22c:	80 81       	ld	r24, Z
 22e:	80 62       	ori	r24, 0x20	; 32
 230:	07 c0       	rjmp	.+14     	; 0x240 <_ZN14HardwareSerial5writeEh+0x7a>
 232:	ee 89       	ldd	r30, Y+22	; 0x16
 234:	ff 89       	ldd	r31, Y+23	; 0x17
 236:	60 83       	st	Z, r22
 238:	e8 89       	ldd	r30, Y+16	; 0x10
 23a:	f9 89       	ldd	r31, Y+17	; 0x11
 23c:	80 81       	ld	r24, Z
 23e:	80 64       	ori	r24, 0x40	; 64
 240:	80 83       	st	Z, r24
 242:	81 e0       	ldi	r24, 0x01	; 1
 244:	90 e0       	ldi	r25, 0x00	; 0
 246:	df 91       	pop	r29
 248:	cf 91       	pop	r28
 24a:	1f 91       	pop	r17
 24c:	0f 91       	pop	r16
 24e:	ff 90       	pop	r15
 250:	ef 90       	pop	r14
 252:	08 95       	ret

00000254 <_ZN14HardwareSerial5flushEv>:
 254:	cf 93       	push	r28
 256:	df 93       	push	r29
 258:	ec 01       	movw	r28, r24
 25a:	88 8d       	ldd	r24, Y+24	; 0x18
 25c:	88 23       	and	r24, r24
 25e:	c9 f0       	breq	.+50     	; 0x292 <_ZN14HardwareSerial5flushEv+0x3e>
 260:	ea 89       	ldd	r30, Y+18	; 0x12
 262:	fb 89       	ldd	r31, Y+19	; 0x13
 264:	80 81       	ld	r24, Z
 266:	85 fd       	sbrc	r24, 5
 268:	05 c0       	rjmp	.+10     	; 0x274 <_ZN14HardwareSerial5flushEv+0x20>
 26a:	a8 89       	ldd	r26, Y+16	; 0x10
 26c:	b9 89       	ldd	r27, Y+17	; 0x11
 26e:	8c 91       	ld	r24, X
 270:	86 fd       	sbrc	r24, 6
 272:	0f c0       	rjmp	.+30     	; 0x292 <_ZN14HardwareSerial5flushEv+0x3e>
 274:	0f b6       	in	r0, 0x3f	; 63
 276:	07 fc       	sbrc	r0, 7
 278:	f5 cf       	rjmp	.-22     	; 0x264 <_ZN14HardwareSerial5flushEv+0x10>
 27a:	80 81       	ld	r24, Z
 27c:	85 ff       	sbrs	r24, 5
 27e:	f2 cf       	rjmp	.-28     	; 0x264 <_ZN14HardwareSerial5flushEv+0x10>
 280:	a8 89       	ldd	r26, Y+16	; 0x10
 282:	b9 89       	ldd	r27, Y+17	; 0x11
 284:	8c 91       	ld	r24, X
 286:	85 ff       	sbrs	r24, 5
 288:	ed cf       	rjmp	.-38     	; 0x264 <_ZN14HardwareSerial5flushEv+0x10>
 28a:	ce 01       	movw	r24, r28
 28c:	0e 94 c2 00 	call	0x184	; 0x184 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
 290:	e7 cf       	rjmp	.-50     	; 0x260 <_ZN14HardwareSerial5flushEv+0xc>
 292:	df 91       	pop	r29
 294:	cf 91       	pop	r28
 296:	08 95       	ret

00000298 <_Z14serialEventRunv>:
 298:	80 e0       	ldi	r24, 0x00	; 0
 29a:	90 e0       	ldi	r25, 0x00	; 0
 29c:	89 2b       	or	r24, r25
 29e:	29 f0       	breq	.+10     	; 0x2aa <_Z14serialEventRunv+0x12>
 2a0:	0e 94 b8 00 	call	0x170	; 0x170 <_Z17Serial0_availablev>
 2a4:	81 11       	cpse	r24, r1
 2a6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
 2aa:	08 95       	ret

000002ac <_ZN10DigitalPin5clearEv>:
 2ac:	dc 01       	movw	r26, r24
 2ae:	ec 91       	ld	r30, X
 2b0:	ee 23       	and	r30, r30
 2b2:	39 f0       	breq	.+14     	; 0x2c2 <_ZN10DigitalPin5clearEv+0x16>
 2b4:	f0 e0       	ldi	r31, 0x00	; 0
 2b6:	92 a1       	ldd	r25, Z+34	; 0x22
 2b8:	11 96       	adiw	r26, 0x01	; 1
 2ba:	8c 91       	ld	r24, X
 2bc:	80 95       	com	r24
 2be:	89 23       	and	r24, r25
 2c0:	82 a3       	std	Z+34, r24	; 0x22
 2c2:	08 95       	ret

000002c4 <_ZN13CapacitivePin6updateEv.constprop.7>:
 2c4:	df 92       	push	r13
 2c6:	ef 92       	push	r14
 2c8:	ff 92       	push	r15
 2ca:	0f 93       	push	r16
 2cc:	1f 93       	push	r17
 2ce:	cf 93       	push	r28
 2d0:	df 93       	push	r29
 2d2:	8f b7       	in	r24, 0x3f	; 63
 2d4:	f8 94       	cli
 2d6:	40 91 c0 01 	lds	r20, 0x01C0	; 0x8001c0 <timer0_millis>
 2da:	50 91 c1 01 	lds	r21, 0x01C1	; 0x8001c1 <timer0_millis+0x1>
 2de:	60 91 c2 01 	lds	r22, 0x01C2	; 0x8001c2 <timer0_millis+0x2>
 2e2:	70 91 c3 01 	lds	r23, 0x01C3	; 0x8001c3 <timer0_millis+0x3>
 2e6:	8f bf       	out	0x3f, r24	; 63
 2e8:	80 91 cd 01 	lds	r24, 0x01CD	; 0x8001cd <sensePin+0x7>
 2ec:	90 91 ce 01 	lds	r25, 0x01CE	; 0x8001ce <sensePin+0x8>
 2f0:	48 1b       	sub	r20, r24
 2f2:	59 0b       	sbc	r21, r25
 2f4:	61 09       	sbc	r22, r1
 2f6:	71 09       	sbc	r23, r1
 2f8:	80 91 cc 01 	lds	r24, 0x01CC	; 0x8001cc <sensePin+0x6>
 2fc:	90 e0       	ldi	r25, 0x00	; 0
 2fe:	a0 e0       	ldi	r26, 0x00	; 0
 300:	b0 e0       	ldi	r27, 0x00	; 0
 302:	84 17       	cp	r24, r20
 304:	95 07       	cpc	r25, r21
 306:	a6 07       	cpc	r26, r22
 308:	b7 07       	cpc	r27, r23
 30a:	08 f0       	brcs	.+2      	; 0x30e <_ZN13CapacitivePin6updateEv.constprop.7+0x4a>
 30c:	52 c1       	rjmp	.+676    	; 0x5b2 <_ZN13CapacitivePin6updateEv.constprop.7+0x2ee>
 30e:	2f b7       	in	r18, 0x3f	; 63
 310:	f8 94       	cli
 312:	80 91 c0 01 	lds	r24, 0x01C0	; 0x8001c0 <timer0_millis>
 316:	90 91 c1 01 	lds	r25, 0x01C1	; 0x8001c1 <timer0_millis+0x1>
 31a:	a0 91 c2 01 	lds	r26, 0x01C2	; 0x8001c2 <timer0_millis+0x2>
 31e:	b0 91 c3 01 	lds	r27, 0x01C3	; 0x8001c3 <timer0_millis+0x3>
 322:	2f bf       	out	0x3f, r18	; 63
 324:	90 93 ce 01 	sts	0x01CE, r25	; 0x8001ce <sensePin+0x8>
 328:	80 93 cd 01 	sts	0x01CD, r24	; 0x8001cd <sensePin+0x7>
 32c:	c0 91 f5 01 	lds	r28, 0x01F5	; 0x8001f5 <sensePin+0x2f>
 330:	d0 e0       	ldi	r29, 0x00	; 0
 332:	cc 0f       	add	r28, r28
 334:	dd 1f       	adc	r29, r29
 336:	fe 01       	movw	r30, r28
 338:	ea 53       	subi	r30, 0x3A	; 58
 33a:	fe 4f       	sbci	r31, 0xFE	; 254
 33c:	27 85       	ldd	r18, Z+15	; 0x0f
 33e:	30 89       	ldd	r19, Z+16	; 0x10
 340:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <sensePin+0xb>
 344:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <sensePin+0xc>
 348:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <sensePin+0xd>
 34c:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <sensePin+0xe>
 350:	82 1b       	sub	r24, r18
 352:	93 0b       	sbc	r25, r19
 354:	a1 09       	sbc	r26, r1
 356:	b1 09       	sbc	r27, r1
 358:	80 93 d1 01 	sts	0x01D1, r24	; 0x8001d1 <sensePin+0xb>
 35c:	90 93 d2 01 	sts	0x01D2, r25	; 0x8001d2 <sensePin+0xc>
 360:	a0 93 d3 01 	sts	0x01D3, r26	; 0x8001d3 <sensePin+0xd>
 364:	b0 93 d4 01 	sts	0x01D4, r27	; 0x8001d4 <sensePin+0xe>
 368:	f8 94       	cli
 36a:	d1 2c       	mov	r13, r1
 36c:	00 e0       	ldi	r16, 0x00	; 0
 36e:	10 e0       	ldi	r17, 0x00	; 0
 370:	80 91 ca 01 	lds	r24, 0x01CA	; 0x8001ca <sensePin+0x4>
 374:	d8 16       	cp	r13, r24
 376:	08 f0       	brcs	.+2      	; 0x37a <_ZN13CapacitivePin6updateEv.constprop.7+0xb6>
 378:	43 c0       	rjmp	.+134    	; 0x400 <_ZN13CapacitivePin6updateEv.constprop.7+0x13c>
 37a:	e0 91 c8 01 	lds	r30, 0x01C8	; 0x8001c8 <sensePin+0x2>
 37e:	ee 23       	and	r30, r30
 380:	81 f0       	breq	.+32     	; 0x3a2 <_ZN13CapacitivePin6updateEv.constprop.7+0xde>
 382:	f0 e0       	ldi	r31, 0x00	; 0
 384:	81 a1       	ldd	r24, Z+33	; 0x21
 386:	90 91 c9 01 	lds	r25, 0x01C9	; 0x8001c9 <sensePin+0x3>
 38a:	90 95       	com	r25
 38c:	98 23       	and	r25, r24
 38e:	91 a3       	std	Z+33, r25	; 0x21
 390:	e0 91 c8 01 	lds	r30, 0x01C8	; 0x8001c8 <sensePin+0x2>
 394:	f0 e0       	ldi	r31, 0x00	; 0
 396:	82 a1       	ldd	r24, Z+34	; 0x22
 398:	90 91 c9 01 	lds	r25, 0x01C9	; 0x8001c9 <sensePin+0x3>
 39c:	90 95       	com	r25
 39e:	98 23       	and	r25, r24
 3a0:	92 a3       	std	Z+34, r25	; 0x22
 3a2:	e0 91 c6 01 	lds	r30, 0x01C6	; 0x8001c6 <sensePin>
 3a6:	ee 23       	and	r30, r30
 3a8:	31 f0       	breq	.+12     	; 0x3b6 <_ZN13CapacitivePin6updateEv.constprop.7+0xf2>
 3aa:	f0 e0       	ldi	r31, 0x00	; 0
 3ac:	92 a1       	ldd	r25, Z+34	; 0x22
 3ae:	80 91 c7 01 	lds	r24, 0x01C7	; 0x8001c7 <sensePin+0x1>
 3b2:	89 2b       	or	r24, r25
 3b4:	82 a3       	std	Z+34, r24	; 0x22
 3b6:	20 91 c8 01 	lds	r18, 0x01C8	; 0x8001c8 <sensePin+0x2>
 3ba:	e2 2f       	mov	r30, r18
 3bc:	f0 e0       	ldi	r31, 0x00	; 0
 3be:	df 01       	movw	r26, r30
 3c0:	90 96       	adiw	r26, 0x20	; 32
 3c2:	80 91 c9 01 	lds	r24, 0x01C9	; 0x8001c9 <sensePin+0x3>
 3c6:	e1 2c       	mov	r14, r1
 3c8:	f1 2c       	mov	r15, r1
 3ca:	9c 91       	ld	r25, X
 3cc:	98 23       	and	r25, r24
 3ce:	39 f4       	brne	.+14     	; 0x3de <_ZN13CapacitivePin6updateEv.constprop.7+0x11a>
 3d0:	9f ef       	ldi	r25, 0xFF	; 255
 3d2:	e9 1a       	sub	r14, r25
 3d4:	f9 0a       	sbc	r15, r25
 3d6:	9f ef       	ldi	r25, 0xFF	; 255
 3d8:	e9 16       	cp	r14, r25
 3da:	f9 06       	cpc	r15, r25
 3dc:	b1 f7       	brne	.-20     	; 0x3ca <_ZN13CapacitivePin6updateEv.constprop.7+0x106>
 3de:	22 23       	and	r18, r18
 3e0:	19 f0       	breq	.+6      	; 0x3e8 <_ZN13CapacitivePin6updateEv.constprop.7+0x124>
 3e2:	91 a1       	ldd	r25, Z+33	; 0x21
 3e4:	89 2b       	or	r24, r25
 3e6:	81 a3       	std	Z+33, r24	; 0x21
 3e8:	88 ec       	ldi	r24, 0xC8	; 200
 3ea:	91 e0       	ldi	r25, 0x01	; 1
 3ec:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 3f0:	86 ec       	ldi	r24, 0xC6	; 198
 3f2:	91 e0       	ldi	r25, 0x01	; 1
 3f4:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 3f8:	0e 0d       	add	r16, r14
 3fa:	1f 1d       	adc	r17, r15
 3fc:	d3 94       	inc	r13
 3fe:	b8 cf       	rjmp	.-144    	; 0x370 <_ZN13CapacitivePin6updateEv.constprop.7+0xac>
 400:	78 94       	sei
 402:	ca 53       	subi	r28, 0x3A	; 58
 404:	de 4f       	sbci	r29, 0xFE	; 254
 406:	60 91 ca 01 	lds	r22, 0x01CA	; 0x8001ca <sensePin+0x4>
 40a:	70 e0       	ldi	r23, 0x00	; 0
 40c:	c8 01       	movw	r24, r16
 40e:	0e 94 23 05 	call	0xa46	; 0xa46 <__udivmodhi4>
 412:	78 8b       	std	Y+16, r23	; 0x10
 414:	6f 87       	std	Y+15, r22	; 0x0f
 416:	c0 91 f5 01 	lds	r28, 0x01F5	; 0x8001f5 <sensePin+0x2f>
 41a:	ec 2f       	mov	r30, r28
 41c:	f0 e0       	ldi	r31, 0x00	; 0
 41e:	ee 0f       	add	r30, r30
 420:	ff 1f       	adc	r31, r31
 422:	ea 53       	subi	r30, 0x3A	; 58
 424:	fe 4f       	sbci	r31, 0xFE	; 254
 426:	27 85       	ldd	r18, Z+15	; 0x0f
 428:	30 89       	ldd	r19, Z+16	; 0x10
 42a:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <sensePin+0xb>
 42e:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <sensePin+0xc>
 432:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <sensePin+0xd>
 436:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <sensePin+0xe>
 43a:	bc 01       	movw	r22, r24
 43c:	cd 01       	movw	r24, r26
 43e:	62 0f       	add	r22, r18
 440:	73 1f       	adc	r23, r19
 442:	81 1d       	adc	r24, r1
 444:	91 1d       	adc	r25, r1
 446:	60 93 d1 01 	sts	0x01D1, r22	; 0x8001d1 <sensePin+0xb>
 44a:	70 93 d2 01 	sts	0x01D2, r23	; 0x8001d2 <sensePin+0xc>
 44e:	80 93 d3 01 	sts	0x01D3, r24	; 0x8001d3 <sensePin+0xd>
 452:	90 93 d4 01 	sts	0x01D4, r25	; 0x8001d4 <sensePin+0xe>
 456:	d0 91 cb 01 	lds	r29, 0x01CB	; 0x8001cb <sensePin+0x5>
 45a:	2d 2f       	mov	r18, r29
 45c:	30 e0       	ldi	r19, 0x00	; 0
 45e:	40 e0       	ldi	r20, 0x00	; 0
 460:	50 e0       	ldi	r21, 0x00	; 0
 462:	0e 94 37 05 	call	0xa6e	; 0xa6e <__udivmodsi4>
 466:	30 93 d0 01 	sts	0x01D0, r19	; 0x8001d0 <sensePin+0xa>
 46a:	20 93 cf 01 	sts	0x01CF, r18	; 0x8001cf <sensePin+0x9>
 46e:	cf 5f       	subi	r28, 0xFF	; 255
 470:	cd 17       	cp	r28, r29
 472:	18 f4       	brcc	.+6      	; 0x47a <_ZN13CapacitivePin6updateEv.constprop.7+0x1b6>
 474:	c0 93 f5 01 	sts	0x01F5, r28	; 0x8001f5 <sensePin+0x2f>
 478:	02 c0       	rjmp	.+4      	; 0x47e <_ZN13CapacitivePin6updateEv.constprop.7+0x1ba>
 47a:	10 92 f5 01 	sts	0x01F5, r1	; 0x8001f5 <sensePin+0x2f>
 47e:	80 91 f6 01 	lds	r24, 0x01F6	; 0x8001f6 <sensePin+0x30>
 482:	68 2f       	mov	r22, r24
 484:	70 e0       	ldi	r23, 0x00	; 0
 486:	26 1b       	sub	r18, r22
 488:	37 0b       	sbc	r19, r23
 48a:	90 91 04 02 	lds	r25, 0x0204	; 0x800204 <sensePin+0x3e>
 48e:	90 93 05 02 	sts	0x0205, r25	; 0x800205 <sensePin+0x3f>
 492:	b9 01       	movw	r22, r18
 494:	37 ff       	sbrs	r19, 7
 496:	04 c0       	rjmp	.+8      	; 0x4a0 <_ZN13CapacitivePin6updateEv.constprop.7+0x1dc>
 498:	66 27       	eor	r22, r22
 49a:	77 27       	eor	r23, r23
 49c:	62 1b       	sub	r22, r18
 49e:	73 0b       	sbc	r23, r19
 4a0:	40 91 f7 01 	lds	r20, 0x01F7	; 0x8001f7 <sensePin+0x31>
 4a4:	50 e0       	ldi	r21, 0x00	; 0
 4a6:	46 17       	cp	r20, r22
 4a8:	57 07       	cpc	r21, r23
 4aa:	14 f0       	brlt	.+4      	; 0x4b0 <_ZN13CapacitivePin6updateEv.constprop.7+0x1ec>
 4ac:	82 0f       	add	r24, r18
 4ae:	4e c0       	rjmp	.+156    	; 0x54c <_ZN13CapacitivePin6updateEv.constprop.7+0x288>
 4b0:	40 91 00 02 	lds	r20, 0x0200	; 0x800200 <sensePin+0x3a>
 4b4:	04 2e       	mov	r0, r20
 4b6:	00 0c       	add	r0, r0
 4b8:	55 0b       	sbc	r21, r21
 4ba:	42 17       	cp	r20, r18
 4bc:	53 07       	cpc	r21, r19
 4be:	34 f4       	brge	.+12     	; 0x4cc <_ZN13CapacitivePin6updateEv.constprop.7+0x208>
 4c0:	40 91 06 02 	lds	r20, 0x0206	; 0x800206 <sensePin+0x40>
 4c4:	41 11       	cpse	r20, r1
 4c6:	02 c0       	rjmp	.+4      	; 0x4cc <_ZN13CapacitivePin6updateEv.constprop.7+0x208>
 4c8:	85 e0       	ldi	r24, 0x05	; 5
 4ca:	0d c0       	rjmp	.+26     	; 0x4e6 <_ZN13CapacitivePin6updateEv.constprop.7+0x222>
 4cc:	40 91 fc 01 	lds	r20, 0x01FC	; 0x8001fc <sensePin+0x36>
 4d0:	04 2e       	mov	r0, r20
 4d2:	00 0c       	add	r0, r0
 4d4:	55 0b       	sbc	r21, r21
 4d6:	42 17       	cp	r20, r18
 4d8:	53 07       	cpc	r21, r19
 4da:	44 f4       	brge	.+16     	; 0x4ec <_ZN13CapacitivePin6updateEv.constprop.7+0x228>
 4dc:	40 91 06 02 	lds	r20, 0x0206	; 0x800206 <sensePin+0x40>
 4e0:	41 11       	cpse	r20, r1
 4e2:	04 c0       	rjmp	.+8      	; 0x4ec <_ZN13CapacitivePin6updateEv.constprop.7+0x228>
 4e4:	84 e0       	ldi	r24, 0x04	; 4
 4e6:	80 93 04 02 	sts	0x0204, r24	; 0x800204 <sensePin+0x3e>
 4ea:	34 c0       	rjmp	.+104    	; 0x554 <_ZN13CapacitivePin6updateEv.constprop.7+0x290>
 4ec:	12 16       	cp	r1, r18
 4ee:	13 06       	cpc	r1, r19
 4f0:	bc f4       	brge	.+46     	; 0x520 <_ZN13CapacitivePin6updateEv.constprop.7+0x25c>
 4f2:	42 e0       	ldi	r20, 0x02	; 2
 4f4:	40 93 04 02 	sts	0x0204, r20	; 0x800204 <sensePin+0x3e>
 4f8:	92 30       	cpi	r25, 0x02	; 2
 4fa:	19 f0       	breq	.+6      	; 0x502 <_ZN13CapacitivePin6updateEv.constprop.7+0x23e>
 4fc:	10 92 fb 01 	sts	0x01FB, r1	; 0x8001fb <sensePin+0x35>
 500:	29 c0       	rjmp	.+82     	; 0x554 <_ZN13CapacitivePin6updateEv.constprop.7+0x290>
 502:	90 91 fb 01 	lds	r25, 0x01FB	; 0x8001fb <sensePin+0x35>
 506:	9f 5f       	subi	r25, 0xFF	; 255
 508:	90 93 fb 01 	sts	0x01FB, r25	; 0x8001fb <sensePin+0x35>
 50c:	40 91 f9 01 	lds	r20, 0x01F9	; 0x8001f9 <sensePin+0x33>
 510:	94 17       	cp	r25, r20
 512:	00 f1       	brcs	.+64     	; 0x554 <_ZN13CapacitivePin6updateEv.constprop.7+0x290>
 514:	10 92 fb 01 	sts	0x01FB, r1	; 0x8001fb <sensePin+0x35>
 518:	90 91 f8 01 	lds	r25, 0x01F8	; 0x8001f8 <sensePin+0x32>
 51c:	89 0f       	add	r24, r25
 51e:	16 c0       	rjmp	.+44     	; 0x54c <_ZN13CapacitivePin6updateEv.constprop.7+0x288>
 520:	21 15       	cp	r18, r1
 522:	31 05       	cpc	r19, r1
 524:	b9 f0       	breq	.+46     	; 0x554 <_ZN13CapacitivePin6updateEv.constprop.7+0x290>
 526:	43 e0       	ldi	r20, 0x03	; 3
 528:	40 93 04 02 	sts	0x0204, r20	; 0x800204 <sensePin+0x3e>
 52c:	93 30       	cpi	r25, 0x03	; 3
 52e:	31 f7       	brne	.-52     	; 0x4fc <_ZN13CapacitivePin6updateEv.constprop.7+0x238>
 530:	90 91 fb 01 	lds	r25, 0x01FB	; 0x8001fb <sensePin+0x35>
 534:	9f 5f       	subi	r25, 0xFF	; 255
 536:	90 93 fb 01 	sts	0x01FB, r25	; 0x8001fb <sensePin+0x35>
 53a:	40 91 fa 01 	lds	r20, 0x01FA	; 0x8001fa <sensePin+0x34>
 53e:	94 17       	cp	r25, r20
 540:	48 f0       	brcs	.+18     	; 0x554 <_ZN13CapacitivePin6updateEv.constprop.7+0x290>
 542:	10 92 fb 01 	sts	0x01FB, r1	; 0x8001fb <sensePin+0x35>
 546:	90 91 f8 01 	lds	r25, 0x01F8	; 0x8001f8 <sensePin+0x32>
 54a:	89 1b       	sub	r24, r25
 54c:	80 93 f6 01 	sts	0x01F6, r24	; 0x8001f6 <sensePin+0x30>
 550:	10 92 04 02 	sts	0x0204, r1	; 0x800204 <sensePin+0x3e>
 554:	80 91 04 02 	lds	r24, 0x0204	; 0x800204 <sensePin+0x3e>
 558:	85 30       	cpi	r24, 0x05	; 5
 55a:	e9 f4       	brne	.+58     	; 0x596 <_ZN13CapacitivePin6updateEv.constprop.7+0x2d2>
 55c:	80 91 02 02 	lds	r24, 0x0202	; 0x800202 <sensePin+0x3c>
 560:	08 2e       	mov	r0, r24
 562:	00 0c       	add	r0, r0
 564:	99 0b       	sbc	r25, r25
 566:	28 17       	cp	r18, r24
 568:	39 07       	cpc	r19, r25
 56a:	2c f5       	brge	.+74     	; 0x5b6 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f2>
 56c:	80 91 fe 01 	lds	r24, 0x01FE	; 0x8001fe <sensePin+0x38>
 570:	08 2e       	mov	r0, r24
 572:	00 0c       	add	r0, r0
 574:	99 0b       	sbc	r25, r25
 576:	82 17       	cp	r24, r18
 578:	93 07       	cpc	r25, r19
 57a:	54 f4       	brge	.+20     	; 0x590 <_ZN13CapacitivePin6updateEv.constprop.7+0x2cc>
 57c:	84 e0       	ldi	r24, 0x04	; 4
 57e:	16 c0       	rjmp	.+44     	; 0x5ac <_ZN13CapacitivePin6updateEv.constprop.7+0x2e8>
 580:	80 91 fe 01 	lds	r24, 0x01FE	; 0x8001fe <sensePin+0x38>
 584:	08 2e       	mov	r0, r24
 586:	00 0c       	add	r0, r0
 588:	99 0b       	sbc	r25, r25
 58a:	28 17       	cp	r18, r24
 58c:	39 07       	cpc	r19, r25
 58e:	9c f4       	brge	.+38     	; 0x5b6 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f2>
 590:	10 92 04 02 	sts	0x0204, r1	; 0x800204 <sensePin+0x3e>
 594:	10 c0       	rjmp	.+32     	; 0x5b6 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f2>
 596:	84 30       	cpi	r24, 0x04	; 4
 598:	71 f4       	brne	.+28     	; 0x5b6 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f2>
 59a:	80 91 00 02 	lds	r24, 0x0200	; 0x800200 <sensePin+0x3a>
 59e:	08 2e       	mov	r0, r24
 5a0:	00 0c       	add	r0, r0
 5a2:	99 0b       	sbc	r25, r25
 5a4:	82 17       	cp	r24, r18
 5a6:	93 07       	cpc	r25, r19
 5a8:	5c f7       	brge	.-42     	; 0x580 <_ZN13CapacitivePin6updateEv.constprop.7+0x2bc>
 5aa:	85 e0       	ldi	r24, 0x05	; 5
 5ac:	80 93 04 02 	sts	0x0204, r24	; 0x800204 <sensePin+0x3e>
 5b0:	02 c0       	rjmp	.+4      	; 0x5b6 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f2>
 5b2:	80 e0       	ldi	r24, 0x00	; 0
 5b4:	01 c0       	rjmp	.+2      	; 0x5b8 <_ZN13CapacitivePin6updateEv.constprop.7+0x2f4>
 5b6:	81 e0       	ldi	r24, 0x01	; 1
 5b8:	df 91       	pop	r29
 5ba:	cf 91       	pop	r28
 5bc:	1f 91       	pop	r17
 5be:	0f 91       	pop	r16
 5c0:	ff 90       	pop	r15
 5c2:	ef 90       	pop	r14
 5c4:	df 90       	pop	r13
 5c6:	08 95       	ret

000005c8 <_ZN5Print5writeEPKc.constprop.23>:
 5c8:	00 97       	sbiw	r24, 0x00	; 0
 5ca:	69 f0       	breq	.+26     	; 0x5e6 <_ZN5Print5writeEPKc.constprop.23+0x1e>
 5cc:	fc 01       	movw	r30, r24
 5ce:	01 90       	ld	r0, Z+
 5d0:	00 20       	and	r0, r0
 5d2:	e9 f7       	brne	.-6      	; 0x5ce <_ZN5Print5writeEPKc.constprop.23+0x6>
 5d4:	31 97       	sbiw	r30, 0x01	; 1
 5d6:	af 01       	movw	r20, r30
 5d8:	48 1b       	sub	r20, r24
 5da:	59 0b       	sbc	r21, r25
 5dc:	bc 01       	movw	r22, r24
 5de:	83 e2       	ldi	r24, 0x23	; 35
 5e0:	91 e0       	ldi	r25, 0x01	; 1
 5e2:	0c 94 5f 00 	jmp	0xbe	; 0xbe <_ZN5Print5writeEPKhj>
 5e6:	80 e0       	ldi	r24, 0x00	; 0
 5e8:	90 e0       	ldi	r25, 0x00	; 0
 5ea:	08 95       	ret

000005ec <__cxa_pure_virtual>:
 5ec:	0e 94 5f 05 	call	0xabe	; 0xabe <abort>

000005f0 <__vector_19>:
 5f0:	1f 92       	push	r1
 5f2:	0f 92       	push	r0
 5f4:	0f b6       	in	r0, 0x3f	; 63
 5f6:	0f 92       	push	r0
 5f8:	11 24       	eor	r1, r1
 5fa:	2f 93       	push	r18
 5fc:	3f 93       	push	r19
 5fe:	4f 93       	push	r20
 600:	5f 93       	push	r21
 602:	6f 93       	push	r22
 604:	7f 93       	push	r23
 606:	8f 93       	push	r24
 608:	9f 93       	push	r25
 60a:	af 93       	push	r26
 60c:	bf 93       	push	r27
 60e:	ef 93       	push	r30
 610:	ff 93       	push	r31
 612:	83 e2       	ldi	r24, 0x23	; 35
 614:	91 e0       	ldi	r25, 0x01	; 1
 616:	0e 94 c2 00 	call	0x184	; 0x184 <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
 61a:	ff 91       	pop	r31
 61c:	ef 91       	pop	r30
 61e:	bf 91       	pop	r27
 620:	af 91       	pop	r26
 622:	9f 91       	pop	r25
 624:	8f 91       	pop	r24
 626:	7f 91       	pop	r23
 628:	6f 91       	pop	r22
 62a:	5f 91       	pop	r21
 62c:	4f 91       	pop	r20
 62e:	3f 91       	pop	r19
 630:	2f 91       	pop	r18
 632:	0f 90       	pop	r0
 634:	0f be       	out	0x3f, r0	; 63
 636:	0f 90       	pop	r0
 638:	1f 90       	pop	r1
 63a:	18 95       	reti

0000063c <__vector_18>:
 63c:	1f 92       	push	r1
 63e:	0f 92       	push	r0
 640:	0f b6       	in	r0, 0x3f	; 63
 642:	0f 92       	push	r0
 644:	11 24       	eor	r1, r1
 646:	2f 93       	push	r18
 648:	8f 93       	push	r24
 64a:	9f 93       	push	r25
 64c:	ef 93       	push	r30
 64e:	ff 93       	push	r31
 650:	e0 91 33 01 	lds	r30, 0x0133	; 0x800133 <Serial+0x10>
 654:	f0 91 34 01 	lds	r31, 0x0134	; 0x800134 <Serial+0x11>
 658:	80 81       	ld	r24, Z
 65a:	e0 91 39 01 	lds	r30, 0x0139	; 0x800139 <Serial+0x16>
 65e:	f0 91 3a 01 	lds	r31, 0x013A	; 0x80013a <Serial+0x17>
 662:	82 fd       	sbrc	r24, 2
 664:	12 c0       	rjmp	.+36     	; 0x68a <__vector_18+0x4e>
 666:	90 81       	ld	r25, Z
 668:	80 91 3c 01 	lds	r24, 0x013C	; 0x80013c <Serial+0x19>
 66c:	8f 5f       	subi	r24, 0xFF	; 255
 66e:	8f 73       	andi	r24, 0x3F	; 63
 670:	20 91 3d 01 	lds	r18, 0x013D	; 0x80013d <Serial+0x1a>
 674:	82 17       	cp	r24, r18
 676:	51 f0       	breq	.+20     	; 0x68c <__vector_18+0x50>
 678:	e0 91 3c 01 	lds	r30, 0x013C	; 0x80013c <Serial+0x19>
 67c:	f0 e0       	ldi	r31, 0x00	; 0
 67e:	ed 5d       	subi	r30, 0xDD	; 221
 680:	fe 4f       	sbci	r31, 0xFE	; 254
 682:	95 8f       	std	Z+29, r25	; 0x1d
 684:	80 93 3c 01 	sts	0x013C, r24	; 0x80013c <Serial+0x19>
 688:	01 c0       	rjmp	.+2      	; 0x68c <__vector_18+0x50>
 68a:	80 81       	ld	r24, Z
 68c:	ff 91       	pop	r31
 68e:	ef 91       	pop	r30
 690:	9f 91       	pop	r25
 692:	8f 91       	pop	r24
 694:	2f 91       	pop	r18
 696:	0f 90       	pop	r0
 698:	0f be       	out	0x3f, r0	; 63
 69a:	0f 90       	pop	r0
 69c:	1f 90       	pop	r1
 69e:	18 95       	reti

000006a0 <__vector_16>:
 6a0:	1f 92       	push	r1
 6a2:	0f 92       	push	r0
 6a4:	0f b6       	in	r0, 0x3f	; 63
 6a6:	0f 92       	push	r0
 6a8:	11 24       	eor	r1, r1
 6aa:	2f 93       	push	r18
 6ac:	3f 93       	push	r19
 6ae:	8f 93       	push	r24
 6b0:	9f 93       	push	r25
 6b2:	af 93       	push	r26
 6b4:	bf 93       	push	r27
 6b6:	80 91 c0 01 	lds	r24, 0x01C0	; 0x8001c0 <timer0_millis>
 6ba:	90 91 c1 01 	lds	r25, 0x01C1	; 0x8001c1 <timer0_millis+0x1>
 6be:	a0 91 c2 01 	lds	r26, 0x01C2	; 0x8001c2 <timer0_millis+0x2>
 6c2:	b0 91 c3 01 	lds	r27, 0x01C3	; 0x8001c3 <timer0_millis+0x3>
 6c6:	30 91 22 01 	lds	r19, 0x0122	; 0x800122 <timer0_fract>
 6ca:	23 e0       	ldi	r18, 0x03	; 3
 6cc:	23 0f       	add	r18, r19
 6ce:	2d 37       	cpi	r18, 0x7D	; 125
 6d0:	20 f4       	brcc	.+8      	; 0x6da <__vector_16+0x3a>
 6d2:	01 96       	adiw	r24, 0x01	; 1
 6d4:	a1 1d       	adc	r26, r1
 6d6:	b1 1d       	adc	r27, r1
 6d8:	05 c0       	rjmp	.+10     	; 0x6e4 <__vector_16+0x44>
 6da:	26 e8       	ldi	r18, 0x86	; 134
 6dc:	23 0f       	add	r18, r19
 6de:	02 96       	adiw	r24, 0x02	; 2
 6e0:	a1 1d       	adc	r26, r1
 6e2:	b1 1d       	adc	r27, r1
 6e4:	20 93 22 01 	sts	0x0122, r18	; 0x800122 <timer0_fract>
 6e8:	80 93 c0 01 	sts	0x01C0, r24	; 0x8001c0 <timer0_millis>
 6ec:	90 93 c1 01 	sts	0x01C1, r25	; 0x8001c1 <timer0_millis+0x1>
 6f0:	a0 93 c2 01 	sts	0x01C2, r26	; 0x8001c2 <timer0_millis+0x2>
 6f4:	b0 93 c3 01 	sts	0x01C3, r27	; 0x8001c3 <timer0_millis+0x3>
 6f8:	80 91 1e 01 	lds	r24, 0x011E	; 0x80011e <__data_end>
 6fc:	90 91 1f 01 	lds	r25, 0x011F	; 0x80011f <__data_end+0x1>
 700:	a0 91 20 01 	lds	r26, 0x0120	; 0x800120 <__data_end+0x2>
 704:	b0 91 21 01 	lds	r27, 0x0121	; 0x800121 <__data_end+0x3>
 708:	01 96       	adiw	r24, 0x01	; 1
 70a:	a1 1d       	adc	r26, r1
 70c:	b1 1d       	adc	r27, r1
 70e:	80 93 1e 01 	sts	0x011E, r24	; 0x80011e <__data_end>
 712:	90 93 1f 01 	sts	0x011F, r25	; 0x80011f <__data_end+0x1>
 716:	a0 93 20 01 	sts	0x0120, r26	; 0x800120 <__data_end+0x2>
 71a:	b0 93 21 01 	sts	0x0121, r27	; 0x800121 <__data_end+0x3>
 71e:	bf 91       	pop	r27
 720:	af 91       	pop	r26
 722:	9f 91       	pop	r25
 724:	8f 91       	pop	r24
 726:	3f 91       	pop	r19
 728:	2f 91       	pop	r18
 72a:	0f 90       	pop	r0
 72c:	0f be       	out	0x3f, r0	; 63
 72e:	0f 90       	pop	r0
 730:	1f 90       	pop	r1
 732:	18 95       	reti

00000734 <_GLOBAL__I_65535_0_SimpleTouch.ino.cpp.o.1889>:
 734:	e3 e2       	ldi	r30, 0x23	; 35
 736:	f1 e0       	ldi	r31, 0x01	; 1
 738:	13 82       	std	Z+3, r1	; 0x03
 73a:	12 82       	std	Z+2, r1	; 0x02
 73c:	88 ee       	ldi	r24, 0xE8	; 232
 73e:	93 e0       	ldi	r25, 0x03	; 3
 740:	a0 e0       	ldi	r26, 0x00	; 0
 742:	b0 e0       	ldi	r27, 0x00	; 0
 744:	84 83       	std	Z+4, r24	; 0x04
 746:	95 83       	std	Z+5, r25	; 0x05
 748:	a6 83       	std	Z+6, r26	; 0x06
 74a:	b7 83       	std	Z+7, r27	; 0x07
 74c:	84 e0       	ldi	r24, 0x04	; 4
 74e:	91 e0       	ldi	r25, 0x01	; 1
 750:	91 83       	std	Z+1, r25	; 0x01
 752:	80 83       	st	Z, r24
 754:	85 ec       	ldi	r24, 0xC5	; 197
 756:	90 e0       	ldi	r25, 0x00	; 0
 758:	95 87       	std	Z+13, r25	; 0x0d
 75a:	84 87       	std	Z+12, r24	; 0x0c
 75c:	84 ec       	ldi	r24, 0xC4	; 196
 75e:	90 e0       	ldi	r25, 0x00	; 0
 760:	97 87       	std	Z+15, r25	; 0x0f
 762:	86 87       	std	Z+14, r24	; 0x0e
 764:	80 ec       	ldi	r24, 0xC0	; 192
 766:	90 e0       	ldi	r25, 0x00	; 0
 768:	91 8b       	std	Z+17, r25	; 0x11
 76a:	80 8b       	std	Z+16, r24	; 0x10
 76c:	81 ec       	ldi	r24, 0xC1	; 193
 76e:	90 e0       	ldi	r25, 0x00	; 0
 770:	93 8b       	std	Z+19, r25	; 0x13
 772:	82 8b       	std	Z+18, r24	; 0x12
 774:	82 ec       	ldi	r24, 0xC2	; 194
 776:	90 e0       	ldi	r25, 0x00	; 0
 778:	95 8b       	std	Z+21, r25	; 0x15
 77a:	84 8b       	std	Z+20, r24	; 0x14
 77c:	86 ec       	ldi	r24, 0xC6	; 198
 77e:	90 e0       	ldi	r25, 0x00	; 0
 780:	97 8b       	std	Z+23, r25	; 0x17
 782:	86 8b       	std	Z+22, r24	; 0x16
 784:	11 8e       	std	Z+25, r1	; 0x19
 786:	12 8e       	std	Z+26, r1	; 0x1a
 788:	13 8e       	std	Z+27, r1	; 0x1b
 78a:	14 8e       	std	Z+28, r1	; 0x1c
 78c:	e6 ec       	ldi	r30, 0xC6	; 198
 78e:	f1 e0       	ldi	r31, 0x01	; 1
 790:	86 e0       	ldi	r24, 0x06	; 6
 792:	84 83       	std	Z+4, r24	; 0x04
 794:	80 e1       	ldi	r24, 0x10	; 16
 796:	85 83       	std	Z+5, r24	; 0x05
 798:	81 e0       	ldi	r24, 0x01	; 1
 79a:	86 83       	std	Z+6, r24	; 0x06
 79c:	81 ab       	std	Z+49, r24	; 0x31
 79e:	82 ab       	std	Z+50, r24	; 0x32
 7a0:	95 e0       	ldi	r25, 0x05	; 5
 7a2:	93 ab       	std	Z+51, r25	; 0x33
 7a4:	92 e0       	ldi	r25, 0x02	; 2
 7a6:	94 ab       	std	Z+52, r25	; 0x34
 7a8:	2f e0       	ldi	r18, 0x0F	; 15
 7aa:	30 e0       	ldi	r19, 0x00	; 0
 7ac:	37 ab       	std	Z+55, r19	; 0x37
 7ae:	26 ab       	std	Z+54, r18	; 0x36
 7b0:	2a e0       	ldi	r18, 0x0A	; 10
 7b2:	30 e0       	ldi	r19, 0x00	; 0
 7b4:	31 af       	std	Z+57, r19	; 0x39
 7b6:	20 af       	std	Z+56, r18	; 0x38
 7b8:	24 e6       	ldi	r18, 0x64	; 100
 7ba:	30 e0       	ldi	r19, 0x00	; 0
 7bc:	33 af       	std	Z+59, r19	; 0x3b
 7be:	22 af       	std	Z+58, r18	; 0x3a
 7c0:	20 e5       	ldi	r18, 0x50	; 80
 7c2:	30 e0       	ldi	r19, 0x00	; 0
 7c4:	35 af       	std	Z+61, r19	; 0x3d
 7c6:	24 af       	std	Z+60, r18	; 0x3c
 7c8:	10 82       	st	Z, r1
 7ca:	11 82       	std	Z+1, r1	; 0x01
 7cc:	12 82       	std	Z+2, r1	; 0x02
 7ce:	13 82       	std	Z+3, r1	; 0x03
 7d0:	9f b7       	in	r25, 0x3f	; 63
 7d2:	f8 94       	cli
 7d4:	40 91 c0 01 	lds	r20, 0x01C0	; 0x8001c0 <timer0_millis>
 7d8:	50 91 c1 01 	lds	r21, 0x01C1	; 0x8001c1 <timer0_millis+0x1>
 7dc:	60 91 c2 01 	lds	r22, 0x01C2	; 0x8001c2 <timer0_millis+0x2>
 7e0:	70 91 c3 01 	lds	r23, 0x01C3	; 0x8001c3 <timer0_millis+0x3>
 7e4:	9f bf       	out	0x3f, r25	; 63
 7e6:	50 87       	std	Z+8, r21	; 0x08
 7e8:	47 83       	std	Z+7, r20	; 0x07
 7ea:	17 a6       	std	Z+47, r1	; 0x2f
 7ec:	80 93 06 02 	sts	0x0206, r24	; 0x800206 <sensePin+0x40>
 7f0:	e4 ec       	ldi	r30, 0xC4	; 196
 7f2:	f1 e0       	ldi	r31, 0x01	; 1
 7f4:	10 82       	st	Z, r1
 7f6:	11 82       	std	Z+1, r1	; 0x01
 7f8:	08 95       	ret

000007fa <main>:
 7fa:	cf 93       	push	r28
 7fc:	df 93       	push	r29
 7fe:	cd b7       	in	r28, 0x3d	; 61
 800:	de b7       	in	r29, 0x3e	; 62
 802:	a1 97       	sbiw	r28, 0x21	; 33
 804:	0f b6       	in	r0, 0x3f	; 63
 806:	f8 94       	cli
 808:	de bf       	out	0x3e, r29	; 62
 80a:	0f be       	out	0x3f, r0	; 63
 80c:	cd bf       	out	0x3d, r28	; 61
 80e:	78 94       	sei
 810:	84 b5       	in	r24, 0x24	; 36
 812:	82 60       	ori	r24, 0x02	; 2
 814:	84 bd       	out	0x24, r24	; 36
 816:	84 b5       	in	r24, 0x24	; 36
 818:	81 60       	ori	r24, 0x01	; 1
 81a:	84 bd       	out	0x24, r24	; 36
 81c:	85 b5       	in	r24, 0x25	; 37
 81e:	82 60       	ori	r24, 0x02	; 2
 820:	85 bd       	out	0x25, r24	; 37
 822:	85 b5       	in	r24, 0x25	; 37
 824:	81 60       	ori	r24, 0x01	; 1
 826:	85 bd       	out	0x25, r24	; 37
 828:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__data_load_end+0x7ff584>
 82c:	81 60       	ori	r24, 0x01	; 1
 82e:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__data_load_end+0x7ff584>
 832:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__data_load_end+0x7ff597>
 836:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__data_load_end+0x7ff597>
 83a:	82 60       	ori	r24, 0x02	; 2
 83c:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__data_load_end+0x7ff597>
 840:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__data_load_end+0x7ff597>
 844:	81 60       	ori	r24, 0x01	; 1
 846:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__data_load_end+0x7ff597>
 84a:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__data_load_end+0x7ff596>
 84e:	81 60       	ori	r24, 0x01	; 1
 850:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__data_load_end+0x7ff596>
 854:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__data_load_end+0x7ff5c7>
 858:	84 60       	ori	r24, 0x04	; 4
 85a:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__data_load_end+0x7ff5c7>
 85e:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__data_load_end+0x7ff5c6>
 862:	81 60       	ori	r24, 0x01	; 1
 864:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__data_load_end+0x7ff5c6>
 868:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__data_load_end+0x7ff590>
 86c:	84 60       	ori	r24, 0x04	; 4
 86e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__data_load_end+0x7ff590>
 872:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__data_load_end+0x7ff590>
 876:	82 60       	ori	r24, 0x02	; 2
 878:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__data_load_end+0x7ff590>
 87c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__data_load_end+0x7ff590>
 880:	81 60       	ori	r24, 0x01	; 1
 882:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__data_load_end+0x7ff590>
 886:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__data_load_end+0x7ff590>
 88a:	80 68       	ori	r24, 0x80	; 128
 88c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__data_load_end+0x7ff590>
 890:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__data_load_end+0x7ff5d7>
 894:	e0 91 33 01 	lds	r30, 0x0133	; 0x800133 <Serial+0x10>
 898:	f0 91 34 01 	lds	r31, 0x0134	; 0x800134 <Serial+0x11>
 89c:	82 e0       	ldi	r24, 0x02	; 2
 89e:	80 83       	st	Z, r24
 8a0:	e0 91 2f 01 	lds	r30, 0x012F	; 0x80012f <Serial+0xc>
 8a4:	f0 91 30 01 	lds	r31, 0x0130	; 0x800130 <Serial+0xd>
 8a8:	10 82       	st	Z, r1
 8aa:	e0 91 31 01 	lds	r30, 0x0131	; 0x800131 <Serial+0xe>
 8ae:	f0 91 32 01 	lds	r31, 0x0132	; 0x800132 <Serial+0xf>
 8b2:	80 e1       	ldi	r24, 0x10	; 16
 8b4:	80 83       	st	Z, r24
 8b6:	10 92 3b 01 	sts	0x013B, r1	; 0x80013b <Serial+0x18>
 8ba:	e0 91 37 01 	lds	r30, 0x0137	; 0x800137 <Serial+0x14>
 8be:	f0 91 38 01 	lds	r31, 0x0138	; 0x800138 <Serial+0x15>
 8c2:	86 e0       	ldi	r24, 0x06	; 6
 8c4:	80 83       	st	Z, r24
 8c6:	e0 91 35 01 	lds	r30, 0x0135	; 0x800135 <Serial+0x12>
 8ca:	f0 91 36 01 	lds	r31, 0x0136	; 0x800136 <Serial+0x13>
 8ce:	80 81       	ld	r24, Z
 8d0:	80 61       	ori	r24, 0x10	; 16
 8d2:	80 83       	st	Z, r24
 8d4:	e0 91 35 01 	lds	r30, 0x0135	; 0x800135 <Serial+0x12>
 8d8:	f0 91 36 01 	lds	r31, 0x0136	; 0x800136 <Serial+0x13>
 8dc:	80 81       	ld	r24, Z
 8de:	88 60       	ori	r24, 0x08	; 8
 8e0:	80 83       	st	Z, r24
 8e2:	e0 91 35 01 	lds	r30, 0x0135	; 0x800135 <Serial+0x12>
 8e6:	f0 91 36 01 	lds	r31, 0x0136	; 0x800136 <Serial+0x13>
 8ea:	80 81       	ld	r24, Z
 8ec:	80 68       	ori	r24, 0x80	; 128
 8ee:	80 83       	st	Z, r24
 8f0:	e0 91 35 01 	lds	r30, 0x0135	; 0x800135 <Serial+0x12>
 8f4:	f0 91 36 01 	lds	r31, 0x0136	; 0x800136 <Serial+0x13>
 8f8:	80 81       	ld	r24, Z
 8fa:	8f 7d       	andi	r24, 0xDF	; 223
 8fc:	80 83       	st	Z, r24
 8fe:	13 e0       	ldi	r17, 0x03	; 3
 900:	10 93 c4 01 	sts	0x01C4, r17	; 0x8001c4 <led>
 904:	80 e2       	ldi	r24, 0x20	; 32
 906:	80 93 c5 01 	sts	0x01C5, r24	; 0x8001c5 <led+0x1>
 90a:	25 9a       	sbi	0x04, 5	; 4
 90c:	84 ec       	ldi	r24, 0xC4	; 196
 90e:	91 e0       	ldi	r25, 0x01	; 1
 910:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 914:	81 e0       	ldi	r24, 0x01	; 1
 916:	80 93 06 02 	sts	0x0206, r24	; 0x800206 <sensePin+0x40>
 91a:	09 e0       	ldi	r16, 0x09	; 9
 91c:	00 93 c8 01 	sts	0x01C8, r16	; 0x8001c8 <sensePin+0x2>
 920:	84 e0       	ldi	r24, 0x04	; 4
 922:	80 93 c9 01 	sts	0x01C9, r24	; 0x8001c9 <sensePin+0x3>
 926:	52 9a       	sbi	0x0a, 2	; 10
 928:	88 ec       	ldi	r24, 0xC8	; 200
 92a:	91 e0       	ldi	r25, 0x01	; 1
 92c:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 930:	00 93 c6 01 	sts	0x01C6, r16	; 0x8001c6 <sensePin>
 934:	88 e0       	ldi	r24, 0x08	; 8
 936:	80 93 c7 01 	sts	0x01C7, r24	; 0x8001c7 <sensePin+0x1>
 93a:	53 9a       	sbi	0x0a, 3	; 10
 93c:	86 ec       	ldi	r24, 0xC6	; 198
 93e:	91 e0       	ldi	r25, 0x01	; 1
 940:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 944:	10 92 04 02 	sts	0x0204, r1	; 0x800204 <sensePin+0x3e>
 948:	10 92 05 02 	sts	0x0205, r1	; 0x800205 <sensePin+0x3f>
 94c:	10 93 f9 01 	sts	0x01F9, r17	; 0x8001f9 <sensePin+0x33>
 950:	c1 2c       	mov	r12, r1
 952:	d1 2c       	mov	r13, r1
 954:	76 01       	movw	r14, r12
 956:	00 e0       	ldi	r16, 0x00	; 0
 958:	10 e0       	ldi	r17, 0x00	; 0
 95a:	0e 94 62 01 	call	0x2c4	; 0x2c4 <_ZN13CapacitivePin6updateEv.constprop.7>
 95e:	88 23       	and	r24, r24
 960:	51 f0       	breq	.+20     	; 0x976 <__stack+0x77>
 962:	0f 5f       	subi	r16, 0xFF	; 255
 964:	1f 4f       	sbci	r17, 0xFF	; 255
 966:	80 91 cf 01 	lds	r24, 0x01CF	; 0x8001cf <sensePin+0x9>
 96a:	90 91 d0 01 	lds	r25, 0x01D0	; 0x8001d0 <sensePin+0xa>
 96e:	c8 0e       	add	r12, r24
 970:	d9 1e       	adc	r13, r25
 972:	e1 1c       	adc	r14, r1
 974:	f1 1c       	adc	r15, r1
 976:	0f 3f       	cpi	r16, 0xFF	; 255
 978:	81 e0       	ldi	r24, 0x01	; 1
 97a:	18 07       	cpc	r17, r24
 97c:	70 f3       	brcs	.-36     	; 0x95a <__stack+0x5b>
 97e:	c7 01       	movw	r24, r14
 980:	b6 01       	movw	r22, r12
 982:	2f ef       	ldi	r18, 0xFF	; 255
 984:	31 e0       	ldi	r19, 0x01	; 1
 986:	40 e0       	ldi	r20, 0x00	; 0
 988:	50 e0       	ldi	r21, 0x00	; 0
 98a:	0e 94 37 05 	call	0xa6e	; 0xa6e <__udivmodsi4>
 98e:	20 93 f6 01 	sts	0x01F6, r18	; 0x8001f6 <sensePin+0x30>
 992:	10 92 06 02 	sts	0x0206, r1	; 0x800206 <sensePin+0x40>
 996:	84 e6       	ldi	r24, 0x64	; 100
 998:	90 e0       	ldi	r25, 0x00	; 0
 99a:	90 93 01 02 	sts	0x0201, r25	; 0x800201 <sensePin+0x3b>
 99e:	80 93 00 02 	sts	0x0200, r24	; 0x800200 <sensePin+0x3a>
 9a2:	80 e5       	ldi	r24, 0x50	; 80
 9a4:	90 e0       	ldi	r25, 0x00	; 0
 9a6:	90 93 03 02 	sts	0x0203, r25	; 0x800203 <sensePin+0x3d>
 9aa:	80 93 02 02 	sts	0x0202, r24	; 0x800202 <sensePin+0x3c>
 9ae:	80 e1       	ldi	r24, 0x10	; 16
 9b0:	91 e0       	ldi	r25, 0x01	; 1
 9b2:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 9b6:	83 e1       	ldi	r24, 0x13	; 19
 9b8:	91 e0       	ldi	r25, 0x01	; 1
 9ba:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 9be:	20 91 f6 01 	lds	r18, 0x01F6	; 0x8001f6 <sensePin+0x30>
 9c2:	30 e0       	ldi	r19, 0x00	; 0
 9c4:	40 e0       	ldi	r20, 0x00	; 0
 9c6:	50 e0       	ldi	r21, 0x00	; 0
 9c8:	19 a2       	std	Y+33, r1	; 0x21
 9ca:	8e 01       	movw	r16, r28
 9cc:	0f 5d       	subi	r16, 0xDF	; 223
 9ce:	1f 4f       	sbci	r17, 0xFF	; 255
 9d0:	8a e0       	ldi	r24, 0x0A	; 10
 9d2:	c8 2e       	mov	r12, r24
 9d4:	d1 2c       	mov	r13, r1
 9d6:	e1 2c       	mov	r14, r1
 9d8:	f1 2c       	mov	r15, r1
 9da:	ca 01       	movw	r24, r20
 9dc:	b9 01       	movw	r22, r18
 9de:	a7 01       	movw	r20, r14
 9e0:	96 01       	movw	r18, r12
 9e2:	0e 94 37 05 	call	0xa6e	; 0xa6e <__udivmodsi4>
 9e6:	60 5d       	subi	r22, 0xD0	; 208
 9e8:	f8 01       	movw	r30, r16
 9ea:	62 93       	st	-Z, r22
 9ec:	8f 01       	movw	r16, r30
 9ee:	21 15       	cp	r18, r1
 9f0:	31 05       	cpc	r19, r1
 9f2:	41 05       	cpc	r20, r1
 9f4:	51 05       	cpc	r21, r1
 9f6:	89 f7       	brne	.-30     	; 0x9da <__stack+0xdb>
 9f8:	cf 01       	movw	r24, r30
 9fa:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 9fe:	80 e1       	ldi	r24, 0x10	; 16
 a00:	91 e0       	ldi	r25, 0x01	; 1
 a02:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 a06:	80 e1       	ldi	r24, 0x10	; 16
 a08:	91 e0       	ldi	r25, 0x01	; 1
 a0a:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 a0e:	80 e1       	ldi	r24, 0x10	; 16
 a10:	91 e0       	ldi	r25, 0x01	; 1
 a12:	0e 94 e4 02 	call	0x5c8	; 0x5c8 <_ZN5Print5writeEPKc.constprop.23>
 a16:	0e 94 62 01 	call	0x2c4	; 0x2c4 <_ZN13CapacitivePin6updateEv.constprop.7>
 a1a:	80 91 04 02 	lds	r24, 0x0204	; 0x800204 <sensePin+0x3e>
 a1e:	85 30       	cpi	r24, 0x05	; 5
 a20:	69 f4       	brne	.+26     	; 0xa3c <__stack+0x13d>
 a22:	e0 91 c4 01 	lds	r30, 0x01C4	; 0x8001c4 <led>
 a26:	ee 23       	and	r30, r30
 a28:	31 f0       	breq	.+12     	; 0xa36 <__stack+0x137>
 a2a:	f0 e0       	ldi	r31, 0x00	; 0
 a2c:	92 a1       	ldd	r25, Z+34	; 0x22
 a2e:	80 91 c5 01 	lds	r24, 0x01C5	; 0x8001c5 <led+0x1>
 a32:	89 2b       	or	r24, r25
 a34:	82 a3       	std	Z+34, r24	; 0x22
 a36:	0e 94 4c 01 	call	0x298	; 0x298 <_Z14serialEventRunv>
 a3a:	ed cf       	rjmp	.-38     	; 0xa16 <__stack+0x117>
 a3c:	84 ec       	ldi	r24, 0xC4	; 196
 a3e:	91 e0       	ldi	r25, 0x01	; 1
 a40:	0e 94 56 01 	call	0x2ac	; 0x2ac <_ZN10DigitalPin5clearEv>
 a44:	f8 cf       	rjmp	.-16     	; 0xa36 <__stack+0x137>

00000a46 <__udivmodhi4>:
 a46:	aa 1b       	sub	r26, r26
 a48:	bb 1b       	sub	r27, r27
 a4a:	51 e1       	ldi	r21, 0x11	; 17
 a4c:	07 c0       	rjmp	.+14     	; 0xa5c <__udivmodhi4_ep>

00000a4e <__udivmodhi4_loop>:
 a4e:	aa 1f       	adc	r26, r26
 a50:	bb 1f       	adc	r27, r27
 a52:	a6 17       	cp	r26, r22
 a54:	b7 07       	cpc	r27, r23
 a56:	10 f0       	brcs	.+4      	; 0xa5c <__udivmodhi4_ep>
 a58:	a6 1b       	sub	r26, r22
 a5a:	b7 0b       	sbc	r27, r23

00000a5c <__udivmodhi4_ep>:
 a5c:	88 1f       	adc	r24, r24
 a5e:	99 1f       	adc	r25, r25
 a60:	5a 95       	dec	r21
 a62:	a9 f7       	brne	.-22     	; 0xa4e <__udivmodhi4_loop>
 a64:	80 95       	com	r24
 a66:	90 95       	com	r25
 a68:	bc 01       	movw	r22, r24
 a6a:	cd 01       	movw	r24, r26
 a6c:	08 95       	ret

00000a6e <__udivmodsi4>:
 a6e:	a1 e2       	ldi	r26, 0x21	; 33
 a70:	1a 2e       	mov	r1, r26
 a72:	aa 1b       	sub	r26, r26
 a74:	bb 1b       	sub	r27, r27
 a76:	fd 01       	movw	r30, r26
 a78:	0d c0       	rjmp	.+26     	; 0xa94 <__udivmodsi4_ep>

00000a7a <__udivmodsi4_loop>:
 a7a:	aa 1f       	adc	r26, r26
 a7c:	bb 1f       	adc	r27, r27
 a7e:	ee 1f       	adc	r30, r30
 a80:	ff 1f       	adc	r31, r31
 a82:	a2 17       	cp	r26, r18
 a84:	b3 07       	cpc	r27, r19
 a86:	e4 07       	cpc	r30, r20
 a88:	f5 07       	cpc	r31, r21
 a8a:	20 f0       	brcs	.+8      	; 0xa94 <__udivmodsi4_ep>
 a8c:	a2 1b       	sub	r26, r18
 a8e:	b3 0b       	sbc	r27, r19
 a90:	e4 0b       	sbc	r30, r20
 a92:	f5 0b       	sbc	r31, r21

00000a94 <__udivmodsi4_ep>:
 a94:	66 1f       	adc	r22, r22
 a96:	77 1f       	adc	r23, r23
 a98:	88 1f       	adc	r24, r24
 a9a:	99 1f       	adc	r25, r25
 a9c:	1a 94       	dec	r1
 a9e:	69 f7       	brne	.-38     	; 0xa7a <__udivmodsi4_loop>
 aa0:	60 95       	com	r22
 aa2:	70 95       	com	r23
 aa4:	80 95       	com	r24
 aa6:	90 95       	com	r25
 aa8:	9b 01       	movw	r18, r22
 aaa:	ac 01       	movw	r20, r24
 aac:	bd 01       	movw	r22, r26
 aae:	cf 01       	movw	r24, r30
 ab0:	08 95       	ret

00000ab2 <__tablejump2__>:
 ab2:	ee 0f       	add	r30, r30
 ab4:	ff 1f       	adc	r31, r31
 ab6:	05 90       	lpm	r0, Z+
 ab8:	f4 91       	lpm	r31, Z
 aba:	e0 2d       	mov	r30, r0
 abc:	09 94       	ijmp

00000abe <abort>:
 abe:	81 e0       	ldi	r24, 0x01	; 1
 ac0:	90 e0       	ldi	r25, 0x00	; 0
 ac2:	f8 94       	cli
 ac4:	0c 94 64 05 	jmp	0xac8	; 0xac8 <_exit>

00000ac8 <_exit>:
 ac8:	f8 94       	cli

00000aca <__stop_program>:
 aca:	ff cf       	rjmp	.-2      	; 0xaca <__stop_program>

/tmp/arduino_build_255242/SimpleTouch.ino.hex:     file format ihex

