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
	.file	"FLVTag.cpp"
	.file	1 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	2 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.file	3 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/stddef.h"
	.file	4 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstddef"
	.file	5 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/__stddef_max_align_t.h"
	.file	6 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdlib"
	.file	7 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdlib.h"
	.file	8 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/android/legacy_stdlib_inlines.h"
	.file	9 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/malloc.h"
	.file	10 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/math.h"
	.file	11 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/local/include/stdlib.h"
	.file	12 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdint.h"
	.file	13 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdint"
	.file	14 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstring"
	.file	15 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/string.h"
	.file	16 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/bits/fortify/string.h"
	.file	17 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/string.h"
	.section	.text._ZN6FLVTagC2EhjjP11IFLVTagData,"ax",%progbits
	.globl	_ZN6FLVTagC2EhjjP11IFLVTagData @ -- Begin function _ZN6FLVTagC2EhjjP11IFLVTagData
	.p2align	2
	.type	_ZN6FLVTagC2EhjjP11IFLVTagData,%function
	.code	16                      @ @_ZN6FLVTagC2EhjjP11IFLVTagData
	.thumb_func
_ZN6FLVTagC2EhjjP11IFLVTagData:
.Lfunc_begin0:
	.file	18 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/FLVTag.cpp"
	.loc	18 14 0                 @ src/main/cpp/FLVTag.cpp:14:0
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
	.pad	#40
	sub	sp, #40
	ldr.w	r12, [r7, #8]
	mov	lr, r1
	ldr	r4, .LCPI0_0
.LPC0_0:
	add	r4, pc
	ldr	r4, [r4]
	ldr	r5, [r4]
	str	r5, [sp, #36]
	str	r0, [sp, #28]
	strb	r1, [r7, #-21]
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	ldr	r0, [sp, #28]
.Ltmp0:
	.loc	18 8 9 prologue_end     @ src/main/cpp/FLVTag.cpp:8:9
	str	r0, [sp, #12]           @ 4-byte Spill
	str.w	r12, [sp, #8]           @ 4-byte Spill
	str.w	lr, [sp, #4]            @ 4-byte Spill
	str	r4, [sp]                @ 4-byte Spill
	bl	_ZN7IBufferC2Ev
	.loc	18 14 1                 @ src/main/cpp/FLVTag.cpp:14:1
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	r0, [r1]
	.loc	18 13 14                @ src/main/cpp/FLVTag.cpp:13:14
	ldrb	r0, [r7, #-21]
	.loc	18 13 4 is_stmt 0       @ src/main/cpp/FLVTag.cpp:13:4
	strb.w	r0, [r1, #136]
	.loc	18 13 36                @ src/main/cpp/FLVTag.cpp:13:36
	ldr	r0, [sp, #20]
	.loc	18 13 25                @ src/main/cpp/FLVTag.cpp:13:25
	str.w	r0, [r1, #140]
	.loc	18 13 60                @ src/main/cpp/FLVTag.cpp:13:60
	ldr	r0, [sp, #16]
	.loc	18 13 48                @ src/main/cpp/FLVTag.cpp:13:48
	str.w	r0, [r1, #144]
	.loc	18 13 78                @ src/main/cpp/FLVTag.cpp:13:78
	ldr	r0, [r7, #8]
	.loc	18 13 72                @ src/main/cpp/FLVTag.cpp:13:72
	str.w	r0, [r1, #148]
	movs	r0, #0
.Ltmp1:
	.loc	18 15 9 is_stmt 1       @ src/main/cpp/FLVTag.cpp:15:9
	str	r0, [sp, #32]
	.loc	18 16 20                @ src/main/cpp/FLVTag.cpp:16:20
	ldrb	r2, [r7, #-21]
	.loc	18 16 5 is_stmt 0       @ src/main/cpp/FLVTag.cpp:16:5
	adds	r3, r1, #4
	.loc	18 16 14                @ src/main/cpp/FLVTag.cpp:16:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 16 18                @ src/main/cpp/FLVTag.cpp:16:18
	strb.w	r2, [r3, r12]
	.loc	18 18 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:18:21
	ldrh.w	r2, [sp, #22]
	.loc	18 18 14 is_stmt 0      @ src/main/cpp/FLVTag.cpp:18:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 18 18                @ src/main/cpp/FLVTag.cpp:18:18
	strb.w	r2, [r3, r12]
	.loc	18 19 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:19:21
	ldr	r2, [sp, #20]
	.loc	18 19 31 is_stmt 0      @ src/main/cpp/FLVTag.cpp:19:31
	lsrs	r2, r2, #8
	.loc	18 19 14                @ src/main/cpp/FLVTag.cpp:19:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 19 18                @ src/main/cpp/FLVTag.cpp:19:18
	strb.w	r2, [r3, r12]
	.loc	18 20 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:20:21
	ldr	r2, [sp, #20]
	.loc	18 20 14 is_stmt 0      @ src/main/cpp/FLVTag.cpp:20:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 20 18                @ src/main/cpp/FLVTag.cpp:20:18
	strb.w	r2, [r3, r12]
	.loc	18 22 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:22:21
	ldrh.w	r2, [sp, #18]
	.loc	18 22 14 is_stmt 0      @ src/main/cpp/FLVTag.cpp:22:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 22 18                @ src/main/cpp/FLVTag.cpp:22:18
	strb.w	r2, [r3, r12]
	.loc	18 23 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:23:21
	ldr	r2, [sp, #16]
	.loc	18 23 32 is_stmt 0      @ src/main/cpp/FLVTag.cpp:23:32
	lsrs	r2, r2, #8
	.loc	18 23 14                @ src/main/cpp/FLVTag.cpp:23:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 23 18                @ src/main/cpp/FLVTag.cpp:23:18
	strb.w	r2, [r3, r12]
	.loc	18 24 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:24:21
	ldr	r2, [sp, #16]
	.loc	18 24 14 is_stmt 0      @ src/main/cpp/FLVTag.cpp:24:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 24 18                @ src/main/cpp/FLVTag.cpp:24:18
	strb.w	r2, [r3, r12]
	.loc	18 25 21 is_stmt 1      @ src/main/cpp/FLVTag.cpp:25:21
	ldrb.w	r2, [sp, #23]
	.loc	18 25 14 is_stmt 0      @ src/main/cpp/FLVTag.cpp:25:14
	ldr.w	r12, [sp, #32]
	add.w	lr, r12, #1
	str.w	lr, [sp, #32]
	.loc	18 25 18                @ src/main/cpp/FLVTag.cpp:25:18
	strb.w	r2, [r3, r12]
	.loc	18 27 14 is_stmt 1      @ src/main/cpp/FLVTag.cpp:27:14
	ldr	r2, [sp, #32]
	add.w	r12, r2, #1
	str.w	r12, [sp, #32]
	.loc	18 27 18 is_stmt 0      @ src/main/cpp/FLVTag.cpp:27:18
	strb	r0, [r3, r2]
	.loc	18 28 14 is_stmt 1      @ src/main/cpp/FLVTag.cpp:28:14
	ldr	r2, [sp, #32]
	add.w	r12, r2, #1
	str.w	r12, [sp, #32]
	.loc	18 28 18 is_stmt 0      @ src/main/cpp/FLVTag.cpp:28:18
	strb	r0, [r3, r2]
	.loc	18 29 14 is_stmt 1      @ src/main/cpp/FLVTag.cpp:29:14
	ldr	r2, [sp, #32]
	add.w	r12, r2, #1
	str.w	r12, [sp, #32]
	.loc	18 29 18 is_stmt 0      @ src/main/cpp/FLVTag.cpp:29:18
	strb	r0, [r3, r2]
	.loc	18 31 13 is_stmt 1      @ src/main/cpp/FLVTag.cpp:31:13
	ldr	r0, [sp, #32]
	.loc	18 31 11 is_stmt 0      @ src/main/cpp/FLVTag.cpp:31:11
	str.w	r0, [r1, #132]
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r2, [r0]
	ldr	r3, [sp, #36]
	cmp	r2, r3
	bne	.LBB0_2
	b	.LBB0_1
.Ltmp2:
.LBB0_1:                                @ %SP_return
	.loc	18 32 1 is_stmt 1       @ src/main/cpp/FLVTag.cpp:32:1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	add	sp, #40
	pop	{r4, r5, r7, pc}
.LBB0_2:                                @ %CallStackCheckFailBlk
	.loc	18 0 0 is_stmt 0        @ src/main/cpp/FLVTag.cpp:0:0
	bl	__stack_chk_fail
.Ltmp3:
	.p2align	2
@ %bb.3:
.LCPI0_0:
.Ltmp4:
	.long	__stack_chk_guard(GOT_PREL)-((.LPC0_0+4)-.Ltmp4)
.LCPI0_1:
.Ltmp5:
	.long	_ZTV6FLVTag(GOT_PREL)-((.LPC0_1+4)-.Ltmp5)
.Lfunc_end0:
	.size	_ZN6FLVTagC2EhjjP11IFLVTagData, .Lfunc_end0-_ZN6FLVTagC2EhjjP11IFLVTagData
	.cfi_endproc
	.file	19 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IBuffer.h"
	.file	20 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/FLVTag.h"
	.file	21 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IFLVTagData.h"
	.fnend
                                        @ -- End function
	.section	.text._ZN7IBufferC2Ev,"axG",%progbits,_ZN7IBufferC2Ev,comdat
	.weak	_ZN7IBufferC2Ev         @ -- Begin function _ZN7IBufferC2Ev
	.p2align	2
	.type	_ZN7IBufferC2Ev,%function
	.code	16                      @ @_ZN7IBufferC2Ev
	.thumb_func
_ZN7IBufferC2Ev:
.Lfunc_begin1:
	.loc	19 9 0 is_stmt 1        @ src/main/cpp/IBuffer.h:9:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp6:
	.loc	19 9 7 prologue_end     @ src/main/cpp/IBuffer.h:9:7
	ldr	r1, .LCPI1_0
.LPC1_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
	add	sp, #4
	bx	lr
.Ltmp7:
	.p2align	2
@ %bb.1:
	.loc	19 0 7 is_stmt 0        @ src/main/cpp/IBuffer.h:0:7
.LCPI1_0:
.Ltmp8:
	.long	_ZTV7IBuffer(GOT_PREL)-((.LPC1_0+4)-.Ltmp8)
.Lfunc_end1:
	.size	_ZN7IBufferC2Ev, .Lfunc_end1-_ZN7IBufferC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN6FLVTagD2Ev,"ax",%progbits
	.globl	_ZN6FLVTagD2Ev          @ -- Begin function _ZN6FLVTagD2Ev
	.p2align	1
	.type	_ZN6FLVTagD2Ev,%function
	.code	16                      @ @_ZN6FLVTagD2Ev
	.thumb_func
_ZN6FLVTagD2Ev:
.Lfunc_begin2:
	.loc	18 34 0 is_stmt 1       @ src/main/cpp/FLVTag.cpp:34:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp9:
	.loc	18 35 1 prologue_end    @ src/main/cpp/FLVTag.cpp:35:1
	add	sp, #4
	bx	lr
.Ltmp10:
.Lfunc_end2:
	.size	_ZN6FLVTagD2Ev, .Lfunc_end2-_ZN6FLVTagD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN6FLVTagD0Ev,"ax",%progbits
	.globl	_ZN6FLVTagD0Ev          @ -- Begin function _ZN6FLVTagD0Ev
	.p2align	1
	.type	_ZN6FLVTagD0Ev,%function
	.code	16                      @ @_ZN6FLVTagD0Ev
	.thumb_func
_ZN6FLVTagD0Ev:
.Lfunc_begin3:
	.loc	18 34 0                 @ src/main/cpp/FLVTag.cpp:34:0
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
.Ltmp11:
	.loc	18 34 19 prologue_end   @ src/main/cpp/FLVTag.cpp:34:19
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_ZN6FLVTagD1Ev
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	_ZdlPv
	.loc	18 35 1                 @ src/main/cpp/FLVTag.cpp:35:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp12:
.Lfunc_end3:
	.size	_ZN6FLVTagD0Ev, .Lfunc_end3-_ZN6FLVTagD0Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN6FLVTag7WriteToEPc,"ax",%progbits
	.globl	_ZN6FLVTag7WriteToEPc   @ -- Begin function _ZN6FLVTag7WriteToEPc
	.p2align	1
	.type	_ZN6FLVTag7WriteToEPc,%function
	.code	16                      @ @_ZN6FLVTag7WriteToEPc
	.thumb_func
_ZN6FLVTag7WriteToEPc:
.Lfunc_begin4:
	.loc	18 37 0                 @ src/main/cpp/FLVTag.cpp:37:0
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
	str	r1, [sp, #8]
	ldr	r0, [sp, #12]
.Ltmp13:
	.loc	18 38 12 prologue_end   @ src/main/cpp/FLVTag.cpp:38:12
	ldr	r1, [sp, #8]
	.loc	18 38 20 is_stmt 0      @ src/main/cpp/FLVTag.cpp:38:20
	adds	r2, r0, #4
	.loc	18 38 29                @ src/main/cpp/FLVTag.cpp:38:29
	ldr.w	r3, [r0, #132]
	.loc	18 38 5                 @ src/main/cpp/FLVTag.cpp:38:5
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	__aeabi_memcpy
	.loc	18 39 15 is_stmt 1      @ src/main/cpp/FLVTag.cpp:39:15
	ldr	r1, [sp, #4]            @ 4-byte Reload
	ldr.w	r2, [r1, #132]
	.loc	18 39 12 is_stmt 0      @ src/main/cpp/FLVTag.cpp:39:12
	ldr	r3, [sp, #8]
	add	r2, r3
	str	r2, [sp, #8]
	.loc	18 40 12 is_stmt 1      @ src/main/cpp/FLVTag.cpp:40:12
	ldr.w	r2, [r1, #148]
	.loc	18 40 27 is_stmt 0      @ src/main/cpp/FLVTag.cpp:40:27
	ldr	r1, [sp, #8]
	.loc	18 40 19                @ src/main/cpp/FLVTag.cpp:40:19
	ldr	r3, [r2]
	ldr	r3, [r3]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r2
	blx	r3
	.loc	18 40 5                 @ src/main/cpp/FLVTag.cpp:40:5
	add	sp, #16
	pop	{r7, pc}
.Ltmp14:
.Lfunc_end4:
	.size	_ZN6FLVTag7WriteToEPc, .Lfunc_end4-_ZN6FLVTag7WriteToEPc
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN6FLVTag4SizeEv,"ax",%progbits
	.globl	_ZN6FLVTag4SizeEv       @ -- Begin function _ZN6FLVTag4SizeEv
	.p2align	1
	.type	_ZN6FLVTag4SizeEv,%function
	.code	16                      @ @_ZN6FLVTag4SizeEv
	.thumb_func
_ZN6FLVTag4SizeEv:
.Lfunc_begin5:
	.loc	18 43 0 is_stmt 1       @ src/main/cpp/FLVTag.cpp:43:0
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
	.pad	#8
	sub	sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
.Ltmp15:
	.loc	18 44 12 prologue_end   @ src/main/cpp/FLVTag.cpp:44:12
	ldr.w	r1, [r0, #132]
	.loc	18 44 20 is_stmt 0      @ src/main/cpp/FLVTag.cpp:44:20
	ldr.w	r0, [r0, #148]
	.loc	18 44 27                @ src/main/cpp/FLVTag.cpp:44:27
	ldr	r2, [r0]
	ldr	r2, [r2, #4]
	str	r1, [sp]                @ 4-byte Spill
	blx	r2
	.loc	18 44 18                @ src/main/cpp/FLVTag.cpp:44:18
	ldr	r1, [sp]                @ 4-byte Reload
	add	r0, r1
	.loc	18 44 5                 @ src/main/cpp/FLVTag.cpp:44:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp16:
.Lfunc_end5:
	.size	_ZN6FLVTag4SizeEv, .Lfunc_end5-_ZN6FLVTag4SizeEv
	.cfi_endproc
	.fnend
                                        @ -- End function
	.type	_ZTV6FLVTag,%object     @ @_ZTV6FLVTag
	.section	.data.rel.ro._ZTV6FLVTag,"aw",%progbits
	.globl	_ZTV6FLVTag
	.p2align	2
_ZTV6FLVTag:
	.long	0
	.long	_ZTI6FLVTag
	.long	_ZN6FLVTag7WriteToEPc
	.long	_ZN6FLVTag4SizeEv
	.long	_ZN6FLVTagD1Ev
	.long	_ZN6FLVTagD0Ev
	.size	_ZTV6FLVTag, 24

	.type	_ZTS6FLVTag,%object     @ @_ZTS6FLVTag
	.section	.rodata._ZTS6FLVTag,"a",%progbits
	.globl	_ZTS6FLVTag
_ZTS6FLVTag:
	.asciz	"6FLVTag"
	.size	_ZTS6FLVTag, 8

	.type	_ZTS7IBuffer,%object    @ @_ZTS7IBuffer
	.section	.rodata._ZTS7IBuffer,"aG",%progbits,_ZTS7IBuffer,comdat
	.weak	_ZTS7IBuffer
_ZTS7IBuffer:
	.asciz	"7IBuffer"
	.size	_ZTS7IBuffer, 9

	.type	_ZTI7IBuffer,%object    @ @_ZTI7IBuffer
	.section	.data.rel.ro._ZTI7IBuffer,"aGw",%progbits,_ZTI7IBuffer,comdat
	.weak	_ZTI7IBuffer
	.p2align	2
_ZTI7IBuffer:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7IBuffer
	.size	_ZTI7IBuffer, 8

	.type	_ZTI6FLVTag,%object     @ @_ZTI6FLVTag
	.section	.data.rel.ro._ZTI6FLVTag,"aw",%progbits
	.globl	_ZTI6FLVTag
	.p2align	2
_ZTI6FLVTag:
	.long	_ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.long	_ZTS6FLVTag
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	_ZTI7IBuffer
	.long	0                       @ 0x0
	.size	_ZTI6FLVTag, 24

	.type	_ZTV7IBuffer,%object    @ @_ZTV7IBuffer
	.section	.data.rel.ro._ZTV7IBuffer,"aGw",%progbits,_ZTV7IBuffer,comdat
	.weak	_ZTV7IBuffer
	.p2align	2
_ZTV7IBuffer:
	.long	0
	.long	_ZTI7IBuffer
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.size	_ZTV7IBuffer, 16

	.file	22 "<stdin>"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/FLVTag.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=215
.Linfo_string3:
	.asciz	"std"                   @ string offset=306
.Linfo_string4:
	.asciz	"decltype(nullptr)"     @ string offset=310
.Linfo_string5:
	.asciz	"nullptr_t"             @ string offset=328
.Linfo_string6:
	.asciz	"__ndk1"                @ string offset=338
.Linfo_string7:
	.asciz	"int"                   @ string offset=345
.Linfo_string8:
	.asciz	"ptrdiff_t"             @ string offset=349
.Linfo_string9:
	.asciz	"unsigned int"          @ string offset=359
.Linfo_string10:
	.asciz	"size_t"                @ string offset=372
.Linfo_string11:
	.asciz	"__clang_max_align_nonce1" @ string offset=379
.Linfo_string12:
	.asciz	"long long int"         @ string offset=404
.Linfo_string13:
	.asciz	"__clang_max_align_nonce2" @ string offset=418
.Linfo_string14:
	.asciz	"long double"           @ string offset=443
.Linfo_string15:
	.asciz	"max_align_t"           @ string offset=455
.Linfo_string16:
	.asciz	"quot"                  @ string offset=467
.Linfo_string17:
	.asciz	"rem"                   @ string offset=472
.Linfo_string18:
	.asciz	"div_t"                 @ string offset=476
.Linfo_string19:
	.asciz	"long int"              @ string offset=482
.Linfo_string20:
	.asciz	"ldiv_t"                @ string offset=491
.Linfo_string21:
	.asciz	"lldiv_t"               @ string offset=498
.Linfo_string22:
	.asciz	"_ZL4atofPKc"           @ string offset=506
.Linfo_string23:
	.asciz	"atof"                  @ string offset=518
.Linfo_string24:
	.asciz	"double"                @ string offset=523
.Linfo_string25:
	.asciz	"char"                  @ string offset=530
.Linfo_string26:
	.asciz	"atoi"                  @ string offset=535
.Linfo_string27:
	.asciz	"atol"                  @ string offset=540
.Linfo_string28:
	.asciz	"atoll"                 @ string offset=545
.Linfo_string29:
	.asciz	"strtod"                @ string offset=551
.Linfo_string30:
	.asciz	"_ZL6strtofPKcPPc"      @ string offset=558
.Linfo_string31:
	.asciz	"strtof"                @ string offset=575
.Linfo_string32:
	.asciz	"float"                 @ string offset=582
.Linfo_string33:
	.asciz	"strtold"               @ string offset=588
.Linfo_string34:
	.asciz	"strtol"                @ string offset=596
.Linfo_string35:
	.asciz	"strtoll"               @ string offset=603
.Linfo_string36:
	.asciz	"strtoul"               @ string offset=611
.Linfo_string37:
	.asciz	"long unsigned int"     @ string offset=619
.Linfo_string38:
	.asciz	"strtoull"              @ string offset=637
.Linfo_string39:
	.asciz	"long long unsigned int" @ string offset=646
.Linfo_string40:
	.asciz	"_ZL4randv"             @ string offset=669
.Linfo_string41:
	.asciz	"rand"                  @ string offset=679
.Linfo_string42:
	.asciz	"_ZL5srandj"            @ string offset=684
.Linfo_string43:
	.asciz	"srand"                 @ string offset=695
.Linfo_string44:
	.asciz	"calloc"                @ string offset=701
.Linfo_string45:
	.asciz	"free"                  @ string offset=708
.Linfo_string46:
	.asciz	"malloc"                @ string offset=713
.Linfo_string47:
	.asciz	"realloc"               @ string offset=720
.Linfo_string48:
	.asciz	"abort"                 @ string offset=728
.Linfo_string49:
	.asciz	"atexit"                @ string offset=734
.Linfo_string50:
	.asciz	"exit"                  @ string offset=741
.Linfo_string51:
	.asciz	"_exit"                 @ string offset=746
.Linfo_string52:
	.asciz	"_Exit"                 @ string offset=752
.Linfo_string53:
	.asciz	"getenv"                @ string offset=758
.Linfo_string54:
	.asciz	"system"                @ string offset=765
.Linfo_string55:
	.asciz	"bsearch"               @ string offset=772
.Linfo_string56:
	.asciz	"qsort"                 @ string offset=780
.Linfo_string57:
	.asciz	"_Z3abse"               @ string offset=786
.Linfo_string58:
	.asciz	"abs"                   @ string offset=794
.Linfo_string59:
	.asciz	"_ZL4labsl"             @ string offset=798
.Linfo_string60:
	.asciz	"labs"                  @ string offset=808
.Linfo_string61:
	.asciz	"_ZL5llabsx"            @ string offset=813
.Linfo_string62:
	.asciz	"llabs"                 @ string offset=824
.Linfo_string63:
	.asciz	"_Z3divxx"              @ string offset=830
.Linfo_string64:
	.asciz	"div"                   @ string offset=839
.Linfo_string65:
	.asciz	"ldiv"                  @ string offset=843
.Linfo_string66:
	.asciz	"lldiv"                 @ string offset=848
.Linfo_string67:
	.asciz	"mblen"                 @ string offset=854
.Linfo_string68:
	.asciz	"mbtowc"                @ string offset=860
.Linfo_string69:
	.asciz	"wchar_t"               @ string offset=867
.Linfo_string70:
	.asciz	"wctomb"                @ string offset=875
.Linfo_string71:
	.asciz	"mbstowcs"              @ string offset=882
.Linfo_string72:
	.asciz	"wcstombs"              @ string offset=891
.Linfo_string73:
	.asciz	"at_quick_exit"         @ string offset=900
.Linfo_string74:
	.asciz	"quick_exit"            @ string offset=914
.Linfo_string75:
	.asciz	"signed char"           @ string offset=925
.Linfo_string76:
	.asciz	"__int8_t"              @ string offset=937
.Linfo_string77:
	.asciz	"int8_t"                @ string offset=946
.Linfo_string78:
	.asciz	"short"                 @ string offset=953
.Linfo_string79:
	.asciz	"__int16_t"             @ string offset=959
.Linfo_string80:
	.asciz	"int16_t"               @ string offset=969
.Linfo_string81:
	.asciz	"__int32_t"             @ string offset=977
.Linfo_string82:
	.asciz	"int32_t"               @ string offset=987
.Linfo_string83:
	.asciz	"__int64_t"             @ string offset=995
.Linfo_string84:
	.asciz	"int64_t"               @ string offset=1005
.Linfo_string85:
	.asciz	"unsigned char"         @ string offset=1013
.Linfo_string86:
	.asciz	"__uint8_t"             @ string offset=1027
.Linfo_string87:
	.asciz	"uint8_t"               @ string offset=1037
.Linfo_string88:
	.asciz	"unsigned short"        @ string offset=1045
.Linfo_string89:
	.asciz	"__uint16_t"            @ string offset=1060
.Linfo_string90:
	.asciz	"uint16_t"              @ string offset=1071
.Linfo_string91:
	.asciz	"__uint32_t"            @ string offset=1080
.Linfo_string92:
	.asciz	"uint32_t"              @ string offset=1091
.Linfo_string93:
	.asciz	"__uint64_t"            @ string offset=1100
.Linfo_string94:
	.asciz	"uint64_t"              @ string offset=1111
.Linfo_string95:
	.asciz	"int_least8_t"          @ string offset=1120
.Linfo_string96:
	.asciz	"int_least16_t"         @ string offset=1133
.Linfo_string97:
	.asciz	"int_least32_t"         @ string offset=1147
.Linfo_string98:
	.asciz	"int_least64_t"         @ string offset=1161
.Linfo_string99:
	.asciz	"uint_least8_t"         @ string offset=1175
.Linfo_string100:
	.asciz	"uint_least16_t"        @ string offset=1189
.Linfo_string101:
	.asciz	"uint_least32_t"        @ string offset=1204
.Linfo_string102:
	.asciz	"uint_least64_t"        @ string offset=1219
.Linfo_string103:
	.asciz	"int_fast8_t"           @ string offset=1234
.Linfo_string104:
	.asciz	"int_fast16_t"          @ string offset=1246
.Linfo_string105:
	.asciz	"int_fast32_t"          @ string offset=1259
.Linfo_string106:
	.asciz	"int_fast64_t"          @ string offset=1272
.Linfo_string107:
	.asciz	"uint_fast8_t"          @ string offset=1285
.Linfo_string108:
	.asciz	"uint_fast16_t"         @ string offset=1298
.Linfo_string109:
	.asciz	"uint_fast32_t"         @ string offset=1312
.Linfo_string110:
	.asciz	"uint_fast64_t"         @ string offset=1326
.Linfo_string111:
	.asciz	"__intptr_t"            @ string offset=1340
.Linfo_string112:
	.asciz	"intptr_t"              @ string offset=1351
.Linfo_string113:
	.asciz	"__uintptr_t"           @ string offset=1360
.Linfo_string114:
	.asciz	"uintptr_t"             @ string offset=1372
.Linfo_string115:
	.asciz	"intmax_t"              @ string offset=1382
.Linfo_string116:
	.asciz	"uintmax_t"             @ string offset=1391
.Linfo_string117:
	.asciz	"memcpy"                @ string offset=1401
.Linfo_string118:
	.asciz	"memmove"               @ string offset=1408
.Linfo_string119:
	.asciz	"_ZL6strcpyPcU17pass_object_size1PKc" @ string offset=1416
.Linfo_string120:
	.asciz	"strcpy"                @ string offset=1452
.Linfo_string121:
	.asciz	"strncpy"               @ string offset=1459
.Linfo_string122:
	.asciz	"_ZL6strcatPcU17pass_object_size1PKc" @ string offset=1467
.Linfo_string123:
	.asciz	"strcat"                @ string offset=1503
.Linfo_string124:
	.asciz	"strncat"               @ string offset=1510
.Linfo_string125:
	.asciz	"memcmp"                @ string offset=1518
.Linfo_string126:
	.asciz	"strcmp"                @ string offset=1525
.Linfo_string127:
	.asciz	"strncmp"               @ string offset=1532
.Linfo_string128:
	.asciz	"strcoll"               @ string offset=1540
.Linfo_string129:
	.asciz	"strxfrm"               @ string offset=1548
.Linfo_string130:
	.asciz	"_Z6memchrUa9enable_ifIXLb1EEEPvij" @ string offset=1556
.Linfo_string131:
	.asciz	"memchr"                @ string offset=1590
.Linfo_string132:
	.asciz	"_Z6strchrUa9enable_ifIXLb1EEEPci" @ string offset=1597
.Linfo_string133:
	.asciz	"strchr"                @ string offset=1630
.Linfo_string134:
	.asciz	"strcspn"               @ string offset=1637
.Linfo_string135:
	.asciz	"_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc" @ string offset=1645
.Linfo_string136:
	.asciz	"strpbrk"               @ string offset=1681
.Linfo_string137:
	.asciz	"_Z7strrchrUa9enable_ifIXLb1EEEPci" @ string offset=1689
.Linfo_string138:
	.asciz	"strrchr"               @ string offset=1723
.Linfo_string139:
	.asciz	"strspn"                @ string offset=1731
.Linfo_string140:
	.asciz	"_Z6strstrUa9enable_ifIXLb1EEEPcPKc" @ string offset=1738
.Linfo_string141:
	.asciz	"strstr"                @ string offset=1773
.Linfo_string142:
	.asciz	"strtok"                @ string offset=1780
.Linfo_string143:
	.asciz	"_ZL6memsetPvU17pass_object_size0ij" @ string offset=1787
.Linfo_string144:
	.asciz	"memset"                @ string offset=1822
.Linfo_string145:
	.asciz	"strerror"              @ string offset=1829
.Linfo_string146:
	.asciz	"_ZL6strlenPKcU17pass_object_size0" @ string offset=1838
.Linfo_string147:
	.asciz	"strlen"                @ string offset=1872
.Linfo_string148:
	.asciz	"_vptr$IBuffer"         @ string offset=1879
.Linfo_string149:
	.asciz	"__vtbl_ptr_type"       @ string offset=1893
.Linfo_string150:
	.asciz	"_ZN7IBuffer7WriteToEPc" @ string offset=1909
.Linfo_string151:
	.asciz	"WriteTo"               @ string offset=1932
.Linfo_string152:
	.asciz	"_ZN7IBuffer4SizeEv"    @ string offset=1940
.Linfo_string153:
	.asciz	"Size"                  @ string offset=1959
.Linfo_string154:
	.asciz	"IBuffer"               @ string offset=1964
.Linfo_string155:
	.asciz	"AUDIO"                 @ string offset=1972
.Linfo_string156:
	.asciz	"VIDEO"                 @ string offset=1978
.Linfo_string157:
	.asciz	"SCRIPT_DATA"           @ string offset=1984
.Linfo_string158:
	.asciz	"buffer_"               @ string offset=1996
.Linfo_string159:
	.asciz	"__ARRAY_SIZE_TYPE__"   @ string offset=2004
.Linfo_string160:
	.asciz	"size_"                 @ string offset=2024
.Linfo_string161:
	.asciz	"tag_type_"             @ string offset=2030
.Linfo_string162:
	.asciz	"data_size_"            @ string offset=2040
.Linfo_string163:
	.asciz	"time_stamp_"           @ string offset=2051
.Linfo_string164:
	.asciz	"data_"                 @ string offset=2063
.Linfo_string165:
	.asciz	"IFLVTagData"           @ string offset=2069
.Linfo_string166:
	.asciz	"FLVTag"                @ string offset=2081
.Linfo_string167:
	.asciz	"~FLVTag"               @ string offset=2088
.Linfo_string168:
	.asciz	"_ZN6FLVTag7WriteToEPc" @ string offset=2096
.Linfo_string169:
	.asciz	"_ZN6FLVTag4SizeEv"     @ string offset=2118
.Linfo_string170:
	.asciz	"_ZN6FLVTagC2EhjjP11IFLVTagData" @ string offset=2136
.Linfo_string171:
	.asciz	"_ZN7IBufferC2Ev"       @ string offset=2167
.Linfo_string172:
	.asciz	"_ZN6FLVTagD2Ev"        @ string offset=2183
.Linfo_string173:
	.asciz	"_ZN6FLVTagD0Ev"        @ string offset=2198
.Linfo_string174:
	.asciz	"this"                  @ string offset=2213
.Linfo_string175:
	.asciz	"tag_type"              @ string offset=2218
.Linfo_string176:
	.asciz	"data_size"             @ string offset=2227
.Linfo_string177:
	.asciz	"time_stamp"            @ string offset=2237
.Linfo_string178:
	.asciz	"data"                  @ string offset=2248
.Linfo_string179:
	.asciz	"i"                     @ string offset=2253
.Linfo_string180:
	.asciz	"output"                @ string offset=2255
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
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
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
	.byte	4                       @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.ascii	"\211\001"              @ DW_AT_export_symbols
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
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
	.byte	6                       @ Abbreviation Code
	.byte	59                      @ DW_TAG_unspecified_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
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
	.byte	8                       @ Abbreviation Code
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
	.byte	9                       @ Abbreviation Code
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
	.byte	10                      @ Abbreviation Code
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
	.byte	11                      @ Abbreviation Code
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
	.byte	12                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
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
	.byte	16                      @ Abbreviation Code
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
	.byte	17                      @ Abbreviation Code
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
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
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
	.byte	21                      @ Abbreviation Code
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
	.byte	22                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
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
	.byte	24                      @ Abbreviation Code
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
	.byte	25                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
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
	.byte	28                      @ Abbreviation Code
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
	.byte	29                      @ Abbreviation Code
	.byte	28                      @ DW_TAG_inheritance
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
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
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
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
	.byte	32                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
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
	.byte	34                      @ Abbreviation Code
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
	.byte	35                      @ Abbreviation Code
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
	.byte	36                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	28                      @ DW_TAG_inheritance
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	43                      @ Abbreviation Code
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
	.byte	44                      @ Abbreviation Code
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
	.byte	45                      @ Abbreviation Code
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
	.byte	46                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	47                      @ Abbreviation Code
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
	.byte	48                      @ Abbreviation Code
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
	.byte	1                       @ Abbrev [1] 0xb:0xe3c DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x2b7 DW_TAG_namespace
	.long	.Linfo_string3          @ DW_AT_name
	.byte	3                       @ Abbrev [3] 0x2b:0xb DW_TAG_typedef
	.long	733                     @ DW_AT_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x36:0x2a6 DW_TAG_namespace
	.long	.Linfo_string6          @ DW_AT_name
                                        @ DW_AT_export_symbols
	.byte	5                       @ Abbrev [5] 0x3b:0x7 DW_TAG_imported_declaration
	.byte	4                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	745                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x42:0x7 DW_TAG_imported_declaration
	.byte	4                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.long	763                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x49:0x7 DW_TAG_imported_declaration
	.byte	4                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	781                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x50:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.long	763                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x57:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.long	838                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x5e:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.long	879                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x65:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	927                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x6c:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	968                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x73:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1013                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x7a:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	107                     @ DW_AT_decl_line
	.long	1030                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x81:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1047                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x88:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.long	1064                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x8f:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	1096                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x96:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.long	1129                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x9d:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	114                     @ DW_AT_decl_line
	.long	1155                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xa4:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	116                     @ DW_AT_decl_line
	.long	1182                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xab:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	1209                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xb2:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.long	1243                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xb9:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	1277                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xc0:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	1292                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xc7:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1309                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xce:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	1332                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xd5:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.long	1345                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xdc:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	1362                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xe3:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1384                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xea:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	1391                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xf1:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.long	1414                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xf8:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1427                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0xff:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	133                     @ DW_AT_decl_line
	.long	1444                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x106:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1461                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x10d:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.long	1478                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x114:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	1542                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x11b:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.long	1570                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x122:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.long	1592                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x129:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.long	1613                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x130:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	1634                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x137:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1661                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x13e:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	1683                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x145:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	1705                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x14c:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	149                     @ DW_AT_decl_line
	.long	1727                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x153:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	1766                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x15a:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	1788                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x161:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x168:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	1852                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x16f:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	1869                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x176:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	1882                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x17d:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	153                     @ DW_AT_decl_line
	.long	1911                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x184:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	1940                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x18b:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	1962                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x192:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	157                     @ DW_AT_decl_line
	.long	1984                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x199:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	2013                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1a0:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	159                     @ DW_AT_decl_line
	.long	2042                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1a7:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	160                     @ DW_AT_decl_line
	.long	2064                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1ae:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	162                     @ DW_AT_decl_line
	.long	2086                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1b5:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	2097                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1bc:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.long	2108                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1c3:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	2119                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1ca:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	167                     @ DW_AT_decl_line
	.long	2130                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1d1:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
	.long	2141                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1d8:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2152                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1df:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	170                     @ DW_AT_decl_line
	.long	2163                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1e6:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.long	2174                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1ed:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	173                     @ DW_AT_decl_line
	.long	2185                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1f4:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	2196                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x1fb:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	175                     @ DW_AT_decl_line
	.long	2207                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x202:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	2218                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x209:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	2229                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x210:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.long	2240                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x217:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	2251                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x21e:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.long	2262                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x225:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	183                     @ DW_AT_decl_line
	.long	2284                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x22c:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.long	2306                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x233:0x7 DW_TAG_imported_declaration
	.byte	13                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	2317                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x23a:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	763                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x241:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	2328                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x248:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	2355                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x24f:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	2382                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x256:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	2413                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x25d:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	2440                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x264:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	2466                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x26b:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	2493                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x272:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	2520                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x279:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	2542                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x280:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	2569                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x287:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	2591                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x28e:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	2618                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x295:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	2649                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x29c:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.long	2675                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2a3:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.long	2697                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2aa:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	2723                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2b1:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	2749                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2b8:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	2771                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2bf:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	2797                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2c6:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2819                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2cd:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	2855                    @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x2d4:0x7 DW_TAG_imported_declaration
	.byte	14                      @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	2872                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x2dd:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ Abbrev [5] 0x2e2:0x7 DW_TAG_imported_declaration
	.byte	2                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	43                      @ DW_AT_import
	.byte	3                       @ Abbrev [3] 0x2e9:0xb DW_TAG_typedef
	.long	756                     @ DW_AT_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x2f4:0x7 DW_TAG_base_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x2fb:0xb DW_TAG_typedef
	.long	774                     @ DW_AT_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x306:0x7 DW_TAG_base_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x30d:0xb DW_TAG_typedef
	.long	792                     @ DW_AT_type
	.long	.Linfo_string15         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x318:0x20 DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x31d:0xd DW_TAG_member
	.long	.Linfo_string11         @ DW_AT_name
	.long	824                     @ DW_AT_type
	.byte	5                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	0                       @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x32a:0xd DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	831                     @ DW_AT_type
	.byte	5                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x338:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x33f:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x346:0xb DW_TAG_typedef
	.long	849                     @ DW_AT_type
	.long	.Linfo_string18         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x351:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x356:0xc DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	756                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0x362:0xc DW_TAG_member
	.long	.Linfo_string17         @ DW_AT_name
	.long	756                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x36f:0xb DW_TAG_typedef
	.long	890                     @ DW_AT_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	187                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x37a:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x37f:0xc DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	920                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0x38b:0xc DW_TAG_member
	.long	.Linfo_string17         @ DW_AT_name
	.long	920                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x398:0x7 DW_TAG_base_type
	.long	.Linfo_string19         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x39f:0xb DW_TAG_typedef
	.long	938                     @ DW_AT_type
	.long	.Linfo_string21         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x3aa:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	191                     @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	824                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string17         @ DW_AT_name
	.long	824                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	193                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x3c8:0x15 DW_TAG_subprogram
	.long	.Linfo_string22         @ DW_AT_linkage_name
	.long	.Linfo_string23         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	989                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x3d7:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x3dd:0x7 DW_TAG_base_type
	.long	.Linfo_string24         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	13                      @ Abbrev [13] 0x3e4:0x5 DW_TAG_pointer_type
	.long	1001                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x3e9:0x5 DW_TAG_const_type
	.long	1006                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x3ee:0x7 DW_TAG_base_type
	.long	.Linfo_string25         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x3f5:0x11 DW_TAG_subprogram
	.long	.Linfo_string26         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x400:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x406:0x11 DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	920                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x411:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x417:0x11 DW_TAG_subprogram
	.long	.Linfo_string28         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	824                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x422:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x428:0x16 DW_TAG_subprogram
	.long	.Linfo_string29         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	989                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x433:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x438:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x43e:0x5 DW_TAG_pointer_type
	.long	1091                    @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x443:0x5 DW_TAG_pointer_type
	.long	1006                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x448:0x1a DW_TAG_subprogram
	.long	.Linfo_string30         @ DW_AT_linkage_name
	.long	.Linfo_string31         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1122                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x457:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x45c:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x462:0x7 DW_TAG_base_type
	.long	.Linfo_string32         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	16                      @ Abbrev [16] 0x469:0x1a DW_TAG_subprogram
	.long	.Linfo_string29         @ DW_AT_linkage_name
	.long	.Linfo_string33         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	831                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x478:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x47d:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x483:0x1b DW_TAG_subprogram
	.long	.Linfo_string34         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	920                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x48e:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x493:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x498:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x49e:0x1b DW_TAG_subprogram
	.long	.Linfo_string35         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	824                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x4a9:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4ae:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4b3:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x4b9:0x1b DW_TAG_subprogram
	.long	.Linfo_string36         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.long	1236                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x4c4:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4c9:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4ce:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x4d4:0x7 DW_TAG_base_type
	.long	.Linfo_string37         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x4db:0x1b DW_TAG_subprogram
	.long	.Linfo_string38         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.long	1270                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x4e6:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4eb:0x5 DW_TAG_formal_parameter
	.long	1086                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x4f0:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x4f6:0x7 DW_TAG_base_type
	.long	.Linfo_string39         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x4fd:0xf DW_TAG_subprogram
	.long	.Linfo_string40         @ DW_AT_linkage_name
	.long	.Linfo_string41         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	18                      @ Abbrev [18] 0x50c:0x11 DW_TAG_subprogram
	.long	.Linfo_string42         @ DW_AT_linkage_name
	.long	.Linfo_string43         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x517:0x5 DW_TAG_formal_parameter
	.long	774                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x51d:0x16 DW_TAG_subprogram
	.long	.Linfo_string44         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x528:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x52d:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x533:0x1 DW_TAG_pointer_type
	.byte	20                      @ Abbrev [20] 0x534:0xd DW_TAG_subprogram
	.long	.Linfo_string45         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x53b:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x541:0x11 DW_TAG_subprogram
	.long	.Linfo_string46         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x54c:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x552:0x16 DW_TAG_subprogram
	.long	.Linfo_string47         @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x55d:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x562:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x568:0x7 DW_TAG_subprogram
	.long	.Linfo_string48         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	15                      @ Abbrev [15] 0x56f:0x11 DW_TAG_subprogram
	.long	.Linfo_string49         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x57a:0x5 DW_TAG_formal_parameter
	.long	1408                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x580:0x5 DW_TAG_pointer_type
	.long	1413                    @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x585:0x1 DW_TAG_subroutine_type
	.byte	23                      @ Abbrev [23] 0x586:0xd DW_TAG_subprogram
	.long	.Linfo_string50         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	12                      @ Abbrev [12] 0x58d:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x593:0x11 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string52         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	12                      @ Abbrev [12] 0x59e:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x5a4:0x11 DW_TAG_subprogram
	.long	.Linfo_string53         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x5af:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x5b5:0x11 DW_TAG_subprogram
	.long	.Linfo_string54         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x5c0:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x5c6:0x25 DW_TAG_subprogram
	.long	.Linfo_string55         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x5d1:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x5d6:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x5db:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x5e0:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x5e5:0x5 DW_TAG_formal_parameter
	.long	1521                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x5eb:0x5 DW_TAG_pointer_type
	.long	1520                    @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x5f0:0x1 DW_TAG_const_type
	.byte	13                      @ Abbrev [13] 0x5f1:0x5 DW_TAG_pointer_type
	.long	1526                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x5f6:0x10 DW_TAG_subroutine_type
	.long	756                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x5fb:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x600:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x606:0x1c DW_TAG_subprogram
	.long	.Linfo_string56         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x60d:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x612:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x617:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x61c:0x5 DW_TAG_formal_parameter
	.long	1521                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x622:0x16 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_linkage_name
	.long	.Linfo_string58         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	789                     @ DW_AT_decl_line
	.long	831                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x632:0x5 DW_TAG_formal_parameter
	.long	831                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x638:0x15 DW_TAG_subprogram
	.long	.Linfo_string59         @ DW_AT_linkage_name
	.long	.Linfo_string60         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	920                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x647:0x5 DW_TAG_formal_parameter
	.long	920                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x64d:0x15 DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_linkage_name
	.long	.Linfo_string62         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	824                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x65c:0x5 DW_TAG_formal_parameter
	.long	824                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x662:0x1b DW_TAG_subprogram
	.long	.Linfo_string63         @ DW_AT_linkage_name
	.long	.Linfo_string64         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	808                     @ DW_AT_decl_line
	.long	927                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x672:0x5 DW_TAG_formal_parameter
	.long	824                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x677:0x5 DW_TAG_formal_parameter
	.long	824                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x67d:0x16 DW_TAG_subprogram
	.long	.Linfo_string65         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.long	879                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x688:0x5 DW_TAG_formal_parameter
	.long	920                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x68d:0x5 DW_TAG_formal_parameter
	.long	920                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x693:0x16 DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	196                     @ DW_AT_decl_line
	.long	927                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x69e:0x5 DW_TAG_formal_parameter
	.long	824                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x6a3:0x5 DW_TAG_formal_parameter
	.long	824                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x6a9:0x16 DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	219                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x6b4:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x6b9:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x6bf:0x1b DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x6ca:0x5 DW_TAG_formal_parameter
	.long	1754                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x6cf:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x6d4:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x6da:0x5 DW_TAG_pointer_type
	.long	1759                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x6df:0x7 DW_TAG_base_type
	.long	.Linfo_string69         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x6e6:0x16 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x6f1:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x6f6:0x5 DW_TAG_formal_parameter
	.long	1759                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x6fc:0x1b DW_TAG_subprogram
	.long	.Linfo_string71         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x707:0x5 DW_TAG_formal_parameter
	.long	1754                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x70c:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x711:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x717:0x1b DW_TAG_subprogram
	.long	.Linfo_string72         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	224                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x722:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x727:0x5 DW_TAG_formal_parameter
	.long	1842                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x72c:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x732:0x5 DW_TAG_pointer_type
	.long	1847                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x737:0x5 DW_TAG_const_type
	.long	1759                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x73c:0x11 DW_TAG_subprogram
	.long	.Linfo_string73         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x747:0x5 DW_TAG_formal_parameter
	.long	1408                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x74d:0xd DW_TAG_subprogram
	.long	.Linfo_string74         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	12                      @ Abbrev [12] 0x754:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x75a:0xb DW_TAG_typedef
	.long	1893                    @ DW_AT_type
	.long	.Linfo_string77         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x765:0xb DW_TAG_typedef
	.long	1904                    @ DW_AT_type
	.long	.Linfo_string76         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x770:0x7 DW_TAG_base_type
	.long	.Linfo_string75         @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x777:0xb DW_TAG_typedef
	.long	1922                    @ DW_AT_type
	.long	.Linfo_string80         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x782:0xb DW_TAG_typedef
	.long	1933                    @ DW_AT_type
	.long	.Linfo_string79         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x78d:0x7 DW_TAG_base_type
	.long	.Linfo_string78         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x794:0xb DW_TAG_typedef
	.long	1951                    @ DW_AT_type
	.long	.Linfo_string82         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x79f:0xb DW_TAG_typedef
	.long	756                     @ DW_AT_type
	.long	.Linfo_string81         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x7aa:0xb DW_TAG_typedef
	.long	1973                    @ DW_AT_type
	.long	.Linfo_string84         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x7b5:0xb DW_TAG_typedef
	.long	824                     @ DW_AT_type
	.long	.Linfo_string83         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x7c0:0xb DW_TAG_typedef
	.long	1995                    @ DW_AT_type
	.long	.Linfo_string87         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x7cb:0xb DW_TAG_typedef
	.long	2006                    @ DW_AT_type
	.long	.Linfo_string86         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x7d6:0x7 DW_TAG_base_type
	.long	.Linfo_string85         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x7dd:0xb DW_TAG_typedef
	.long	2024                    @ DW_AT_type
	.long	.Linfo_string90         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x7e8:0xb DW_TAG_typedef
	.long	2035                    @ DW_AT_type
	.long	.Linfo_string89         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x7f3:0x7 DW_TAG_base_type
	.long	.Linfo_string88         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x7fa:0xb DW_TAG_typedef
	.long	2053                    @ DW_AT_type
	.long	.Linfo_string92         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x805:0xb DW_TAG_typedef
	.long	774                     @ DW_AT_type
	.long	.Linfo_string91         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x810:0xb DW_TAG_typedef
	.long	2075                    @ DW_AT_type
	.long	.Linfo_string94         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x81b:0xb DW_TAG_typedef
	.long	1270                    @ DW_AT_type
	.long	.Linfo_string93         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x826:0xb DW_TAG_typedef
	.long	1882                    @ DW_AT_type
	.long	.Linfo_string95         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x831:0xb DW_TAG_typedef
	.long	1911                    @ DW_AT_type
	.long	.Linfo_string96         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x83c:0xb DW_TAG_typedef
	.long	1940                    @ DW_AT_type
	.long	.Linfo_string97         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x847:0xb DW_TAG_typedef
	.long	1962                    @ DW_AT_type
	.long	.Linfo_string98         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x852:0xb DW_TAG_typedef
	.long	1984                    @ DW_AT_type
	.long	.Linfo_string99         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x85d:0xb DW_TAG_typedef
	.long	2013                    @ DW_AT_type
	.long	.Linfo_string100        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x868:0xb DW_TAG_typedef
	.long	2042                    @ DW_AT_type
	.long	.Linfo_string101        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x873:0xb DW_TAG_typedef
	.long	2064                    @ DW_AT_type
	.long	.Linfo_string102        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x87e:0xb DW_TAG_typedef
	.long	1882                    @ DW_AT_type
	.long	.Linfo_string103        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x889:0xb DW_TAG_typedef
	.long	1940                    @ DW_AT_type
	.long	.Linfo_string104        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x894:0xb DW_TAG_typedef
	.long	1940                    @ DW_AT_type
	.long	.Linfo_string105        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x89f:0xb DW_TAG_typedef
	.long	1962                    @ DW_AT_type
	.long	.Linfo_string106        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8aa:0xb DW_TAG_typedef
	.long	1984                    @ DW_AT_type
	.long	.Linfo_string107        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8b5:0xb DW_TAG_typedef
	.long	2042                    @ DW_AT_type
	.long	.Linfo_string108        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8c0:0xb DW_TAG_typedef
	.long	2042                    @ DW_AT_type
	.long	.Linfo_string109        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8cb:0xb DW_TAG_typedef
	.long	2064                    @ DW_AT_type
	.long	.Linfo_string110        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	89                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8d6:0xb DW_TAG_typedef
	.long	2273                    @ DW_AT_type
	.long	.Linfo_string112        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8e1:0xb DW_TAG_typedef
	.long	756                     @ DW_AT_type
	.long	.Linfo_string111        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8ec:0xb DW_TAG_typedef
	.long	2295                    @ DW_AT_type
	.long	.Linfo_string114        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x8f7:0xb DW_TAG_typedef
	.long	774                     @ DW_AT_type
	.long	.Linfo_string113        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x902:0xb DW_TAG_typedef
	.long	1962                    @ DW_AT_type
	.long	.Linfo_string115        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x90d:0xb DW_TAG_typedef
	.long	2064                    @ DW_AT_type
	.long	.Linfo_string116        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	15                      @ Abbrev [15] 0x918:0x1b DW_TAG_subprogram
	.long	.Linfo_string117        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x923:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x928:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x92d:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x933:0x1b DW_TAG_subprogram
	.long	.Linfo_string118        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x93e:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x943:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x948:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x94e:0x1a DW_TAG_subprogram
	.long	.Linfo_string119        @ DW_AT_linkage_name
	.long	.Linfo_string120        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x95d:0x5 DW_TAG_formal_parameter
	.long	2408                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x962:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x968:0x5 DW_TAG_const_type
	.long	1091                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x96d:0x1b DW_TAG_subprogram
	.long	.Linfo_string121        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x978:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x97d:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x982:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x988:0x1a DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_linkage_name
	.long	.Linfo_string123        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0x997:0x5 DW_TAG_formal_parameter
	.long	2408                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x99c:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x9a2:0x1b DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x9ad:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9b2:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9b7:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x9bd:0x1b DW_TAG_subprogram
	.long	.Linfo_string125        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x9c8:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9cd:0x5 DW_TAG_formal_parameter
	.long	1515                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9d2:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x9d8:0x16 DW_TAG_subprogram
	.long	.Linfo_string126        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x9e3:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9e8:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x9ee:0x1b DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0x9f9:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9fe:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa03:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xa09:0x16 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa14:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa19:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xa1f:0x1b DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa2a:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa2f:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa34:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xa3a:0x1f DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_linkage_name
	.long	.Linfo_string131        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa49:0x5 DW_TAG_formal_parameter
	.long	1331                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa4e:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa53:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xa59:0x1a DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_linkage_name
	.long	.Linfo_string133        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa68:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa6d:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xa73:0x16 DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa7e:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa83:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xa89:0x1a DW_TAG_subprogram
	.long	.Linfo_string135        @ DW_AT_linkage_name
	.long	.Linfo_string136        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xa98:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xa9d:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xaa3:0x1a DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_linkage_name
	.long	.Linfo_string138        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xab2:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xab7:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xabd:0x16 DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xac8:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xacd:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0xad3:0x1a DW_TAG_subprogram
	.long	.Linfo_string140        @ DW_AT_linkage_name
	.long	.Linfo_string141        @ DW_AT_name
	.byte	17                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xae2:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xae7:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xaed:0x16 DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xaf8:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xafd:0x5 DW_TAG_formal_parameter
	.long	996                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xb03:0x1f DW_TAG_subprogram
	.long	.Linfo_string143        @ DW_AT_linkage_name
	.long	.Linfo_string144        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1331                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0xb12:0x5 DW_TAG_formal_parameter
	.long	2850                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xb17:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xb1c:0x5 DW_TAG_formal_parameter
	.long	763                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xb22:0x5 DW_TAG_const_type
	.long	1331                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xb27:0x11 DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	12                      @ Abbrev [12] 0xb32:0x5 DW_TAG_formal_parameter
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xb38:0x15 DW_TAG_subprogram
	.long	.Linfo_string146        @ DW_AT_linkage_name
	.long	.Linfo_string147        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	763                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0xb47:0x5 DW_TAG_formal_parameter
	.long	2893                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xb4d:0x5 DW_TAG_const_type
	.long	996                     @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0xb52:0xfc DW_TAG_class_type
	.long	3150                    @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string166        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	20                      @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0xb5f:0x6 DW_TAG_inheritance
	.long	3150                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	30                      @ Abbrev [30] 0xb65:0xd DW_TAG_member
	.long	.Linfo_string155        @ DW_AT_name
	.long	3275                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	8                       @ DW_AT_const_value
	.byte	30                      @ Abbrev [30] 0xb72:0xd DW_TAG_member
	.long	.Linfo_string156        @ DW_AT_name
	.long	3275                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ DW_AT_const_value
	.byte	30                      @ Abbrev [30] 0xb7f:0xd DW_TAG_member
	.long	.Linfo_string157        @ DW_AT_name
	.long	3275                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	18                      @ DW_AT_const_value
	.byte	10                      @ Abbrev [10] 0xb8c:0xc DW_TAG_member
	.long	.Linfo_string158        @ DW_AT_name
	.long	3280                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0xb98:0xc DW_TAG_member
	.long	.Linfo_string160        @ DW_AT_name
	.long	2042                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	30                      @ DW_AT_decl_line
	.byte	132                     @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0xba4:0xc DW_TAG_member
	.long	.Linfo_string161        @ DW_AT_name
	.long	1984                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	136                     @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0xbb0:0xc DW_TAG_member
	.long	.Linfo_string162        @ DW_AT_name
	.long	2042                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
	.byte	140                     @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0xbbc:0xc DW_TAG_member
	.long	.Linfo_string163        @ DW_AT_name
	.long	2042                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.byte	144                     @ DW_AT_data_member_location
	.byte	10                      @ Abbrev [10] 0xbc8:0xc DW_TAG_member
	.long	.Linfo_string164        @ DW_AT_name
	.long	3299                    @ DW_AT_type
	.byte	20                      @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	148                     @ DW_AT_data_member_location
	.byte	31                      @ Abbrev [31] 0xbd4:0x22 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	32                      @ Abbrev [32] 0xbdc:0x5 DW_TAG_formal_parameter
	.long	3325                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0xbe1:0x5 DW_TAG_formal_parameter
	.long	1984                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xbe6:0x5 DW_TAG_formal_parameter
	.long	2042                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xbeb:0x5 DW_TAG_formal_parameter
	.long	2042                    @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0xbf0:0x5 DW_TAG_formal_parameter
	.long	3299                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	33                      @ Abbrev [33] 0xbf6:0x16 DW_TAG_subprogram
	.long	.Linfo_string167        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	2898                    @ DW_AT_containing_type
	.byte	32                      @ Abbrev [32] 0xc06:0x5 DW_TAG_formal_parameter
	.long	3325                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xc0c:0x23 DW_TAG_subprogram
	.long	.Linfo_string168        @ DW_AT_linkage_name
	.long	.Linfo_string151        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	2898                    @ DW_AT_containing_type
	.byte	32                      @ Abbrev [32] 0xc24:0x5 DW_TAG_formal_parameter
	.long	3325                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0xc29:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xc2f:0x1e DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_linkage_name
	.long	.Linfo_string153        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	2898                    @ DW_AT_containing_type
	.byte	32                      @ Abbrev [32] 0xc47:0x5 DW_TAG_formal_parameter
	.long	3325                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xc4e:0x65 DW_TAG_class_type
	.long	3150                    @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string154        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	19                      @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	35                      @ Abbrev [35] 0xc5b:0xa DW_TAG_member
	.long	.Linfo_string148        @ DW_AT_name
	.long	3251                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	34                      @ Abbrev [34] 0xc65:0x23 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_linkage_name
	.long	.Linfo_string151        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	3150                    @ DW_AT_containing_type
	.byte	32                      @ Abbrev [32] 0xc7d:0x5 DW_TAG_formal_parameter
	.long	3270                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0xc82:0x5 DW_TAG_formal_parameter
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xc88:0x1e DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_linkage_name
	.long	.Linfo_string153        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	3150                    @ DW_AT_containing_type
	.byte	32                      @ Abbrev [32] 0xca0:0x5 DW_TAG_formal_parameter
	.long	3270                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0xca6:0xc DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	32                      @ Abbrev [32] 0xcac:0x5 DW_TAG_formal_parameter
	.long	3270                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xcb3:0x5 DW_TAG_pointer_type
	.long	3256                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0xcb8:0x9 DW_TAG_pointer_type
	.long	3265                    @ DW_AT_type
	.long	.Linfo_string149        @ DW_AT_name
	.byte	38                      @ Abbrev [38] 0xcc1:0x5 DW_TAG_subroutine_type
	.long	756                     @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0xcc6:0x5 DW_TAG_pointer_type
	.long	3150                    @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xccb:0x5 DW_TAG_const_type
	.long	756                     @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0xcd0:0xc DW_TAG_array_type
	.long	1006                    @ DW_AT_type
	.byte	40                      @ Abbrev [40] 0xcd5:0x6 DW_TAG_subrange_type
	.long	3292                    @ DW_AT_type
	.byte	128                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	41                      @ Abbrev [41] 0xcdc:0x7 DW_TAG_base_type
	.long	.Linfo_string159        @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	13                      @ Abbrev [13] 0xce3:0x5 DW_TAG_pointer_type
	.long	3304                    @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0xce8:0x15 DW_TAG_class_type
	.long	3150                    @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string165        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	21                      @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	42                      @ Abbrev [42] 0xcf5:0x7 DW_TAG_inheritance
	.long	3150                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xcfd:0x5 DW_TAG_pointer_type
	.long	2898                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd02:0x76 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3355                    @ DW_AT_object_pointer
	.byte	18                      @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	.Linfo_string170        @ DW_AT_linkage_name
	.long	3028                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xd1b:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.long	.Linfo_string174        @ DW_AT_name
	.long	3644                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	45                      @ Abbrev [45] 0xd27:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	107
	.long	.Linfo_string175        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	1984                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xd35:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.long	.Linfo_string176        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	2042                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xd43:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string177        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	2042                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0xd51:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string178        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	3299                    @ DW_AT_type
	.byte	46                      @ Abbrev [46] 0xd5f:0x18 DW_TAG_lexical_block
	.long	.Ltmp1                  @ DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1           @ DW_AT_high_pc
	.byte	47                      @ Abbrev [47] 0xd68:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	32
	.long	.Linfo_string179        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	756                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xd78:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3473                    @ DW_AT_object_pointer
	.byte	19                      @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string171        @ DW_AT_linkage_name
	.long	3238                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xd91:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string174        @ DW_AT_name
	.long	3649                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xd9e:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3511                    @ DW_AT_object_pointer
	.byte	18                      @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.long	.Linfo_string172        @ DW_AT_linkage_name
	.long	3062                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xdb7:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string174        @ DW_AT_name
	.long	3644                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xdc4:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3549                    @ DW_AT_object_pointer
	.byte	18                      @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.long	.Linfo_string173        @ DW_AT_linkage_name
	.long	3062                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xddd:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string174        @ DW_AT_name
	.long	3644                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	48                      @ Abbrev [48] 0xdea:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3583                    @ DW_AT_object_pointer
	.byte	18                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	3084                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xdff:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string174        @ DW_AT_name
	.long	3644                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	45                      @ Abbrev [45] 0xe0b:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string180        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	1091                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	48                      @ Abbrev [48] 0xe1a:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3631                    @ DW_AT_object_pointer
	.byte	18                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	3119                    @ DW_AT_specification
	.byte	44                      @ Abbrev [44] 0xe2f:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string174        @ DW_AT_name
	.long	3644                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xe3c:0x5 DW_TAG_pointer_type
	.long	2898                    @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0xe41:0x5 DW_TAG_pointer_type
	.long	3150                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
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
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
	.byte	0                       @ End Of Macro List Mark

	.globl	_ZN6FLVTagC1EhjjP11IFLVTagData
	.type	_ZN6FLVTagC1EhjjP11IFLVTagData,%function
.set _ZN6FLVTagC1EhjjP11IFLVTagData, _ZN6FLVTagC2EhjjP11IFLVTagData
	.globl	_ZN6FLVTagD1Ev
	.type	_ZN6FLVTagD1Ev,%function
.set _ZN6FLVTagD1Ev, _ZN6FLVTagD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
