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
	.file	"AudioData.cpp"
	.file	1 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	2 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.section	.text._ZN9AudioData7WriteToEPc,"ax",%progbits
	.globl	_ZN9AudioData7WriteToEPc @ -- Begin function _ZN9AudioData7WriteToEPc
	.p2align	1
	.type	_ZN9AudioData7WriteToEPc,%function
	.code	16                      @ @_ZN9AudioData7WriteToEPc
	.thumb_func
_ZN9AudioData7WriteToEPc:
.Lfunc_begin0:
	.file	3 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AudioData.cpp"
	.loc	3 7 0                   @ src/main/cpp/AudioData.cpp:7:0
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
	.pad	#8
	sub	sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
.Ltmp0:
	.loc	3 8 20 prologue_end     @ src/main/cpp/AudioData.cpp:8:20
	ldrb	r1, [r0, #4]
	.loc	3 9 22                  @ src/main/cpp/AudioData.cpp:9:22
	ldrb	r2, [r0, #5]
	.loc	3 10 22                 @ src/main/cpp/AudioData.cpp:10:22
	ldrb	r3, [r0, #6]
	.loc	3 11 21                 @ src/main/cpp/AudioData.cpp:11:21
	ldrb.w	r12, [r0, #7]
	.loc	3 8 40                  @ src/main/cpp/AudioData.cpp:8:40
	lsls	r1, r1, #4
	.loc	3 9 19                  @ src/main/cpp/AudioData.cpp:9:19
	orr.w	r1, r1, r2, lsl #2
	.loc	3 10 19                 @ src/main/cpp/AudioData.cpp:10:19
	orr.w	r1, r1, r3, lsl #1
	.loc	3 11 19                 @ src/main/cpp/AudioData.cpp:11:19
	orr.w	r1, r1, r12
	.loc	3 8 13                  @ src/main/cpp/AudioData.cpp:8:13
	ldr	r2, [sp]
	adds	r3, r2, #1
	str	r3, [sp]
	.loc	3 8 17 is_stmt 0        @ src/main/cpp/AudioData.cpp:8:17
	strb	r1, [r2]
	.loc	3 12 12 is_stmt 1       @ src/main/cpp/AudioData.cpp:12:12
	ldr	r0, [r0, #8]
	.loc	3 12 33 is_stmt 0       @ src/main/cpp/AudioData.cpp:12:33
	ldr	r1, [sp]
	.loc	3 12 25                 @ src/main/cpp/AudioData.cpp:12:25
	ldr	r2, [r0]
	ldr	r2, [r2]
	blx	r2
	.loc	3 12 5                  @ src/main/cpp/AudioData.cpp:12:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp1:
.Lfunc_end0:
	.size	_ZN9AudioData7WriteToEPc, .Lfunc_end0-_ZN9AudioData7WriteToEPc
	.cfi_endproc
	.file	4 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IBuffer.h"
	.file	5 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IFLVTagData.h"
	.file	6 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdint.h"
	.file	7 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/AudioData.h"
	.file	8 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/ISoundData.h"
	.fnend
                                        @ -- End function
	.section	.text._ZN9AudioDataC2EhhhhP10ISoundData,"ax",%progbits
	.globl	_ZN9AudioDataC2EhhhhP10ISoundData @ -- Begin function _ZN9AudioDataC2EhhhhP10ISoundData
	.p2align	2
	.type	_ZN9AudioDataC2EhhhhP10ISoundData,%function
	.code	16                      @ @_ZN9AudioDataC2EhhhhP10ISoundData
	.thumb_func
_ZN9AudioDataC2EhhhhP10ISoundData:
.Lfunc_begin1:
	.loc	3 18 0 is_stmt 1        @ src/main/cpp/AudioData.cpp:18:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r6, -12
	.cfi_offset r5, -16
	.cfi_offset r4, -20
	.setfp	r7, sp, #12
	add	r7, sp, #12
	.cfi_def_cfa r7, 8
	.save	{r11}
	str	r11, [sp, #-4]!
	.cfi_offset r11, -24
	.pad	#32
	sub	sp, #32
	ldr.w	r12, [r7, #12]
	ldr.w	lr, [r7, #8]
	mov	r4, r3
	mov	r5, r2
	mov	r6, r1
	str	r0, [sp, #28]
	strb	r1, [r7, #-21]
	strb	r2, [r7, #-22]
	strb	r3, [r7, #-23]
	strb.w	lr, [sp, #24]
	ldr	r0, [sp, #28]
.Ltmp2:
	.loc	3 15 12 prologue_end    @ src/main/cpp/AudioData.cpp:15:12
	str	r0, [sp, #20]           @ 4-byte Spill
	str.w	r12, [sp, #16]          @ 4-byte Spill
	str	r4, [sp, #12]           @ 4-byte Spill
	str	r5, [sp, #8]            @ 4-byte Spill
	str	r6, [sp, #4]            @ 4-byte Spill
	bl	_ZN11IFLVTagDataC2Ev
	.loc	3 18 58                 @ src/main/cpp/AudioData.cpp:18:58
	ldr	r0, .LCPI1_0
.LPC1_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp, #20]           @ 4-byte Reload
	str	r0, [r1]
	.loc	3 17 23                 @ src/main/cpp/AudioData.cpp:17:23
	ldrb	r0, [r7, #-21]
	.loc	3 17 9 is_stmt 0        @ src/main/cpp/AudioData.cpp:17:9
	strb	r0, [r1, #4]
	.loc	3 17 50                 @ src/main/cpp/AudioData.cpp:17:50
	ldrb	r0, [r7, #-22]
	.loc	3 17 38                 @ src/main/cpp/AudioData.cpp:17:38
	strb	r0, [r1, #5]
	.loc	3 17 75                 @ src/main/cpp/AudioData.cpp:17:75
	ldrb	r0, [r7, #-23]
	.loc	3 17 63                 @ src/main/cpp/AudioData.cpp:17:63
	strb	r0, [r1, #6]
	.loc	3 18 21 is_stmt 1       @ src/main/cpp/AudioData.cpp:18:21
	ldrb.w	r0, [sp, #24]
	.loc	3 18 9 is_stmt 0        @ src/main/cpp/AudioData.cpp:18:9
	strb	r0, [r1, #7]
	.loc	3 18 46                 @ src/main/cpp/AudioData.cpp:18:46
	ldr	r0, [r7, #12]
	.loc	3 18 34                 @ src/main/cpp/AudioData.cpp:18:34
	str	r0, [r1, #8]
	.loc	3 19 1 is_stmt 1        @ src/main/cpp/AudioData.cpp:19:1
	mov	r0, r1
	add	sp, #32
	ldr	r11, [sp], #4
	pop	{r4, r5, r6, r7, pc}
.Ltmp3:
	.p2align	2
@ %bb.1:
	.loc	3 0 1 is_stmt 0         @ src/main/cpp/AudioData.cpp:0:1
.LCPI1_0:
.Ltmp4:
	.long	_ZTV9AudioData(GOT_PREL)-((.LPC1_0+4)-.Ltmp4)
.Lfunc_end1:
	.size	_ZN9AudioDataC2EhhhhP10ISoundData, .Lfunc_end1-_ZN9AudioDataC2EhhhhP10ISoundData
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN11IFLVTagDataC2Ev,"axG",%progbits,_ZN11IFLVTagDataC2Ev,comdat
	.weak	_ZN11IFLVTagDataC2Ev    @ -- Begin function _ZN11IFLVTagDataC2Ev
	.p2align	2
	.type	_ZN11IFLVTagDataC2Ev,%function
	.code	16                      @ @_ZN11IFLVTagDataC2Ev
	.thumb_func
_ZN11IFLVTagDataC2Ev:
.Lfunc_begin2:
	.loc	5 10 0 is_stmt 1        @ src/main/cpp/IFLVTagData.h:10:0
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
.Ltmp5:
	.loc	5 10 7 prologue_end     @ src/main/cpp/IFLVTagData.h:10:7
	str	r0, [sp]                @ 4-byte Spill
	bl	_ZN7IBufferC2Ev
	ldr	r0, .LCPI2_0
.LPC2_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp]                @ 4-byte Reload
	str	r0, [r1]
	mov	r0, r1
	add	sp, #8
	pop	{r7, pc}
.Ltmp6:
	.p2align	2
@ %bb.1:
	.loc	5 0 7 is_stmt 0         @ src/main/cpp/IFLVTagData.h:0:7
.LCPI2_0:
.Ltmp7:
	.long	_ZTV11IFLVTagData(GOT_PREL)-((.LPC2_0+4)-.Ltmp7)
.Lfunc_end2:
	.size	_ZN11IFLVTagDataC2Ev, .Lfunc_end2-_ZN11IFLVTagDataC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9AudioDataD2Ev,"ax",%progbits
	.globl	_ZN9AudioDataD2Ev       @ -- Begin function _ZN9AudioDataD2Ev
	.p2align	1
	.type	_ZN9AudioDataD2Ev,%function
	.code	16                      @ @_ZN9AudioDataD2Ev
	.thumb_func
_ZN9AudioDataD2Ev:
.Lfunc_begin3:
	.loc	3 21 0 is_stmt 1        @ src/main/cpp/AudioData.cpp:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp8:
	.loc	3 22 1 prologue_end     @ src/main/cpp/AudioData.cpp:22:1
	add	sp, #4
	bx	lr
.Ltmp9:
.Lfunc_end3:
	.size	_ZN9AudioDataD2Ev, .Lfunc_end3-_ZN9AudioDataD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9AudioDataD0Ev,"ax",%progbits
	.globl	_ZN9AudioDataD0Ev       @ -- Begin function _ZN9AudioDataD0Ev
	.p2align	1
	.type	_ZN9AudioDataD0Ev,%function
	.code	16                      @ @_ZN9AudioDataD0Ev
	.thumb_func
_ZN9AudioDataD0Ev:
.Lfunc_begin4:
	.loc	3 21 0                  @ src/main/cpp/AudioData.cpp:21:0
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
.Ltmp10:
	.loc	3 21 25 prologue_end    @ src/main/cpp/AudioData.cpp:21:25
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_ZN9AudioDataD1Ev
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	_ZdlPv
	.loc	3 22 1                  @ src/main/cpp/AudioData.cpp:22:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp11:
.Lfunc_end4:
	.size	_ZN9AudioDataD0Ev, .Lfunc_end4-_ZN9AudioDataD0Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9AudioData4SizeEv,"ax",%progbits
	.globl	_ZN9AudioData4SizeEv    @ -- Begin function _ZN9AudioData4SizeEv
	.p2align	1
	.type	_ZN9AudioData4SizeEv,%function
	.code	16                      @ @_ZN9AudioData4SizeEv
	.thumb_func
_ZN9AudioData4SizeEv:
.Lfunc_begin5:
	.loc	3 24 0                  @ src/main/cpp/AudioData.cpp:24:0
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
.Ltmp12:
	.loc	3 25 16 prologue_end    @ src/main/cpp/AudioData.cpp:25:16
	ldr	r0, [r0, #8]
	.loc	3 25 29 is_stmt 0       @ src/main/cpp/AudioData.cpp:25:29
	ldr	r1, [r0]
	ldr	r1, [r1, #4]
	blx	r1
	.loc	3 25 14                 @ src/main/cpp/AudioData.cpp:25:14
	adds	r0, #1
	.loc	3 25 5                  @ src/main/cpp/AudioData.cpp:25:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp13:
.Lfunc_end5:
	.size	_ZN9AudioData4SizeEv, .Lfunc_end5-_ZN9AudioData4SizeEv
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
.Lfunc_begin6:
	.loc	4 9 0 is_stmt 1         @ src/main/cpp/IBuffer.h:9:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp14:
	.loc	4 9 7 prologue_end      @ src/main/cpp/IBuffer.h:9:7
	ldr	r1, .LCPI6_0
.LPC6_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
	add	sp, #4
	bx	lr
.Ltmp15:
	.p2align	2
@ %bb.1:
	.loc	4 0 7 is_stmt 0         @ src/main/cpp/IBuffer.h:0:7
.LCPI6_0:
.Ltmp16:
	.long	_ZTV7IBuffer(GOT_PREL)-((.LPC6_0+4)-.Ltmp16)
.Lfunc_end6:
	.size	_ZN7IBufferC2Ev, .Lfunc_end6-_ZN7IBufferC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.type	_ZTV9AudioData,%object  @ @_ZTV9AudioData
	.section	.data.rel.ro._ZTV9AudioData,"aw",%progbits
	.globl	_ZTV9AudioData
	.p2align	2
_ZTV9AudioData:
	.long	0
	.long	_ZTI9AudioData
	.long	_ZN9AudioData7WriteToEPc
	.long	_ZN9AudioData4SizeEv
	.long	_ZN9AudioDataD1Ev
	.long	_ZN9AudioDataD0Ev
	.size	_ZTV9AudioData, 24

	.type	_ZTS9AudioData,%object  @ @_ZTS9AudioData
	.section	.rodata._ZTS9AudioData,"a",%progbits
	.globl	_ZTS9AudioData
_ZTS9AudioData:
	.asciz	"9AudioData"
	.size	_ZTS9AudioData, 11

	.type	_ZTS11IFLVTagData,%object @ @_ZTS11IFLVTagData
	.section	.rodata._ZTS11IFLVTagData,"aG",%progbits,_ZTS11IFLVTagData,comdat
	.weak	_ZTS11IFLVTagData
_ZTS11IFLVTagData:
	.asciz	"11IFLVTagData"
	.size	_ZTS11IFLVTagData, 14

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

	.type	_ZTI11IFLVTagData,%object @ @_ZTI11IFLVTagData
	.section	.data.rel.ro._ZTI11IFLVTagData,"aGw",%progbits,_ZTI11IFLVTagData,comdat
	.weak	_ZTI11IFLVTagData
	.p2align	2
_ZTI11IFLVTagData:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS11IFLVTagData
	.long	_ZTI7IBuffer
	.size	_ZTI11IFLVTagData, 12

	.type	_ZTI9AudioData,%object  @ @_ZTI9AudioData
	.section	.data.rel.ro._ZTI9AudioData,"aw",%progbits
	.globl	_ZTI9AudioData
	.p2align	2
_ZTI9AudioData:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS9AudioData
	.long	_ZTI11IFLVTagData
	.size	_ZTI9AudioData, 12

	.type	_ZTV11IFLVTagData,%object @ @_ZTV11IFLVTagData
	.section	.data.rel.ro._ZTV11IFLVTagData,"aGw",%progbits,_ZTV11IFLVTagData,comdat
	.weak	_ZTV11IFLVTagData
	.p2align	2
_ZTV11IFLVTagData:
	.long	0
	.long	_ZTI11IFLVTagData
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.size	_ZTV11IFLVTagData, 16

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

	.file	9 "<stdin>"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/AudioData.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=218
.Linfo_string3:
	.asciz	"std"                   @ string offset=309
.Linfo_string4:
	.asciz	"decltype(nullptr)"     @ string offset=313
.Linfo_string5:
	.asciz	"nullptr_t"             @ string offset=331
.Linfo_string6:
	.asciz	"_vptr$IBuffer"         @ string offset=341
.Linfo_string7:
	.asciz	"int"                   @ string offset=355
.Linfo_string8:
	.asciz	"__vtbl_ptr_type"       @ string offset=359
.Linfo_string9:
	.asciz	"_ZN7IBuffer7WriteToEPc" @ string offset=375
.Linfo_string10:
	.asciz	"WriteTo"               @ string offset=398
.Linfo_string11:
	.asciz	"char"                  @ string offset=406
.Linfo_string12:
	.asciz	"_ZN7IBuffer4SizeEv"    @ string offset=411
.Linfo_string13:
	.asciz	"Size"                  @ string offset=430
.Linfo_string14:
	.asciz	"IBuffer"               @ string offset=435
.Linfo_string15:
	.asciz	"IFLVTagData"           @ string offset=443
.Linfo_string16:
	.asciz	"sound_format_"         @ string offset=455
.Linfo_string17:
	.asciz	"unsigned char"         @ string offset=469
.Linfo_string18:
	.asciz	"__uint8_t"             @ string offset=483
.Linfo_string19:
	.asciz	"uint8_t"               @ string offset=493
.Linfo_string20:
	.asciz	"sound_rate_"           @ string offset=501
.Linfo_string21:
	.asciz	"sound_size_"           @ string offset=513
.Linfo_string22:
	.asciz	"sound_type_"           @ string offset=525
.Linfo_string23:
	.asciz	"sound_data_"           @ string offset=537
.Linfo_string24:
	.asciz	"ISoundData"            @ string offset=549
.Linfo_string25:
	.asciz	"AudioData"             @ string offset=560
.Linfo_string26:
	.asciz	"~AudioData"            @ string offset=570
.Linfo_string27:
	.asciz	"_ZN9AudioData7WriteToEPc" @ string offset=581
.Linfo_string28:
	.asciz	"_ZN9AudioData4SizeEv"  @ string offset=606
.Linfo_string29:
	.asciz	"_ZN9AudioDataC2EhhhhP10ISoundData" @ string offset=627
.Linfo_string30:
	.asciz	"_ZN11IFLVTagDataC2Ev"  @ string offset=661
.Linfo_string31:
	.asciz	"_ZN9AudioDataD2Ev"     @ string offset=682
.Linfo_string32:
	.asciz	"_ZN9AudioDataD0Ev"     @ string offset=700
.Linfo_string33:
	.asciz	"_ZN7IBufferC2Ev"       @ string offset=718
.Linfo_string34:
	.asciz	"this"                  @ string offset=734
.Linfo_string35:
	.asciz	"output"                @ string offset=739
.Linfo_string36:
	.asciz	"sound_format"          @ string offset=746
.Linfo_string37:
	.asciz	"sound_rate"            @ string offset=759
.Linfo_string38:
	.asciz	"sound_size"            @ string offset=770
.Linfo_string39:
	.asciz	"sound_type"            @ string offset=781
.Linfo_string40:
	.asciz	"sound_data"            @ string offset=792
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
	.byte	59                      @ DW_TAG_unspecified_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
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
	.byte	7                       @ Abbreviation Code
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
	.byte	8                       @ Abbreviation Code
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
	.byte	9                       @ Abbreviation Code
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
	.byte	10                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
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
	.byte	15                      @ Abbreviation Code
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
	.byte	16                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
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
	.byte	20                      @ Abbreviation Code
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
	.byte	21                      @ Abbreviation Code
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
	.byte	22                      @ Abbreviation Code
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
	.byte	23                      @ Abbreviation Code
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
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                       @ DWARF version number
	.long	.debug_abbrev           @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x36d DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x11 DW_TAG_namespace
	.long	.Linfo_string3          @ DW_AT_name
	.byte	3                       @ Abbrev [3] 0x2b:0xb DW_TAG_typedef
	.long	55                      @ DW_AT_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x37:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ Abbrev [5] 0x3c:0x7 DW_TAG_imported_declaration
	.byte	2                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	43                      @ DW_AT_import
	.byte	6                       @ Abbrev [6] 0x43:0xdd DW_TAG_class_type
	.long	321                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string25         @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x50:0x7 DW_TAG_inheritance
	.long	288                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	8                       @ Abbrev [8] 0x57:0xc DW_TAG_member
	.long	.Linfo_string16         @ DW_AT_name
	.long	465                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x63:0xc DW_TAG_member
	.long	.Linfo_string20         @ DW_AT_name
	.long	465                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x6f:0xc DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	465                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	6                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x7b:0xc DW_TAG_member
	.long	.Linfo_string22         @ DW_AT_name
	.long	465                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	7                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x87:0xc DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	494                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x93:0xe DW_TAG_subprogram
	.long	.Linfo_string25         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x9b:0x5 DW_TAG_formal_parameter
	.long	520                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xa1:0x27 DW_TAG_subprogram
	.long	.Linfo_string25         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0xa9:0x5 DW_TAG_formal_parameter
	.long	520                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0xae:0x5 DW_TAG_formal_parameter
	.long	465                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xb3:0x5 DW_TAG_formal_parameter
	.long	465                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xb8:0x5 DW_TAG_formal_parameter
	.long	465                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xbd:0x5 DW_TAG_formal_parameter
	.long	465                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xc2:0x5 DW_TAG_formal_parameter
	.long	494                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc8:0x16 DW_TAG_subprogram
	.long	.Linfo_string26         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	67                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0xd8:0x5 DW_TAG_formal_parameter
	.long	520                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xde:0x23 DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.long	448                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	67                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0xf6:0x5 DW_TAG_formal_parameter
	.long	520                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0xfb:0x5 DW_TAG_formal_parameter
	.long	448                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x101:0x1e DW_TAG_subprogram
	.long	.Linfo_string28         @ DW_AT_linkage_name
	.long	.Linfo_string13         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	441                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	67                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x119:0x5 DW_TAG_formal_parameter
	.long	520                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x120:0x21 DW_TAG_class_type
	.long	321                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string15         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x12d:0x7 DW_TAG_inheritance
	.long	321                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	14                      @ Abbrev [14] 0x134:0xc DW_TAG_subprogram
	.long	.Linfo_string15         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x13a:0x5 DW_TAG_formal_parameter
	.long	681                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x141:0x65 DW_TAG_class_type
	.long	321                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string14         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	15                      @ Abbrev [15] 0x14e:0xa DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	422                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	13                      @ Abbrev [13] 0x158:0x23 DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	448                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	321                     @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x170:0x5 DW_TAG_formal_parameter
	.long	460                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x175:0x5 DW_TAG_formal_parameter
	.long	448                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x17b:0x1e DW_TAG_subprogram
	.long	.Linfo_string12         @ DW_AT_linkage_name
	.long	.Linfo_string13         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	441                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	321                     @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x193:0x5 DW_TAG_formal_parameter
	.long	460                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x199:0xc DW_TAG_subprogram
	.long	.Linfo_string14         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x19f:0x5 DW_TAG_formal_parameter
	.long	460                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x1a6:0x5 DW_TAG_pointer_type
	.long	427                     @ DW_AT_type
	.byte	17                      @ Abbrev [17] 0x1ab:0x9 DW_TAG_pointer_type
	.long	436                     @ DW_AT_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	18                      @ Abbrev [18] 0x1b4:0x5 DW_TAG_subroutine_type
	.long	441                     @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x1b9:0x7 DW_TAG_base_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	16                      @ Abbrev [16] 0x1c0:0x5 DW_TAG_pointer_type
	.long	453                     @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x1c5:0x7 DW_TAG_base_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	16                      @ Abbrev [16] 0x1cc:0x5 DW_TAG_pointer_type
	.long	321                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x1d1:0xb DW_TAG_typedef
	.long	476                     @ DW_AT_type
	.long	.Linfo_string19         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x1dc:0xb DW_TAG_typedef
	.long	487                     @ DW_AT_type
	.long	.Linfo_string18         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x1e7:0x7 DW_TAG_base_type
	.long	.Linfo_string17         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	16                      @ Abbrev [16] 0x1ee:0x5 DW_TAG_pointer_type
	.long	499                     @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x1f3:0x15 DW_TAG_class_type
	.long	321                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string24         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	8                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x200:0x7 DW_TAG_inheritance
	.long	321                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x208:0x5 DW_TAG_pointer_type
	.long	67                      @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x20d:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	546                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.long	222                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x222:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string34         @ DW_AT_name
	.long	872                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0x22e:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string35         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.long	448                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x23d:0x6c DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	598                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	.Linfo_string29         @ DW_AT_linkage_name
	.long	161                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x256:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.long	.Linfo_string34         @ DW_AT_name
	.long	872                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0x262:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	107
	.long	.Linfo_string36         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	465                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x270:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	106
	.long	.Linfo_string37         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	465                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x27e:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	105
	.long	.Linfo_string38         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	465                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x28c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.long	.Linfo_string39         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.long	465                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x29a:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string40         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.long	494                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x2a9:0x5 DW_TAG_pointer_type
	.long	288                     @ DW_AT_type
	.byte	23                      @ Abbrev [23] 0x2ae:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	711                     @ DW_AT_object_pointer
	.byte	5                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	.Linfo_string30         @ DW_AT_linkage_name
	.long	308                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x2c7:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string34         @ DW_AT_name
	.long	877                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x2d4:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	749                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.long	.Linfo_string31         @ DW_AT_linkage_name
	.long	200                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x2ed:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string34         @ DW_AT_name
	.long	872                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x2fa:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	787                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.long	.Linfo_string32         @ DW_AT_linkage_name
	.long	200                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x313:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string34         @ DW_AT_name
	.long	872                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x320:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	821                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	257                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x335:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string34         @ DW_AT_name
	.long	872                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x342:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	859                     @ DW_AT_object_pointer
	.byte	4                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string33         @ DW_AT_linkage_name
	.long	409                     @ DW_AT_specification
	.byte	21                      @ Abbrev [21] 0x35b:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string34         @ DW_AT_name
	.long	882                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x368:0x5 DW_TAG_pointer_type
	.long	67                      @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x36d:0x5 DW_TAG_pointer_type
	.long	288                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x372:0x5 DW_TAG_pointer_type
	.long	321                     @ DW_AT_type
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
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
	.byte	0                       @ End Of Macro List Mark

	.globl	_ZN9AudioDataC1EhhhhP10ISoundData
	.type	_ZN9AudioDataC1EhhhhP10ISoundData,%function
.set _ZN9AudioDataC1EhhhhP10ISoundData, _ZN9AudioDataC2EhhhhP10ISoundData
	.globl	_ZN9AudioDataD1Ev
	.type	_ZN9AudioDataD1Ev,%function
.set _ZN9AudioDataD1Ev, _ZN9AudioDataD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
