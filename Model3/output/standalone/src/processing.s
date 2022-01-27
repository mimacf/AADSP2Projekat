	.public _enable
	.public _gainL
	.public _gainLs
	.public _headroomGain
	.public _inputGain
	.public _mode
	.public _get_out_num_ch
	.public _is_channel_active
	.extern _multitap_echo
	.public _processing
	.xdata_ovly
_enable
	.dw  (0x1)
	.ydata_ovly
_gainL
	.dw  (0x4026e73d)
	.ydata_ovly
_gainLs
	.dw  (0x65ac8c2f)
	.ydata_ovly
_headroomGain
	.dw  (0x5a9df7ac)
	.ydata_ovly
_inputGain
	.dw  (0x4026e73d)
	.xdata_ovly
_mode
	.dw  (0x1)
	.xdata_ovly
_outputChMask
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x0)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x1)
	.dw  (0x0)
	.code_ovly



_get_out_num_ch:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 31 | 
	i7 += 1			# LN: 31 | 
	i7 = i7 + (0x3)			# LN: 31 | 
	i0 = i7 - (0x1)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 33 | 
	a0 = 0			# LN: 33 | 
	xmem[i0] = a0h			# LN: 33 | 
cline_33_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x6), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 37 | 
	x0 = xmem[i0]			# LN: 37 | 
	x1 = (0x300)			# LN: 37 | 
	a0 = x0 * x1			# LN: 37 | 
	a0 = a0 << 8			# LN: 37 | 
	i0 = a0			# LN: 37 | 
	i1 = i7 - (0x3)			# LN: 37 | 
	i0 = i0 + (_outputChMask + 0)			# LN: 37 | 
	a0 = xmem[i1]			# LN: 37 | 
	a1 = i0			# LN: 37 | 
	a0 = a1 + a0			# LN: 37 | 
	AnyReg(i0, a0h)			# LN: 37 | 
	i1 = i7 - (0x2)			# LN: 37 | 
	a0 = xmem[i0]			# LN: 37 | 
	a1 = xmem[i1]			# LN: 37 | 
	a0 = a1 + a0			# LN: 37 | 
	i0 = i7 - (0x2)			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
cline_37_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x3)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 40 | 
	a0 = xmem[i0]			# LN: 40 | 
	jmp (__epilogue_108)			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
__epilogue_108:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 41 | 
	i7 -= 1			# LN: 41 | 
	ret			# LN: 41 | 



_is_channel_active:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 43 | 
	i7 += 1			# LN: 43 | 
	i7 = i7 + (0x2)			# LN: 43 | 
	i0 = i7 - (0x1)			# LN: 43 | 
	xmem[i0] = a0h			# LN: 43 | 
	i0 = i7 - (0x2)			# LN: 43 | 
	xmem[i0] = a1h			# LN: 43 | 
cline_43_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 45 | 
	x0 = xmem[i0]			# LN: 45 | 
	x1 = (0x300)			# LN: 45 | 
	a0 = x0 * x1			# LN: 45 | 
	a0 = a0 << 8			# LN: 45 | 
	i0 = a0			# LN: 45 | 
	i1 = i7 - (0x2)			# LN: 45 | 
	i0 = i0 + (_outputChMask + 0)			# LN: 45 | 
	a0 = xmem[i1]			# LN: 45 | 
	a1 = i0			# LN: 45 | 
	a0 = a1 + a0			# LN: 45 | 
	AnyReg(i0, a0h)			# LN: 45 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 45 | 
	jmp (__epilogue_110)			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
__epilogue_110:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 46 | 
	i7 -= 1			# LN: 46 | 
	ret			# LN: 46 | 



_processing:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 73 | 
	i7 += 1			# LN: 73 | 
	i7 = i7 + (0x33)			# LN: 73 | 
	i5 = i7 - (0x1)			# LN: 73 | 
	xmem[i5] = i0			# LN: 73 | 
	i0 = i7 - (0x2)			# LN: 73 | 
	xmem[i0] = i1			# LN: 73 | 
	i0 = i7 - (0x3)			# LN: 73 | 
	xmem[i0] = i4			# LN: 73 | 
cline_73_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	AnyReg(i0, a0h)			# LN: 90 | 
	i1 = i7 - (0x4)			# LN: 90 | 
	xmem[i1] = i0			# LN: 90 | 
cline_90_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0x1)			# LN: 91 | 
	i0 = i0 + (0x10)			# LN: 91 | 
	xmem[i1] = i0			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	AnyReg(i0, a0h)			# LN: 92 | 
	i1 = i7 - (0x5)			# LN: 92 | 
	xmem[i1] = i0			# LN: 92 | 
cline_92_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_enable + 0]			# LN: 99 | 
	uhalfword(a1) = (0x1)			# LN: 99 | 
	a0 - a1			# LN: 99 | 
	if (a != 0) jmp (else_0)			# LN: 99 | 
cline_99_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 102 | 
	a0 & a0			# LN: 102 | 
	if (a != 0) jmp (else_1)			# LN: 102 | 
cline_102_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	i1 = i7 - (0x2)			# LN: 104 | 
	i0 = i0 + (0x10)			# LN: 104 | 
	xmem[i1] = i0			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	AnyReg(i0, a0h)			# LN: 105 | 
	i1 = i7 - (0x6)			# LN: 105 | 
	xmem[i1] = i0			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 106 | 
	i0 = xmem[i0]			# LN: 106 | 
	i1 = i7 - (0x2)			# LN: 106 | 
	i0 = i0 + (0x10)			# LN: 106 | 
	xmem[i1] = i0			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	i1 = i7 - (0x2)			# LN: 107 | 
	i0 = i0 + (0x10)			# LN: 107 | 
	xmem[i1] = i0			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	AnyReg(i0, a0h)			# LN: 108 | 
	i1 = i7 - (0x7)			# LN: 108 | 
	xmem[i1] = i0			# LN: 108 | 
cline_108_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 111 | 
	a0 = 0			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
	do (0x10), label_end_93			# LN: 111 | 
cline_111_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	x0 = ymem[_inputGain + 0]			# LN: 114 | 
	x1 = xmem[i0]			# LN: 114 | 
	a0 = x0 * x1			# LN: 114 | 
	i0 = i7 - (0xb)			# LN: 114 | 
	xmem[i0] = a0g; i0 += 1			# LN: 114, 114 | 
	xmem[i0] = a0h; i0 += 1			# LN: 114, 114 | 
	xmem[i0] = a0l			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 115 | 
	i0 = xmem[i0]			# LN: 115 | 
	x0 = ymem[_inputGain + 0]			# LN: 115 | 
	x1 = xmem[i0]			# LN: 115 | 
	a0 = x0 * x1			# LN: 115 | 
	i0 = i7 - (0xe)			# LN: 115 | 
	xmem[i0] = a0g; i0 += 1			# LN: 115, 115 | 
	xmem[i0] = a0h; i0 += 1			# LN: 115, 115 | 
	xmem[i0] = a0l			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 116 | 
	a0g = xmem[i0]; i0 += 1			# LN: 116, 116 | 
	a0h = xmem[i0]; i0 += 1			# LN: 116, 116 | 
	a0l = xmem[i0]			# LN: 116 | 
	a0 = a0			# LN: 116 | 
	i0 = i7 - (0xe)			# LN: 116 | 
	a1g = xmem[i0]; i0 += 1			# LN: 116, 116 | 
	a1h = xmem[i0]; i0 += 1			# LN: 116, 116 | 
	a1l = xmem[i0]			# LN: 116 | 
	a1 = a1			# LN: 116 | 
	a0 = a0 + a1			# LN: 116 | 
	i0 = i7 - (0x11)			# LN: 116 | 
	xmem[i0] = a0g; i0 += 1			# LN: 116, 116 | 
	xmem[i0] = a0h; i0 += 1			# LN: 116, 116 | 
	xmem[i0] = a0l			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 117 | 
	a0g = xmem[i0]; i0 += 1			# LN: 117, 117 | 
	a0h = xmem[i0]; i0 += 1			# LN: 117, 117 | 
	a0l = xmem[i0]			# LN: 117 | 
	x0 = a0			# LN: 117 | 
	x1 = ymem[_headroomGain + 0]			# LN: 117 | 
	a0 = x0 * x1			# LN: 117 | 
	i0 = i7 - (0xb)			# LN: 117 | 
	xmem[i0] = a0g; i0 += 1			# LN: 117, 117 | 
	xmem[i0] = a0h; i0 += 1			# LN: 117, 117 | 
	xmem[i0] = a0l			# LN: 117 | 
cline_117_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 118 | 
	a0g = xmem[i0]; i0 += 1			# LN: 118, 118 | 
	a0h = xmem[i0]; i0 += 1			# LN: 118, 118 | 
	a0l = xmem[i0]			# LN: 118 | 
	x0 = a0			# LN: 118 | 
	x1 = ymem[_gainL + 0]			# LN: 118 | 
	a0 = x0 * x1			# LN: 118 | 
	i0 = i7 - (0xe)			# LN: 118 | 
	xmem[i0] = a0g; i0 += 1			# LN: 118, 118 | 
	xmem[i0] = a0h; i0 += 1			# LN: 118, 118 | 
	xmem[i0] = a0l			# LN: 118 | 
cline_118_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 119 | 
	a0g = xmem[i0]; i0 += 1			# LN: 119, 119 | 
	a0h = xmem[i0]; i0 += 1			# LN: 119, 119 | 
	i1 = i7 - (0x6)			# LN: 119 | 
	i1 = xmem[i1]			# LN: 119 | 
	a0l = xmem[i0]			# LN: 119 | 
	xmem[i1] = a0			# LN: 119 | 
cline_119_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 120 | 
	a0g = xmem[i0]; i0 += 1			# LN: 120, 120 | 
	a0h = xmem[i0]; i0 += 1			# LN: 120, 120 | 
	i1 = i7 - (0x7)			# LN: 120 | 
	i1 = xmem[i1]			# LN: 120 | 
	a0l = xmem[i0]			# LN: 120 | 
	xmem[i1] = a0			# LN: 120 | 
cline_120_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 123 | 
	i0 = xmem[i0]			# LN: 123 | 
	i1 = i7 - (0x6)			# LN: 123 | 
	i0 += 1			# LN: 123 | 
	xmem[i1] = i0			# LN: 123 | 
cline_123_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 124 | 
	i0 = xmem[i0]			# LN: 124 | 
	i1 = i7 - (0x7)			# LN: 124 | 
	i0 += 1			# LN: 124 | 
	xmem[i1] = i0			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x4)			# LN: 125 | 
	i0 += 1			# LN: 125 | 
	xmem[i1] = i0			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x5)			# LN: 126 | 
	i0 += 1			# LN: 126 | 
	xmem[i1] = i0			# LN: 126 | 
cline_126_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	uhalfword(a1) = (0x1)			# LN: 111 | 
	a0 = a0 + a1			# LN: 111 | 
	i0 = i7 - (0x8)			# LN: 111 | 
label_end_93:			# LN: 111 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 111 | 
for_end_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	jmp (endif_1)			# LN: 111 | 
cline_111_1:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 140 | 
	uhalfword(a1) = (0x1)			# LN: 140 | 
	a0 - a1			# LN: 140 | 
	if (a != 0) jmp (else_2)			# LN: 140 | 
cline_140_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 142 | 
	i0 = xmem[i0]			# LN: 142 | 
	i1 = i7 - (0x2)			# LN: 142 | 
	i0 = i0 + (0x10)			# LN: 142 | 
	xmem[i1] = i0			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	AnyReg(i0, a0h)			# LN: 143 | 
	i1 = i7 - (0x6)			# LN: 143 | 
	xmem[i1] = i0			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	i1 = i7 - (0x2)			# LN: 144 | 
	i0 = i0 + (0x10)			# LN: 144 | 
	xmem[i1] = i0			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	i1 = i7 - (0x2)			# LN: 145 | 
	i0 = i0 + (0x10)			# LN: 145 | 
	xmem[i1] = i0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	AnyReg(i0, a0h)			# LN: 146 | 
	i1 = i7 - (0x7)			# LN: 146 | 
	xmem[i1] = i0			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	i1 = i7 - (0x2)			# LN: 147 | 
	i0 = i0 + (0x10)			# LN: 147 | 
	xmem[i1] = i0			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	i1 = i7 - (0x2)			# LN: 148 | 
	i0 = i0 + (0x10)			# LN: 148 | 
	xmem[i1] = i0			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	AnyReg(i0, a0h)			# LN: 149 | 
	i1 = i7 - (0x12)			# LN: 149 | 
	xmem[i1] = i0			# LN: 149 | 
cline_149_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 152 | 
	a0 = 0			# LN: 152 | 
	xmem[i0] = a0h			# LN: 152 | 
	do (0x10), label_end_94			# LN: 152 | 
cline_152_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	x0 = ymem[_inputGain + 0]			# LN: 155 | 
	x1 = xmem[i0]			# LN: 155 | 
	a0 = x0 * x1			# LN: 155 | 
	i0 = i7 - (0xb)			# LN: 155 | 
	xmem[i0] = a0g; i0 += 1			# LN: 155, 155 | 
	xmem[i0] = a0h; i0 += 1			# LN: 155, 155 | 
	xmem[i0] = a0l			# LN: 155 | 
cline_155_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 156 | 
	i0 = xmem[i0]			# LN: 156 | 
	x0 = ymem[_inputGain + 0]			# LN: 156 | 
	x1 = xmem[i0]			# LN: 156 | 
	a0 = x0 * x1			# LN: 156 | 
	i0 = i7 - (0xe)			# LN: 156 | 
	xmem[i0] = a0g; i0 += 1			# LN: 156, 156 | 
	xmem[i0] = a0h; i0 += 1			# LN: 156, 156 | 
	xmem[i0] = a0l			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 157 | 
	a0g = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a0h = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a0l = xmem[i0]			# LN: 157 | 
	a0 = a0			# LN: 157 | 
	i0 = i7 - (0xe)			# LN: 157 | 
	a1g = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a1h = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a1l = xmem[i0]			# LN: 157 | 
	a1 = a1			# LN: 157 | 
	a0 = a0 + a1			# LN: 157 | 
	i0 = i7 - (0x11)			# LN: 157 | 
	xmem[i0] = a0g; i0 += 1			# LN: 157, 157 | 
	xmem[i0] = a0h; i0 += 1			# LN: 157, 157 | 
	xmem[i0] = a0l			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 158 | 
	a0g = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0h = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0l = xmem[i0]			# LN: 158 | 
	x0 = a0			# LN: 158 | 
	x1 = ymem[_headroomGain + 0]			# LN: 158 | 
	a0 = x0 * x1			# LN: 158 | 
	i0 = i7 - (0xb)			# LN: 158 | 
	xmem[i0] = a0g; i0 += 1			# LN: 158, 158 | 
	xmem[i0] = a0h; i0 += 1			# LN: 158, 158 | 
	xmem[i0] = a0l			# LN: 158 | 
cline_158_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 159 | 
	a0g = xmem[i0]; i0 += 1			# LN: 159, 159 | 
	a0h = xmem[i0]; i0 += 1			# LN: 159, 159 | 
	i1 = i7 - (0x12)			# LN: 159 | 
	i1 = xmem[i1]			# LN: 159 | 
	a0l = xmem[i0]			# LN: 159 | 
	xmem[i1] = a0			# LN: 159 | 
cline_159_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 160 | 
	a0g = xmem[i0]; i0 += 1			# LN: 160, 160 | 
	a0h = xmem[i0]; i0 += 1			# LN: 160, 160 | 
	a0l = xmem[i0]			# LN: 160 | 
	x0 = a0			# LN: 160 | 
	x1 = ymem[_gainL + 0]			# LN: 160 | 
	a0 = x0 * x1			# LN: 160 | 
	i0 = i7 - (0xe)			# LN: 160 | 
	xmem[i0] = a0g; i0 += 1			# LN: 160, 160 | 
	xmem[i0] = a0h; i0 += 1			# LN: 160, 160 | 
	xmem[i0] = a0l			# LN: 160 | 
cline_160_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 161 | 
	a0g = xmem[i0]; i0 += 1			# LN: 161, 161 | 
	a0h = xmem[i0]; i0 += 1			# LN: 161, 161 | 
	i1 = i7 - (0x6)			# LN: 161 | 
	i1 = xmem[i1]			# LN: 161 | 
	a0l = xmem[i0]			# LN: 161 | 
	xmem[i1] = a0			# LN: 161 | 
cline_161_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 162 | 
	a0g = xmem[i0]; i0 += 1			# LN: 162, 162 | 
	a0h = xmem[i0]; i0 += 1			# LN: 162, 162 | 
	i1 = i7 - (0x7)			# LN: 162 | 
	i1 = xmem[i1]			# LN: 162 | 
	a0l = xmem[i0]			# LN: 162 | 
	xmem[i1] = a0			# LN: 162 | 
cline_162_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 164 | 
	i0 = xmem[i0]			# LN: 164 | 
	i1 = i7 - (0x12)			# LN: 164 | 
	i0 += 1			# LN: 164 | 
	xmem[i1] = i0			# LN: 164 | 
cline_164_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 165 | 
	i0 = xmem[i0]			# LN: 165 | 
	i1 = i7 - (0x6)			# LN: 165 | 
	i0 += 1			# LN: 165 | 
	xmem[i1] = i0			# LN: 165 | 
cline_165_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 166 | 
	i0 = xmem[i0]			# LN: 166 | 
	i1 = i7 - (0x7)			# LN: 166 | 
	i0 += 1			# LN: 166 | 
	xmem[i1] = i0			# LN: 166 | 
cline_166_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 167 | 
	i0 = xmem[i0]			# LN: 167 | 
	i1 = i7 - (0x4)			# LN: 167 | 
	i0 += 1			# LN: 167 | 
	xmem[i1] = i0			# LN: 167 | 
cline_167_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 168 | 
	i0 = xmem[i0]			# LN: 168 | 
	i1 = i7 - (0x5)			# LN: 168 | 
	i0 += 1			# LN: 168 | 
	xmem[i1] = i0			# LN: 168 | 
cline_168_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	uhalfword(a1) = (0x1)			# LN: 152 | 
	a0 = a0 + a1			# LN: 152 | 
	i0 = i7 - (0x8)			# LN: 152 | 
label_end_94:			# LN: 152 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 152 | 
for_end_2:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 152 | 
cline_152_1:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 173 | 
	uhalfword(a1) = (0x2)			# LN: 173 | 
	a0 - a1			# LN: 173 | 
	if (a != 0) jmp (else_3)			# LN: 173 | 
cline_173_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 176 | 
	a0 = xmem[i0]			# LN: 176 | 
	AnyReg(i0, a0h)			# LN: 176 | 
	i1 = i7 - (0x13)			# LN: 176 | 
	xmem[i1] = i0			# LN: 176 | 
cline_176_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	i1 = i7 - (0x2)			# LN: 177 | 
	i0 = i0 + (0x10)			# LN: 177 | 
	xmem[i1] = i0			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 178 | 
	a0 = xmem[i0]			# LN: 178 | 
	AnyReg(i0, a0h)			# LN: 178 | 
	i1 = i7 - (0x6)			# LN: 178 | 
	xmem[i1] = i0			# LN: 178 | 
cline_178_0:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 179 | 
	i0 = xmem[i0]			# LN: 179 | 
	i1 = i7 - (0x2)			# LN: 179 | 
	i0 = i0 + (0x10)			# LN: 179 | 
	xmem[i1] = i0			# LN: 179 | 
cline_179_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 180 | 
	a0 = xmem[i0]			# LN: 180 | 
	AnyReg(i0, a0h)			# LN: 180 | 
	i1 = i7 - (0x14)			# LN: 180 | 
	xmem[i1] = i0			# LN: 180 | 
cline_180_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 181 | 
	i0 = xmem[i0]			# LN: 181 | 
	i1 = i7 - (0x2)			# LN: 181 | 
	i0 = i0 + (0x10)			# LN: 181 | 
	xmem[i1] = i0			# LN: 181 | 
cline_181_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 182 | 
	a0 = xmem[i0]			# LN: 182 | 
	AnyReg(i0, a0h)			# LN: 182 | 
	i1 = i7 - (0x7)			# LN: 182 | 
	xmem[i1] = i0			# LN: 182 | 
cline_182_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 183 | 
	i0 = xmem[i0]			# LN: 183 | 
	i1 = i7 - (0x2)			# LN: 183 | 
	i0 = i0 + (0x10)			# LN: 183 | 
	xmem[i1] = i0			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 184 | 
	a0 = xmem[i0]			# LN: 184 | 
	AnyReg(i0, a0h)			# LN: 184 | 
	i1 = i7 - (0x15)			# LN: 184 | 
	xmem[i1] = i0			# LN: 184 | 
cline_184_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 188 | 
	a0 = 0			# LN: 188 | 
	xmem[i0] = a0h			# LN: 188 | 
	do (0x10), label_end_95			# LN: 188 | 
cline_188_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 190 | 
	i0 = xmem[i0]			# LN: 190 | 
	x0 = ymem[_inputGain + 0]			# LN: 190 | 
	x1 = xmem[i0]			# LN: 190 | 
	a0 = x0 * x1			# LN: 190 | 
	i0 = i7 - (0xb)			# LN: 190 | 
	xmem[i0] = a0g; i0 += 1			# LN: 190, 190 | 
	xmem[i0] = a0h; i0 += 1			# LN: 190, 190 | 
	xmem[i0] = a0l			# LN: 190 | 
cline_190_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	x0 = ymem[_inputGain + 0]			# LN: 191 | 
	x1 = xmem[i0]			# LN: 191 | 
	a0 = x0 * x1			# LN: 191 | 
	i0 = i7 - (0xe)			# LN: 191 | 
	xmem[i0] = a0g; i0 += 1			# LN: 191, 191 | 
	xmem[i0] = a0h; i0 += 1			# LN: 191, 191 | 
	xmem[i0] = a0l			# LN: 191 | 
cline_191_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 192 | 
	a0g = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a0h = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a0l = xmem[i0]			# LN: 192 | 
	a0 = a0			# LN: 192 | 
	i0 = i7 - (0xe)			# LN: 192 | 
	a1g = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a1h = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a1l = xmem[i0]			# LN: 192 | 
	a1 = a1			# LN: 192 | 
	a0 = a0 + a1			# LN: 192 | 
	i0 = i7 - (0x11)			# LN: 192 | 
	xmem[i0] = a0g; i0 += 1			# LN: 192, 192 | 
	xmem[i0] = a0h; i0 += 1			# LN: 192, 192 | 
	xmem[i0] = a0l			# LN: 192 | 
cline_192_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 193 | 
	a0g = xmem[i0]; i0 += 1			# LN: 193, 193 | 
	a0h = xmem[i0]; i0 += 1			# LN: 193, 193 | 
	a0l = xmem[i0]			# LN: 193 | 
	x0 = a0			# LN: 193 | 
	x1 = ymem[_headroomGain + 0]			# LN: 193 | 
	a0 = x0 * x1			# LN: 193 | 
	i0 = i7 - (0xb)			# LN: 193 | 
	xmem[i0] = a0g; i0 += 1			# LN: 193, 193 | 
	xmem[i0] = a0h; i0 += 1			# LN: 193, 193 | 
	xmem[i0] = a0l			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 194 | 
	a0g = xmem[i0]; i0 += 1			# LN: 194, 194 | 
	a0h = xmem[i0]; i0 += 1			# LN: 194, 194 | 
	a0l = xmem[i0]			# LN: 194 | 
	x0 = a0			# LN: 194 | 
	x1 = ymem[_gainL + 0]			# LN: 194 | 
	a0 = x0 * x1			# LN: 194 | 
	i0 = i7 - (0xe)			# LN: 194 | 
	xmem[i0] = a0g; i0 += 1			# LN: 194, 194 | 
	xmem[i0] = a0h; i0 += 1			# LN: 194, 194 | 
	xmem[i0] = a0l			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 195 | 
	a0g = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	a0h = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	i1 = i7 - (0x6)			# LN: 195 | 
	i1 = xmem[i1]			# LN: 195 | 
	a0l = xmem[i0]			# LN: 195 | 
	xmem[i1] = a0			# LN: 195 | 
cline_195_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 196 | 
	a0g = xmem[i0]; i0 += 1			# LN: 196, 196 | 
	a0h = xmem[i0]; i0 += 1			# LN: 196, 196 | 
	i1 = i7 - (0x7)			# LN: 196 | 
	i1 = xmem[i1]			# LN: 196 | 
	a0l = xmem[i0]			# LN: 196 | 
	xmem[i1] = a0			# LN: 196 | 
cline_196_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 198 | 
	i0 = xmem[i0]			# LN: 198 | 
	x0 = ymem[_inputGain + 0]			# LN: 198 | 
	x1 = xmem[i0]			# LN: 198 | 
	a0 = x0 * x1			# LN: 198 | 
	i0 = i7 - (0xb)			# LN: 198 | 
	xmem[i0] = a0g; i0 += 1			# LN: 198, 198 | 
	xmem[i0] = a0h; i0 += 1			# LN: 198, 198 | 
	xmem[i0] = a0l			# LN: 198 | 
cline_198_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 199 | 
	i0 = xmem[i0]			# LN: 199 | 
	x0 = ymem[_inputGain + 0]			# LN: 199 | 
	x1 = xmem[i0]			# LN: 199 | 
	a0 = x0 * x1			# LN: 199 | 
	i0 = i7 - (0xe)			# LN: 199 | 
	xmem[i0] = a0g; i0 += 1			# LN: 199, 199 | 
	xmem[i0] = a0h; i0 += 1			# LN: 199, 199 | 
	xmem[i0] = a0l			# LN: 199 | 
cline_199_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 200 | 
	a0g = xmem[i0]; i0 += 1			# LN: 200, 200 | 
	a0h = xmem[i0]; i0 += 1			# LN: 200, 200 | 
	i1 = i7 - (0x13)			# LN: 200 | 
	i1 = xmem[i1]			# LN: 200 | 
	a0l = xmem[i0]			# LN: 200 | 
	xmem[i1] = a0			# LN: 200 | 
cline_200_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 201 | 
	a0g = xmem[i0]; i0 += 1			# LN: 201, 201 | 
	a0h = xmem[i0]; i0 += 1			# LN: 201, 201 | 
	i1 = i7 - (0x15)			# LN: 201 | 
	i1 = xmem[i1]			# LN: 201 | 
	a0l = xmem[i0]			# LN: 201 | 
	xmem[i1] = a0			# LN: 201 | 
cline_201_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 203 | 
	i0 = xmem[i0]			# LN: 203 | 
	i1 = i7 - (0x6)			# LN: 203 | 
	i0 += 1			# LN: 203 | 
	xmem[i1] = i0			# LN: 203 | 
cline_203_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 204 | 
	i0 = xmem[i0]			# LN: 204 | 
	i1 = i7 - (0x7)			# LN: 204 | 
	i0 += 1			# LN: 204 | 
	xmem[i1] = i0			# LN: 204 | 
cline_204_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 205 | 
	i0 = xmem[i0]			# LN: 205 | 
	i1 = i7 - (0x4)			# LN: 205 | 
	i0 += 1			# LN: 205 | 
	xmem[i1] = i0			# LN: 205 | 
cline_205_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 206 | 
	i0 = xmem[i0]			# LN: 206 | 
	i1 = i7 - (0x5)			# LN: 206 | 
	i0 += 1			# LN: 206 | 
	xmem[i1] = i0			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 207 | 
	i0 = xmem[i0]			# LN: 207 | 
	i1 = i7 - (0x13)			# LN: 207 | 
	i0 += 1			# LN: 207 | 
	xmem[i1] = i0			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 208 | 
	i0 = xmem[i0]			# LN: 208 | 
	i1 = i7 - (0x15)			# LN: 208 | 
	i0 += 1			# LN: 208 | 
	xmem[i1] = i0			# LN: 208 | 
cline_208_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 188 | 
	a0 = xmem[i0]			# LN: 188 | 
	uhalfword(a1) = (0x1)			# LN: 188 | 
	a0 = a0 + a1			# LN: 188 | 
	i0 = i7 - (0x8)			# LN: 188 | 
label_end_95:			# LN: 188 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 188 | 
cline_188_1:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 223 | 
	i0 = xmem[i0]			# LN: 223 | 
	i1 = i7 - (0x15)			# LN: 223 | 
	i0 = i0 - (0x10)			# LN: 223 | 
	xmem[i1] = i0			# LN: 223 | 
cline_223_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 224 | 
	i0 = xmem[i0]			# LN: 224 | 
	i1 = i7 - (0x13)			# LN: 224 | 
	i0 = i0 - (0x10)			# LN: 224 | 
	xmem[i1] = i0			# LN: 224 | 
cline_224_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	i1 = i7 - (0x6)			# LN: 225 | 
	i0 = i0 - (0x10)			# LN: 225 | 
	xmem[i1] = i0			# LN: 225 | 
cline_225_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	i1 = i7 - (0x7)			# LN: 226 | 
	i0 = i0 - (0x10)			# LN: 226 | 
	xmem[i1] = i0			# LN: 226 | 
cline_226_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	i1 = i7 - (0x13)			# LN: 228 | 
	i1 = xmem[i1]			# LN: 228 | 
	uhalfword(a0) = (0x10)			# LN: 228 | 
	i4 = i7 - (0x3)			# LN: 228 | 
	i4 = xmem[i4]			# LN: 228 | 
	call (_multitap_echo)			# LN: 228 | 
cline_228_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 230 | 
	a0 = 0			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
	do (0x10), label_end_96			# LN: 230 | 
cline_230_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	x0 = ymem[_gainLs + 0]			# LN: 232 | 
	x1 = xmem[i0]			# LN: 232 | 
	a0 = x1 * x0			# LN: 232 | 
	i0 = i7 - (0xb)			# LN: 232 | 
	xmem[i0] = a0g; i0 += 1			# LN: 232, 232 | 
	xmem[i0] = a0h; i0 += 1			# LN: 232, 232 | 
	xmem[i0] = a0l			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 233 | 
	a0g = xmem[i0]; i0 += 1			# LN: 233, 233 | 
	a0h = xmem[i0]; i0 += 1			# LN: 233, 233 | 
	a0l = xmem[i0]			# LN: 233 | 
	i0 = i7 - (0x6)			# LN: 233 | 
	i0 = xmem[i0]			# LN: 233 | 
	a0 = a0			# LN: 233 | 
	a1 = xmem[i0]			# LN: 233 | 
	a0 = a0 + a1			# LN: 233 | 
	i0 = i7 - (0xe)			# LN: 233 | 
	xmem[i0] = a0g; i0 += 1			# LN: 233, 233 | 
	xmem[i0] = a0h; i0 += 1			# LN: 233, 233 | 
	xmem[i0] = a0l			# LN: 233 | 
cline_233_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 234 | 
	a0g = xmem[i0]; i0 += 1			# LN: 234, 234 | 
	a0h = xmem[i0]; i0 += 1			# LN: 234, 234 | 
	i1 = i7 - (0x13)			# LN: 234 | 
	i1 = xmem[i1]			# LN: 234 | 
	a0l = xmem[i0]			# LN: 234 | 
	xmem[i1] = a0			# LN: 234 | 
cline_234_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 236 | 
	i0 = xmem[i0]			# LN: 236 | 
	x0 = ymem[_gainLs + 0]			# LN: 236 | 
	x1 = xmem[i0]			# LN: 236 | 
	a0 = x1 * x0			# LN: 236 | 
	i0 = i7 - (0xb)			# LN: 236 | 
	xmem[i0] = a0g; i0 += 1			# LN: 236, 236 | 
	xmem[i0] = a0h; i0 += 1			# LN: 236, 236 | 
	xmem[i0] = a0l			# LN: 236 | 
cline_236_0:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 237 | 
	a0g = xmem[i0]; i0 += 1			# LN: 237, 237 | 
	a0h = xmem[i0]; i0 += 1			# LN: 237, 237 | 
	a0l = xmem[i0]			# LN: 237 | 
	i0 = i7 - (0x7)			# LN: 237 | 
	i0 = xmem[i0]			# LN: 237 | 
	a0 = a0			# LN: 237 | 
	a1 = xmem[i0]			# LN: 237 | 
	a0 = a0 + a1			# LN: 237 | 
	i0 = i7 - (0xe)			# LN: 237 | 
	xmem[i0] = a0g; i0 += 1			# LN: 237, 237 | 
	xmem[i0] = a0h; i0 += 1			# LN: 237, 237 | 
	xmem[i0] = a0l			# LN: 237 | 
cline_237_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 238 | 
	a0g = xmem[i0]; i0 += 1			# LN: 238, 238 | 
	a0h = xmem[i0]; i0 += 1			# LN: 238, 238 | 
	i1 = i7 - (0x15)			# LN: 238 | 
	i1 = xmem[i1]			# LN: 238 | 
	a0l = xmem[i0]			# LN: 238 | 
	xmem[i1] = a0			# LN: 238 | 
cline_238_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 244 | 
	i0 = xmem[i0]			# LN: 244 | 
	i1 = i7 - (0x6)			# LN: 244 | 
	i0 += 1			# LN: 244 | 
	xmem[i1] = i0			# LN: 244 | 
cline_244_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	i1 = i7 - (0x7)			# LN: 245 | 
	i0 += 1			# LN: 245 | 
	xmem[i1] = i0			# LN: 245 | 
cline_245_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	i1 = i7 - (0x13)			# LN: 246 | 
	i0 += 1			# LN: 246 | 
	xmem[i1] = i0			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	i1 = i7 - (0x15)			# LN: 247 | 
	i0 += 1			# LN: 247 | 
	xmem[i1] = i0			# LN: 247 | 
cline_247_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 230 | 
	a0 = xmem[i0]			# LN: 230 | 
	uhalfword(a1) = (0x1)			# LN: 230 | 
	a0 = a0 + a1			# LN: 230 | 
	i0 = i7 - (0x8)			# LN: 230 | 
label_end_96:			# LN: 230 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 230 | 
cline_230_1:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 249 | 
	i0 = xmem[i0]			# LN: 249 | 
	i1 = i7 - (0x6)			# LN: 249 | 
	i0 = i0 - (0x10)			# LN: 249 | 
	xmem[i1] = i0			# LN: 249 | 
cline_249_0:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 250 | 
	i0 = xmem[i0]			# LN: 250 | 
	i1 = i7 - (0x7)			# LN: 250 | 
	i0 = i0 - (0x10)			# LN: 250 | 
	xmem[i1] = i0			# LN: 250 | 
cline_250_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 252 | 
	a0 = 0			# LN: 252 | 
	xmem[i0] = a0h			# LN: 252 | 
	do (0x10), label_end_97			# LN: 252 | 
cline_252_0:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 254 | 
	i0 = xmem[i0]			# LN: 254 | 
	a0 = 0			# LN: 254 | 
	xmem[i0] = a0h			# LN: 254 | 
cline_254_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	a0 = 0			# LN: 255 | 
	xmem[i0] = a0h			# LN: 255 | 
cline_255_0:			/* LN: 257 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 257 | 
	i0 = xmem[i0]			# LN: 257 | 
	i1 = i7 - (0x6)			# LN: 257 | 
	i0 += 1			# LN: 257 | 
	xmem[i1] = i0			# LN: 257 | 
cline_257_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 258 | 
	i0 = xmem[i0]			# LN: 258 | 
	i1 = i7 - (0x7)			# LN: 258 | 
	i0 += 1			# LN: 258 | 
	xmem[i1] = i0			# LN: 258 | 
cline_258_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 252 | 
	a0 = xmem[i0]			# LN: 252 | 
	uhalfword(a1) = (0x1)			# LN: 252 | 
	a0 = a0 + a1			# LN: 252 | 
	i0 = i7 - (0x8)			# LN: 252 | 
label_end_97:			# LN: 252 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 252 | 
for_end_5:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	jmp (endif_3)			# LN: 252 | 
cline_252_1:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	jmp (endif_0)			# LN: 173 | 
cline_173_1:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 265 | 
	uhalfword(a1) = (0x3)			# LN: 265 | 
	a0 - a1			# LN: 265 | 
	if (a != 0) jmp (else_4)			# LN: 265 | 
cline_265_0:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 269 | 
	a0 = xmem[i0]			# LN: 269 | 
	AnyReg(i0, a0h)			# LN: 269 | 
	i1 = i7 - (0x13)			# LN: 269 | 
	xmem[i1] = i0			# LN: 269 | 
cline_269_0:			/* LN: 270 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 270 | 
	i0 = xmem[i0]			# LN: 270 | 
	i1 = i7 - (0x2)			# LN: 270 | 
	i0 = i0 + (0x10)			# LN: 270 | 
	xmem[i1] = i0			# LN: 270 | 
cline_270_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 271 | 
	a0 = xmem[i0]			# LN: 271 | 
	AnyReg(i0, a0h)			# LN: 271 | 
	i1 = i7 - (0x6)			# LN: 271 | 
	xmem[i1] = i0			# LN: 271 | 
cline_271_0:			/* LN: 272 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 272 | 
	i0 = xmem[i0]			# LN: 272 | 
	i1 = i7 - (0x2)			# LN: 272 | 
	i0 = i0 + (0x10)			# LN: 272 | 
	xmem[i1] = i0			# LN: 272 | 
cline_272_0:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 273 | 
	a0 = xmem[i0]			# LN: 273 | 
	AnyReg(i0, a0h)			# LN: 273 | 
	i1 = i7 - (0x14)			# LN: 273 | 
	xmem[i1] = i0			# LN: 273 | 
cline_273_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 274 | 
	i0 = xmem[i0]			# LN: 274 | 
	i1 = i7 - (0x2)			# LN: 274 | 
	i0 = i0 + (0x10)			# LN: 274 | 
	xmem[i1] = i0			# LN: 274 | 
cline_274_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 275 | 
	a0 = xmem[i0]			# LN: 275 | 
	AnyReg(i0, a0h)			# LN: 275 | 
	i1 = i7 - (0x7)			# LN: 275 | 
	xmem[i1] = i0			# LN: 275 | 
cline_275_0:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 276 | 
	i0 = xmem[i0]			# LN: 276 | 
	i1 = i7 - (0x2)			# LN: 276 | 
	i0 = i0 + (0x10)			# LN: 276 | 
	xmem[i1] = i0			# LN: 276 | 
cline_276_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 277 | 
	a0 = xmem[i0]			# LN: 277 | 
	AnyReg(i0, a0h)			# LN: 277 | 
	i1 = i7 - (0x15)			# LN: 277 | 
	xmem[i1] = i0			# LN: 277 | 
cline_277_0:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 278 | 
	i0 = xmem[i0]			# LN: 278 | 
	i1 = i7 - (0x2)			# LN: 278 | 
	i0 = i0 + (0x10)			# LN: 278 | 
	xmem[i1] = i0			# LN: 278 | 
cline_278_0:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 279 | 
	a0 = xmem[i0]			# LN: 279 | 
	AnyReg(i0, a0h)			# LN: 279 | 
	i1 = i7 - (0x12)			# LN: 279 | 
	xmem[i1] = i0			# LN: 279 | 
cline_279_0:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 283 | 
	a0 = 0			# LN: 283 | 
	xmem[i0] = a0h			# LN: 283 | 
	do (0x10), label_end_98			# LN: 283 | 
cline_283_0:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 285 | 
	i0 = xmem[i0]			# LN: 285 | 
	x0 = ymem[_inputGain + 0]			# LN: 285 | 
	x1 = xmem[i0]			# LN: 285 | 
	a0 = x0 * x1			# LN: 285 | 
	i0 = i7 - (0x18)			# LN: 285 | 
	xmem[i0] = a0g; i0 += 1			# LN: 285, 285 | 
	xmem[i0] = a0h; i0 += 1			# LN: 285, 285 | 
	xmem[i0] = a0l			# LN: 285 | 
cline_285_0:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 286 | 
	i0 = xmem[i0]			# LN: 286 | 
	x0 = ymem[_inputGain + 0]			# LN: 286 | 
	x1 = xmem[i0]			# LN: 286 | 
	a0 = x0 * x1			# LN: 286 | 
	i0 = i7 - (0x1b)			# LN: 286 | 
	xmem[i0] = a0g; i0 += 1			# LN: 286, 286 | 
	xmem[i0] = a0h; i0 += 1			# LN: 286, 286 | 
	xmem[i0] = a0l			# LN: 286 | 
cline_286_0:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x18)			# LN: 287 | 
	a0g = xmem[i0]; i0 += 1			# LN: 287, 287 | 
	a0h = xmem[i0]; i0 += 1			# LN: 287, 287 | 
	a0l = xmem[i0]			# LN: 287 | 
	a0 = a0			# LN: 287 | 
	i0 = i7 - (0x1b)			# LN: 287 | 
	a1g = xmem[i0]; i0 += 1			# LN: 287, 287 | 
	a1h = xmem[i0]; i0 += 1			# LN: 287, 287 | 
	a1l = xmem[i0]			# LN: 287 | 
	a1 = a1			# LN: 287 | 
	a0 = a0 + a1			# LN: 287 | 
	i0 = i7 - (0x1e)			# LN: 287 | 
	xmem[i0] = a0g; i0 += 1			# LN: 287, 287 | 
	xmem[i0] = a0h; i0 += 1			# LN: 287, 287 | 
	xmem[i0] = a0l			# LN: 287 | 
cline_287_0:			/* LN: 288 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1e)			# LN: 288 | 
	a0g = xmem[i0]; i0 += 1			# LN: 288, 288 | 
	a0h = xmem[i0]; i0 += 1			# LN: 288, 288 | 
	a0l = xmem[i0]			# LN: 288 | 
	x0 = a0			# LN: 288 | 
	x1 = ymem[_headroomGain + 0]			# LN: 288 | 
	a0 = x0 * x1			# LN: 288 | 
	i0 = i7 - (0x18)			# LN: 288 | 
	xmem[i0] = a0g; i0 += 1			# LN: 288, 288 | 
	xmem[i0] = a0h; i0 += 1			# LN: 288, 288 | 
	xmem[i0] = a0l			# LN: 288 | 
cline_288_0:			/* LN: 289 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x18)			# LN: 289 | 
	a0g = xmem[i0]; i0 += 1			# LN: 289, 289 | 
	a0h = xmem[i0]; i0 += 1			# LN: 289, 289 | 
	i1 = i7 - (0x12)			# LN: 289 | 
	i1 = xmem[i1]			# LN: 289 | 
	a0l = xmem[i0]			# LN: 289 | 
	xmem[i1] = a0			# LN: 289 | 
cline_289_0:			/* LN: 290 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x18)			# LN: 290 | 
	a0g = xmem[i0]; i0 += 1			# LN: 290, 290 | 
	a0h = xmem[i0]; i0 += 1			# LN: 290, 290 | 
	a0l = xmem[i0]			# LN: 290 | 
	x0 = a0			# LN: 290 | 
	x1 = ymem[_gainL + 0]			# LN: 290 | 
	a0 = x0 * x1			# LN: 290 | 
	i0 = i7 - (0x1b)			# LN: 290 | 
	xmem[i0] = a0g; i0 += 1			# LN: 290, 290 | 
	xmem[i0] = a0h; i0 += 1			# LN: 290, 290 | 
	xmem[i0] = a0l			# LN: 290 | 
cline_290_0:			/* LN: 291 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1b)			# LN: 291 | 
	a0g = xmem[i0]; i0 += 1			# LN: 291, 291 | 
	a0h = xmem[i0]; i0 += 1			# LN: 291, 291 | 
	i1 = i7 - (0x6)			# LN: 291 | 
	i1 = xmem[i1]			# LN: 291 | 
	a0l = xmem[i0]			# LN: 291 | 
	xmem[i1] = a0			# LN: 291 | 
cline_291_0:			/* LN: 292 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1b)			# LN: 292 | 
	a0g = xmem[i0]; i0 += 1			# LN: 292, 292 | 
	a0h = xmem[i0]; i0 += 1			# LN: 292, 292 | 
	i1 = i7 - (0x7)			# LN: 292 | 
	i1 = xmem[i1]			# LN: 292 | 
	a0l = xmem[i0]			# LN: 292 | 
	xmem[i1] = a0			# LN: 292 | 
cline_292_0:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 296 | 
	i0 = xmem[i0]			# LN: 296 | 
	x0 = ymem[_inputGain + 0]			# LN: 296 | 
	x1 = xmem[i0]			# LN: 296 | 
	a0 = x0 * x1			# LN: 296 | 
	i0 = i7 - (0x18)			# LN: 296 | 
	xmem[i0] = a0g; i0 += 1			# LN: 296, 296 | 
	xmem[i0] = a0h; i0 += 1			# LN: 296, 296 | 
	xmem[i0] = a0l			# LN: 296 | 
cline_296_0:			/* LN: 297 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 297 | 
	i0 = xmem[i0]			# LN: 297 | 
	x0 = ymem[_inputGain + 0]			# LN: 297 | 
	x1 = xmem[i0]			# LN: 297 | 
	a0 = x0 * x1			# LN: 297 | 
	i0 = i7 - (0x1b)			# LN: 297 | 
	xmem[i0] = a0g; i0 += 1			# LN: 297, 297 | 
	xmem[i0] = a0h; i0 += 1			# LN: 297, 297 | 
	xmem[i0] = a0l			# LN: 297 | 
cline_297_0:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x18)			# LN: 298 | 
	a0g = xmem[i0]; i0 += 1			# LN: 298, 298 | 
	a0h = xmem[i0]; i0 += 1			# LN: 298, 298 | 
	i1 = i7 - (0x13)			# LN: 298 | 
	i1 = xmem[i1]			# LN: 298 | 
	a0l = xmem[i0]			# LN: 298 | 
	xmem[i1] = a0			# LN: 298 | 
cline_298_0:			/* LN: 299 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1b)			# LN: 299 | 
	a0g = xmem[i0]; i0 += 1			# LN: 299, 299 | 
	a0h = xmem[i0]; i0 += 1			# LN: 299, 299 | 
	i1 = i7 - (0x15)			# LN: 299 | 
	i1 = xmem[i1]			# LN: 299 | 
	a0l = xmem[i0]			# LN: 299 | 
	xmem[i1] = a0			# LN: 299 | 
cline_299_0:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 301 | 
	i0 = xmem[i0]			# LN: 301 | 
	i1 = i7 - (0x6)			# LN: 301 | 
	i0 += 1			# LN: 301 | 
	xmem[i1] = i0			# LN: 301 | 
cline_301_0:			/* LN: 302 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 302 | 
	i0 = xmem[i0]			# LN: 302 | 
	i1 = i7 - (0x7)			# LN: 302 | 
	i0 += 1			# LN: 302 | 
	xmem[i1] = i0			# LN: 302 | 
cline_302_0:			/* LN: 303 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 303 | 
	i0 = xmem[i0]			# LN: 303 | 
	i1 = i7 - (0x4)			# LN: 303 | 
	i0 += 1			# LN: 303 | 
	xmem[i1] = i0			# LN: 303 | 
cline_303_0:			/* LN: 304 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 304 | 
	i0 = xmem[i0]			# LN: 304 | 
	i1 = i7 - (0x5)			# LN: 304 | 
	i0 += 1			# LN: 304 | 
	xmem[i1] = i0			# LN: 304 | 
cline_304_0:			/* LN: 305 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 305 | 
	i0 = xmem[i0]			# LN: 305 | 
	i1 = i7 - (0x13)			# LN: 305 | 
	i0 += 1			# LN: 305 | 
	xmem[i1] = i0			# LN: 305 | 
cline_305_0:			/* LN: 306 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 306 | 
	i0 = xmem[i0]			# LN: 306 | 
	i1 = i7 - (0x15)			# LN: 306 | 
	i0 += 1			# LN: 306 | 
	xmem[i1] = i0			# LN: 306 | 
cline_306_0:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x12)			# LN: 307 | 
	i0 = xmem[i0]			# LN: 307 | 
	i1 = i7 - (0x12)			# LN: 307 | 
	i0 += 1			# LN: 307 | 
	xmem[i1] = i0			# LN: 307 | 
cline_307_0:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 310 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 283 | 
	a0 = xmem[i0]			# LN: 283 | 
	uhalfword(a1) = (0x1)			# LN: 283 | 
	a0 = a0 + a1			# LN: 283 | 
	i0 = i7 - (0x8)			# LN: 283 | 
label_end_98:			# LN: 283 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 283 | 
cline_283_1:			/* LN: 312 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 312 | 
	i0 = xmem[i0]			# LN: 312 | 
	i1 = i7 - (0x15)			# LN: 312 | 
	i0 = i0 - (0x10)			# LN: 312 | 
	xmem[i1] = i0			# LN: 312 | 
cline_312_0:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 313 | 
	i0 = xmem[i0]			# LN: 313 | 
	i1 = i7 - (0x13)			# LN: 313 | 
	i0 = i0 - (0x10)			# LN: 313 | 
	xmem[i1] = i0			# LN: 313 | 
cline_313_0:			/* LN: 314 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 314 | 
	i0 = xmem[i0]			# LN: 314 | 
	i1 = i7 - (0x6)			# LN: 314 | 
	i0 = i0 - (0x10)			# LN: 314 | 
	xmem[i1] = i0			# LN: 314 | 
cline_314_0:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 315 | 
	i0 = xmem[i0]			# LN: 315 | 
	i1 = i7 - (0x7)			# LN: 315 | 
	i0 = i0 - (0x10)			# LN: 315 | 
	xmem[i1] = i0			# LN: 315 | 
cline_315_0:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 317 | 
	i0 = xmem[i0]			# LN: 317 | 
	i1 = i7 - (0x13)			# LN: 317 | 
	i1 = xmem[i1]			# LN: 317 | 
	uhalfword(a0) = (0x10)			# LN: 317 | 
	i4 = i7 - (0x3)			# LN: 317 | 
	i4 = xmem[i4]			# LN: 317 | 
	call (_multitap_echo)			# LN: 317 | 
cline_317_0:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 319 | 
	a0 = 0			# LN: 319 | 
	xmem[i0] = a0h			# LN: 319 | 
	do (0x10), label_end_99			# LN: 319 | 
cline_319_0:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
label_begin_99:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 321 | 
	i0 = xmem[i0]			# LN: 321 | 
	x0 = ymem[_gainLs + 0]			# LN: 321 | 
	x1 = xmem[i0]			# LN: 321 | 
	a0 = x1 * x0			# LN: 321 | 
	i0 = i7 - (0x21)			# LN: 321 | 
	xmem[i0] = a0g; i0 += 1			# LN: 321, 321 | 
	xmem[i0] = a0h; i0 += 1			# LN: 321, 321 | 
	xmem[i0] = a0l			# LN: 321 | 
cline_321_0:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x21)			# LN: 322 | 
	a0g = xmem[i0]; i0 += 1			# LN: 322, 322 | 
	a0h = xmem[i0]; i0 += 1			# LN: 322, 322 | 
	a0l = xmem[i0]			# LN: 322 | 
	i0 = i7 - (0x6)			# LN: 322 | 
	i0 = xmem[i0]			# LN: 322 | 
	a0 = a0			# LN: 322 | 
	a1 = xmem[i0]			# LN: 322 | 
	a0 = a0 + a1			# LN: 322 | 
	i0 = i7 - (0x24)			# LN: 322 | 
	xmem[i0] = a0g; i0 += 1			# LN: 322, 322 | 
	xmem[i0] = a0h; i0 += 1			# LN: 322, 322 | 
	xmem[i0] = a0l			# LN: 322 | 
cline_322_0:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 323 | 
	a0g = xmem[i0]; i0 += 1			# LN: 323, 323 | 
	a0h = xmem[i0]; i0 += 1			# LN: 323, 323 | 
	i1 = i7 - (0x13)			# LN: 323 | 
	i1 = xmem[i1]			# LN: 323 | 
	a0l = xmem[i0]			# LN: 323 | 
	xmem[i1] = a0			# LN: 323 | 
cline_323_0:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 325 | 
	i0 = xmem[i0]			# LN: 325 | 
	x0 = ymem[_gainLs + 0]			# LN: 325 | 
	x1 = xmem[i0]			# LN: 325 | 
	a0 = x1 * x0			# LN: 325 | 
	i0 = i7 - (0x21)			# LN: 325 | 
	xmem[i0] = a0g; i0 += 1			# LN: 325, 325 | 
	xmem[i0] = a0h; i0 += 1			# LN: 325, 325 | 
	xmem[i0] = a0l			# LN: 325 | 
cline_325_0:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x21)			# LN: 326 | 
	a0g = xmem[i0]; i0 += 1			# LN: 326, 326 | 
	a0h = xmem[i0]; i0 += 1			# LN: 326, 326 | 
	a0l = xmem[i0]			# LN: 326 | 
	i0 = i7 - (0x7)			# LN: 326 | 
	i0 = xmem[i0]			# LN: 326 | 
	a0 = a0			# LN: 326 | 
	a1 = xmem[i0]			# LN: 326 | 
	a0 = a0 + a1			# LN: 326 | 
	i0 = i7 - (0x24)			# LN: 326 | 
	xmem[i0] = a0g; i0 += 1			# LN: 326, 326 | 
	xmem[i0] = a0h; i0 += 1			# LN: 326, 326 | 
	xmem[i0] = a0l			# LN: 326 | 
cline_326_0:			/* LN: 327 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x24)			# LN: 327 | 
	a0g = xmem[i0]; i0 += 1			# LN: 327, 327 | 
	a0h = xmem[i0]; i0 += 1			# LN: 327, 327 | 
	i1 = i7 - (0x15)			# LN: 327 | 
	i1 = xmem[i1]			# LN: 327 | 
	a0l = xmem[i0]			# LN: 327 | 
	xmem[i1] = a0			# LN: 327 | 
cline_327_0:			/* LN: 329 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 329 | 
	i0 = xmem[i0]			# LN: 329 | 
	i1 = i7 - (0x6)			# LN: 329 | 
	i0 += 1			# LN: 329 | 
	xmem[i1] = i0			# LN: 329 | 
cline_329_0:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 330 | 
	i0 = xmem[i0]			# LN: 330 | 
	i1 = i7 - (0x7)			# LN: 330 | 
	i0 += 1			# LN: 330 | 
	xmem[i1] = i0			# LN: 330 | 
cline_330_0:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 331 | 
	i0 = xmem[i0]			# LN: 331 | 
	i1 = i7 - (0x13)			# LN: 331 | 
	i0 += 1			# LN: 331 | 
	xmem[i1] = i0			# LN: 331 | 
cline_331_0:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 332 | 
	i0 = xmem[i0]			# LN: 332 | 
	i1 = i7 - (0x15)			# LN: 332 | 
	i0 += 1			# LN: 332 | 
	xmem[i1] = i0			# LN: 332 | 
cline_332_0:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 319 | 
	a0 = xmem[i0]			# LN: 319 | 
	uhalfword(a1) = (0x1)			# LN: 319 | 
	a0 = a0 + a1			# LN: 319 | 
	i0 = i7 - (0x8)			# LN: 319 | 
label_end_99:			# LN: 319 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 319 | 
cline_319_1:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 334 | 
	i0 = xmem[i0]			# LN: 334 | 
	i1 = i7 - (0x6)			# LN: 334 | 
	i0 = i0 - (0x10)			# LN: 334 | 
	xmem[i1] = i0			# LN: 334 | 
cline_334_0:			/* LN: 335 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 335 | 
	i0 = xmem[i0]			# LN: 335 | 
	i1 = i7 - (0x7)			# LN: 335 | 
	i0 = i0 - (0x10)			# LN: 335 | 
	xmem[i1] = i0			# LN: 335 | 
cline_335_0:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 337 | 
	a0 = 0			# LN: 337 | 
	xmem[i0] = a0h			# LN: 337 | 
	do (0x10), label_end_100			# LN: 337 | 
cline_337_0:			/* LN: 339 | CYCLE: 0 | RULES: () */ 
label_begin_100:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 339 | 
	i0 = xmem[i0]			# LN: 339 | 
	a0 = 0			# LN: 339 | 
	xmem[i0] = a0h			# LN: 339 | 
cline_339_0:			/* LN: 340 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 340 | 
	i0 = xmem[i0]			# LN: 340 | 
	a0 = 0			# LN: 340 | 
	xmem[i0] = a0h			# LN: 340 | 
cline_340_0:			/* LN: 342 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 342 | 
	i0 = xmem[i0]			# LN: 342 | 
	i1 = i7 - (0x6)			# LN: 342 | 
	i0 += 1			# LN: 342 | 
	xmem[i1] = i0			# LN: 342 | 
cline_342_0:			/* LN: 343 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 343 | 
	i0 = xmem[i0]			# LN: 343 | 
	i1 = i7 - (0x7)			# LN: 343 | 
	i0 += 1			# LN: 343 | 
	xmem[i1] = i0			# LN: 343 | 
cline_343_0:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 344 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 337 | 
	a0 = xmem[i0]			# LN: 337 | 
	uhalfword(a1) = (0x1)			# LN: 337 | 
	a0 = a0 + a1			# LN: 337 | 
	i0 = i7 - (0x8)			# LN: 337 | 
label_end_100:			# LN: 337 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 337 | 
for_end_8:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 337 | 
cline_337_1:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 351 | 
	uhalfword(a1) = (0x4)			# LN: 351 | 
	a0 - a1			# LN: 351 | 
	if (a != 0) jmp (else_5)			# LN: 351 | 
cline_351_0:			/* LN: 353 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 353 | 
	a0 = xmem[i0]			# LN: 353 | 
	AnyReg(i0, a0h)			# LN: 353 | 
	i1 = i7 - (0x13)			# LN: 353 | 
	xmem[i1] = i0			# LN: 353 | 
cline_353_0:			/* LN: 354 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 354 | 
	i0 = xmem[i0]			# LN: 354 | 
	i1 = i7 - (0x2)			# LN: 354 | 
	i0 = i0 + (0x10)			# LN: 354 | 
	xmem[i1] = i0			# LN: 354 | 
cline_354_0:			/* LN: 355 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 355 | 
	a0 = xmem[i0]			# LN: 355 | 
	AnyReg(i0, a0h)			# LN: 355 | 
	i1 = i7 - (0x6)			# LN: 355 | 
	xmem[i1] = i0			# LN: 355 | 
cline_355_0:			/* LN: 356 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 356 | 
	i0 = xmem[i0]			# LN: 356 | 
	i1 = i7 - (0x2)			# LN: 356 | 
	i0 = i0 + (0x10)			# LN: 356 | 
	xmem[i1] = i0			# LN: 356 | 
cline_356_0:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 357 | 
	a0 = xmem[i0]			# LN: 357 | 
	AnyReg(i0, a0h)			# LN: 357 | 
	i1 = i7 - (0x14)			# LN: 357 | 
	xmem[i1] = i0			# LN: 357 | 
cline_357_0:			/* LN: 358 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 358 | 
	i0 = xmem[i0]			# LN: 358 | 
	i1 = i7 - (0x2)			# LN: 358 | 
	i0 = i0 + (0x10)			# LN: 358 | 
	xmem[i1] = i0			# LN: 358 | 
cline_358_0:			/* LN: 359 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 359 | 
	a0 = xmem[i0]			# LN: 359 | 
	AnyReg(i0, a0h)			# LN: 359 | 
	i1 = i7 - (0x7)			# LN: 359 | 
	xmem[i1] = i0			# LN: 359 | 
cline_359_0:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 360 | 
	i0 = xmem[i0]			# LN: 360 | 
	i1 = i7 - (0x2)			# LN: 360 | 
	i0 = i0 + (0x10)			# LN: 360 | 
	xmem[i1] = i0			# LN: 360 | 
cline_360_0:			/* LN: 361 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 361 | 
	a0 = xmem[i0]			# LN: 361 | 
	AnyReg(i0, a0h)			# LN: 361 | 
	i1 = i7 - (0x15)			# LN: 361 | 
	xmem[i1] = i0			# LN: 361 | 
cline_361_0:			/* LN: 365 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 365 | 
	a0 = 0			# LN: 365 | 
	xmem[i0] = a0h			# LN: 365 | 
	do (0x10), label_end_101			# LN: 365 | 
cline_365_0:			/* LN: 368 | CYCLE: 0 | RULES: () */ 
label_begin_101:			/* LN: 365 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 368 | 
	i0 = xmem[i0]			# LN: 368 | 
	x0 = ymem[_inputGain + 0]			# LN: 368 | 
	x1 = xmem[i0]			# LN: 368 | 
	a0 = x0 * x1			# LN: 368 | 
	i0 = i7 - (0x27)			# LN: 368 | 
	xmem[i0] = a0g; i0 += 1			# LN: 368, 368 | 
	xmem[i0] = a0h; i0 += 1			# LN: 368, 368 | 
	xmem[i0] = a0l			# LN: 368 | 
cline_368_0:			/* LN: 369 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 369 | 
	i0 = xmem[i0]			# LN: 369 | 
	x0 = ymem[_inputGain + 0]			# LN: 369 | 
	x1 = xmem[i0]			# LN: 369 | 
	a0 = x0 * x1			# LN: 369 | 
	i0 = i7 - (0x2a)			# LN: 369 | 
	xmem[i0] = a0g; i0 += 1			# LN: 369, 369 | 
	xmem[i0] = a0h; i0 += 1			# LN: 369, 369 | 
	xmem[i0] = a0l			# LN: 369 | 
cline_369_0:			/* LN: 370 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x27)			# LN: 370 | 
	a0g = xmem[i0]; i0 += 1			# LN: 370, 370 | 
	a0h = xmem[i0]; i0 += 1			# LN: 370, 370 | 
	a0l = xmem[i0]			# LN: 370 | 
	a0 = a0			# LN: 370 | 
	i0 = i7 - (0x2a)			# LN: 370 | 
	a1g = xmem[i0]; i0 += 1			# LN: 370, 370 | 
	a1h = xmem[i0]; i0 += 1			# LN: 370, 370 | 
	a1l = xmem[i0]			# LN: 370 | 
	a1 = a1			# LN: 370 | 
	a0 = a0 + a1			# LN: 370 | 
	i0 = i7 - (0x2d)			# LN: 370 | 
	xmem[i0] = a0g; i0 += 1			# LN: 370, 370 | 
	xmem[i0] = a0h; i0 += 1			# LN: 370, 370 | 
	xmem[i0] = a0l			# LN: 370 | 
cline_370_0:			/* LN: 371 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2d)			# LN: 371 | 
	a0g = xmem[i0]; i0 += 1			# LN: 371, 371 | 
	a0h = xmem[i0]; i0 += 1			# LN: 371, 371 | 
	a0l = xmem[i0]			# LN: 371 | 
	x0 = a0			# LN: 371 | 
	x1 = ymem[_headroomGain + 0]			# LN: 371 | 
	a0 = x0 * x1			# LN: 371 | 
	i0 = i7 - (0x27)			# LN: 371 | 
	xmem[i0] = a0g; i0 += 1			# LN: 371, 371 | 
	xmem[i0] = a0h; i0 += 1			# LN: 371, 371 | 
	xmem[i0] = a0l			# LN: 371 | 
cline_371_0:			/* LN: 372 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x27)			# LN: 372 | 
	a0g = xmem[i0]; i0 += 1			# LN: 372, 372 | 
	a0h = xmem[i0]; i0 += 1			# LN: 372, 372 | 
	i1 = i7 - (0x14)			# LN: 372 | 
	i1 = xmem[i1]			# LN: 372 | 
	a0l = xmem[i0]			# LN: 372 | 
	xmem[i1] = a0			# LN: 372 | 
cline_372_0:			/* LN: 373 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x27)			# LN: 373 | 
	a0g = xmem[i0]; i0 += 1			# LN: 373, 373 | 
	a0h = xmem[i0]; i0 += 1			# LN: 373, 373 | 
	a0l = xmem[i0]			# LN: 373 | 
	x0 = a0			# LN: 373 | 
	x1 = ymem[_gainL + 0]			# LN: 373 | 
	a0 = x0 * x1			# LN: 373 | 
	i0 = i7 - (0x2a)			# LN: 373 | 
	xmem[i0] = a0g; i0 += 1			# LN: 373, 373 | 
	xmem[i0] = a0h; i0 += 1			# LN: 373, 373 | 
	xmem[i0] = a0l			# LN: 373 | 
cline_373_0:			/* LN: 374 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2a)			# LN: 374 | 
	a0g = xmem[i0]; i0 += 1			# LN: 374, 374 | 
	a0h = xmem[i0]; i0 += 1			# LN: 374, 374 | 
	i1 = i7 - (0x6)			# LN: 374 | 
	i1 = xmem[i1]			# LN: 374 | 
	a0l = xmem[i0]			# LN: 374 | 
	xmem[i1] = a0			# LN: 374 | 
cline_374_0:			/* LN: 375 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2a)			# LN: 375 | 
	a0g = xmem[i0]; i0 += 1			# LN: 375, 375 | 
	a0h = xmem[i0]; i0 += 1			# LN: 375, 375 | 
	i1 = i7 - (0x7)			# LN: 375 | 
	i1 = xmem[i1]			# LN: 375 | 
	a0l = xmem[i0]			# LN: 375 | 
	xmem[i1] = a0			# LN: 375 | 
cline_375_0:			/* LN: 378 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 378 | 
	i0 = xmem[i0]			# LN: 378 | 
	x0 = ymem[_inputGain + 0]			# LN: 378 | 
	x1 = xmem[i0]			# LN: 378 | 
	a0 = x0 * x1			# LN: 378 | 
	i0 = i7 - (0x27)			# LN: 378 | 
	xmem[i0] = a0g; i0 += 1			# LN: 378, 378 | 
	xmem[i0] = a0h; i0 += 1			# LN: 378, 378 | 
	xmem[i0] = a0l			# LN: 378 | 
cline_378_0:			/* LN: 379 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 379 | 
	i0 = xmem[i0]			# LN: 379 | 
	x0 = ymem[_inputGain + 0]			# LN: 379 | 
	x1 = xmem[i0]			# LN: 379 | 
	a0 = x0 * x1			# LN: 379 | 
	i0 = i7 - (0x2a)			# LN: 379 | 
	xmem[i0] = a0g; i0 += 1			# LN: 379, 379 | 
	xmem[i0] = a0h; i0 += 1			# LN: 379, 379 | 
	xmem[i0] = a0l			# LN: 379 | 
cline_379_0:			/* LN: 380 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x27)			# LN: 380 | 
	a0g = xmem[i0]; i0 += 1			# LN: 380, 380 | 
	a0h = xmem[i0]; i0 += 1			# LN: 380, 380 | 
	i1 = i7 - (0x13)			# LN: 380 | 
	i1 = xmem[i1]			# LN: 380 | 
	a0l = xmem[i0]			# LN: 380 | 
	xmem[i1] = a0			# LN: 380 | 
cline_380_0:			/* LN: 381 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2a)			# LN: 381 | 
	a0g = xmem[i0]; i0 += 1			# LN: 381, 381 | 
	a0h = xmem[i0]; i0 += 1			# LN: 381, 381 | 
	i1 = i7 - (0x15)			# LN: 381 | 
	i1 = xmem[i1]			# LN: 381 | 
	a0l = xmem[i0]			# LN: 381 | 
	xmem[i1] = a0			# LN: 381 | 
cline_381_0:			/* LN: 383 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x14)			# LN: 383 | 
	i0 = xmem[i0]			# LN: 383 | 
	i1 = i7 - (0x14)			# LN: 383 | 
	i0 += 1			# LN: 383 | 
	xmem[i1] = i0			# LN: 383 | 
cline_383_0:			/* LN: 384 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 384 | 
	i0 = xmem[i0]			# LN: 384 | 
	i1 = i7 - (0x6)			# LN: 384 | 
	i0 += 1			# LN: 384 | 
	xmem[i1] = i0			# LN: 384 | 
cline_384_0:			/* LN: 385 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 385 | 
	i0 = xmem[i0]			# LN: 385 | 
	i1 = i7 - (0x7)			# LN: 385 | 
	i0 += 1			# LN: 385 | 
	xmem[i1] = i0			# LN: 385 | 
cline_385_0:			/* LN: 386 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 386 | 
	i0 = xmem[i0]			# LN: 386 | 
	i1 = i7 - (0x4)			# LN: 386 | 
	i0 += 1			# LN: 386 | 
	xmem[i1] = i0			# LN: 386 | 
cline_386_0:			/* LN: 387 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 387 | 
	i0 = xmem[i0]			# LN: 387 | 
	i1 = i7 - (0x5)			# LN: 387 | 
	i0 += 1			# LN: 387 | 
	xmem[i1] = i0			# LN: 387 | 
cline_387_0:			/* LN: 388 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 388 | 
	i0 = xmem[i0]			# LN: 388 | 
	i1 = i7 - (0x13)			# LN: 388 | 
	i0 += 1			# LN: 388 | 
	xmem[i1] = i0			# LN: 388 | 
cline_388_0:			/* LN: 389 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 389 | 
	i0 = xmem[i0]			# LN: 389 | 
	i1 = i7 - (0x15)			# LN: 389 | 
	i0 += 1			# LN: 389 | 
	xmem[i1] = i0			# LN: 389 | 
cline_389_0:			/* LN: 365 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 392 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 365 | 
	a0 = xmem[i0]			# LN: 365 | 
	uhalfword(a1) = (0x1)			# LN: 365 | 
	a0 = a0 + a1			# LN: 365 | 
	i0 = i7 - (0x8)			# LN: 365 | 
label_end_101:			# LN: 365 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 365 | 
cline_365_1:			/* LN: 393 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 365 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 393 | 
	i0 = xmem[i0]			# LN: 393 | 
	i1 = i7 - (0x15)			# LN: 393 | 
	i0 = i0 - (0x10)			# LN: 393 | 
	xmem[i1] = i0			# LN: 393 | 
cline_393_0:			/* LN: 394 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 394 | 
	i0 = xmem[i0]			# LN: 394 | 
	i1 = i7 - (0x13)			# LN: 394 | 
	i0 = i0 - (0x10)			# LN: 394 | 
	xmem[i1] = i0			# LN: 394 | 
cline_394_0:			/* LN: 395 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 395 | 
	i0 = xmem[i0]			# LN: 395 | 
	i1 = i7 - (0x6)			# LN: 395 | 
	i0 = i0 - (0x10)			# LN: 395 | 
	xmem[i1] = i0			# LN: 395 | 
cline_395_0:			/* LN: 396 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 396 | 
	i0 = xmem[i0]			# LN: 396 | 
	i1 = i7 - (0x7)			# LN: 396 | 
	i0 = i0 - (0x10)			# LN: 396 | 
	xmem[i1] = i0			# LN: 396 | 
cline_396_0:			/* LN: 398 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 398 | 
	i0 = xmem[i0]			# LN: 398 | 
	i1 = i7 - (0x13)			# LN: 398 | 
	i1 = xmem[i1]			# LN: 398 | 
	uhalfword(a0) = (0x10)			# LN: 398 | 
	i4 = i7 - (0x3)			# LN: 398 | 
	i4 = xmem[i4]			# LN: 398 | 
	call (_multitap_echo)			# LN: 398 | 
cline_398_0:			/* LN: 400 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 400 | 
	a0 = 0			# LN: 400 | 
	xmem[i0] = a0h			# LN: 400 | 
	do (0x10), label_end_102			# LN: 400 | 
cline_400_0:			/* LN: 402 | CYCLE: 0 | RULES: () */ 
label_begin_102:			/* LN: 400 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 402 | 
	i0 = xmem[i0]			# LN: 402 | 
	x0 = ymem[_gainLs + 0]			# LN: 402 | 
	x1 = xmem[i0]			# LN: 402 | 
	a0 = x1 * x0			# LN: 402 | 
	i0 = i7 - (0x30)			# LN: 402 | 
	xmem[i0] = a0g; i0 += 1			# LN: 402, 402 | 
	xmem[i0] = a0h; i0 += 1			# LN: 402, 402 | 
	xmem[i0] = a0l			# LN: 402 | 
cline_402_0:			/* LN: 403 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x30)			# LN: 403 | 
	a0g = xmem[i0]; i0 += 1			# LN: 403, 403 | 
	a0h = xmem[i0]; i0 += 1			# LN: 403, 403 | 
	a0l = xmem[i0]			# LN: 403 | 
	i0 = i7 - (0x6)			# LN: 403 | 
	i0 = xmem[i0]			# LN: 403 | 
	a0 = a0			# LN: 403 | 
	a1 = xmem[i0]			# LN: 403 | 
	a0 = a0 + a1			# LN: 403 | 
	i0 = i7 - (0x33)			# LN: 403 | 
	xmem[i0] = a0g; i0 += 1			# LN: 403, 403 | 
	xmem[i0] = a0h; i0 += 1			# LN: 403, 403 | 
	xmem[i0] = a0l			# LN: 403 | 
cline_403_0:			/* LN: 404 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x33)			# LN: 404 | 
	a0g = xmem[i0]; i0 += 1			# LN: 404, 404 | 
	a0h = xmem[i0]; i0 += 1			# LN: 404, 404 | 
	i1 = i7 - (0x13)			# LN: 404 | 
	i1 = xmem[i1]			# LN: 404 | 
	a0l = xmem[i0]			# LN: 404 | 
	xmem[i1] = a0			# LN: 404 | 
cline_404_0:			/* LN: 406 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 406 | 
	i0 = xmem[i0]			# LN: 406 | 
	x0 = ymem[_gainLs + 0]			# LN: 406 | 
	x1 = xmem[i0]			# LN: 406 | 
	a0 = x1 * x0			# LN: 406 | 
	i0 = i7 - (0x30)			# LN: 406 | 
	xmem[i0] = a0g; i0 += 1			# LN: 406, 406 | 
	xmem[i0] = a0h; i0 += 1			# LN: 406, 406 | 
	xmem[i0] = a0l			# LN: 406 | 
cline_406_0:			/* LN: 407 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x30)			# LN: 407 | 
	a0g = xmem[i0]; i0 += 1			# LN: 407, 407 | 
	a0h = xmem[i0]; i0 += 1			# LN: 407, 407 | 
	a0l = xmem[i0]			# LN: 407 | 
	i0 = i7 - (0x7)			# LN: 407 | 
	i0 = xmem[i0]			# LN: 407 | 
	a0 = a0			# LN: 407 | 
	a1 = xmem[i0]			# LN: 407 | 
	a0 = a0 + a1			# LN: 407 | 
	i0 = i7 - (0x33)			# LN: 407 | 
	xmem[i0] = a0g; i0 += 1			# LN: 407, 407 | 
	xmem[i0] = a0h; i0 += 1			# LN: 407, 407 | 
	xmem[i0] = a0l			# LN: 407 | 
cline_407_0:			/* LN: 408 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x33)			# LN: 408 | 
	a0g = xmem[i0]; i0 += 1			# LN: 408, 408 | 
	a0h = xmem[i0]; i0 += 1			# LN: 408, 408 | 
	i1 = i7 - (0x15)			# LN: 408 | 
	i1 = xmem[i1]			# LN: 408 | 
	a0l = xmem[i0]			# LN: 408 | 
	xmem[i1] = a0			# LN: 408 | 
cline_408_0:			/* LN: 411 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 411 | 
	i0 = xmem[i0]			# LN: 411 | 
	i1 = i7 - (0x6)			# LN: 411 | 
	i0 += 1			# LN: 411 | 
	xmem[i1] = i0			# LN: 411 | 
cline_411_0:			/* LN: 412 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 412 | 
	i0 = xmem[i0]			# LN: 412 | 
	i1 = i7 - (0x7)			# LN: 412 | 
	i0 += 1			# LN: 412 | 
	xmem[i1] = i0			# LN: 412 | 
cline_412_0:			/* LN: 413 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x13)			# LN: 413 | 
	i0 = xmem[i0]			# LN: 413 | 
	i1 = i7 - (0x13)			# LN: 413 | 
	i0 += 1			# LN: 413 | 
	xmem[i1] = i0			# LN: 413 | 
cline_413_0:			/* LN: 414 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x15)			# LN: 414 | 
	i0 = xmem[i0]			# LN: 414 | 
	i1 = i7 - (0x15)			# LN: 414 | 
	i0 += 1			# LN: 414 | 
	xmem[i1] = i0			# LN: 414 | 
cline_414_0:			/* LN: 400 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 415 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 400 | 
	a0 = xmem[i0]			# LN: 400 | 
	uhalfword(a1) = (0x1)			# LN: 400 | 
	a0 = a0 + a1			# LN: 400 | 
	i0 = i7 - (0x8)			# LN: 400 | 
label_end_102:			# LN: 400 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 400 | 
for_end_10:			/* LN: 400 | CYCLE: 0 | RULES: () */ 
	jmp (endif_5)			# LN: 400 | 
cline_400_1:			/* LN: 419 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_112)			# LN: 419 | 
__epilogue_112:			/* LN: 419 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x33)			# LN: 419 | 
	i7 -= 1			# LN: 419 | 
	ret			# LN: 419 | 
