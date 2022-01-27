	.public _outputBuffer
	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _memset
	.extern _multitap_echo_init
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
_outputBuffer
	.bss (0x60)
	.xdata_ovly
_sampleBuffer
	.bss (0x60)
	.xdata_ovly
_string_const_0
	.dw  (0x43)
	.dw  (0x3a)
	.dw  (0x5c)
	.dw  (0x55)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x73)
	.dw  (0x5c)
	.dw  (0x33)
	.dw  (0x38)
	.dw  (0x31)
	.dw  (0x36)
	.dw  (0x33)
	.dw  (0x5c)
	.dw  (0x44)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x6b)
	.dw  (0x74)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x5c)
	.dw  (0x57)
	.dw  (0x68)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x4e)
	.dw  (0x6f)
	.dw  (0x69)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x43)
	.dw  (0x3a)
	.dw  (0x5c)
	.dw  (0x55)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x73)
	.dw  (0x5c)
	.dw  (0x33)
	.dw  (0x38)
	.dw  (0x31)
	.dw  (0x36)
	.dw  (0x33)
	.dw  (0x5c)
	.dw  (0x44)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x6b)
	.dw  (0x74)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x5c)
	.dw  (0x57)
	.dw  (0x68)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x4e)
	.dw  (0x6f)
	.dw  (0x69)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 10 | 
	i7 += 1			# LN: 10 | 
	i7 = i7 + (0x223)			# LN: 10 | 
	i1 = i7 - (0x1)			# LN: 10 | 
	xmem[i1] = a0h			# LN: 10 | 
	i1 = i7 - (0x2)			# LN: 10 | 
	xmem[i1] = i0			# LN: 10 | 
cline_10_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 27 | 
	uhalfword(a0) = (0x10)			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	i1 = i7 - (24 - 0)			# LN: 27 | 
	call (_multitap_echo_init)			# LN: 27 | 
cline_27_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 30 | 
	a0 = 0			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
	do (0x6), label_end_92			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 31 | 
	a1 = xmem[i0]; a0 = 0			# LN: 31, 31 | 
	a1 = a1 << 4			# LN: 31 | 
	i0 = a1			# LN: 31 | 
	uhalfword(a1) = (0x10)			# LN: 31 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 31 | 
	call (_memset)			# LN: 31 | 
cline_31_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 30 | 
	a0 = xmem[i0]			# LN: 30 | 
	uhalfword(a1) = (0x1)			# LN: 30 | 
	a0 = a0 + a1			# LN: 30 | 
	i0 = i7 - (0x19)			# LN: 30 | 
label_end_92:			# LN: 30 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 30 | 
cline_30_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 33 | 
	a0 = 0			# LN: 33 | 
	xmem[i0] = a0h			# LN: 33 | 
	do (0x6), label_end_93			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 34 | 
	a1 = xmem[i0]; a0 = 0			# LN: 34, 34 | 
	a1 = a1 << 4			# LN: 34 | 
	i0 = a1			# LN: 34 | 
	uhalfword(a1) = (0x10)			# LN: 34 | 
	i0 = i0 + (_outputBuffer + 0)			# LN: 34 | 
	call (_memset)			# LN: 34 | 
cline_34_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x19)			# LN: 33 | 
	a0 = xmem[i0]			# LN: 33 | 
	uhalfword(a1) = (0x1)			# LN: 33 | 
	a0 = a0 + a1			# LN: 33 | 
	i0 = i7 - (0x19)			# LN: 33 | 
label_end_93:			# LN: 33 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 33 | 
cline_33_1:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (281 - 0)			# LN: 40 | 
	i1 = (0) + (_string_const_0)			# LN: 40 | 
	call (_strcpy)			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (281 - 0)			# LN: 41 | 
	call (_cl_wavread_open)			# LN: 41 | 
	AnyReg(i0, a0h)			# LN: 41 | 
	i1 = i7 - (0x11a)			# LN: 41 | 
	xmem[i1] = i0			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	a0 & a0			# LN: 42 | 
	if (a != 0) jmp (else_0)			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 44 | 
	call (_printf)			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 45 | 
	jmp (__epilogue_230)			# LN: 45 | 
cline_45_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_cl_wavread_getnchannels)			# LN: 51 | 
	i0 = i7 - (0x11b)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	call (_cl_wavread_bits_per_sample)			# LN: 52 | 
	i0 = i7 - (0x11c)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_frame_rate)			# LN: 53 | 
	i0 = i7 - (0x11d)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_number_of_frames)			# LN: 54 | 
	i0 = i7 - (0x11e)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (542 - 0)			# LN: 59 | 
	i1 = (0) + (_string_const_2)			# LN: 59 | 
	call (_strcpy)			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (542 - 0)			# LN: 60 | 
	i1 = i7 - (0x11c)			# LN: 60 | 
	a0 = xmem[i1]			# LN: 60 | 
	uhalfword(a1) = (0x6)			# LN: 60 | 
	i1 = i7 - (0x11d)			# LN: 60 | 
	b0 = xmem[i1]			# LN: 60 | 
	call (_cl_wavwrite_open)			# LN: 60 | 
	AnyReg(i0, a0h)			# LN: 60 | 
	i1 = i7 - (0x21f)			# LN: 60 | 
	xmem[i1] = i0			# LN: 60 | 
cline_60_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x21f)			# LN: 61 | 
	a0 = xmem[i0]			# LN: 61 | 
	a0 & a0			# LN: 61 | 
	if (a != 0) jmp (else_1)			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 63 | 
	call (_printf)			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 64 | 
	jmp (__epilogue_230)			# LN: 64 | 
cline_64_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x220)			# LN: 77 | 
	a0 = 0			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
for_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11e)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x10)			# LN: 77 | 
	call (__div)			# LN: 77 | 
	i0 = i7 - (0x220)			# LN: 77 | 
	a1 = xmem[i0]			# LN: 77 | 
	a1 - a0			# LN: 77 | 
	if (a >= 0) jmp (for_end_2)			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x221)			# LN: 79 | 
	a0 = 0			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
	do (0x10), label_end_95			# LN: 79 | 
cline_79_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 81 | 
	a0 = 0			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
	do (0x2), label_end_94			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	call (_cl_wavread_recvsample)			# LN: 83 | 
	i0 = i7 - (0x223)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	a0 = a0 << 4			# LN: 84 | 
	i0 = a0			# LN: 84 | 
	i1 = i7 - (0x221)			# LN: 84 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 84 | 
	a0 = xmem[i1]			# LN: 84 | 
	a1 = i0			# LN: 84 | 
	a0 = a1 + a0			# LN: 84 | 
	AnyReg(i0, a0h)			# LN: 84 | 
	i1 = i7 - (0x223)			# LN: 84 | 
	a0 = xmem[i1]			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	uhalfword(a1) = (0x1)			# LN: 81 | 
	a0 = a0 + a1			# LN: 81 | 
	i0 = i7 - (0x222)			# LN: 81 | 
label_end_94:			# LN: 81 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 81 | 
cline_81_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x221)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	uhalfword(a1) = (0x1)			# LN: 79 | 
	a0 = a0 + a1			# LN: 79 | 
	i0 = i7 - (0x221)			# LN: 79 | 
label_end_95:			# LN: 79 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 79 | 
cline_79_1:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 89 | 
	i1 = (0) + (_outputBuffer)			# LN: 89 | 
	i4 = i7 - (0x8)			# LN: 89 | 
	call (_processing)			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x221)			# LN: 91 | 
	a0 = 0			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
	do (0x10), label_end_97			# LN: 91 | 
cline_91_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 93 | 
	a0 = 0			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
	do (0x6), label_end_96			# LN: 93 | 
cline_93_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	a0 = a0 << 4			# LN: 95 | 
	i0 = a0			# LN: 95 | 
	i1 = i7 - (0x221)			# LN: 95 | 
	i0 = i0 + (_outputBuffer + 0)			# LN: 95 | 
	a0 = xmem[i1]			# LN: 95 | 
	a1 = i0			# LN: 95 | 
	a0 = a1 + a0			# LN: 95 | 
	AnyReg(i0, a0h)			# LN: 95 | 
	i1 = i7 - (0x223)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	xmem[i1] = a0h			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x21f)			# LN: 96 | 
	i1 = i7 - (0x223)			# LN: 96 | 
	a0 = xmem[i1]			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	call (_cl_wavwrite_sendsample)			# LN: 96 | 
cline_96_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x222)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	uhalfword(a1) = (0x1)			# LN: 93 | 
	a0 = a0 + a1			# LN: 93 | 
	i0 = i7 - (0x222)			# LN: 93 | 
label_end_96:			# LN: 93 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 93 | 
cline_93_1:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x221)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	uhalfword(a1) = (0x1)			# LN: 91 | 
	a0 = a0 + a1			# LN: 91 | 
	i0 = i7 - (0x221)			# LN: 91 | 
label_end_97:			# LN: 91 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 91 | 
cline_91_1:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x220)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x1)			# LN: 77 | 
	a0 = a0 + a1			# LN: 77 | 
	i0 = i7 - (0x220)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	jmp (for_2)			# LN: 77 | 
cline_77_1:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11a)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	call (_cl_wavread_close)			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x21f)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	call (_cl_wavwrite_close)			# LN: 105 | 
cline_105_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 108 | 
	jmp (__epilogue_230)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
__epilogue_230:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x223)			# LN: 109 | 
	i7 -= 1			# LN: 109 | 
	ret			# LN: 109 | 
