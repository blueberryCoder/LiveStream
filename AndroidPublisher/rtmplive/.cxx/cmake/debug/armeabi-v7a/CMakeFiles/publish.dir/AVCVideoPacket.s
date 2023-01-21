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
	.file	"AVCVideoPacket.cpp"
	.file	1 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IBuffer.h"
	.file	2 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IVideoPacket.h"
	.file	3 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AVCVideoPacket.h"
	.file	4 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdint.h"
	.file	5 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IAVCPacketData.h"
	.file	6 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	7 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.file	8 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/stddef.h"
	.file	9 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstddef"
	.file	10 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/lib64/clang/9.0.9/include/__stddef_max_align_t.h"
	.file	11 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdlib"
	.file	12 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdlib.h"
	.file	13 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/android/legacy_stdlib_inlines.h"
	.file	14 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/malloc.h"
	.file	15 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/math.h"
	.file	16 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/local/include/stdlib.h"
	.file	17 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstdint"
	.file	18 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/cstring"
	.file	19 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/string.h"
	.file	20 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/bits/fortify/string.h"
	.file	21 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/string.h"
	.section	.text._ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData,"ax",%progbits
	.globl	_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData @ -- Begin function _ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData
	.p2align	2
	.type	_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData,%function
	.code	16                      @ @_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData
	.thumb_func
_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData:
.Lfunc_begin0:
	.file	22 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AVCVideoPacket.cpp"
	.loc	22 10 0                 @ src/main/cpp/AVCVideoPacket.cpp:10:0
	.fnstart
	.cfi_sections .debug_frame
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
	.pad	#24
	sub	sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #20]
.Ltmp0:
	.loc	22 8 17 prologue_end    @ src/main/cpp/AVCVideoPacket.cpp:8:17
	str	r0, [sp, #4]            @ 4-byte Spill
	bl	_ZN12IVideoPacketC2Ev
	.loc	22 10 65                @ src/main/cpp/AVCVideoPacket.cpp:10:65
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp, #4]            @ 4-byte Reload
	str	r0, [r1]
	.loc	22 10 28 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:10:28
	ldr	r0, [sp, #16]
	.loc	22 10 11                @ src/main/cpp/AVCVideoPacket.cpp:10:11
	str	r0, [r1, #4]
	.loc	22 10 47                @ src/main/cpp/AVCVideoPacket.cpp:10:47
	ldr	r0, [sp, #12]
	.loc	22 10 42                @ src/main/cpp/AVCVideoPacket.cpp:10:42
	str	r0, [r1, #8]
	.loc	22 10 59                @ src/main/cpp/AVCVideoPacket.cpp:10:59
	ldr	r0, [sp, #8]
	.loc	22 10 53                @ src/main/cpp/AVCVideoPacket.cpp:10:53
	str	r0, [r1, #12]
	.loc	22 11 1 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:11:1
	mov	r0, r1
	add	sp, #24
	pop	{r7, pc}
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	22 0 1 is_stmt 0        @ src/main/cpp/AVCVideoPacket.cpp:0:1
.LCPI0_0:
.Ltmp2:
	.long	_ZTV14AVCVideoPacket(GOT_PREL)-((.LPC0_0+4)-.Ltmp2)
.Lfunc_end0:
	.size	_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData, .Lfunc_end0-_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN12IVideoPacketC2Ev,"axG",%progbits,_ZN12IVideoPacketC2Ev,comdat
	.weak	_ZN12IVideoPacketC2Ev   @ -- Begin function _ZN12IVideoPacketC2Ev
	.p2align	2
	.type	_ZN12IVideoPacketC2Ev,%function
	.code	16                      @ @_ZN12IVideoPacketC2Ev
	.thumb_func
_ZN12IVideoPacketC2Ev:
.Lfunc_begin1:
	.loc	2 9 0 is_stmt 1         @ src/main/cpp/IVideoPacket.h:9:0
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
.Ltmp3:
	.loc	2 9 7 prologue_end      @ src/main/cpp/IVideoPacket.h:9:7
	str	r0, [sp]                @ 4-byte Spill
	bl	_ZN7IBufferC2Ev
	ldr	r0, .LCPI1_0
.LPC1_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp]                @ 4-byte Reload
	str	r0, [r1]
	mov	r0, r1
	add	sp, #8
	pop	{r7, pc}
.Ltmp4:
	.p2align	2
@ %bb.1:
	.loc	2 0 7 is_stmt 0         @ src/main/cpp/IVideoPacket.h:0:7
.LCPI1_0:
.Ltmp5:
	.long	_ZTV12IVideoPacket(GOT_PREL)-((.LPC1_0+4)-.Ltmp5)
.Lfunc_end1:
	.size	_ZN12IVideoPacketC2Ev, .Lfunc_end1-_ZN12IVideoPacketC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN14AVCVideoPacketD2Ev,"ax",%progbits
	.globl	_ZN14AVCVideoPacketD2Ev @ -- Begin function _ZN14AVCVideoPacketD2Ev
	.p2align	1
	.type	_ZN14AVCVideoPacketD2Ev,%function
	.code	16                      @ @_ZN14AVCVideoPacketD2Ev
	.thumb_func
_ZN14AVCVideoPacketD2Ev:
.Lfunc_begin2:
	.loc	22 13 0 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:13:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp6:
	.loc	22 15 1 prologue_end    @ src/main/cpp/AVCVideoPacket.cpp:15:1
	add	sp, #4
	bx	lr
.Ltmp7:
.Lfunc_end2:
	.size	_ZN14AVCVideoPacketD2Ev, .Lfunc_end2-_ZN14AVCVideoPacketD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN14AVCVideoPacket7WriteToEPc,"ax",%progbits
	.globl	_ZN14AVCVideoPacket7WriteToEPc @ -- Begin function _ZN14AVCVideoPacket7WriteToEPc
	.p2align	1
	.type	_ZN14AVCVideoPacket7WriteToEPc,%function
	.code	16                      @ @_ZN14AVCVideoPacket7WriteToEPc
	.thumb_func
_ZN14AVCVideoPacket7WriteToEPc:
.Lfunc_begin3:
	.loc	22 17 0                 @ src/main/cpp/AVCVideoPacket.cpp:17:0
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
.Ltmp8:
	.loc	22 18 17 prologue_end   @ src/main/cpp/AVCVideoPacket.cpp:18:17
	ldr	r1, [r0, #4]
	.loc	22 18 5 is_stmt 0       @ src/main/cpp/AVCVideoPacket.cpp:18:5
	ldr	r2, [sp, #8]
	.loc	22 18 15                @ src/main/cpp/AVCVideoPacket.cpp:18:15
	strb	r1, [r2]
.Ltmp9:
	.loc	22 19 9 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:19:9
	ldr	r1, [r0, #4]
.Ltmp10:
	.loc	22 19 9 is_stmt 0       @ src/main/cpp/AVCVideoPacket.cpp:19:9
	cmp	r1, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	bne	.LBB3_2
	b	.LBB3_1
.LBB3_1:
.Ltmp11:
	.loc	22 20 21 is_stmt 1      @ src/main/cpp/AVCVideoPacket.cpp:20:21
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldrh	r1, [r0, #10]
	.loc	22 20 9 is_stmt 0       @ src/main/cpp/AVCVideoPacket.cpp:20:9
	ldr	r2, [sp, #8]
	.loc	22 20 19                @ src/main/cpp/AVCVideoPacket.cpp:20:19
	strb	r1, [r2, #1]
	.loc	22 21 21 is_stmt 1      @ src/main/cpp/AVCVideoPacket.cpp:21:21
	ldr	r1, [r0, #8]
	.loc	22 21 26 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:21:26
	lsrs	r1, r1, #8
	.loc	22 21 9                 @ src/main/cpp/AVCVideoPacket.cpp:21:9
	ldr	r2, [sp, #8]
	.loc	22 21 19                @ src/main/cpp/AVCVideoPacket.cpp:21:19
	strb	r1, [r2, #2]
	.loc	22 22 21 is_stmt 1      @ src/main/cpp/AVCVideoPacket.cpp:22:21
	ldr	r1, [r0, #8]
	.loc	22 22 9 is_stmt 0       @ src/main/cpp/AVCVideoPacket.cpp:22:9
	ldr	r2, [sp, #8]
	.loc	22 22 19                @ src/main/cpp/AVCVideoPacket.cpp:22:19
	strb	r1, [r2, #3]
	.loc	22 23 5 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:23:5
	b	.LBB3_3
.Ltmp12:
.LBB3_2:
	.loc	22 24 9                 @ src/main/cpp/AVCVideoPacket.cpp:24:9
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	22 24 19 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:24:19
	strb	r1, [r0, #1]
	.loc	22 25 9 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:25:9
	ldr	r0, [sp, #8]
	.loc	22 25 19 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:25:19
	strb	r1, [r0, #2]
	.loc	22 26 9 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:26:9
	ldr	r0, [sp, #8]
	.loc	22 26 19 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:26:19
	strb	r1, [r0, #3]
	b	.LBB3_3
.Ltmp13:
.LBB3_3:
	.loc	22 28 12 is_stmt 1      @ src/main/cpp/AVCVideoPacket.cpp:28:12
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [r0, #12]
	.loc	22 28 28 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:28:28
	ldr	r2, [sp, #8]
	adds	r2, #4
	.loc	22 28 19                @ src/main/cpp/AVCVideoPacket.cpp:28:19
	ldr	r3, [r1]
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	blx	r3
	.loc	22 28 5                 @ src/main/cpp/AVCVideoPacket.cpp:28:5
	add	sp, #16
	pop	{r7, pc}
.Ltmp14:
.Lfunc_end3:
	.size	_ZN14AVCVideoPacket7WriteToEPc, .Lfunc_end3-_ZN14AVCVideoPacket7WriteToEPc
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN14AVCVideoPacket4SizeEv,"ax",%progbits
	.globl	_ZN14AVCVideoPacket4SizeEv @ -- Begin function _ZN14AVCVideoPacket4SizeEv
	.p2align	1
	.type	_ZN14AVCVideoPacket4SizeEv,%function
	.code	16                      @ @_ZN14AVCVideoPacket4SizeEv
	.thumb_func
_ZN14AVCVideoPacket4SizeEv:
.Lfunc_begin4:
	.loc	22 31 0 is_stmt 1       @ src/main/cpp/AVCVideoPacket.cpp:31:0
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
	.loc	22 32 16 prologue_end   @ src/main/cpp/AVCVideoPacket.cpp:32:16
	ldr	r0, [r0, #12]
	.loc	22 32 23 is_stmt 0      @ src/main/cpp/AVCVideoPacket.cpp:32:23
	ldr	r1, [r0]
	ldr	r1, [r1, #4]
	blx	r1
	.loc	22 32 14                @ src/main/cpp/AVCVideoPacket.cpp:32:14
	adds	r0, #4
	.loc	22 32 5                 @ src/main/cpp/AVCVideoPacket.cpp:32:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp16:
.Lfunc_end4:
	.size	_ZN14AVCVideoPacket4SizeEv, .Lfunc_end4-_ZN14AVCVideoPacket4SizeEv
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN7IBufferC2Ev,"axG",%progbits,_ZN7IBufferC2Ev,comdat
	.weak	_ZN7IBufferC2Ev         @ -- Begin function _ZN7IBufferC2Ev
	.p2align	2
	.type	_ZN7IBufferC2Ev,%function
	.code	16                      @ @_ZN7IBufferC2Ev
	.thumb_func
_ZN7IBufferC2Ev:
.Lfunc_begin5:
	.loc	1 9 0 is_stmt 1         @ src/main/cpp/IBuffer.h:9:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp17:
	.loc	1 9 7 prologue_end      @ src/main/cpp/IBuffer.h:9:7
	ldr	r1, .LCPI5_0
.LPC5_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
	add	sp, #4
	bx	lr
.Ltmp18:
	.p2align	2
@ %bb.1:
	.loc	1 0 7 is_stmt 0         @ src/main/cpp/IBuffer.h:0:7
.LCPI5_0:
.Ltmp19:
	.long	_ZTV7IBuffer(GOT_PREL)-((.LPC5_0+4)-.Ltmp19)
.Lfunc_end5:
	.size	_ZN7IBufferC2Ev, .Lfunc_end5-_ZN7IBufferC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.type	_ZTV14AVCVideoPacket,%object @ @_ZTV14AVCVideoPacket
	.section	.data.rel.ro._ZTV14AVCVideoPacket,"aw",%progbits
	.globl	_ZTV14AVCVideoPacket
	.p2align	2
_ZTV14AVCVideoPacket:
	.long	0
	.long	_ZTI14AVCVideoPacket
	.long	_ZN14AVCVideoPacket7WriteToEPc
	.long	_ZN14AVCVideoPacket4SizeEv
	.size	_ZTV14AVCVideoPacket, 16

	.type	_ZTS14AVCVideoPacket,%object @ @_ZTS14AVCVideoPacket
	.section	.rodata._ZTS14AVCVideoPacket,"a",%progbits
	.globl	_ZTS14AVCVideoPacket
_ZTS14AVCVideoPacket:
	.asciz	"14AVCVideoPacket"
	.size	_ZTS14AVCVideoPacket, 17

	.type	_ZTS12IVideoPacket,%object @ @_ZTS12IVideoPacket
	.section	.rodata._ZTS12IVideoPacket,"aG",%progbits,_ZTS12IVideoPacket,comdat
	.weak	_ZTS12IVideoPacket
_ZTS12IVideoPacket:
	.asciz	"12IVideoPacket"
	.size	_ZTS12IVideoPacket, 15

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

	.type	_ZTI12IVideoPacket,%object @ @_ZTI12IVideoPacket
	.section	.data.rel.ro._ZTI12IVideoPacket,"aGw",%progbits,_ZTI12IVideoPacket,comdat
	.weak	_ZTI12IVideoPacket
	.p2align	2
_ZTI12IVideoPacket:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12IVideoPacket
	.long	_ZTI7IBuffer
	.size	_ZTI12IVideoPacket, 12

	.type	_ZTI14AVCVideoPacket,%object @ @_ZTI14AVCVideoPacket
	.section	.data.rel.ro._ZTI14AVCVideoPacket,"aw",%progbits
	.globl	_ZTI14AVCVideoPacket
	.p2align	2
_ZTI14AVCVideoPacket:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14AVCVideoPacket
	.long	_ZTI12IVideoPacket
	.size	_ZTI14AVCVideoPacket, 12

	.type	_ZTV12IVideoPacket,%object @ @_ZTV12IVideoPacket
	.section	.data.rel.ro._ZTV12IVideoPacket,"aGw",%progbits,_ZTV12IVideoPacket,comdat
	.weak	_ZTV12IVideoPacket
	.p2align	2
_ZTV12IVideoPacket:
	.long	0
	.long	_ZTI12IVideoPacket
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.size	_ZTV12IVideoPacket, 16

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

	.file	23 "<stdin>"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/AVCVideoPacket.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=223
.Linfo_string3:
	.asciz	"_vptr$IBuffer"         @ string offset=314
.Linfo_string4:
	.asciz	"int"                   @ string offset=328
.Linfo_string5:
	.asciz	"__vtbl_ptr_type"       @ string offset=332
.Linfo_string6:
	.asciz	"_ZN7IBuffer7WriteToEPc" @ string offset=348
.Linfo_string7:
	.asciz	"WriteTo"               @ string offset=371
.Linfo_string8:
	.asciz	"char"                  @ string offset=379
.Linfo_string9:
	.asciz	"_ZN7IBuffer4SizeEv"    @ string offset=384
.Linfo_string10:
	.asciz	"Size"                  @ string offset=403
.Linfo_string11:
	.asciz	"IBuffer"               @ string offset=408
.Linfo_string12:
	.asciz	"IVideoPacket"          @ string offset=416
.Linfo_string13:
	.asciz	"avc_packet_type_"      @ string offset=429
.Linfo_string14:
	.asciz	"unsigned int"          @ string offset=446
.Linfo_string15:
	.asciz	"AVC_SEQ"               @ string offset=459
.Linfo_string16:
	.asciz	"AVC_NALU"              @ string offset=467
.Linfo_string17:
	.asciz	"AVC_END"               @ string offset=476
.Linfo_string18:
	.asciz	"AVCPacketType"         @ string offset=484
.Linfo_string19:
	.asciz	"cts_"                  @ string offset=498
.Linfo_string20:
	.asciz	"__uint32_t"            @ string offset=503
.Linfo_string21:
	.asciz	"uint32_t"              @ string offset=514
.Linfo_string22:
	.asciz	"data_"                 @ string offset=523
.Linfo_string23:
	.asciz	"IAVCPacketData"        @ string offset=529
.Linfo_string24:
	.asciz	"AVCVideoPacket"        @ string offset=544
.Linfo_string25:
	.asciz	"~AVCVideoPacket"       @ string offset=559
.Linfo_string26:
	.asciz	"_ZN14AVCVideoPacket7WriteToEPc" @ string offset=575
.Linfo_string27:
	.asciz	"_ZN14AVCVideoPacket4SizeEv" @ string offset=606
.Linfo_string28:
	.asciz	"std"                   @ string offset=633
.Linfo_string29:
	.asciz	"decltype(nullptr)"     @ string offset=637
.Linfo_string30:
	.asciz	"nullptr_t"             @ string offset=655
.Linfo_string31:
	.asciz	"__ndk1"                @ string offset=665
.Linfo_string32:
	.asciz	"ptrdiff_t"             @ string offset=672
.Linfo_string33:
	.asciz	"size_t"                @ string offset=682
.Linfo_string34:
	.asciz	"__clang_max_align_nonce1" @ string offset=689
.Linfo_string35:
	.asciz	"long long int"         @ string offset=714
.Linfo_string36:
	.asciz	"__clang_max_align_nonce2" @ string offset=728
.Linfo_string37:
	.asciz	"long double"           @ string offset=753
.Linfo_string38:
	.asciz	"max_align_t"           @ string offset=765
.Linfo_string39:
	.asciz	"quot"                  @ string offset=777
.Linfo_string40:
	.asciz	"rem"                   @ string offset=782
.Linfo_string41:
	.asciz	"div_t"                 @ string offset=786
.Linfo_string42:
	.asciz	"long int"              @ string offset=792
.Linfo_string43:
	.asciz	"ldiv_t"                @ string offset=801
.Linfo_string44:
	.asciz	"lldiv_t"               @ string offset=808
.Linfo_string45:
	.asciz	"_ZL4atofPKc"           @ string offset=816
.Linfo_string46:
	.asciz	"atof"                  @ string offset=828
.Linfo_string47:
	.asciz	"double"                @ string offset=833
.Linfo_string48:
	.asciz	"atoi"                  @ string offset=840
.Linfo_string49:
	.asciz	"atol"                  @ string offset=845
.Linfo_string50:
	.asciz	"atoll"                 @ string offset=850
.Linfo_string51:
	.asciz	"strtod"                @ string offset=856
.Linfo_string52:
	.asciz	"_ZL6strtofPKcPPc"      @ string offset=863
.Linfo_string53:
	.asciz	"strtof"                @ string offset=880
.Linfo_string54:
	.asciz	"float"                 @ string offset=887
.Linfo_string55:
	.asciz	"strtold"               @ string offset=893
.Linfo_string56:
	.asciz	"strtol"                @ string offset=901
.Linfo_string57:
	.asciz	"strtoll"               @ string offset=908
.Linfo_string58:
	.asciz	"strtoul"               @ string offset=916
.Linfo_string59:
	.asciz	"long unsigned int"     @ string offset=924
.Linfo_string60:
	.asciz	"strtoull"              @ string offset=942
.Linfo_string61:
	.asciz	"long long unsigned int" @ string offset=951
.Linfo_string62:
	.asciz	"_ZL4randv"             @ string offset=974
.Linfo_string63:
	.asciz	"rand"                  @ string offset=984
.Linfo_string64:
	.asciz	"_ZL5srandj"            @ string offset=989
.Linfo_string65:
	.asciz	"srand"                 @ string offset=1000
.Linfo_string66:
	.asciz	"calloc"                @ string offset=1006
.Linfo_string67:
	.asciz	"free"                  @ string offset=1013
.Linfo_string68:
	.asciz	"malloc"                @ string offset=1018
.Linfo_string69:
	.asciz	"realloc"               @ string offset=1025
.Linfo_string70:
	.asciz	"abort"                 @ string offset=1033
.Linfo_string71:
	.asciz	"atexit"                @ string offset=1039
.Linfo_string72:
	.asciz	"exit"                  @ string offset=1046
.Linfo_string73:
	.asciz	"_exit"                 @ string offset=1051
.Linfo_string74:
	.asciz	"_Exit"                 @ string offset=1057
.Linfo_string75:
	.asciz	"getenv"                @ string offset=1063
.Linfo_string76:
	.asciz	"system"                @ string offset=1070
.Linfo_string77:
	.asciz	"bsearch"               @ string offset=1077
.Linfo_string78:
	.asciz	"qsort"                 @ string offset=1085
.Linfo_string79:
	.asciz	"_Z3abse"               @ string offset=1091
.Linfo_string80:
	.asciz	"abs"                   @ string offset=1099
.Linfo_string81:
	.asciz	"_ZL4labsl"             @ string offset=1103
.Linfo_string82:
	.asciz	"labs"                  @ string offset=1113
.Linfo_string83:
	.asciz	"_ZL5llabsx"            @ string offset=1118
.Linfo_string84:
	.asciz	"llabs"                 @ string offset=1129
.Linfo_string85:
	.asciz	"_Z3divxx"              @ string offset=1135
.Linfo_string86:
	.asciz	"div"                   @ string offset=1144
.Linfo_string87:
	.asciz	"ldiv"                  @ string offset=1148
.Linfo_string88:
	.asciz	"lldiv"                 @ string offset=1153
.Linfo_string89:
	.asciz	"mblen"                 @ string offset=1159
.Linfo_string90:
	.asciz	"mbtowc"                @ string offset=1165
.Linfo_string91:
	.asciz	"wchar_t"               @ string offset=1172
.Linfo_string92:
	.asciz	"wctomb"                @ string offset=1180
.Linfo_string93:
	.asciz	"mbstowcs"              @ string offset=1187
.Linfo_string94:
	.asciz	"wcstombs"              @ string offset=1196
.Linfo_string95:
	.asciz	"at_quick_exit"         @ string offset=1205
.Linfo_string96:
	.asciz	"quick_exit"            @ string offset=1219
.Linfo_string97:
	.asciz	"signed char"           @ string offset=1230
.Linfo_string98:
	.asciz	"__int8_t"              @ string offset=1242
.Linfo_string99:
	.asciz	"int8_t"                @ string offset=1251
.Linfo_string100:
	.asciz	"short"                 @ string offset=1258
.Linfo_string101:
	.asciz	"__int16_t"             @ string offset=1264
.Linfo_string102:
	.asciz	"int16_t"               @ string offset=1274
.Linfo_string103:
	.asciz	"__int32_t"             @ string offset=1282
.Linfo_string104:
	.asciz	"int32_t"               @ string offset=1292
.Linfo_string105:
	.asciz	"__int64_t"             @ string offset=1300
.Linfo_string106:
	.asciz	"int64_t"               @ string offset=1310
.Linfo_string107:
	.asciz	"unsigned char"         @ string offset=1318
.Linfo_string108:
	.asciz	"__uint8_t"             @ string offset=1332
.Linfo_string109:
	.asciz	"uint8_t"               @ string offset=1342
.Linfo_string110:
	.asciz	"unsigned short"        @ string offset=1350
.Linfo_string111:
	.asciz	"__uint16_t"            @ string offset=1365
.Linfo_string112:
	.asciz	"uint16_t"              @ string offset=1376
.Linfo_string113:
	.asciz	"__uint64_t"            @ string offset=1385
.Linfo_string114:
	.asciz	"uint64_t"              @ string offset=1396
.Linfo_string115:
	.asciz	"int_least8_t"          @ string offset=1405
.Linfo_string116:
	.asciz	"int_least16_t"         @ string offset=1418
.Linfo_string117:
	.asciz	"int_least32_t"         @ string offset=1432
.Linfo_string118:
	.asciz	"int_least64_t"         @ string offset=1446
.Linfo_string119:
	.asciz	"uint_least8_t"         @ string offset=1460
.Linfo_string120:
	.asciz	"uint_least16_t"        @ string offset=1474
.Linfo_string121:
	.asciz	"uint_least32_t"        @ string offset=1489
.Linfo_string122:
	.asciz	"uint_least64_t"        @ string offset=1504
.Linfo_string123:
	.asciz	"int_fast8_t"           @ string offset=1519
.Linfo_string124:
	.asciz	"int_fast16_t"          @ string offset=1531
.Linfo_string125:
	.asciz	"int_fast32_t"          @ string offset=1544
.Linfo_string126:
	.asciz	"int_fast64_t"          @ string offset=1557
.Linfo_string127:
	.asciz	"uint_fast8_t"          @ string offset=1570
.Linfo_string128:
	.asciz	"uint_fast16_t"         @ string offset=1583
.Linfo_string129:
	.asciz	"uint_fast32_t"         @ string offset=1597
.Linfo_string130:
	.asciz	"uint_fast64_t"         @ string offset=1611
.Linfo_string131:
	.asciz	"__intptr_t"            @ string offset=1625
.Linfo_string132:
	.asciz	"intptr_t"              @ string offset=1636
.Linfo_string133:
	.asciz	"__uintptr_t"           @ string offset=1645
.Linfo_string134:
	.asciz	"uintptr_t"             @ string offset=1657
.Linfo_string135:
	.asciz	"intmax_t"              @ string offset=1667
.Linfo_string136:
	.asciz	"uintmax_t"             @ string offset=1676
.Linfo_string137:
	.asciz	"memcpy"                @ string offset=1686
.Linfo_string138:
	.asciz	"memmove"               @ string offset=1693
.Linfo_string139:
	.asciz	"_ZL6strcpyPcU17pass_object_size1PKc" @ string offset=1701
.Linfo_string140:
	.asciz	"strcpy"                @ string offset=1737
.Linfo_string141:
	.asciz	"strncpy"               @ string offset=1744
.Linfo_string142:
	.asciz	"_ZL6strcatPcU17pass_object_size1PKc" @ string offset=1752
.Linfo_string143:
	.asciz	"strcat"                @ string offset=1788
.Linfo_string144:
	.asciz	"strncat"               @ string offset=1795
.Linfo_string145:
	.asciz	"memcmp"                @ string offset=1803
.Linfo_string146:
	.asciz	"strcmp"                @ string offset=1810
.Linfo_string147:
	.asciz	"strncmp"               @ string offset=1817
.Linfo_string148:
	.asciz	"strcoll"               @ string offset=1825
.Linfo_string149:
	.asciz	"strxfrm"               @ string offset=1833
.Linfo_string150:
	.asciz	"_Z6memchrUa9enable_ifIXLb1EEEPvij" @ string offset=1841
.Linfo_string151:
	.asciz	"memchr"                @ string offset=1875
.Linfo_string152:
	.asciz	"_Z6strchrUa9enable_ifIXLb1EEEPci" @ string offset=1882
.Linfo_string153:
	.asciz	"strchr"                @ string offset=1915
.Linfo_string154:
	.asciz	"strcspn"               @ string offset=1922
.Linfo_string155:
	.asciz	"_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc" @ string offset=1930
.Linfo_string156:
	.asciz	"strpbrk"               @ string offset=1966
.Linfo_string157:
	.asciz	"_Z7strrchrUa9enable_ifIXLb1EEEPci" @ string offset=1974
.Linfo_string158:
	.asciz	"strrchr"               @ string offset=2008
.Linfo_string159:
	.asciz	"strspn"                @ string offset=2016
.Linfo_string160:
	.asciz	"_Z6strstrUa9enable_ifIXLb1EEEPcPKc" @ string offset=2023
.Linfo_string161:
	.asciz	"strstr"                @ string offset=2058
.Linfo_string162:
	.asciz	"strtok"                @ string offset=2065
.Linfo_string163:
	.asciz	"_ZL6memsetPvU17pass_object_size0ij" @ string offset=2072
.Linfo_string164:
	.asciz	"memset"                @ string offset=2107
.Linfo_string165:
	.asciz	"strerror"              @ string offset=2114
.Linfo_string166:
	.asciz	"_ZL6strlenPKcU17pass_object_size0" @ string offset=2123
.Linfo_string167:
	.asciz	"strlen"                @ string offset=2157
.Linfo_string168:
	.asciz	"_ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData" @ string offset=2164
.Linfo_string169:
	.asciz	"_ZN12IVideoPacketC2Ev" @ string offset=2224
.Linfo_string170:
	.asciz	"_ZN14AVCVideoPacketD2Ev" @ string offset=2246
.Linfo_string171:
	.asciz	"_ZN7IBufferC2Ev"       @ string offset=2270
.Linfo_string172:
	.asciz	"this"                  @ string offset=2286
.Linfo_string173:
	.asciz	"packet_type"           @ string offset=2291
.Linfo_string174:
	.asciz	"cts"                   @ string offset=2303
.Linfo_string175:
	.asciz	"data"                  @ string offset=2307
.Linfo_string176:
	.asciz	"output"                @ string offset=2312
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
	.byte	3                       @ Abbreviation Code
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
	.byte	4                       @ Abbreviation Code
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
	.byte	5                       @ Abbreviation Code
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
	.byte	6                       @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
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
	.byte	9                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
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
	.byte	12                      @ Abbreviation Code
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
	.byte	13                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
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
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
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
	.byte	18                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.ascii	"\211\001"              @ DW_AT_export_symbols
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
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
	.byte	21                      @ Abbreviation Code
	.byte	59                      @ DW_TAG_unspecified_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
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
	.byte	23                      @ Abbreviation Code
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
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
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
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
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
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
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
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
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
	.byte	33                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
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
	.byte	35                      @ Abbreviation Code
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
	.byte	36                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
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
	.byte	39                      @ Abbreviation Code
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
	.byte	40                      @ Abbreviation Code
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
	.byte	41                      @ Abbreviation Code
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
	.byte	42                      @ Abbreviation Code
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
	.byte	1                       @ Abbrev [1] 0xb:0xdf8 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0xcb DW_TAG_class_type
	.long	274                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string24         @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x33:0x7 DW_TAG_inheritance
	.long	241                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	4                       @ Abbrev [4] 0x3a:0xc DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	70                      @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x46:0xb DW_TAG_typedef
	.long	81                      @ DW_AT_type
	.long	.Linfo_string18         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x51:0x1b DW_TAG_enumeration_type
	.long	418                     @ DW_AT_type
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x59:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x5f:0x6 DW_TAG_enumerator
	.long	.Linfo_string16         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x65:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x6c:0xc DW_TAG_member
	.long	.Linfo_string19         @ DW_AT_name
	.long	425                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x78:0xc DW_TAG_member
	.long	.Linfo_string22         @ DW_AT_name
	.long	447                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x84:0x1d DW_TAG_subprogram
	.long	.Linfo_string24         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x8c:0x5 DW_TAG_formal_parameter
	.long	473                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x91:0x5 DW_TAG_formal_parameter
	.long	70                      @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x96:0x5 DW_TAG_formal_parameter
	.long	425                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x9b:0x5 DW_TAG_formal_parameter
	.long	447                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xa1:0xe DW_TAG_subprogram
	.long	.Linfo_string25         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa9:0x5 DW_TAG_formal_parameter
	.long	473                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xaf:0x23 DW_TAG_subprogram
	.long	.Linfo_string26         @ DW_AT_linkage_name
	.long	.Linfo_string7          @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0xc7:0x5 DW_TAG_formal_parameter
	.long	473                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0xcc:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xd2:0x1e DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0xea:0x5 DW_TAG_formal_parameter
	.long	473                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xf1:0x21 DW_TAG_class_type
	.long	274                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0xfe:0x7 DW_TAG_inheritance
	.long	274                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	12                      @ Abbrev [12] 0x105:0xc DW_TAG_subprogram
	.long	.Linfo_string12         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x10b:0x5 DW_TAG_formal_parameter
	.long	3370                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x112:0x65 DW_TAG_class_type
	.long	274                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string11         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x11f:0xa DW_TAG_member
	.long	.Linfo_string3          @ DW_AT_name
	.long	375                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x129:0x23 DW_TAG_subprogram
	.long	.Linfo_string6          @ DW_AT_linkage_name
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	274                     @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x141:0x5 DW_TAG_formal_parameter
	.long	413                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x146:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x14c:0x1e DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	274                     @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x164:0x5 DW_TAG_formal_parameter
	.long	413                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x16a:0xc DW_TAG_subprogram
	.long	.Linfo_string11         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x170:0x5 DW_TAG_formal_parameter
	.long	413                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x177:0x5 DW_TAG_pointer_type
	.long	380                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x17c:0x9 DW_TAG_pointer_type
	.long	389                     @ DW_AT_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	16                      @ Abbrev [16] 0x185:0x5 DW_TAG_subroutine_type
	.long	394                     @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x18a:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x191:0x5 DW_TAG_pointer_type
	.long	406                     @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x196:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x19d:0x5 DW_TAG_pointer_type
	.long	274                     @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x1a2:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x1a9:0xb DW_TAG_typedef
	.long	436                     @ DW_AT_type
	.long	.Linfo_string21         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x1b4:0xb DW_TAG_typedef
	.long	418                     @ DW_AT_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1bf:0x5 DW_TAG_pointer_type
	.long	452                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x1c4:0x15 DW_TAG_class_type
	.long	274                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string23         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x1d1:0x7 DW_TAG_inheritance
	.long	274                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x1d9:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x1de:0x2b7 DW_TAG_namespace
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ Abbrev [5] 0x1e3:0xb DW_TAG_typedef
	.long	1173                    @ DW_AT_type
	.long	.Linfo_string30         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x1ee:0x2a6 DW_TAG_namespace
	.long	.Linfo_string31         @ DW_AT_name
                                        @ DW_AT_export_symbols
	.byte	20                      @ Abbrev [20] 0x1f3:0x7 DW_TAG_imported_declaration
	.byte	9                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	1185                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x1fa:0x7 DW_TAG_imported_declaration
	.byte	9                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.long	1196                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x201:0x7 DW_TAG_imported_declaration
	.byte	9                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	1207                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x208:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.long	1196                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x20f:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.long	1264                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x216:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.long	1305                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x21d:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	1353                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x224:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	1394                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x22b:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	1432                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x232:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	107                     @ DW_AT_decl_line
	.long	1449                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x239:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1466                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x240:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.long	1483                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x247:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	1510                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x24e:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.long	1543                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x255:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	114                     @ DW_AT_decl_line
	.long	1569                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x25c:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	116                     @ DW_AT_decl_line
	.long	1596                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x263:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	1623                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x26a:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.long	1657                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x271:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	1691                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x278:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	1706                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x27f:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1723                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x286:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	1746                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x28d:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.long	1759                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x294:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	1776                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x29b:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1798                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2a2:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	1805                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2a9:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.long	1828                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2b0:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1841                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2b7:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	133                     @ DW_AT_decl_line
	.long	1858                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2be:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1875                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2c5:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.long	1892                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2cc:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	1956                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2d3:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.long	1984                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2da:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.long	2006                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2e1:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.long	2027                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2e8:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	2048                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2ef:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	2075                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2f6:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	2097                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x2fd:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	2119                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x304:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	149                     @ DW_AT_decl_line
	.long	2141                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x30b:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	2180                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x312:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	2202                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x319:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	2229                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x320:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	2266                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x327:0x7 DW_TAG_imported_declaration
	.byte	11                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	2283                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x32e:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	152                     @ DW_AT_decl_line
	.long	2296                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x335:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	153                     @ DW_AT_decl_line
	.long	2325                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x33c:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.long	2354                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x343:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	2376                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x34a:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	157                     @ DW_AT_decl_line
	.long	2398                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x351:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	2427                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x358:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	159                     @ DW_AT_decl_line
	.long	425                     @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x35f:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	160                     @ DW_AT_decl_line
	.long	2456                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x366:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	162                     @ DW_AT_decl_line
	.long	2478                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x36d:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	2489                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x374:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.long	2500                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x37b:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	2511                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x382:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	167                     @ DW_AT_decl_line
	.long	2522                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x389:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
	.long	2533                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x390:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2544                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x397:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	170                     @ DW_AT_decl_line
	.long	2555                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x39e:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.long	2566                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3a5:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	173                     @ DW_AT_decl_line
	.long	2577                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3ac:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	2588                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3b3:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	175                     @ DW_AT_decl_line
	.long	2599                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3ba:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	2610                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3c1:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	2621                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3c8:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.long	2632                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3cf:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	2643                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3d6:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.long	2654                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3dd:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	183                     @ DW_AT_decl_line
	.long	2676                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3e4:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.long	2698                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3eb:0x7 DW_TAG_imported_declaration
	.byte	17                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	2709                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3f2:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	1196                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x3f9:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	2720                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x400:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	2747                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x407:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	2774                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x40e:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	2805                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x415:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	2832                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x41c:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	2858                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x423:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	2885                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x42a:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	2912                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x431:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	2934                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x438:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	2961                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x43f:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	2983                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x446:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	3010                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x44d:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	3041                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x454:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.long	3067                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x45b:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.long	3089                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x462:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	3115                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x469:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	3141                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x470:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	3163                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x477:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	3189                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x47e:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	3211                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x485:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	3247                    @ DW_AT_import
	.byte	20                      @ Abbrev [20] 0x48c:0x7 DW_TAG_imported_declaration
	.byte	18                      @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	3264                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x495:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	20                      @ Abbrev [20] 0x49a:0x7 DW_TAG_imported_declaration
	.byte	7                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	483                     @ DW_AT_import
	.byte	5                       @ Abbrev [5] 0x4a1:0xb DW_TAG_typedef
	.long	394                     @ DW_AT_type
	.long	.Linfo_string32         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x4ac:0xb DW_TAG_typedef
	.long	418                     @ DW_AT_type
	.long	.Linfo_string33         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x4b7:0xb DW_TAG_typedef
	.long	1218                    @ DW_AT_type
	.long	.Linfo_string38         @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x4c2:0x20 DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	10                      @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	23                      @ Abbrev [23] 0x4c7:0xd DW_TAG_member
	.long	.Linfo_string34         @ DW_AT_name
	.long	1250                    @ DW_AT_type
	.byte	10                      @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	0                       @ DW_AT_data_member_location
	.byte	23                      @ Abbrev [23] 0x4d4:0xd DW_TAG_member
	.long	.Linfo_string36         @ DW_AT_name
	.long	1257                    @ DW_AT_type
	.byte	10                      @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_alignment
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x4e2:0x7 DW_TAG_base_type
	.long	.Linfo_string35         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	17                      @ Abbrev [17] 0x4e9:0x7 DW_TAG_base_type
	.long	.Linfo_string37         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x4f0:0xb DW_TAG_typedef
	.long	1275                    @ DW_AT_type
	.long	.Linfo_string41         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x4fb:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x500:0xc DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x50c:0xc DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x519:0xb DW_TAG_typedef
	.long	1316                    @ DW_AT_type
	.long	.Linfo_string43         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	187                     @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x524:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	8                       @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x529:0xc DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	1346                    @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x535:0xc DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	1346                    @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x542:0x7 DW_TAG_base_type
	.long	.Linfo_string42         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x549:0xb DW_TAG_typedef
	.long	1364                    @ DW_AT_type
	.long	.Linfo_string44         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x554:0x1e DW_TAG_structure_type
	.byte	5                       @ DW_AT_calling_convention
	.byte	16                      @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	191                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x559:0xc DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	1250                    @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x565:0xc DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	1250                    @ DW_AT_type
	.byte	12                      @ DW_AT_decl_file
	.byte	193                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x572:0x15 DW_TAG_subprogram
	.long	.Linfo_string45         @ DW_AT_linkage_name
	.long	.Linfo_string46         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	1415                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0x581:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x587:0x7 DW_TAG_base_type
	.long	.Linfo_string47         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x58e:0x5 DW_TAG_pointer_type
	.long	1427                    @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x593:0x5 DW_TAG_const_type
	.long	406                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x598:0x11 DW_TAG_subprogram
	.long	.Linfo_string48         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x5a3:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x5a9:0x11 DW_TAG_subprogram
	.long	.Linfo_string49         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.long	1346                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x5b4:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x5ba:0x11 DW_TAG_subprogram
	.long	.Linfo_string50         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	1250                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x5c5:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x5cb:0x16 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	1415                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x5d6:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x5db:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x5e1:0x5 DW_TAG_pointer_type
	.long	401                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x5e6:0x1a DW_TAG_subprogram
	.long	.Linfo_string52         @ DW_AT_linkage_name
	.long	.Linfo_string53         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1536                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0x5f5:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x5fa:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x600:0x7 DW_TAG_base_type
	.long	.Linfo_string54         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	27                      @ Abbrev [27] 0x607:0x1a DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_linkage_name
	.long	.Linfo_string55         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	1257                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x616:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x61b:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x621:0x1b DW_TAG_subprogram
	.long	.Linfo_string56         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	1346                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x62c:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x631:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x636:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x63c:0x1b DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	92                      @ DW_AT_decl_line
	.long	1250                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x647:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x64c:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x651:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x657:0x1b DW_TAG_subprogram
	.long	.Linfo_string58         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.long	1650                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x662:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x667:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x66c:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x672:0x7 DW_TAG_base_type
	.long	.Linfo_string59         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x679:0x1b DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.long	1684                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x684:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x689:0x5 DW_TAG_formal_parameter
	.long	1505                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x68e:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x694:0x7 DW_TAG_base_type
	.long	.Linfo_string61         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	28                      @ Abbrev [28] 0x69b:0xf DW_TAG_subprogram
	.long	.Linfo_string62         @ DW_AT_linkage_name
	.long	.Linfo_string63         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	29                      @ Abbrev [29] 0x6aa:0x11 DW_TAG_subprogram
	.long	.Linfo_string64         @ DW_AT_linkage_name
	.long	.Linfo_string65         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0x6b5:0x5 DW_TAG_formal_parameter
	.long	418                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x6bb:0x16 DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x6c6:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x6cb:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x6d1:0x1 DW_TAG_pointer_type
	.byte	31                      @ Abbrev [31] 0x6d2:0xd DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x6d9:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x6df:0x11 DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x6ea:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x6f0:0x16 DW_TAG_subprogram
	.long	.Linfo_string69         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x6fb:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x700:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x706:0x7 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	26                      @ Abbrev [26] 0x70d:0x11 DW_TAG_subprogram
	.long	.Linfo_string71         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x718:0x5 DW_TAG_formal_parameter
	.long	1822                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x71e:0x5 DW_TAG_pointer_type
	.long	1827                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x723:0x1 DW_TAG_subroutine_type
	.byte	34                      @ Abbrev [34] 0x724:0xd DW_TAG_subprogram
	.long	.Linfo_string72         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	10                      @ Abbrev [10] 0x72b:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x731:0x11 DW_TAG_subprogram
	.long	.Linfo_string73         @ DW_AT_linkage_name
	.long	.Linfo_string74         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	10                      @ Abbrev [10] 0x73c:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x742:0x11 DW_TAG_subprogram
	.long	.Linfo_string75         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x74d:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x753:0x11 DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x75e:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x764:0x25 DW_TAG_subprogram
	.long	.Linfo_string77         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x76f:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x774:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x779:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x77e:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x783:0x5 DW_TAG_formal_parameter
	.long	1935                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x789:0x5 DW_TAG_pointer_type
	.long	1934                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x78e:0x1 DW_TAG_const_type
	.byte	14                      @ Abbrev [14] 0x78f:0x5 DW_TAG_pointer_type
	.long	1940                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x794:0x10 DW_TAG_subroutine_type
	.long	394                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x799:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x79e:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	31                      @ Abbrev [31] 0x7a4:0x1c DW_TAG_subprogram
	.long	.Linfo_string78         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x7ab:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x7b0:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x7b5:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x7ba:0x5 DW_TAG_formal_parameter
	.long	1935                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x7c0:0x16 DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_linkage_name
	.long	.Linfo_string80         @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.short	789                     @ DW_AT_decl_line
	.long	1257                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x7d0:0x5 DW_TAG_formal_parameter
	.long	1257                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x7d6:0x15 DW_TAG_subprogram
	.long	.Linfo_string81         @ DW_AT_linkage_name
	.long	.Linfo_string82         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	1346                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0x7e5:0x5 DW_TAG_formal_parameter
	.long	1346                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x7eb:0x15 DW_TAG_subprogram
	.long	.Linfo_string83         @ DW_AT_linkage_name
	.long	.Linfo_string84         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	1250                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0x7fa:0x5 DW_TAG_formal_parameter
	.long	1250                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x800:0x1b DW_TAG_subprogram
	.long	.Linfo_string85         @ DW_AT_linkage_name
	.long	.Linfo_string86         @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.short	808                     @ DW_AT_decl_line
	.long	1353                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x810:0x5 DW_TAG_formal_parameter
	.long	1250                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x815:0x5 DW_TAG_formal_parameter
	.long	1250                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x81b:0x16 DW_TAG_subprogram
	.long	.Linfo_string87         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.long	1305                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x826:0x5 DW_TAG_formal_parameter
	.long	1346                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x82b:0x5 DW_TAG_formal_parameter
	.long	1346                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x831:0x16 DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	196                     @ DW_AT_decl_line
	.long	1353                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x83c:0x5 DW_TAG_formal_parameter
	.long	1250                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x841:0x5 DW_TAG_formal_parameter
	.long	1250                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x847:0x16 DW_TAG_subprogram
	.long	.Linfo_string89         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	219                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x852:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x857:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x85d:0x1b DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x868:0x5 DW_TAG_formal_parameter
	.long	2168                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x86d:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x872:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x878:0x5 DW_TAG_pointer_type
	.long	2173                    @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x87d:0x7 DW_TAG_base_type
	.long	.Linfo_string91         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x884:0x16 DW_TAG_subprogram
	.long	.Linfo_string92         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x88f:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x894:0x5 DW_TAG_formal_parameter
	.long	2173                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x89a:0x1b DW_TAG_subprogram
	.long	.Linfo_string93         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x8a5:0x5 DW_TAG_formal_parameter
	.long	2168                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x8aa:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x8af:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x8b5:0x1b DW_TAG_subprogram
	.long	.Linfo_string94         @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	224                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x8c0:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x8c5:0x5 DW_TAG_formal_parameter
	.long	2256                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x8ca:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x8d0:0x5 DW_TAG_pointer_type
	.long	2261                    @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x8d5:0x5 DW_TAG_const_type
	.long	2173                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x8da:0x11 DW_TAG_subprogram
	.long	.Linfo_string95         @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x8e5:0x5 DW_TAG_formal_parameter
	.long	1822                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x8eb:0xd DW_TAG_subprogram
	.long	.Linfo_string96         @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
                                        @ DW_AT_noreturn
	.byte	10                      @ Abbrev [10] 0x8f2:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x8f8:0xb DW_TAG_typedef
	.long	2307                    @ DW_AT_type
	.long	.Linfo_string99         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x903:0xb DW_TAG_typedef
	.long	2318                    @ DW_AT_type
	.long	.Linfo_string98         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x90e:0x7 DW_TAG_base_type
	.long	.Linfo_string97         @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x915:0xb DW_TAG_typedef
	.long	2336                    @ DW_AT_type
	.long	.Linfo_string102        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x920:0xb DW_TAG_typedef
	.long	2347                    @ DW_AT_type
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x92b:0x7 DW_TAG_base_type
	.long	.Linfo_string100        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x932:0xb DW_TAG_typedef
	.long	2365                    @ DW_AT_type
	.long	.Linfo_string104        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x93d:0xb DW_TAG_typedef
	.long	394                     @ DW_AT_type
	.long	.Linfo_string103        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x948:0xb DW_TAG_typedef
	.long	2387                    @ DW_AT_type
	.long	.Linfo_string106        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x953:0xb DW_TAG_typedef
	.long	1250                    @ DW_AT_type
	.long	.Linfo_string105        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x95e:0xb DW_TAG_typedef
	.long	2409                    @ DW_AT_type
	.long	.Linfo_string109        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x969:0xb DW_TAG_typedef
	.long	2420                    @ DW_AT_type
	.long	.Linfo_string108        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x974:0x7 DW_TAG_base_type
	.long	.Linfo_string107        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x97b:0xb DW_TAG_typedef
	.long	2438                    @ DW_AT_type
	.long	.Linfo_string112        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x986:0xb DW_TAG_typedef
	.long	2449                    @ DW_AT_type
	.long	.Linfo_string111        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x991:0x7 DW_TAG_base_type
	.long	.Linfo_string110        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x998:0xb DW_TAG_typedef
	.long	2467                    @ DW_AT_type
	.long	.Linfo_string114        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9a3:0xb DW_TAG_typedef
	.long	1684                    @ DW_AT_type
	.long	.Linfo_string113        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9ae:0xb DW_TAG_typedef
	.long	2296                    @ DW_AT_type
	.long	.Linfo_string115        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9b9:0xb DW_TAG_typedef
	.long	2325                    @ DW_AT_type
	.long	.Linfo_string116        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9c4:0xb DW_TAG_typedef
	.long	2354                    @ DW_AT_type
	.long	.Linfo_string117        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9cf:0xb DW_TAG_typedef
	.long	2376                    @ DW_AT_type
	.long	.Linfo_string118        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9da:0xb DW_TAG_typedef
	.long	2398                    @ DW_AT_type
	.long	.Linfo_string119        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9e5:0xb DW_TAG_typedef
	.long	2427                    @ DW_AT_type
	.long	.Linfo_string120        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9f0:0xb DW_TAG_typedef
	.long	425                     @ DW_AT_type
	.long	.Linfo_string121        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9fb:0xb DW_TAG_typedef
	.long	2456                    @ DW_AT_type
	.long	.Linfo_string122        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa06:0xb DW_TAG_typedef
	.long	2296                    @ DW_AT_type
	.long	.Linfo_string123        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa11:0xb DW_TAG_typedef
	.long	2354                    @ DW_AT_type
	.long	.Linfo_string124        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa1c:0xb DW_TAG_typedef
	.long	2354                    @ DW_AT_type
	.long	.Linfo_string125        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa27:0xb DW_TAG_typedef
	.long	2376                    @ DW_AT_type
	.long	.Linfo_string126        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa32:0xb DW_TAG_typedef
	.long	2398                    @ DW_AT_type
	.long	.Linfo_string127        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa3d:0xb DW_TAG_typedef
	.long	425                     @ DW_AT_type
	.long	.Linfo_string128        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa48:0xb DW_TAG_typedef
	.long	425                     @ DW_AT_type
	.long	.Linfo_string129        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa53:0xb DW_TAG_typedef
	.long	2456                    @ DW_AT_type
	.long	.Linfo_string130        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	89                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa5e:0xb DW_TAG_typedef
	.long	2665                    @ DW_AT_type
	.long	.Linfo_string132        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa69:0xb DW_TAG_typedef
	.long	394                     @ DW_AT_type
	.long	.Linfo_string131        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa74:0xb DW_TAG_typedef
	.long	2687                    @ DW_AT_type
	.long	.Linfo_string134        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa7f:0xb DW_TAG_typedef
	.long	418                     @ DW_AT_type
	.long	.Linfo_string133        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa8a:0xb DW_TAG_typedef
	.long	2376                    @ DW_AT_type
	.long	.Linfo_string135        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0xa95:0xb DW_TAG_typedef
	.long	2456                    @ DW_AT_type
	.long	.Linfo_string136        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xaa0:0x1b DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xaab:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xab0:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xab5:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xabb:0x1b DW_TAG_subprogram
	.long	.Linfo_string138        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xac6:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xacb:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xad0:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xad6:0x1a DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_linkage_name
	.long	.Linfo_string140        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0xae5:0x5 DW_TAG_formal_parameter
	.long	2800                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xaea:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xaf0:0x5 DW_TAG_const_type
	.long	401                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0xaf5:0x1b DW_TAG_subprogram
	.long	.Linfo_string141        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb00:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb05:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb0a:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xb10:0x1a DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_linkage_name
	.long	.Linfo_string143        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0xb1f:0x5 DW_TAG_formal_parameter
	.long	2800                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb24:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb2a:0x1b DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb35:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb3a:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb3f:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb45:0x1b DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb50:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb55:0x5 DW_TAG_formal_parameter
	.long	1929                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb5a:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb60:0x16 DW_TAG_subprogram
	.long	.Linfo_string146        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb6b:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb70:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb76:0x1b DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb81:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb86:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xb8b:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb91:0x16 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	394                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xb9c:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xba1:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xba7:0x1b DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xbb2:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xbb7:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xbbc:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbc2:0x1f DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_linkage_name
	.long	.Linfo_string151        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xbd1:0x5 DW_TAG_formal_parameter
	.long	1745                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xbd6:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xbdb:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbe1:0x1a DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_linkage_name
	.long	.Linfo_string153        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xbf0:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xbf5:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xbfb:0x16 DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc06:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc0b:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xc11:0x1a DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_linkage_name
	.long	.Linfo_string156        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc20:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc25:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xc2b:0x1a DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_linkage_name
	.long	.Linfo_string158        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc3a:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc3f:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc45:0x16 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	151                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc50:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc55:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xc5b:0x1a DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_linkage_name
	.long	.Linfo_string161        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc6a:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc6f:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc75:0x16 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc80:0x5 DW_TAG_formal_parameter
	.long	401                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc85:0x5 DW_TAG_formal_parameter
	.long	1422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xc8b:0x1f DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_linkage_name
	.long	.Linfo_string164        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	1745                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0xc9a:0x5 DW_TAG_formal_parameter
	.long	3242                    @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xc9f:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xca4:0x5 DW_TAG_formal_parameter
	.long	1196                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xcaa:0x5 DW_TAG_const_type
	.long	1745                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0xcaf:0x11 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xcba:0x5 DW_TAG_formal_parameter
	.long	394                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0xcc0:0x15 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_linkage_name
	.long	.Linfo_string167        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	1196                    @ DW_AT_type
                                        @ DW_AT_declaration
	.byte	10                      @ Abbrev [10] 0xccf:0x5 DW_TAG_formal_parameter
	.long	3285                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xcd5:0x5 DW_TAG_const_type
	.long	1422                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0xcda:0x50 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3315                    @ DW_AT_object_pointer
	.byte	22                      @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	.Linfo_string168        @ DW_AT_linkage_name
	.long	132                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xcf3:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.long	.Linfo_string172        @ DW_AT_name
	.long	3571                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	41                      @ Abbrev [41] 0xcff:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string173        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	70                      @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0xd0d:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string174        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	425                     @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0xd1b:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string175        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	447                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xd2a:0x5 DW_TAG_pointer_type
	.long	241                     @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0xd2f:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3400                    @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string169        @ DW_AT_linkage_name
	.long	261                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xd48:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string172        @ DW_AT_name
	.long	3576                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	39                      @ Abbrev [39] 0xd55:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3438                    @ DW_AT_object_pointer
	.byte	22                      @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	.Linfo_string170        @ DW_AT_linkage_name
	.long	161                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xd6e:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string172        @ DW_AT_name
	.long	3571                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xd7b:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3472                    @ DW_AT_object_pointer
	.byte	22                      @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	175                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xd90:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string172        @ DW_AT_name
	.long	3571                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	41                      @ Abbrev [41] 0xd9c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string176        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	401                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xdab:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3520                    @ DW_AT_object_pointer
	.byte	22                      @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	210                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xdc0:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string172        @ DW_AT_name
	.long	3571                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	39                      @ Abbrev [39] 0xdcd:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	3558                    @ DW_AT_object_pointer
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string171        @ DW_AT_linkage_name
	.long	362                     @ DW_AT_specification
	.byte	40                      @ Abbrev [40] 0xde6:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string172        @ DW_AT_name
	.long	3581                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xdf3:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xdf8:0x5 DW_TAG_pointer_type
	.long	241                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0xdfd:0x5 DW_TAG_pointer_type
	.long	274                     @ DW_AT_type
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

	.globl	_ZN14AVCVideoPacketC1ENS_13AVCPacketTypeEjP14IAVCPacketData
	.type	_ZN14AVCVideoPacketC1ENS_13AVCPacketTypeEjP14IAVCPacketData,%function
.set _ZN14AVCVideoPacketC1ENS_13AVCPacketTypeEjP14IAVCPacketData, _ZN14AVCVideoPacketC2ENS_13AVCPacketTypeEjP14IAVCPacketData
	.globl	_ZN14AVCVideoPacketD1Ev
	.type	_ZN14AVCVideoPacketD1Ev,%function
.set _ZN14AVCVideoPacketD1Ev, _ZN14AVCVideoPacketD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
