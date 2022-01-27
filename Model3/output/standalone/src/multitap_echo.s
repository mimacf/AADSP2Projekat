	.public _multitap_echo
	.public _multitap_echo_init
	.extern __mod
	.code_ovly



_multitap_echo:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 66 | 
	i7 += 1			# LN: 66 | 
	xmem[i7] = i2			# LN: 66 | 
	i7 = i7 + (0x8)			# LN: 66 | 
	i5 = i7 - (0x1)			# LN: 66 | 
	xmem[i5] = i0			# LN: 66 | 
	i0 = i7 - (0x2)			# LN: 66 | 
	xmem[i0] = i1			# LN: 66 | 
	i0 = i7 - (0x3)			# LN: 66 | 
	xmem[i0] = a0h			# LN: 66 | 
	i0 = i7 - (0x4)			# LN: 66 | 
	xmem[i0] = i4			# LN: 66 | 
cline_66_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 74 | 
	a0 = 0			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
for_1:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	i0 = i7 - (0x3)			# LN: 74 | 
	a1 = xmem[i0]			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a >= 0) jmp (for_end_1)			# LN: 74 | 
cline_74_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 76 | 
	a0 = xmem[i0]			# LN: 76 | 
	AnyReg(i0, a0h)			# LN: 76 | 
	i1 = i7 - (0x6)			# LN: 76 | 
	i0 = xmem[i0]			# LN: 76 | 
	xmem[i1] = i0			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 77 | 
	a0 = 0			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
for_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 77 | 
	i0 = xmem[i0]			# LN: 77 | 
	i1 = i7 - (0x7)			# LN: 77 | 
	i0 += 2			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	a1 = xmem[i1]			# LN: 77 | 
	a1 - a0			# LN: 77 | 
	if (a >= 0) jmp (for_end_2)			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 79 | 
	i0 = xmem[i0]			# LN: 79 | 
	i1 = i7 - (0x6)			# LN: 79 | 
	i0 += 1			# LN: 79 | 
	xmem[i1] = i0			# LN: 79 | 
cline_79_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x1)			# LN: 77 | 
	a0 = a0 + a1			# LN: 77 | 
	i0 = i7 - (0x7)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	jmp (for_2)			# LN: 77 | 
cline_77_1:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 81 | 
	i0 = xmem[i0]			# LN: 81 | 
	i1 = i7 - (0x6)			# LN: 81 | 
	i1 = xmem[i1]			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	xmem[i1] = a0h			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 83 | 
	i1 = i7 - (0x4)			# LN: 83 | 
	i1 = xmem[i1]			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	i1 += 2			# LN: 83 | 
	a0 = xmem[i1]			# LN: 83 | 
	i1 = i7 - (0x4)			# LN: 83 | 
	i1 = xmem[i1]			# LN: 83 | 
	uhalfword(a1) = (0x1)			# LN: 83 | 
	i1 += 1; a0 = a0 + a1			# LN: 83, 83 | 
	a1 = xmem[i1]			# LN: 83 | 
	i2 = i0			# LN: 83 | 
	call (__mod)			# LN: 83 | 
	i2 += 2			# LN: 83 | 
	xmem[i2] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	i1 = i7 - (0x2)			# LN: 85 | 
	i1 = xmem[i1]			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	xmem[i1] = a0h			# LN: 85 | 
cline_85_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	AnyReg(i0, a0h)			# LN: 87 | 
	i1 = i7 - (0x8)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	xmem[i1] = i0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 88 | 
	a0 = 0			# LN: 88 | 
	xmem[i0] = a0h			# LN: 88 | 
for_3:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	i1 = i7 - (0x7)			# LN: 88 | 
	i0 = i0 + (0x3)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	a1 = xmem[i1]			# LN: 88 | 
	a1 - a0			# LN: 88 | 
	if (a >= 0) jmp (for_end_3)			# LN: 88 | 
cline_88_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	i1 = i7 - (0x8)			# LN: 90 | 
	i0 += 1			# LN: 90 | 
	xmem[i1] = i0			# LN: 90 | 
cline_90_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	uhalfword(a1) = (0x1)			# LN: 88 | 
	a0 = a0 + a1			# LN: 88 | 
	i0 = i7 - (0x7)			# LN: 88 | 
	xmem[i0] = a0h			# LN: 88 | 
	jmp (for_3)			# LN: 88 | 
cline_88_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	i1 = i7 - (0x2)			# LN: 93 | 
	i1 = xmem[i1]			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	a1 = xmem[i1]			# LN: 93 | 
	i0 = i7 - (0x2)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = a1 + a0			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 94 | 
	i1 = i7 - (0x4)			# LN: 94 | 
	i1 = xmem[i1]			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	i1 = i1 + (0x3)			# LN: 94 | 
	a0 = xmem[i1]			# LN: 94 | 
	i1 = i7 - (0x4)			# LN: 94 | 
	i1 = xmem[i1]			# LN: 94 | 
	uhalfword(a1) = (0x1)			# LN: 94 | 
	i1 += 1; a0 = a0 + a1			# LN: 94, 94 | 
	a1 = xmem[i1]			# LN: 94 | 
	i2 = i0 + (0x3)			# LN: 94 | 
	call (__mod)			# LN: 94 | 
	xmem[i2] = a0h			# LN: 94 | 
cline_94_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	i1 = i7 - (0x2)			# LN: 96 | 
	i0 += 1			# LN: 96 | 
	xmem[i1] = i0			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = i7 - (0x1)			# LN: 97 | 
	i0 += 1			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
cline_97_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x1)			# LN: 74 | 
	a0 = a0 + a1			# LN: 74 | 
	i0 = i7 - (0x5)			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
	jmp (for_1)			# LN: 74 | 
cline_74_1:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 99 | 
__epilogue_106:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x8)			# LN: 99 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 99, 99 | 
	ret			# LN: 99 | 



_multitap_echo_init:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 26 | 
	i7 += 1			# LN: 26 | 
	i7 = i7 + (0x5)			# LN: 26 | 
	i4 = i7 - (0x1)			# LN: 26 | 
	xmem[i4] = i0			# LN: 26 | 
	i0 = i7 - (0x2)			# LN: 26 | 
	xmem[i0] = i1			# LN: 26 | 
	i0 = i7 - (0x3)			# LN: 26 | 
	xmem[i0] = a0h			# LN: 26 | 
	i0 = i7 - (0x4)			# LN: 26 | 
	xmem[i0] = a1h			# LN: 26 | 
cline_26_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 30 | 
	a0 = 0			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
for_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 30 | 
	a0 = xmem[i0]			# LN: 30 | 
	i0 = i7 - (0x3)			# LN: 30 | 
	a1 = xmem[i0]			# LN: 30 | 
	a0 - a1			# LN: 30 | 
	if (a >= 0) jmp (for_end_0)			# LN: 30 | 
cline_30_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	a0 = 0			# LN: 32 | 
	xmem[i0] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	i1 = i7 - (0x2)			# LN: 33 | 
	i0 += 1			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
cline_33_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 30 | 
	a0 = xmem[i0]			# LN: 30 | 
	uhalfword(a1) = (0x1)			# LN: 30 | 
	a0 = a0 + a1			# LN: 30 | 
	i0 = i7 - (0x5)			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
	jmp (for_0)			# LN: 30 | 
cline_30_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	i0 = i7 - (0x2)			# LN: 35 | 
	a1 = xmem[i0]			# LN: 35 | 
	a0 = a1 - a0			# LN: 35 | 
	AnyReg(i0, a0h)			# LN: 35 | 
	i1 = i7 - (0x2)			# LN: 35 | 
	xmem[i1] = i0			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 36 | 
	a0 = xmem[i0]			# LN: 36 | 
	AnyReg(i0, a0h)			# LN: 36 | 
	i1 = i7 - (0x2)			# LN: 36 | 
	i1 = xmem[i1]			# LN: 36 | 
	xmem[i0] = i1			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	i1 = i7 - (0x3)			# LN: 37 | 
	i0 += 1			# LN: 37 | 
	a0 = xmem[i1]			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 38 | 
	i0 = xmem[i0]			# LN: 38 | 
	i1 = i7 - (0x3)			# LN: 38 | 
	a0 = xmem[i1]			# LN: 38 | 
	uhalfword(a1) = (0x1)			# LN: 38 | 
	i0 += 2; a0 = a0 - a1			# LN: 38, 38 | 
	xmem[i0] = a0h			# LN: 38 | 
cline_38_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	i1 = i7 - (0x4)			# LN: 40 | 
	i0 = i0 + (0x4)			# LN: 40 | 
	a0 = xmem[i1]			# LN: 40 | 
	xmem[i0] = a0h			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 41 | 
	i0 = xmem[i0]			# LN: 41 | 
	i1 = i7 - (0x3)			# LN: 41 | 
	i0 = i0 + (0x3)			# LN: 41 | 
	a0 = xmem[i1]			# LN: 41 | 
	uhalfword(a1) = (0x1)			# LN: 41 | 
	i1 = i7 - (0x4)			# LN: 41 | 
	a1 = xmem[i1]; a0 = a0 - a1			# LN: 41, 41 | 
	a0 = a0 - a1			# LN: 41 | 
	xmem[i0] = a0h			# LN: 41 | 
cline_41_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 45 | 
__epilogue_104:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x5)			# LN: 45 | 
	i7 -= 1			# LN: 45 | 
	ret			# LN: 45 | 
