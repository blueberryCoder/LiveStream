	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"AVCDecoderConfiguration.cpp"
	.file	1 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/android/log.h"
	.file	2 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	3 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.file	4 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/stddef.h"
	.file	5 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstddef"
	.file	6 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/__stddef_max_align_t.h"
	.file	7 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdlib"
	.file	8 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdlib.h"
	.file	9 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/android/legacy_stdlib_inlines.h"
	.file	10 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/malloc.h"
	.file	11 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/math.h"
	.file	12 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/local/include/stdlib.h"
	.file	13 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdint.h"
	.file	14 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdint"
	.file	15 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstring"
	.file	16 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/string.h"
	.file	17 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/bits/fortify/string.h"
	.file	18 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/string.h"
	.section	.text._ZN23AVCDecoderConfigurationC2ER10H264Params,"ax",%progbits
	.globl	_ZN23AVCDecoderConfigurationC2ER10H264Params @ -- Begin function _ZN23AVCDecoderConfigurationC2ER10H264Params
	.p2align	2
	.type	_ZN23AVCDecoderConfigurationC2ER10H264Params,%function
	.code	16                      @ @_ZN23AVCDecoderConfigurationC2ER10H264Params
	.thumb_func
_ZN23AVCDecoderConfigurationC2ER10H264Params:
.Lfunc_begin0:
	.file	19 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AVCDecoderConfiguration.cpp"
	.loc	19 58 0                 @ src/main/cpp/AVCDecoderConfiguration.cpp:58:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
	.cfi_def_cfa r7, 8
	.pad	#32
	sub	sp, #32
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	ldr	r0, [sp, #28]
.Ltmp0:
	.loc	19 58 70 prologue_end   @ src/main/cpp/AVCDecoderConfiguration.cpp:58:70
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
	mov.w	r1, #1024
.Ltmp1:
	.loc	19 59 21                @ src/main/cpp/AVCDecoderConfiguration.cpp:59:21
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	_Znaj
	.loc	19 59 19 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:59:19
	ldr	r1, [sp, #20]           @ 4-byte Reload
	str	r0, [r1, #4]
	.loc	19 60 20 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:60:20
	ldr	r0, [sp, #24]
	.loc	19 60 47 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:60:47
	ldr	r1, [r0]
	.loc	19 60 27                @ src/main/cpp/AVCDecoderConfiguration.cpp:60:27
	ldr	r2, [r0, #4]
	.loc	19 60 80                @ src/main/cpp/AVCDecoderConfiguration.cpp:60:80
	ldr	r3, [r0, #8]
	.loc	19 60 60                @ src/main/cpp/AVCDecoderConfiguration.cpp:60:60
	ldr	r0, [r0, #12]
	.loc	19 60 92                @ src/main/cpp/AVCDecoderConfiguration.cpp:60:92
	ldr.w	r12, [sp, #20]          @ 4-byte Reload
	ldr.w	lr, [r12, #4]
	.loc	19 61 27 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:61:27
	add.w	r4, r12, #8
	.loc	19 60 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:60:5
	mov	r5, sp
	str	r4, [r5, #4]
	str.w	lr, [r5]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #16]           @ 4-byte Reload
	bl	_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi
.Ltmp2:
	.loc	19 62 1                 @ src/main/cpp/AVCDecoderConfiguration.cpp:62:1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	add	sp, #32
	pop	{r4, r5, r7, pc}
.Ltmp3:
	.p2align	2
@ %bb.1:
	.loc	19 0 1 is_stmt 0        @ src/main/cpp/AVCDecoderConfiguration.cpp:0:1
.LCPI0_0:
.Ltmp4:
	.long	_ZTV23AVCDecoderConfiguration(GOT_PREL)-((.LPC0_0+4)-.Ltmp4)
.Lfunc_end0:
	.size	_ZN23AVCDecoderConfigurationC2ER10H264Params, .Lfunc_end0-_ZN23AVCDecoderConfigurationC2ER10H264Params
	.cfi_endproc
	.file	20 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AVCDecoderConfiguration.h"
	.file	21 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/H264Params.h"
	.fnend
                                        @ -- End function
	.section	.text._ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi,"axG",%progbits,_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi,comdat
	.weak	_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi @ -- Begin function _ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi
	.p2align	2
	.type	_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi,%function
	.code	16                      @ @_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi
	.thumb_func
_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi:
.Lfunc_begin1:
	.loc	19 11 0 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:11:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r4, r6, r7, lr}
	push	{r4, r6, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r6, -12
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
	.cfi_def_cfa r7, 8
	.pad	#112
	sub	sp, #112
	ldr.w	r12, [r7, #12]
	ldr.w	lr, [r7, #8]
	ldr	r4, .LCPI1_0
.LPC1_0:
	add	r4, pc
	ldr	r4, [r4]
	ldr	r4, [r4]
	str	r4, [sp, #108]
	str	r0, [sp, #88]
	str	r1, [sp, #84]
	str	r2, [sp, #80]
	str	r3, [sp, #76]
.Ltmp20:
	.loc	19 14 24 prologue_end   @ src/main/cpp/AVCDecoderConfiguration.cpp:14:24
	ldr	r0, [sp, #84]
	ldrb	r0, [r0]
	.loc	19 14 10 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:14:10
	strb	r0, [r7, #-45]
	movs	r0, #0
	.loc	19 15 9 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:15:9
	str	r0, [sp, #104]
	.loc	19 16 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:16:5
	ldr	r0, [r7, #8]
	.loc	19 16 13 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:16:13
	ldr	r1, [sp, #104]
	adds	r2, r1, #1
	str	r2, [sp, #104]
	movs	r2, #1
	.loc	19 16 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:16:17
	strb	r2, [r0, r1]
	.loc	19 17 19 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:17:19
	ldr	r0, [sp, #84]
	ldrb	r0, [r0, #1]
	.loc	19 17 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:17:5
	ldr	r1, [r7, #8]
	.loc	19 17 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:17:13
	ldr	r3, [sp, #104]
	adds	r4, r3, #1
	str	r4, [sp, #104]
	.loc	19 17 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:17:17
	strb	r0, [r1, r3]
	.loc	19 18 19 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:18:19
	ldr	r0, [sp, #84]
	ldrb	r0, [r0, #2]
	.loc	19 18 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:18:5
	ldr	r1, [r7, #8]
	.loc	19 18 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:18:13
	ldr	r3, [sp, #104]
	adds	r4, r3, #1
	str	r4, [sp, #104]
	.loc	19 18 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:18:17
	strb	r0, [r1, r3]
	.loc	19 19 19 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:19:19
	ldr	r0, [sp, #84]
	ldrb	r0, [r0, #3]
	.loc	19 19 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:19:5
	ldr	r1, [r7, #8]
	.loc	19 19 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:19:13
	ldr	r3, [sp, #104]
	adds	r4, r3, #1
	str	r4, [sp, #104]
	.loc	19 19 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:19:17
	strb	r0, [r1, r3]
	.loc	19 20 5 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:20:5
	ldr	r0, [r7, #8]
	.loc	19 20 13 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:20:13
	ldr	r1, [sp, #104]
	adds	r3, r1, #1
	str	r3, [sp, #104]
	movs	r3, #255
	.loc	19 20 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:20:17
	strb	r3, [r0, r1]
	.loc	19 21 5 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:21:5
	ldr	r0, [r7, #8]
	.loc	19 21 13 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:21:13
	ldr	r1, [sp, #104]
	adds	r3, r1, #1
	str	r3, [sp, #104]
	movs	r3, #225
	.loc	19 21 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:21:17
	strb	r3, [r0, r1]
	.loc	19 22 20 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:22:20
	ldr	r0, [sp, #88]
	.loc	19 22 31 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:22:31
	lsrs	r0, r0, #8
	.loc	19 22 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:22:5
	ldr	r1, [r7, #8]
	.loc	19 22 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:22:13
	ldr	r3, [sp, #104]
	adds	r4, r3, #1
	str	r4, [sp, #104]
	.loc	19 22 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:22:17
	strb	r0, [r1, r3]
	.loc	19 23 20 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:23:20
	ldr	r0, [sp, #88]
	.loc	19 23 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:23:5
	ldr	r1, [r7, #8]
	.loc	19 23 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:23:13
	ldr	r3, [sp, #104]
	adds	r4, r3, #1
	str	r4, [sp, #104]
	.loc	19 23 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:23:17
	strb	r0, [r1, r3]
	.loc	19 24 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:24:13
	ldr	r0, [r7, #8]
	.loc	19 24 20 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:24:20
	ldr	r1, [sp, #104]
	.loc	19 24 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:24:13
	add	r0, r1
	.loc	19 24 24                @ src/main/cpp/AVCDecoderConfiguration.cpp:24:24
	ldr	r1, [sp, #84]
	.loc	19 24 29                @ src/main/cpp/AVCDecoderConfiguration.cpp:24:29
	ldr	r3, [sp, #88]
	.loc	19 24 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:24:5
	str	r2, [sp, #40]           @ 4-byte Spill
	mov	r2, r3
	str.w	r12, [sp, #36]          @ 4-byte Spill
	str.w	lr, [sp, #32]           @ 4-byte Spill
	bl	__aeabi_memcpy
	.loc	19 25 10 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:25:10
	ldr	r1, [sp, #88]
	.loc	19 25 7 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:25:7
	ldr	r2, [sp, #104]
	add	r1, r2
	str	r1, [sp, #104]
	.loc	19 27 5 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:27:5
	ldr	r1, [r7, #8]
	.loc	19 27 13 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:27:13
	ldr	r2, [sp, #104]
	adds	r3, r2, #1
	str	r3, [sp, #104]
	.loc	19 27 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:27:17
	ldr	r3, [sp, #40]           @ 4-byte Reload
	strb	r3, [r1, r2]
	.loc	19 28 20 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:28:20
	ldr	r1, [sp, #80]
	.loc	19 28 31 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:28:31
	lsrs	r1, r1, #8
	.loc	19 28 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:28:5
	ldr	r2, [r7, #8]
	.loc	19 28 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:28:13
	ldr.w	r12, [sp, #104]
	add.w	lr, r12, #1
	str.w	lr, [sp, #104]
	.loc	19 28 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:28:17
	strb.w	r1, [r2, r12]
	.loc	19 29 20 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:29:20
	ldr	r1, [sp, #80]
	.loc	19 29 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:29:5
	ldr	r2, [r7, #8]
	.loc	19 29 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:29:13
	ldr.w	r12, [sp, #104]
	add.w	lr, r12, #1
	str.w	lr, [sp, #104]
	.loc	19 29 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:29:17
	strb.w	r1, [r2, r12]
	.loc	19 30 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:30:13
	ldr	r1, [r7, #8]
	.loc	19 30 20 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:30:20
	ldr	r2, [sp, #104]
	.loc	19 30 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:30:13
	add	r1, r2
	.loc	19 30 24                @ src/main/cpp/AVCDecoderConfiguration.cpp:30:24
	ldr	r2, [sp, #76]
	.loc	19 30 29                @ src/main/cpp/AVCDecoderConfiguration.cpp:30:29
	ldr.w	r12, [sp, #80]
	.loc	19 30 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:30:5
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r12
	bl	__aeabi_memcpy
	.loc	19 31 10 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:31:10
	ldr	r1, [sp, #80]
	.loc	19 31 7 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:31:7
	ldr	r2, [sp, #104]
	add	r1, r2
	str	r1, [sp, #104]
.Ltmp21:
	.loc	19 33 9 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:33:9
	ldrb	r1, [r7, #-45]
	.loc	19 33 28 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:33:28
	cmp	r1, #100
	beq	.LBB1_4
	b	.LBB1_1
.LBB1_1:
	.loc	19 33 31                @ src/main/cpp/AVCDecoderConfiguration.cpp:33:31
	ldrb	r0, [r7, #-45]
	.loc	19 33 50                @ src/main/cpp/AVCDecoderConfiguration.cpp:33:50
	cmp	r0, #110
	beq	.LBB1_4
	b	.LBB1_2
.LBB1_2:
	.loc	19 33 53                @ src/main/cpp/AVCDecoderConfiguration.cpp:33:53
	ldrb	r0, [r7, #-45]
	.loc	19 33 72                @ src/main/cpp/AVCDecoderConfiguration.cpp:33:72
	cmp	r0, #122
	beq	.LBB1_4
	b	.LBB1_3
.LBB1_3:
	.loc	19 33 75                @ src/main/cpp/AVCDecoderConfiguration.cpp:33:75
	ldrb	r0, [r7, #-45]
.Ltmp22:
	.loc	19 33 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:33:9
	cmp	r0, #144
	bne	.LBB1_23
	b	.LBB1_4
.LBB1_4:
.Ltmp23:
	.loc	19 37 30 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:37:30
	ldr	r0, [sp, #84]
	adds	r1, r0, #4
	add	r0, sp, #92
	.loc	19 37 19 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:37:19
	str	r0, [sp, #24]           @ 4-byte Spill
	bl	_ZN9BitStreamC1EPh
.Ltmp5:
	.loc	19 38 22 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:38:22
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bl	_ZN6Golomb5GetUeER9BitStream
.Ltmp6:
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB1_5
.LBB1_5:
	.loc	19 38 14 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:38:14
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #68]
.Ltmp7:
	add	r0, sp, #92
	.loc	19 39 34 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:39:34
	bl	_ZN6Golomb5GetUeER9BitStream
.Ltmp8:
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB1_6
.LBB1_6:
	.loc	19 39 14 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:39:14
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #56]
.Ltmp24:
	.loc	19 40 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:40:13
	ldr	r1, [sp, #56]
.Ltmp25:
	.loc	19 40 13 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:40:13
	cmp	r1, #4
	blt	.LBB1_10
	b	.LBB1_7
.LBB1_7:
.Ltmp11:
.Ltmp26:
	.loc	19 41 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:41:13
	ldr	r1, .LCPI1_1
.LPC1_1:
	add	r1, pc
	ldr	r2, .LCPI1_2
.LPC1_2:
	add	r2, pc
	movs	r0, #6
	bl	__android_log_print
.Ltmp12:
	b	.LBB1_8
.LBB1_8:
	.loc	19 42 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:42:9
	b	.LBB1_14
.Ltmp27:
.LBB1_9:
.Ltmp19:
	.loc	19 56 1                 @ src/main/cpp/AVCDecoderConfiguration.cpp:56:1
	str	r0, [sp, #64]
	str	r1, [sp, #60]
	add	r0, sp, #92
.Ltmp28:
	.loc	19 53 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:53:5
	bl	_ZN9BitStreamD1Ev
	b	.LBB1_25
.LBB1_10:
.Ltmp29:
	.loc	19 42 20                @ src/main/cpp/AVCDecoderConfiguration.cpp:42:20
	ldr	r0, [sp, #56]
.Ltmp30:
	.loc	19 42 20 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:42:20
	cmp	r0, #3
	bne	.LBB1_13
	b	.LBB1_11
.LBB1_11:
.Ltmp9:
	.loc	19 0 20                 @ src/main/cpp/AVCDecoderConfiguration.cpp:0:20
	add	r0, sp, #92
	movs	r1, #1
.Ltmp31:
	.loc	19 43 60 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:43:60
	bl	_ZN9BitStream8ReadBitsEi
.Ltmp10:
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB1_12
.LBB1_12:
	.loc	19 43 18 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:43:18
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #52]
	.loc	19 44 9 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:44:9
	b	.LBB1_13
.Ltmp32:
.LBB1_13:
	.loc	19 0 9 is_stmt 0        @ src/main/cpp/AVCDecoderConfiguration.cpp:0:9
	b	.LBB1_14
.LBB1_14:
.Ltmp13:
	add	r0, sp, #92
	.loc	19 45 27 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:45:27
	bl	_ZN6Golomb5GetUeER9BitStream
.Ltmp14:
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB1_15
.LBB1_15:
	.loc	19 45 14 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:45:14
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #48]
.Ltmp15:
	add	r0, sp, #92
	.loc	19 46 29 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:46:29
	bl	_ZN6Golomb5GetUeER9BitStream
.Ltmp16:
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB1_16
.LBB1_16:
	.loc	19 46 14 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:46:14
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #44]
.Ltmp33:
	.loc	19 47 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:47:13
	ldr	r1, [sp, #48]
	.loc	19 47 28 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:47:28
	cmp	r1, #8
	blt	.LBB1_20
	b	.LBB1_17
.LBB1_17:
	.loc	19 47 31                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:31
	ldr	r0, [sp, #48]
	.loc	19 47 47                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:47
	cmp	r0, #14
	bgt	.LBB1_20
	b	.LBB1_18
.LBB1_18:
	.loc	19 47 50                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:50
	ldr	r0, [sp, #44]
	.loc	19 47 67                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:67
	cmp	r0, #8
	blt	.LBB1_20
	b	.LBB1_19
.LBB1_19:
	.loc	19 47 70                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:70
	ldr	r0, [sp, #44]
.Ltmp34:
	.loc	19 47 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:47:13
	cmp	r0, #15
	blt	.LBB1_22
	b	.LBB1_20
.LBB1_20:
.Ltmp17:
.Ltmp35:
	.loc	19 48 13 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:48:13
	ldr	r1, .LCPI1_3
.LPC1_3:
	add	r1, pc
	ldr	r2, .LCPI1_4
.LPC1_4:
	add	r2, pc
	movs	r0, #6
	bl	__android_log_print
.Ltmp18:
	b	.LBB1_21
.LBB1_21:
	.loc	19 49 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:49:9
	b	.LBB1_22
.Ltmp36:
.LBB1_22:
	.loc	19 50 30                @ src/main/cpp/AVCDecoderConfiguration.cpp:50:30
	ldr	r0, [sp, #56]
	.loc	19 50 28 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:50:28
	orr	r0, r0, #252
	.loc	19 50 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:50:9
	ldr	r1, [r7, #8]
	.loc	19 50 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:50:17
	ldr	r2, [sp, #104]
	adds	r3, r2, #1
	str	r3, [sp, #104]
	.loc	19 50 21                @ src/main/cpp/AVCDecoderConfiguration.cpp:50:21
	strb	r0, [r1, r2]
	.loc	19 51 30 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:51:30
	ldr	r0, [sp, #48]
	.loc	19 51 28 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:51:28
	orr	r0, r0, #248
	.loc	19 51 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:51:9
	ldr	r1, [r7, #8]
	.loc	19 51 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:51:17
	ldr	r2, [sp, #104]
	adds	r3, r2, #1
	str	r3, [sp, #104]
	.loc	19 51 21                @ src/main/cpp/AVCDecoderConfiguration.cpp:51:21
	strb	r0, [r1, r2]
	.loc	19 52 30 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:52:30
	ldr	r0, [sp, #44]
	.loc	19 52 28 is_stmt 0      @ src/main/cpp/AVCDecoderConfiguration.cpp:52:28
	orr	r0, r0, #248
	.loc	19 52 9                 @ src/main/cpp/AVCDecoderConfiguration.cpp:52:9
	ldr	r1, [r7, #8]
	.loc	19 52 17                @ src/main/cpp/AVCDecoderConfiguration.cpp:52:17
	ldr	r2, [sp, #104]
	adds	r3, r2, #1
	str	r3, [sp, #104]
	.loc	19 52 21                @ src/main/cpp/AVCDecoderConfiguration.cpp:52:21
	strb	r0, [r1, r2]
	add	r0, sp, #92
.Ltmp37:
	.loc	19 53 5 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:53:5
	bl	_ZN9BitStreamD1Ev
.Ltmp38:
	.loc	19 53 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:53:5
	b	.LBB1_23
.Ltmp39:
.LBB1_23:
	.loc	19 54 15 is_stmt 1      @ src/main/cpp/AVCDecoderConfiguration.cpp:54:15
	ldr	r0, [sp, #104]
	.loc	19 54 6 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:54:6
	ldr	r1, [r7, #12]
	.loc	19 54 13                @ src/main/cpp/AVCDecoderConfiguration.cpp:54:13
	str	r0, [r1]
	ldr	r0, .LCPI1_5
.LPC1_5:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #108]
	cmp	r0, r1
	bne	.LBB1_26
	b	.LBB1_24
.LBB1_24:                               @ %SP_return
	.loc	19 0 13                 @ src/main/cpp/AVCDecoderConfiguration.cpp:0:13
	movs	r0, #0
	.loc	19 55 5 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:55:5
	add	sp, #112
	pop	{r4, r6, r7, pc}
.LBB1_25:
.Ltmp40:
	.loc	19 53 5                 @ src/main/cpp/AVCDecoderConfiguration.cpp:53:5
	ldr	r0, [sp, #64]
	bl	_Unwind_Resume
.Ltmp41:
.LBB1_26:                               @ %CallStackCheckFailBlk
	.loc	19 0 0 is_stmt 0        @ src/main/cpp/AVCDecoderConfiguration.cpp:0:0
	bl	__stack_chk_fail
.Ltmp42:
	.p2align	2
@ %bb.27:
.LCPI1_0:
.Ltmp43:
	.long	__stack_chk_guard(GOT_PREL)-((.LPC1_0+4)-.Ltmp43)
.LCPI1_1:
	.long	.L.str-(.LPC1_1+4)
.LCPI1_2:
	.long	.L.str.1-(.LPC1_2+4)
.LCPI1_3:
	.long	.L.str-(.LPC1_3+4)
.LCPI1_4:
	.long	.L.str.2-(.LPC1_4+4)
.LCPI1_5:
.Ltmp44:
	.long	__stack_chk_guard(GOT_PREL)-((.LPC1_5+4)-.Ltmp44)
.Lfunc_end1:
	.size	_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi, .Lfunc_end1-_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi
	.cfi_endproc
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	255                     @ @TType Encoding = omit
	.byte	1                       @ Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 @ >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1   @   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1   @ >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp5         @   Call between .Ltmp5 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1  @     jumps to .Ltmp19
	.byte	0                       @   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1  @ >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp18    @   Call between .Ltmp18 and .Lfunc_end1
	.byte	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
.Lcst_end0:
	.p2align	2
	.fnend
                                        @ -- End function
	.section	.text._ZN23AVCDecoderConfigurationD2Ev,"ax",%progbits
	.globl	_ZN23AVCDecoderConfigurationD2Ev @ -- Begin function _ZN23AVCDecoderConfigurationD2Ev
	.p2align	2
	.type	_ZN23AVCDecoderConfigurationD2Ev,%function
	.code	16                      @ @_ZN23AVCDecoderConfigurationD2Ev
	.thumb_func
_ZN23AVCDecoderConfigurationD2Ev:
.Lfunc_begin2:
	.loc	19 64 0 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:64:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
	.cfi_def_cfa_register r7
	.pad	#16
	sub	sp, #16
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	str	r0, [sp, #12]
.Ltmp45:
	.loc	19 64 53 prologue_end   @ src/main/cpp/AVCDecoderConfiguration.cpp:64:53
	ldr	r1, .LCPI2_0
.LPC2_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
.Ltmp46:
	.loc	19 65 12                @ src/main/cpp/AVCDecoderConfiguration.cpp:65:12
	ldr	r0, [r0, #4]
	.loc	19 65 5 is_stmt 0       @ src/main/cpp/AVCDecoderConfiguration.cpp:65:5
	cmp	r0, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	beq	.LBB2_2
	b	.LBB2_1
.LBB2_1:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	bl	_ZdlPv
	b	.LBB2_2
.Ltmp47:
.LBB2_2:
	.loc	19 66 1 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:66:1
	ldr	r0, [sp, #12]
	add	sp, #16
	pop	{r7, pc}
.Ltmp48:
	.p2align	2
@ %bb.3:
	.loc	19 0 1 is_stmt 0        @ src/main/cpp/AVCDecoderConfiguration.cpp:0:1
.LCPI2_0:
.Ltmp49:
	.long	_ZTV23AVCDecoderConfiguration(GOT_PREL)-((.LPC2_0+4)-.Ltmp49)
.Lfunc_end2:
	.size	_ZN23AVCDecoderConfigurationD2Ev, .Lfunc_end2-_ZN23AVCDecoderConfigurationD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN23AVCDecoderConfigurationD0Ev,"ax",%progbits
	.globl	_ZN23AVCDecoderConfigurationD0Ev @ -- Begin function _ZN23AVCDecoderConfigurationD0Ev
	.p2align	1
	.type	_ZN23AVCDecoderConfigurationD0Ev,%function
	.code	16                      @ @_ZN23AVCDecoderConfigurationD0Ev
	.thumb_func
_ZN23AVCDecoderConfigurationD0Ev:
.Lfunc_begin3:
	.loc	19 64 0 is_stmt 1       @ src/main/cpp/AVCDecoderConfiguration.cpp:64:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
	.cfi_def_cfa_register r7
	.pad	#16
	sub	sp, #16
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
.Ltmp50:
	.loc	19 64 53 prologue_end   @ src/main/cpp/AVCDecoderConfiguration.cpp:64:53
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_ZN23AVCDecoderConfigurationD1Ev
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	_ZdlPv
	.loc	19 66 1                 @ src/main/cpp/AVCDecoderConfiguration.cpp:66:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp51:
.Lfunc_end3:
	.size	_ZN23AVCDecoderConfigurationD0Ev, .Lfunc_end3-_ZN23AVCDecoderConfigurationD0Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN6Golomb5GetUeER9BitStream,"axG",%progbits,_ZN6Golomb5GetUeER9BitStream,comdat
	.weak	_ZN6Golomb5GetUeER9BitStream @ -- Begin function _ZN6Golomb5GetUeER9BitStream
	.p2align	1
	.type	_ZN6Golomb5GetUeER9BitStream,%function
	.code	16                      @ @_ZN6Golomb5GetUeER9BitStream
	.thumb_func
_ZN6Golomb5GetUeER9BitStream:
.Lfunc_begin4:
	.file	22 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/Golomb.h"
	.loc	22 13 0                 @ src/main/cpp/Golomb.h:13:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.setfp	r7, sp
	mov	r7, sp
	.cfi_def_cfa_register r7
	.pad	#16
	sub	sp, #16
	str	r0, [sp, #12]
	mov.w	r0, #-1
.Ltmp52:
	.loc	22 14 13 prologue_end   @ src/main/cpp/Golomb.h:14:13
	str	r0, [sp, #8]
	movs	r0, #0
.Ltmp53:
	.loc	22 15 18                @ src/main/cpp/Golomb.h:15:18
	str	r0, [sp, #4]
	.loc	22 15 14 is_stmt 0      @ src/main/cpp/Golomb.h:15:14
	b	.LBB4_1
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
.Ltmp54:
	.loc	22 15 26                @ src/main/cpp/Golomb.h:15:26
	ldr	r0, [sp, #4]
.Ltmp55:
	.loc	22 15 9                 @ src/main/cpp/Golomb.h:15:9
	cmp	r0, #0
	bne	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                @   in Loop: Header=BB4_1 Depth=1
.Ltmp56:
	.loc	22 17 17 is_stmt 1      @ src/main/cpp/Golomb.h:17:17
	ldr	r0, [sp, #12]
	movs	r1, #1
	.loc	22 17 28 is_stmt 0      @ src/main/cpp/Golomb.h:17:28
	bl	_ZN9BitStream8ReadBitsEi
	.loc	22 17 15                @ src/main/cpp/Golomb.h:17:15
	str	r0, [sp, #4]
	.loc	22 18 9 is_stmt 1       @ src/main/cpp/Golomb.h:18:9
	b	.LBB4_3
.Ltmp57:
.LBB4_3:                                @   in Loop: Header=BB4_1 Depth=1
	.loc	22 15 46                @ src/main/cpp/Golomb.h:15:46
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	.loc	22 15 9 is_stmt 0       @ src/main/cpp/Golomb.h:15:9
	b	.LBB4_1
.Ltmp58:
.LBB4_4:
	.loc	22 19 17 is_stmt 1      @ src/main/cpp/Golomb.h:19:17
	ldr	r0, [sp, #12]
	.loc	22 19 37 is_stmt 0      @ src/main/cpp/Golomb.h:19:37
	ldr	r1, [sp, #8]
	.loc	22 19 28                @ src/main/cpp/Golomb.h:19:28
	bl	_ZN9BitStream8ReadBitsEi
	.loc	22 19 13                @ src/main/cpp/Golomb.h:19:13
	str	r0, [sp]
	.loc	22 20 25 is_stmt 1      @ src/main/cpp/Golomb.h:20:25
	ldr	r0, [sp, #8]
	.loc	22 20 43 is_stmt 0      @ src/main/cpp/Golomb.h:20:43
	adds	r0, #1
	movs	r1, #1
	.loc	22 20 21                @ src/main/cpp/Golomb.h:20:21
	lsl.w	r0, r1, r0
	.loc	22 20 55                @ src/main/cpp/Golomb.h:20:55
	ldr	r1, [sp]
	.loc	22 20 53                @ src/main/cpp/Golomb.h:20:53
	add	r0, r1
	subs	r0, #1
	.loc	22 20 9                 @ src/main/cpp/Golomb.h:20:9
	add	sp, #16
	pop	{r7, pc}
.Ltmp59:
.Lfunc_end4:
	.size	_ZN6Golomb5GetUeER9BitStream, .Lfunc_end4-_ZN6Golomb5GetUeER9BitStream
	.cfi_endproc
	.file	23 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/BitStream.h"
	.fnend
                                        @ -- End function
	.type	_ZTV23AVCDecoderConfiguration,%object @ @_ZTV23AVCDecoderConfiguration
	.section	.data.rel.ro._ZTV23AVCDecoderConfiguration,"aw",%progbits
	.globl	_ZTV23AVCDecoderConfiguration
	.p2align	2
_ZTV23AVCDecoderConfiguration:
	.long	0
	.long	_ZTI23AVCDecoderConfiguration
	.long	_ZN23AVCDecoderConfigurationD1Ev
	.long	_ZN23AVCDecoderConfigurationD0Ev
	.size	_ZTV23AVCDecoderConfiguration, 16

	.type	_ZTS23AVCDecoderConfiguration,%object @ @_ZTS23AVCDecoderConfiguration
	.section	.rodata._ZTS23AVCDecoderConfiguration,"a",%progbits
	.globl	_ZTS23AVCDecoderConfiguration
_ZTS23AVCDecoderConfiguration:
	.asciz	"23AVCDecoderConfiguration"
	.size	_ZTS23AVCDecoderConfiguration, 26

	.type	_ZTI23AVCDecoderConfiguration,%object @ @_ZTI23AVCDecoderConfiguration
	.section	.data.rel.ro._ZTI23AVCDecoderConfiguration,"aw",%progbits
	.globl	_ZTI23AVCDecoderConfiguration
	.p2align	2
_ZTI23AVCDecoderConfiguration:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS23AVCDecoderConfiguration
	.size	_ZTI23AVCDecoderConfiguration, 8

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"PUBLISH-C"
	.size	.L.str, 10

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"parse chroma idc error."
	.size	.L.str.1, 24

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"illegal bit depth value"
	.size	.L.str.2, 24

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/AVCDecoderConfiguration.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=232
.Linfo_string3:
	.asciz	"unsigned int"          @ string offset=323
.Linfo_string4:
	.asciz	"ANDROID_LOG_UNKNOWN"   @ string offset=336
.Linfo_string5:
	.asciz	"ANDROID_LOG_DEFAULT"   @ string offset=356
.Linfo_string6:
	.asciz	"ANDROID_LOG_VERBOSE"   @ string offset=376
.Linfo_string7:
	.asciz	"ANDROID_LOG_DEBUG"     @ string offset=396
.Linfo_string8:
	.asciz	"ANDROID_LOG_INFO"      @ string offset=414
.Linfo_string9:
	.asciz	"ANDROID_LOG_WARN"      @ string offset=431
.Linfo_string10:
	.asciz	"ANDROID_LOG_ERROR"     @ string offset=448
.Linfo_string11:
	.asciz	"ANDROID_LOG_FATAL"     @ string offset=466
.Linfo_string12:
	.asciz	"ANDROID_LOG_SILENT"    @ string offset=484
.Linfo_string13:
	.asciz	"android_LogPriority"   @ string offset=503
.Linfo_string14:
	.asciz	"std"                   @ string offset=523
.Linfo_string15:
	.asciz	"decltype(nullptr)"     @ string offset=527
.Linfo_string16:
	.asciz	"nullptr_t"             @ string offset=545
.Linfo_string17:
	.asciz	"__ndk1"                @ string offset=555
.Linfo_string18:
	.asciz	"int"                   @ string offset=562
.Linfo_string19:
	.asciz	"ptrdiff_t"             @ string offset=566
.Linfo_string20:
	.asciz	"size_t"                @ string offset=576
.Linfo_string21:
	.asciz	"__clang_max_align_nonce1" @ string offset=583
.Linfo_string22:
	.asciz	"long long int"         @ string offset=608
.Linfo_string23:
	.asciz	"__clang_max_align_nonce2" @ string offset=622
.Linfo_string24:
	.asciz	"long double"           @ string offset=647
.Linfo_string25:
	.asciz	"max_align_t"           @ string offset=659
.Linfo_string26:
	.asciz	"quot"                  @ string offset=671
.Linfo_string27:
	.asciz	"rem"                   @ string offset=676
.Linfo_string28:
	.asciz	"div_t"                 @ string offset=680
.Linfo_string29:
	.asciz	"long int"              @ string offset=686
.Linfo_string30:
	.asciz	"ldiv_t"                @ string offset=695
.Linfo_string31:
	.asciz	"lldiv_t"               @ string offset=702
.Linfo_string32:
	.asciz	"_ZL4atofPKc"           @ string offset=710
.Linfo_string33:
	.asciz	"atof"                  @ string offset=722
.Linfo_string34:
	.asciz	"double"                @ string offset=727
.Linfo_string35:
	.asciz	"char"                  @ string offset=734
.Linfo_string36:
	.asciz	"atoi"                  @ string offset=739
.Linfo_string37:
	.asciz	"atol"                  @ string offset=744
.Linfo_string38:
	.asciz	"atoll"                 @ string offset=749
.Linfo_string39:
	.asciz	"strtod"                @ string offset=755
.Linfo_string40:
	.asciz	"_ZL6strtofPKcPPc"      @ string offset=762
.Linfo_string41:
	.asciz	"strtof"                @ string offset=779
.Linfo_string42:
	.asciz	"float"                 @ string offset=786
.Linfo_string43:
	.asciz	"strtold"               @ string offset=792
.Linfo_string44:
	.asciz	"strtol"                @ string offset=800
.Linfo_string45:
	.asciz	"strtoll"               @ string offset=807
.Linfo_string46:
	.asciz	"strtoul"               @ string offset=815
.Linfo_string47:
	.asciz	"long unsigned int"     @ string offset=823
.Linfo_string48:
	.asciz	"strtoull"              @ string offset=841
.Linfo_string49:
	.asciz	"long long unsigned int" @ string offset=850
.Linfo_string50:
	.asciz	"_ZL4randv"             @ string offset=873
.Linfo_string51:
	.asciz	"rand"                  @ string offset=883
.Linfo_string52:
	.asciz	"_ZL5srandj"            @ string offset=888
.Linfo_string53:
	.asciz	"srand"                 @ string offset=899
.Linfo_string54:
	.asciz	"calloc"                @ string offset=905
.Linfo_string55:
	.asciz	"free"                  @ string offset=912
.Linfo_string56:
	.asciz	"malloc"                @ string offset=917
.Linfo_string57:
	.asciz	"realloc"               @ string offset=924
.Linfo_string58:
	.asciz	"abort"                 @ string offset=932
.Linfo_string59:
	.asciz	"atexit"                @ string offset=938
.Linfo_string60:
	.asciz	"exit"                  @ string offset=945
.Linfo_string61:
	.asciz	"_exit"                 @ string offset=950
.Linfo_string62:
	.asciz	"_Exit"                 @ string offset=956
.Linfo_string63:
	.asciz	"getenv"                @ string offset=962
.Linfo_string64:
	.asciz	"system"                @ string offset=969
.Linfo_string65:
	.asciz	"bsearch"               @ string offset=976
.Linfo_string66:
	.asciz	"qsort"                 @ string offset=984
.Linfo_string67:
	.asciz	"_Z3abse"               @ string offset=990
.Linfo_string68:
	.asciz	"abs"                   @ string offset=998
.Linfo_string69:
	.asciz	"_ZL4labsl"             @ string offset=1002
.Linfo_string70:
	.asciz	"labs"                  @ string offset=1012
.Linfo_string71:
	.asciz	"_ZL5llabsx"            @ string offset=1017
.Linfo_string72:
	.asciz	"llabs"                 @ string offset=1028
.Linfo_string73:
	.asciz	"_Z3divxx"              @ string offset=1034
.Linfo_string74:
	.asciz	"div"                   @ string offset=1043
.Linfo_string75:
	.asciz	"ldiv"                  @ string offset=1047
.Linfo_string76:
	.asciz	"lldiv"                 @ string offset=1052
.Linfo_string77:
	.asciz	"mblen"                 @ string offset=1058
.Linfo_string78:
	.asciz	"mbtowc"                @ string offset=1064
.Linfo_string79:
	.asciz	"wchar_t"               @ string offset=1071
.Linfo_string80:
	.asciz	"wctomb"                @ string offset=1079
.Linfo_string81:
	.asciz	"mbstowcs"              @ string offset=1086
.Linfo_string82:
	.asciz	"wcstombs"              @ string offset=1095
.Linfo_string83:
	.asciz	"at_quick_exit"         @ string offset=1104
.Linfo_string84:
	.asciz	"quick_exit"            @ string offset=1118
.Linfo_string85:
	.asciz	"signed char"           @ string offset=1129
.Linfo_string86:
	.asciz	"__int8_t"              @ string offset=1141
.Linfo_string87:
	.asciz	"int8_t"                @ string offset=1150
.Linfo_string88:
	.asciz	"short"                 @ string offset=1157
.Linfo_string89:
	.asciz	"__int16_t"             @ string offset=1163
.Linfo_string90:
	.asciz	"int16_t"               @ string offset=1173
.Linfo_string91:
	.asciz	"__int32_t"             @ string offset=1181
.Linfo_string92:
	.asciz	"int32_t"               @ string offset=1191
.Linfo_string93:
	.asciz	"__int64_t"             @ string offset=1199
.Linfo_string94:
	.asciz	"int64_t"               @ string offset=1209
.Linfo_string95:
	.asciz	"unsigned char"         @ string offset=1217
.Linfo_string96:
	.asciz	"__uint8_t"             @ string offset=1231
.Linfo_string97:
	.asciz	"uint8_t"               @ string offset=1241
.Linfo_string98:
	.asciz	"unsigned short"        @ string offset=1249
.Linfo_string99:
	.asciz	"__uint16_t"            @ string offset=1264
.Linfo_string100:
	.asciz	"uint16_t"              @ string offset=1275
.Linfo_string101:
	.asciz	"__uint32_t"            @ string offset=1284
.Linfo_string102:
	.asciz	"uint32_t"              @ string offset=1295
.Linfo_string103:
	.asciz	"__uint64_t"            @ string offset=1304
.Linfo_string104:
	.asciz	"uint64_t"              @ string offset=1315
.Linfo_string105:
	.asciz	"int_least8_t"          @ string offset=1324
.Linfo_string106:
	.asciz	"int_least16_t"         @ string offset=1337
.Linfo_string107:
	.asciz	"int_least32_t"         @ string offset=1351
.Linfo_string108:
	.asciz	"int_least64_t"         @ string offset=1365
.Linfo_string109:
	.asciz	"uint_least8_t"         @ string offset=1379
.Linfo_string110:
	.asciz	"uint_least16_t"        @ string offset=1393
.Linfo_string111:
	.asciz	"uint_least32_t"        @ string offset=1408
.Linfo_string112:
	.asciz	"uint_least64_t"        @ string offset=1423
.Linfo_string113:
	.asciz	"int_fast8_t"           @ string offset=1438
.Linfo_string114:
	.asciz	"int_fast16_t"          @ string offset=1450
.Linfo_string115:
	.asciz	"int_fast32_t"          @ string offset=1463
.Linfo_string116:
	.asciz	"int_fast64_t"          @ string offset=1476
.Linfo_string117:
	.asciz	"uint_fast8_t"          @ string offset=1489
.Linfo_string118:
	.asciz	"uint_fast16_t"         @ string offset=1502
.Linfo_string119:
	.asciz	"uint_fast32_t"         @ string offset=1516
.Linfo_string120:
	.asciz	"uint_fast64_t"         @ string offset=1530
.Linfo_string121:
	.asciz	"__intptr_t"            @ string offset=1544
.Linfo_string122:
	.asciz	"intptr_t"              @ string offset=1555
.Linfo_string123:
	.asciz	"__uintptr_t"           @ string offset=1564
.Linfo_string124:
	.asciz	"uintptr_t"             @ string offset=1576
.Linfo_string125:
	.asciz	"intmax_t"              @ string offset=1586
.Linfo_string126:
	.asciz	"uintmax_t"             @ string offset=1595
.Linfo_string127:
	.asciz	"memcpy"                @ string offset=1605
.Linfo_string128:
	.asciz	"memmove"               @ string offset=1612
.Linfo_string129:
	.asciz	"_ZL6strcpyPcU17pass_object_size1PKc" @ string offset=1620
.Linfo_string130:
	.asciz	"strcpy"                @ string offset=1656
.Linfo_string131:
	.asciz	"strncpy"               @ string offset=1663
.Linfo_string132:
	.asciz	"_ZL6strcatPcU17pass_object_size1PKc" @ string offset=1671
.Linfo_string133:
	.asciz	"strcat"                @ string offset=1707
.Linfo_string134:
	.asciz	"strncat"               @ string offset=1714
.Linfo_string135:
	.asciz	"memcmp"                @ string offset=1722
.Linfo_string136:
	.asciz	"strcmp"                @ string offset=1729
.Linfo_string137:
	.asciz	"strncmp"               @ string offset=1736
.Linfo_string138:
	.asciz	"strcoll"               @ string offset=1744
.Linfo_string139:
	.asciz	"strxfrm"               @ string offset=1752
.Linfo_string140:
	.asciz	"_Z6memchrUa9enable_ifIXLb1EEEPvij" @ string offset=1760
.Linfo_string141:
	.asciz	"memchr"                @ string offset=1794
.Linfo_string142:
	.asciz	"_Z6strchrUa9enable_ifIXLb1EEEPci" @ string offset=1801
.Linfo_string143:
	.asciz	"strchr"                @ string offset=1834
.Linfo_string144:
	.asciz	"strcspn"               @ string offset=1841
.Linfo_string145:
	.asciz	"_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc" @ string offset=1849
.Linfo_string146:
	.asciz	"strpbrk"               @ string offset=1885
.Linfo_string147:
	.asciz	"_Z7strrchrUa9enable_ifIXLb1EEEPci" @ string offset=1893
.Linfo_string148:
	.asciz	"strrchr"               @ string offset=1927
.Linfo_string149:
	.asciz	"strspn"                @ string offset=1935
.Linfo_string150:
	.asciz	"_Z6strstrUa9enable_ifIXLb1EEEPcPKc" @ string offset=1942
.Linfo_string151:
	.asciz	"strstr"                @ string offset=1977
.Linfo_string152:
	.asciz	"strtok"                @ string offset=1984
.Linfo_string153:
	.asciz	"_ZL6memsetPvU17pass_object_size0ij" @ string offset=1991
.Linfo_string154:
	.asciz	"memset"                @ string offset=2026
.Linfo_string155:
	.asciz	"strerror"              @ string offset=2033
.Linfo_string156:
	.asciz	"_ZL6strlenPKcU17pass_object_size0" @ string offset=2042
.Linfo_string157:
	.asciz	"strlen"                @ string offset=2076
.Linfo_string158:
	.asciz	"_vptr$AVCDecoderConfiguration" @ string offset=2083
.Linfo_string159:
	.asciz	"__vtbl_ptr_type"       @ string offset=2113
.Linfo_string160:
	.asciz	"buffer_"               @ string offset=2129
.Linfo_string161:
	.asciz	"buffer_length_"        @ string offset=2137
.Linfo_string162:
	.asciz	"_ZN23AVCDecoderConfiguration14ParseSPSAndPPSEiPhiS0_S0_Pi" @ string offset=2152
.Linfo_string163:
	.asciz	"ParseSPSAndPPS"        @ string offset=2210
.Linfo_string164:
	.asciz	"AVCDecoderConfiguration" @ string offset=2225
.Linfo_string165:
	.asciz	"sps_"                  @ string offset=2249
.Linfo_string166:
	.asciz	"sps_length_"           @ string offset=2254
.Linfo_string167:
	.asciz	"pps_"                  @ string offset=2266
.Linfo_string168:
	.asciz	"pps_length_"           @ string offset=2271
.Linfo_string169:
	.asciz	"H264Params"            @ string offset=2283
.Linfo_string170:
	.asciz	"~H264Params"           @ string offset=2294
.Linfo_string171:
	.asciz	"~AVCDecoderConfiguration" @ string offset=2306
.Linfo_string172:
	.asciz	"_ZN23AVCDecoderConfiguration9GetBufferEv" @ string offset=2331
.Linfo_string173:
	.asciz	"GetBuffer"             @ string offset=2372
.Linfo_string174:
	.asciz	"_ZN23AVCDecoderConfiguration15GetBufferLengthEv" @ string offset=2382
.Linfo_string175:
	.asciz	"GetBufferLength"       @ string offset=2430
.Linfo_string176:
	.asciz	"_ZN6Golomb5GetUeER9BitStream" @ string offset=2446
.Linfo_string177:
	.asciz	"GetUe"                 @ string offset=2475
.Linfo_string178:
	.asciz	"_vptr$BitStream"       @ string offset=2481
.Linfo_string179:
	.asciz	"data_"                 @ string offset=2497
.Linfo_string180:
	.asciz	"index_"                @ string offset=2503
.Linfo_string181:
	.asciz	"BitStream"             @ string offset=2510
.Linfo_string182:
	.asciz	"~BitStream"            @ string offset=2520
.Linfo_string183:
	.asciz	"_ZN9BitStream8ReadBitsEi" @ string offset=2531
.Linfo_string184:
	.asciz	"ReadBits"              @ string offset=2556
.Linfo_string185:
	.asciz	"_ZN9BitStream9ReadBits1Ev" @ string offset=2565
.Linfo_string186:
	.asciz	"ReadBits1"             @ string offset=2591
.Linfo_string187:
	.asciz	"Golomb"                @ string offset=2601
.Linfo_string188:
	.asciz	"_ZN23AVCDecoderConfigurationC2ER10H264Params" @ string offset=2608
.Linfo_string189:
	.asciz	"_ZN23AVCDecoderConfigurationD2Ev" @ string offset=2653
.Linfo_string190:
	.asciz	"_ZN23AVCDecoderConfigurationD0Ev" @ string offset=2686
.Linfo_string191:
	.asciz	"this"                  @ string offset=2719
.Linfo_string192:
	.asciz	"params"                @ string offset=2724
.Linfo_string193:
	.asciz	"sps_length"            @ string offset=2731
.Linfo_string194:
	.asciz	"sps"                   @ string offset=2742
.Linfo_string195:
	.asciz	"pps_length"            @ string offset=2746
.Linfo_string196:
	.asciz	"pps"                   @ string offset=2757
.Linfo_string197:
	.asciz	"output"                @ string offset=2761
.Linfo_string198:
	.asciz	"length"                @ string offset=2768
.Linfo_string199:
	.asciz	"profile_idc"           @ string offset=2775
.Linfo_string200:
	.asciz	"i"                     @ string offset=2787
.Linfo_string201:
	.asciz	"bitStream"             @ string offset=2789
.Linfo_string202:
	.asciz	"spsid"                 @ string offset=2799
.Linfo_string203:
	.asciz	"chroma_format_idc"     @ string offset=2805
.Linfo_string204:
	.asciz	"residual_color_transform_flag" @ string offset=2823
.Linfo_string205:
	.asciz	"depth_luma"            @ string offset=2853
.Linfo_string206:
	.asciz	"depth_chroma"          @ string offset=2864
.Linfo_string207:
	.asciz	"bit_stream"            @ string offset=2877
.Linfo_string208:
	.asciz	"leading_zero_bits"     @ string offset=2888
.Linfo_string209:
	.asciz	"b"                     @ string offset=2906
.Linfo_string210:
	.asciz	"r"                     @ string offset=2908
	.section	.debug_abbrev,"",%progbits
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.ascii	"\211\001"              @ DW_AT_export_symbols
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	59                      @ DW_TAG_unspecified_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	54                      @ DW_AT_calling_convention
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.ascii	"\210\001"              @ DW_AT_alignment
	.byte	15                      @ DW_FORM_udata
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.ascii	"\207\001"              @ DW_AT_noreturn
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.ascii	"\207\001"              @ DW_AT_noreturn
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.ascii	"\207\001"              @ DW_AT_noreturn
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	54                      @ DW_AT_calling_convention
	.byte	11                      @ DW_FORM_data1
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	16                      @ DW_TAG_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	54                      @ DW_AT_calling_convention
	.byte	11                      @ DW_FORM_data1
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	43                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	44                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	45                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	46                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	47                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	48                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                       @ DWARF version number
	.long	.debug_abbrev           @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xf46 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x43 DW_TAG_enumeration_type
	.long	105                     @ DW_AT_type
	.long	.Linfo_string13         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x32:0x6 DW_TAG_enumerator
	.long	.Linfo_string4          @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x38:0x6 DW_TAG_enumerator
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	.Linfo_string6          @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string7          @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string8          @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string9          @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string10         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	.Linfo_string11         @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	3                       @ Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	.Linfo_string12         @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x69:0x7 DW_TAG_base_type
	.long	.Linfo_string3          @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x70:0x2b7 DW_TAG_namespace
	.long	.Linfo_string14         @ DW_AT_name
	.byte	6                       @ Abbrev [6] 0x75:0xb DW_TAG_typedef
	.long	807                     @ DW_AT_type
	.long	.Linfo_string16         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x80:0x2a6 DW_TAG_namespace
	.long	.Linfo_string17         @ DW_AT_name
                                        @ DW_AT_export_symbols
	.byte	8                       @ Abbrev [8] 0x85:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	819                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x8c:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.long	837                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x93:0x7 DW_TAG_imported_declaration
	.byte	5                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	848                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x9a:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.long	837                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xa1:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.long	905                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xa8:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.long	946                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xaf:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	994                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xb6:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	1035                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xbd:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1080                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xc4:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	107                     @ DW_AT_decl_line
	.long	1097                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xcb:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1114                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xd2:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.long	1131                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xd9:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	1163                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xe0:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xe7:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	114                     @ DW_AT_decl_line
	.long	1222                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xee:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	116                     @ DW_AT_decl_line
	.long	1249                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xf5:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	1276                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0xfc:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.long	1310                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x103:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	1344                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x10a:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	1359                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x111:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1376                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x118:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	1399                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x11f:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.long	1412                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x126:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	1429                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x12d:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1451                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x134:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	1458                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x13b:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.long	1481                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x142:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1494                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x149:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	133                     @ DW_AT_decl_line
	.long	1511                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x150:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1528                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x157:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.long	1545                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x15e:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	1609                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x165:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.long	1637                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x16c:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.long	1659                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x173:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.long	1680                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x17a:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	1701                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x181:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1728                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x188:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	1750                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x18f:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	1772                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x196:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	149                     @ DW_AT_decl_line
	.long	1794                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x19d:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	1833                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1a4:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	1855                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1ab:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	1882                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1b2:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	1919                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1b9:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	1936                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1c0:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	1949                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1c7:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	153                     @ DW_AT_decl_line
	.long	1978                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1ce:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	2007                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1d5:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	2029                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1dc:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	157                     @ DW_AT_decl_line
	.long	2051                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1e3:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	2080                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1ea:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	159                     @ DW_AT_decl_line
	.long	2109                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1f1:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	160                     @ DW_AT_decl_line
	.long	2131                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1f8:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	162                     @ DW_AT_decl_line
	.long	2153                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x1ff:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	2164                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x206:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.long	2175                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x20d:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	2186                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x214:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	167                     @ DW_AT_decl_line
	.long	2197                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x21b:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
	.long	2208                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x222:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2219                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x229:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	170                     @ DW_AT_decl_line
	.long	2230                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x230:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.long	2241                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x237:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	173                     @ DW_AT_decl_line
	.long	2252                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x23e:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	2263                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x245:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	175                     @ DW_AT_decl_line
	.long	2274                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x24c:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	2285                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x253:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	2296                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x25a:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.long	2307                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x261:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	2318                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x268:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.long	2329                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x26f:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	183                     @ DW_AT_decl_line
	.long	2351                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x276:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.long	2373                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x27d:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	2384                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x284:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	837                     @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x28b:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	2395                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x292:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	2422                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x299:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	2449                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2a0:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	2480                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2a7:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	2507                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2ae:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	2533                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2b5:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	2560                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2bc:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	2587                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2c3:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	2609                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2ca:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	2636                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2d1:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	2658                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2d8:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	2685                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2df:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	2716                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2e6:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.long	2742                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2ed:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.long	2764                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2f4:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	2790                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x2fb:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	2816                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x302:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	2838                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x309:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	2864                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x310:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2886                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x317:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	2922                    @ DW_AT_import
	.byte	8                       @ Abbrev [8] 0x31e:0x7 DW_TAG_imported_declaration
	.byte	15                      @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	2939                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x327:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string15         @ DW_AT_name
	.byte	8                       @ Abbrev [8] 0x32c:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	117                     @ DW_AT_import
	.byte	6                       @ Abbrev [6] 0x333:0xb DW_TAG_typedef
	.long	830                     @ DW_AT_type
	.long	.Linfo_string19         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x33e:0x7 DW_TAG_base_type
	.long	.Linfo_string18         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x345:0xb DW_TAG_typedef
	.long	105                     @ DW_AT_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x350:0xb DW_TAG_typedef
	.long	859                     @ DW_AT_type
	.long	.Linfo_string25         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x35b:0x20 DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	11                      @ Abbrev [11] 0x360:0xd DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	891                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	0                       @ DW_AT_data_member_location
	.byte	11                      @ Abbrev [11] 0x36d:0xd DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	898                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x37b:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x382:0x7 DW_TAG_base_type
	.long	.Linfo_string24         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x389:0xb DW_TAG_typedef
	.long	916                     @ DW_AT_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x394:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	8                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x399:0xc DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	830                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0x3a5:0xc DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	830                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x3b2:0xb DW_TAG_typedef
	.long	957                     @ DW_AT_type
	.long	.Linfo_string30         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	187                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x3bd:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	8                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x3c2:0xc DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	987                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0x3ce:0xc DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	987                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x3db:0x7 DW_TAG_base_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x3e2:0xb DW_TAG_typedef
	.long	1005                    @ DW_AT_type
	.long	.Linfo_string31         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x3ed:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	8                       @ DW_AT_decl_file
	.byte	191                     @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x3f2:0xc DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	891                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0x3fe:0xc DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	891                     @ DW_AT_type
	.byte	8                       @ DW_AT_decl_file
	.byte	193                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x40b:0x15 DW_TAG_subprogram
	.long	.Linfo_string32         @ DW_AT_linkage_name
	.long	.Linfo_string33         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	1056                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x41a:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x420:0x7 DW_TAG_base_type
	.long	.Linfo_string34         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x427:0x5 DW_TAG_pointer_type
	.long	1068                    @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x42c:0x5 DW_TAG_const_type
	.long	1073                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x431:0x7 DW_TAG_base_type
	.long	.Linfo_string35         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x438:0x11 DW_TAG_subprogram
	.long	.Linfo_string36         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x443:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x449:0x11 DW_TAG_subprogram
	.long	.Linfo_string37         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	987                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x454:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x45a:0x11 DW_TAG_subprogram
	.long	.Linfo_string38         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	891                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x465:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x46b:0x16 DW_TAG_subprogram
	.long	.Linfo_string39         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	1056                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x476:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x47b:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x481:0x5 DW_TAG_pointer_type
	.long	1158                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x486:0x5 DW_TAG_pointer_type
	.long	1073                    @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x48b:0x1a DW_TAG_subprogram
	.long	.Linfo_string40         @ DW_AT_linkage_name
	.long	.Linfo_string41         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1189                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x49a:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x49f:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x4a5:0x7 DW_TAG_base_type
	.long	.Linfo_string42         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	18                      @ Abbrev [18] 0x4ac:0x1a DW_TAG_subprogram
	.long	.Linfo_string39         @ DW_AT_linkage_name
	.long	.Linfo_string43         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	898                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x4bb:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x4c0:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x4c6:0x1b DW_TAG_subprogram
	.long	.Linfo_string44         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	987                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x4d1:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x4d6:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x4db:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x4e1:0x1b DW_TAG_subprogram
	.long	.Linfo_string45         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	891                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x4ec:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x4f1:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x4f6:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x4fc:0x1b DW_TAG_subprogram
	.long	.Linfo_string46         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.long	1303                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x507:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x50c:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x511:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x517:0x7 DW_TAG_base_type
	.long	.Linfo_string47         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x51e:0x1b DW_TAG_subprogram
	.long	.Linfo_string48         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.long	1337                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x529:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x52e:0x5 DW_TAG_formal_parameter
	.long	1153                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x533:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x539:0x7 DW_TAG_base_type
	.long	.Linfo_string49         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	19                      @ Abbrev [19] 0x540:0xf DW_TAG_subprogram
	.long	.Linfo_string50         @ DW_AT_linkage_name
	.long	.Linfo_string51         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	20                      @ Abbrev [20] 0x54f:0x11 DW_TAG_subprogram
	.long	.Linfo_string52         @ DW_AT_linkage_name
	.long	.Linfo_string53         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x55a:0x5 DW_TAG_formal_parameter
	.long	105                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x560:0x16 DW_TAG_subprogram
	.long	.Linfo_string54         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x56b:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x570:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x576:0x1 DW_TAG_pointer_type
	.byte	22                      @ Abbrev [22] 0x577:0xd DW_TAG_subprogram
	.long	.Linfo_string55         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x57e:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x584:0x11 DW_TAG_subprogram
	.long	.Linfo_string56         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x58f:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x595:0x16 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x5a0:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x5a5:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x5ab:0x7 DW_TAG_subprogram
	.long	.Linfo_string58         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	17                      @ Abbrev [17] 0x5b2:0x11 DW_TAG_subprogram
	.long	.Linfo_string59         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x5bd:0x5 DW_TAG_formal_parameter
	.long	1475                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x5c3:0x5 DW_TAG_pointer_type
	.long	1480                    @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x5c8:0x1 DW_TAG_subroutine_type
	.byte	25                      @ Abbrev [25] 0x5c9:0xd DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	14                      @ Abbrev [14] 0x5d0:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x5d6:0x11 DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_linkage_name
	.long	.Linfo_string62         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	14                      @ Abbrev [14] 0x5e1:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x5e7:0x11 DW_TAG_subprogram
	.long	.Linfo_string63         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x5f2:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x5f8:0x11 DW_TAG_subprogram
	.long	.Linfo_string64         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x603:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x609:0x25 DW_TAG_subprogram
	.long	.Linfo_string65         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x614:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x619:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x61e:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x623:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x628:0x5 DW_TAG_formal_parameter
	.long	1588                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x62e:0x5 DW_TAG_pointer_type
	.long	1587                    @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x633:0x1 DW_TAG_const_type
	.byte	15                      @ Abbrev [15] 0x634:0x5 DW_TAG_pointer_type
	.long	1593                    @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x639:0x10 DW_TAG_subroutine_type
	.long	830                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x63e:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x643:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x649:0x1c DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x650:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x655:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x65a:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x65f:0x5 DW_TAG_formal_parameter
	.long	1588                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x665:0x16 DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_linkage_name
	.long	.Linfo_string68         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.short	789                     @ DW_AT_decl_line
	.long	898                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x675:0x5 DW_TAG_formal_parameter
	.long	898                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x67b:0x15 DW_TAG_subprogram
	.long	.Linfo_string69         @ DW_AT_linkage_name
	.long	.Linfo_string70         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	987                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x68a:0x5 DW_TAG_formal_parameter
	.long	987                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x690:0x15 DW_TAG_subprogram
	.long	.Linfo_string71         @ DW_AT_linkage_name
	.long	.Linfo_string72         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	891                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x69f:0x5 DW_TAG_formal_parameter
	.long	891                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x6a5:0x1b DW_TAG_subprogram
	.long	.Linfo_string73         @ DW_AT_linkage_name
	.long	.Linfo_string74         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.short	808                     @ DW_AT_decl_line
	.long	994                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x6b5:0x5 DW_TAG_formal_parameter
	.long	891                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x6ba:0x5 DW_TAG_formal_parameter
	.long	891                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x6c0:0x16 DW_TAG_subprogram
	.long	.Linfo_string75         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.long	946                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x6cb:0x5 DW_TAG_formal_parameter
	.long	987                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x6d0:0x5 DW_TAG_formal_parameter
	.long	987                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x6d6:0x16 DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	196                     @ DW_AT_decl_line
	.long	994                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x6e1:0x5 DW_TAG_formal_parameter
	.long	891                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x6e6:0x5 DW_TAG_formal_parameter
	.long	891                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x6ec:0x16 DW_TAG_subprogram
	.long	.Linfo_string77         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	219                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x6f7:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x6fc:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x702:0x1b DW_TAG_subprogram
	.long	.Linfo_string78         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x70d:0x5 DW_TAG_formal_parameter
	.long	1821                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x712:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x717:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x71d:0x5 DW_TAG_pointer_type
	.long	1826                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x722:0x7 DW_TAG_base_type
	.long	.Linfo_string79         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x729:0x16 DW_TAG_subprogram
	.long	.Linfo_string80         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x734:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x739:0x5 DW_TAG_formal_parameter
	.long	1826                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x73f:0x1b DW_TAG_subprogram
	.long	.Linfo_string81         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x74a:0x5 DW_TAG_formal_parameter
	.long	1821                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x74f:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x754:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x75a:0x1b DW_TAG_subprogram
	.long	.Linfo_string82         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	224                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x765:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x76a:0x5 DW_TAG_formal_parameter
	.long	1909                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x76f:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x775:0x5 DW_TAG_pointer_type
	.long	1914                    @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x77a:0x5 DW_TAG_const_type
	.long	1826                    @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x77f:0x11 DW_TAG_subprogram
	.long	.Linfo_string83         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x78a:0x5 DW_TAG_formal_parameter
	.long	1475                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x790:0xd DW_TAG_subprogram
	.long	.Linfo_string84         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	14                      @ Abbrev [14] 0x797:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x79d:0xb DW_TAG_typedef
	.long	1960                    @ DW_AT_type
	.long	.Linfo_string87         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x7a8:0xb DW_TAG_typedef
	.long	1971                    @ DW_AT_type
	.long	.Linfo_string86         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x7b3:0x7 DW_TAG_base_type
	.long	.Linfo_string85         @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x7ba:0xb DW_TAG_typedef
	.long	1989                    @ DW_AT_type
	.long	.Linfo_string90         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x7c5:0xb DW_TAG_typedef
	.long	2000                    @ DW_AT_type
	.long	.Linfo_string89         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x7d0:0x7 DW_TAG_base_type
	.long	.Linfo_string88         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x7d7:0xb DW_TAG_typedef
	.long	2018                    @ DW_AT_type
	.long	.Linfo_string92         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x7e2:0xb DW_TAG_typedef
	.long	830                     @ DW_AT_type
	.long	.Linfo_string91         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x7ed:0xb DW_TAG_typedef
	.long	2040                    @ DW_AT_type
	.long	.Linfo_string94         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x7f8:0xb DW_TAG_typedef
	.long	891                     @ DW_AT_type
	.long	.Linfo_string93         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x803:0xb DW_TAG_typedef
	.long	2062                    @ DW_AT_type
	.long	.Linfo_string97         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x80e:0xb DW_TAG_typedef
	.long	2073                    @ DW_AT_type
	.long	.Linfo_string96         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x819:0x7 DW_TAG_base_type
	.long	.Linfo_string95         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x820:0xb DW_TAG_typedef
	.long	2091                    @ DW_AT_type
	.long	.Linfo_string100        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x82b:0xb DW_TAG_typedef
	.long	2102                    @ DW_AT_type
	.long	.Linfo_string99         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x836:0x7 DW_TAG_base_type
	.long	.Linfo_string98         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x83d:0xb DW_TAG_typedef
	.long	2120                    @ DW_AT_type
	.long	.Linfo_string102        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x848:0xb DW_TAG_typedef
	.long	105                     @ DW_AT_type
	.long	.Linfo_string101        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x853:0xb DW_TAG_typedef
	.long	2142                    @ DW_AT_type
	.long	.Linfo_string104        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x85e:0xb DW_TAG_typedef
	.long	1337                    @ DW_AT_type
	.long	.Linfo_string103        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x869:0xb DW_TAG_typedef
	.long	1949                    @ DW_AT_type
	.long	.Linfo_string105        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x874:0xb DW_TAG_typedef
	.long	1978                    @ DW_AT_type
	.long	.Linfo_string106        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x87f:0xb DW_TAG_typedef
	.long	2007                    @ DW_AT_type
	.long	.Linfo_string107        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x88a:0xb DW_TAG_typedef
	.long	2029                    @ DW_AT_type
	.long	.Linfo_string108        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x895:0xb DW_TAG_typedef
	.long	2051                    @ DW_AT_type
	.long	.Linfo_string109        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8a0:0xb DW_TAG_typedef
	.long	2080                    @ DW_AT_type
	.long	.Linfo_string110        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8ab:0xb DW_TAG_typedef
	.long	2109                    @ DW_AT_type
	.long	.Linfo_string111        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8b6:0xb DW_TAG_typedef
	.long	2131                    @ DW_AT_type
	.long	.Linfo_string112        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8c1:0xb DW_TAG_typedef
	.long	1949                    @ DW_AT_type
	.long	.Linfo_string113        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8cc:0xb DW_TAG_typedef
	.long	2007                    @ DW_AT_type
	.long	.Linfo_string114        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8d7:0xb DW_TAG_typedef
	.long	2007                    @ DW_AT_type
	.long	.Linfo_string115        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8e2:0xb DW_TAG_typedef
	.long	2029                    @ DW_AT_type
	.long	.Linfo_string116        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8ed:0xb DW_TAG_typedef
	.long	2051                    @ DW_AT_type
	.long	.Linfo_string117        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8f8:0xb DW_TAG_typedef
	.long	2109                    @ DW_AT_type
	.long	.Linfo_string118        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x903:0xb DW_TAG_typedef
	.long	2109                    @ DW_AT_type
	.long	.Linfo_string119        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x90e:0xb DW_TAG_typedef
	.long	2131                    @ DW_AT_type
	.long	.Linfo_string120        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	89                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x919:0xb DW_TAG_typedef
	.long	2340                    @ DW_AT_type
	.long	.Linfo_string122        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x924:0xb DW_TAG_typedef
	.long	830                     @ DW_AT_type
	.long	.Linfo_string121        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x92f:0xb DW_TAG_typedef
	.long	2362                    @ DW_AT_type
	.long	.Linfo_string124        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x93a:0xb DW_TAG_typedef
	.long	105                     @ DW_AT_type
	.long	.Linfo_string123        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x945:0xb DW_TAG_typedef
	.long	2029                    @ DW_AT_type
	.long	.Linfo_string125        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x950:0xb DW_TAG_typedef
	.long	2131                    @ DW_AT_type
	.long	.Linfo_string126        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x95b:0x1b DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x966:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x96b:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x970:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x976:0x1b DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x981:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x986:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x98b:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x991:0x1a DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_linkage_name
	.long	.Linfo_string130        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x9a0:0x5 DW_TAG_formal_parameter
	.long	2475                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9a5:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x9ab:0x5 DW_TAG_const_type
	.long	1158                    @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x9b0:0x1b DW_TAG_subprogram
	.long	.Linfo_string131        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x9bb:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9c0:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9c5:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x9cb:0x1a DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_linkage_name
	.long	.Linfo_string133        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0x9da:0x5 DW_TAG_formal_parameter
	.long	2475                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9df:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x9e5:0x1b DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0x9f0:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9f5:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x9fa:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xa00:0x1b DW_TAG_subprogram
	.long	.Linfo_string135        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa0b:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa10:0x5 DW_TAG_formal_parameter
	.long	1582                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa15:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xa1b:0x16 DW_TAG_subprogram
	.long	.Linfo_string136        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa26:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa2b:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xa31:0x1b DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa3c:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa41:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa46:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xa4c:0x16 DW_TAG_subprogram
	.long	.Linfo_string138        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa57:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa5c:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xa62:0x1b DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa6d:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa72:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa77:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xa7d:0x1f DW_TAG_subprogram
	.long	.Linfo_string140        @ DW_AT_linkage_name
	.long	.Linfo_string141        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xa8c:0x5 DW_TAG_formal_parameter
	.long	1398                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa91:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xa96:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xa9c:0x1a DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_linkage_name
	.long	.Linfo_string143        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xaab:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xab0:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xab6:0x16 DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xac1:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xac6:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xacc:0x1a DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_linkage_name
	.long	.Linfo_string146        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xadb:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xae0:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xae6:0x1a DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_linkage_name
	.long	.Linfo_string148        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xaf5:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xafa:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xb00:0x16 DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xb0b:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xb10:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xb16:0x1a DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_linkage_name
	.long	.Linfo_string151        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xb25:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xb2a:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0xb30:0x16 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xb3b:0x5 DW_TAG_formal_parameter
	.long	1158                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xb40:0x5 DW_TAG_formal_parameter
	.long	1063                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xb46:0x1f DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_linkage_name
	.long	.Linfo_string154        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1398                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0xb55:0x5 DW_TAG_formal_parameter
	.long	2917                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xb5a:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xb5f:0x5 DW_TAG_formal_parameter
	.long	837                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xb65:0x5 DW_TAG_const_type
	.long	1398                    @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0xb6a:0x11 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	1158                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	14                      @ Abbrev [14] 0xb75:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xb7b:0x15 DW_TAG_subprogram
	.long	.Linfo_string156        @ DW_AT_linkage_name
	.long	.Linfo_string157        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	837                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	14                      @ Abbrev [14] 0xb8a:0x5 DW_TAG_formal_parameter
	.long	2960                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xb90:0x5 DW_TAG_const_type
	.long	1063                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0xb95:0xb4 DW_TAG_class_type
	.long	2965                    @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string164        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	20                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	31                      @ Abbrev [31] 0xba2:0xa DW_TAG_member
	.long	.Linfo_string158        @ DW_AT_name
	.long	3145                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0xbac:0xc DW_TAG_member
	.long	.Linfo_string160        @ DW_AT_name
	.long	3164                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0xbb8:0xc DW_TAG_member
	.long	.Linfo_string161        @ DW_AT_name
	.long	830                     @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	32                      @ Abbrev [32] 0xbc4:0x2f DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_linkage_name
	.long	.Linfo_string163        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	14                      @ Abbrev [14] 0xbd4:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xbd9:0x5 DW_TAG_formal_parameter
	.long	3164                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xbde:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xbe3:0x5 DW_TAG_formal_parameter
	.long	3164                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xbe8:0x5 DW_TAG_formal_parameter
	.long	3164                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xbed:0x5 DW_TAG_formal_parameter
	.long	3169                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	33                      @ Abbrev [33] 0xbf3:0x13 DW_TAG_subprogram
	.long	.Linfo_string164        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xbfb:0x5 DW_TAG_formal_parameter
	.long	3174                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                      @ Abbrev [14] 0xc00:0x5 DW_TAG_formal_parameter
	.long	3179                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xc06:0x16 DW_TAG_subprogram
	.long	.Linfo_string171        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	2965                    @ DW_AT_containing_type
	.byte	34                      @ Abbrev [34] 0xc16:0x5 DW_TAG_formal_parameter
	.long	3174                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xc1c:0x16 DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_linkage_name
	.long	.Linfo_string173        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.long	3164                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xc2c:0x5 DW_TAG_formal_parameter
	.long	3174                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xc32:0x16 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_linkage_name
	.long	.Linfo_string175        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xc42:0x5 DW_TAG_formal_parameter
	.long	3174                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xc49:0x5 DW_TAG_pointer_type
	.long	3150                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0xc4e:0x9 DW_TAG_pointer_type
	.long	3159                    @ DW_AT_type
	.long	.Linfo_string159        @ DW_AT_name
	.byte	37                      @ Abbrev [37] 0xc57:0x5 DW_TAG_subroutine_type
	.long	830                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xc5c:0x5 DW_TAG_pointer_type
	.long	2051                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xc61:0x5 DW_TAG_pointer_type
	.long	830                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xc66:0x5 DW_TAG_pointer_type
	.long	2965                    @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0xc6b:0x5 DW_TAG_reference_type
	.long	3184                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0xc70:0x64 DW_TAG_class_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string169        @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	21                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	40                      @ Abbrev [40] 0xc79:0xd DW_TAG_member
	.long	.Linfo_string165        @ DW_AT_name
	.long	3164                    @ DW_AT_type
	.byte	21                      @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	40                      @ Abbrev [40] 0xc86:0xd DW_TAG_member
	.long	.Linfo_string166        @ DW_AT_name
	.long	830                     @ DW_AT_type
	.byte	21                      @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	40                      @ Abbrev [40] 0xc93:0xd DW_TAG_member
	.long	.Linfo_string167        @ DW_AT_name
	.long	3164                    @ DW_AT_type
	.byte	21                      @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	40                      @ Abbrev [40] 0xca0:0xd DW_TAG_member
	.long	.Linfo_string168        @ DW_AT_name
	.long	830                     @ DW_AT_type
	.byte	21                      @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	33                      @ Abbrev [33] 0xcad:0x18 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xcb5:0x5 DW_TAG_formal_parameter
	.long	3284                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                      @ Abbrev [14] 0xcba:0x5 DW_TAG_formal_parameter
	.long	3164                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xcbf:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	33                      @ Abbrev [33] 0xcc5:0xe DW_TAG_subprogram
	.long	.Linfo_string170        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xccd:0x5 DW_TAG_formal_parameter
	.long	3284                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xcd4:0x5 DW_TAG_pointer_type
	.long	3184                    @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0xcd9:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3314                    @ DW_AT_object_pointer
	.byte	19                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	.Linfo_string188        @ DW_AT_linkage_name
	.long	3059                    @ DW_AT_specification
	.byte	42                      @ Abbrev [42] 0xcf2:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.long	.Linfo_string191        @ DW_AT_name
	.long	3915                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	43                      @ Abbrev [43] 0xcfe:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.long	.Linfo_string192        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	3179                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xd0d:0xed DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.byte	19                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	3012                    @ DW_AT_specification
	.byte	43                      @ Abbrev [43] 0xd1e:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\330"
	.long	.Linfo_string193        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd2d:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\324"
	.long	.Linfo_string194        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	3164                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd3c:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\320"
	.long	.Linfo_string195        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd4b:0xf DW_TAG_formal_parameter
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\314"
	.long	.Linfo_string196        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	3164                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd5a:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string197        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	3164                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd68:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string198        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	3169                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xd76:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	83
	.long	.Linfo_string199        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.long	2073                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xd84:0xf DW_TAG_variable
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\350"
	.long	.Linfo_string200        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	46                      @ Abbrev [46] 0xd93:0x66 DW_TAG_lexical_block
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	45                      @ Abbrev [45] 0xd98:0xf DW_TAG_variable
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\334"
	.long	.Linfo_string201        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	3691                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xda7:0xf DW_TAG_variable
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	"\304"
	.long	.Linfo_string202        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xdb6:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	56
	.long	.Linfo_string203        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xdc4:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	48
	.long	.Linfo_string205        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xdd2:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	44
	.long	.Linfo_string206        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	47                      @ Abbrev [47] 0xde0:0x18 DW_TAG_lexical_block
	.long	.Ltmp31                 @ DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31         @ DW_AT_high_pc
	.byte	45                      @ Abbrev [45] 0xde9:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	52
	.long	.Linfo_string204        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	41                      @ Abbrev [41] 0xdfa:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3603                    @ DW_AT_object_pointer
	.byte	19                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	.Linfo_string189        @ DW_AT_linkage_name
	.long	3078                    @ DW_AT_specification
	.byte	42                      @ Abbrev [42] 0xe13:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string191        @ DW_AT_name
	.long	3915                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	41                      @ Abbrev [41] 0xe20:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3641                    @ DW_AT_object_pointer
	.byte	19                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	.Linfo_string190        @ DW_AT_linkage_name
	.long	3078                    @ DW_AT_specification
	.byte	42                      @ Abbrev [42] 0xe39:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string191        @ DW_AT_name
	.long	3915                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	39                      @ Abbrev [39] 0xe46:0x20 DW_TAG_class_type
	.byte	5                       @ DW_AT_calling_convention
	.long	.Linfo_string187        @ DW_AT_name
	.byte	1                       @ DW_AT_byte_size
	.byte	22                      @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	32                      @ Abbrev [32] 0xe4f:0x16 DW_TAG_subprogram
	.long	.Linfo_string176        @ DW_AT_linkage_name
	.long	.Linfo_string177        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	14                      @ Abbrev [14] 0xe5f:0x5 DW_TAG_formal_parameter
	.long	3686                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0xe66:0x5 DW_TAG_reference_type
	.long	3691                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0xe6b:0x89 DW_TAG_class_type
	.long	3691                    @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string181        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	23                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	31                      @ Abbrev [31] 0xe78:0xa DW_TAG_member
	.long	.Linfo_string178        @ DW_AT_name
	.long	3145                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0xe82:0xc DW_TAG_member
	.long	.Linfo_string179        @ DW_AT_name
	.long	3164                    @ DW_AT_type
	.byte	23                      @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0xe8e:0xc DW_TAG_member
	.long	.Linfo_string180        @ DW_AT_name
	.long	105                     @ DW_AT_type
	.byte	23                      @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	33                      @ Abbrev [33] 0xe9a:0x13 DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xea2:0x5 DW_TAG_formal_parameter
	.long	3828                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                      @ Abbrev [14] 0xea7:0x5 DW_TAG_formal_parameter
	.long	3164                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xead:0x16 DW_TAG_subprogram
	.long	.Linfo_string182        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	3691                    @ DW_AT_containing_type
	.byte	34                      @ Abbrev [34] 0xebd:0x5 DW_TAG_formal_parameter
	.long	3828                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xec3:0x1b DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_linkage_name
	.long	.Linfo_string184        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	34                      @ Abbrev [34] 0xed3:0x5 DW_TAG_formal_parameter
	.long	3828                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	14                      @ Abbrev [14] 0xed8:0x5 DW_TAG_formal_parameter
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xede:0x15 DW_TAG_subprogram
	.long	.Linfo_string185        @ DW_AT_linkage_name
	.long	.Linfo_string186        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	34                      @ Abbrev [34] 0xeed:0x5 DW_TAG_formal_parameter
	.long	3828                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xef4:0x5 DW_TAG_pointer_type
	.long	3691                    @ DW_AT_type
	.byte	48                      @ Abbrev [48] 0xef9:0x52 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3663                    @ DW_AT_specification
	.byte	43                      @ Abbrev [43] 0xf08:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string207        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	3686                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xf16:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string208        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xf24:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string210        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	47                      @ Abbrev [47] 0xf32:0x18 DW_TAG_lexical_block
	.long	.Ltmp53                 @ DW_AT_low_pc
	.long	.Ltmp58-.Ltmp53         @ DW_AT_high_pc
	.byte	45                      @ Abbrev [45] 0xf3b:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string209        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	830                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xf4b:0x5 DW_TAG_pointer_type
	.long	2965                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp23
	.long	.Ltmp28
	.long	.Ltmp29
	.long	.Ltmp37
	.long	.Ltmp38
	.long	.Ltmp39
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
	.byte	0                       @ End Of Macro List Mark

	.globl	_ZN23AVCDecoderConfigurationC1ER10H264Params
	.type	_ZN23AVCDecoderConfigurationC1ER10H264Params,%function
.set _ZN23AVCDecoderConfigurationC1ER10H264Params, _ZN23AVCDecoderConfigurationC2ER10H264Params
	.globl	_ZN23AVCDecoderConfigurationD1Ev
	.type	_ZN23AVCDecoderConfigurationD1Ev,%function
.set _ZN23AVCDecoderConfigurationD1Ev, _ZN23AVCDecoderConfigurationD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
