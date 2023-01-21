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
	.file	"VideoData.cpp"
	.file	1 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IBuffer.h"
	.file	2 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IFLVTagData.h"
	.file	3 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/VideoData.h"
	.file	4 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/IVideoPacket.h"
	.file	5 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	6 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.section	.text._ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket,"ax",%progbits
	.globl	_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket @ -- Begin function _ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket
	.p2align	2
	.type	_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket,%function
	.code	16                      @ @_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket
	.thumb_func
_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket:
.Lfunc_begin0:
	.file	7 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/VideoData.cpp"
	.loc	7 9 0                   @ src/main/cpp/VideoData.cpp:9:0
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
	.loc	7 8 12 prologue_end     @ src/main/cpp/VideoData.cpp:8:12
	str	r0, [sp, #4]            @ 4-byte Spill
	bl	_ZN11IFLVTagDataC2Ev
	.loc	7 9 85                  @ src/main/cpp/VideoData.cpp:9:85
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #8
	ldr	r1, [sp, #4]            @ 4-byte Reload
	str	r0, [r1]
	.loc	7 9 23 is_stmt 0        @ src/main/cpp/VideoData.cpp:9:23
	ldr	r0, [sp, #16]
	.loc	7 9 11                  @ src/main/cpp/VideoData.cpp:9:11
	str	r0, [r1, #4]
	.loc	7 9 46                  @ src/main/cpp/VideoData.cpp:9:46
	ldr	r0, [sp, #12]
	.loc	7 9 36                  @ src/main/cpp/VideoData.cpp:9:36
	str	r0, [r1, #8]
	.loc	7 9 71                  @ src/main/cpp/VideoData.cpp:9:71
	ldr	r0, [sp, #8]
	.loc	7 9 57                  @ src/main/cpp/VideoData.cpp:9:57
	str	r0, [r1, #12]
	.loc	7 10 1 is_stmt 1        @ src/main/cpp/VideoData.cpp:10:1
	mov	r0, r1
	add	sp, #24
	pop	{r7, pc}
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	7 0 1 is_stmt 0         @ src/main/cpp/VideoData.cpp:0:1
.LCPI0_0:
.Ltmp2:
	.long	_ZTV9VideoData(GOT_PREL)-((.LPC0_0+4)-.Ltmp2)
.Lfunc_end0:
	.size	_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket, .Lfunc_end0-_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket
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
.Lfunc_begin1:
	.loc	2 10 0 is_stmt 1        @ src/main/cpp/IFLVTagData.h:10:0
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
	.loc	2 10 7 prologue_end     @ src/main/cpp/IFLVTagData.h:10:7
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
	.loc	2 0 7 is_stmt 0         @ src/main/cpp/IFLVTagData.h:0:7
.LCPI1_0:
.Ltmp5:
	.long	_ZTV11IFLVTagData(GOT_PREL)-((.LPC1_0+4)-.Ltmp5)
.Lfunc_end1:
	.size	_ZN11IFLVTagDataC2Ev, .Lfunc_end1-_ZN11IFLVTagDataC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9VideoDataD2Ev,"ax",%progbits
	.globl	_ZN9VideoDataD2Ev       @ -- Begin function _ZN9VideoDataD2Ev
	.p2align	1
	.type	_ZN9VideoDataD2Ev,%function
	.code	16                      @ @_ZN9VideoDataD2Ev
	.thumb_func
_ZN9VideoDataD2Ev:
.Lfunc_begin2:
	.loc	7 12 0 is_stmt 1        @ src/main/cpp/VideoData.cpp:12:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp6:
	.loc	7 13 1 prologue_end     @ src/main/cpp/VideoData.cpp:13:1
	add	sp, #4
	bx	lr
.Ltmp7:
.Lfunc_end2:
	.size	_ZN9VideoDataD2Ev, .Lfunc_end2-_ZN9VideoDataD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9VideoDataD0Ev,"ax",%progbits
	.globl	_ZN9VideoDataD0Ev       @ -- Begin function _ZN9VideoDataD0Ev
	.p2align	1
	.type	_ZN9VideoDataD0Ev,%function
	.code	16                      @ @_ZN9VideoDataD0Ev
	.thumb_func
_ZN9VideoDataD0Ev:
.Lfunc_begin3:
	.loc	7 12 0                  @ src/main/cpp/VideoData.cpp:12:0
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
.Ltmp8:
	.loc	7 12 25 prologue_end    @ src/main/cpp/VideoData.cpp:12:25
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_ZN9VideoDataD1Ev
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	_ZdlPv
	.loc	7 13 1                  @ src/main/cpp/VideoData.cpp:13:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp9:
.Lfunc_end3:
	.size	_ZN9VideoDataD0Ev, .Lfunc_end3-_ZN9VideoDataD0Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9VideoData7WriteToEPc,"ax",%progbits
	.globl	_ZN9VideoData7WriteToEPc @ -- Begin function _ZN9VideoData7WriteToEPc
	.p2align	1
	.type	_ZN9VideoData7WriteToEPc,%function
	.code	16                      @ @_ZN9VideoData7WriteToEPc
	.thumb_func
_ZN9VideoData7WriteToEPc:
.Lfunc_begin4:
	.loc	7 15 0                  @ src/main/cpp/VideoData.cpp:15:0
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
	str	r1, [sp]
	ldr	r0, [sp, #4]
.Ltmp10:
	.loc	7 16 19 prologue_end    @ src/main/cpp/VideoData.cpp:16:19
	ldr	r1, [r0, #4]
	.loc	7 16 38 is_stmt 0       @ src/main/cpp/VideoData.cpp:16:38
	ldr	r2, [r0, #8]
	.loc	7 16 36                 @ src/main/cpp/VideoData.cpp:16:36
	orr.w	r1, r2, r1, lsl #4
	.loc	7 16 13                 @ src/main/cpp/VideoData.cpp:16:13
	ldr	r2, [sp]
	adds	r3, r2, #1
	str	r3, [sp]
	.loc	7 16 17                 @ src/main/cpp/VideoData.cpp:16:17
	strb	r1, [r2]
	.loc	7 17 12 is_stmt 1       @ src/main/cpp/VideoData.cpp:17:12
	ldr	r0, [r0, #12]
	.loc	7 17 35 is_stmt 0       @ src/main/cpp/VideoData.cpp:17:35
	ldr	r1, [sp]
	.loc	7 17 27                 @ src/main/cpp/VideoData.cpp:17:27
	ldr	r2, [r0]
	ldr	r2, [r2]
	blx	r2
	.loc	7 17 5                  @ src/main/cpp/VideoData.cpp:17:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp11:
.Lfunc_end4:
	.size	_ZN9VideoData7WriteToEPc, .Lfunc_end4-_ZN9VideoData7WriteToEPc
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9VideoData4SizeEv,"ax",%progbits
	.globl	_ZN9VideoData4SizeEv    @ -- Begin function _ZN9VideoData4SizeEv
	.p2align	1
	.type	_ZN9VideoData4SizeEv,%function
	.code	16                      @ @_ZN9VideoData4SizeEv
	.thumb_func
_ZN9VideoData4SizeEv:
.Lfunc_begin5:
	.loc	7 20 0 is_stmt 1        @ src/main/cpp/VideoData.cpp:20:0
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
	.loc	7 21 16 prologue_end    @ src/main/cpp/VideoData.cpp:21:16
	ldr	r0, [r0, #12]
	.loc	7 21 31 is_stmt 0       @ src/main/cpp/VideoData.cpp:21:31
	ldr	r1, [r0]
	ldr	r1, [r1, #4]
	blx	r1
	.loc	7 21 14                 @ src/main/cpp/VideoData.cpp:21:14
	adds	r0, #1
	.loc	7 21 5                  @ src/main/cpp/VideoData.cpp:21:5
	add	sp, #8
	pop	{r7, pc}
.Ltmp13:
.Lfunc_end5:
	.size	_ZN9VideoData4SizeEv, .Lfunc_end5-_ZN9VideoData4SizeEv
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
	.loc	1 9 0 is_stmt 1         @ src/main/cpp/IBuffer.h:9:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp14:
	.loc	1 9 7 prologue_end      @ src/main/cpp/IBuffer.h:9:7
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
	.loc	1 0 7 is_stmt 0         @ src/main/cpp/IBuffer.h:0:7
.LCPI6_0:
.Ltmp16:
	.long	_ZTV7IBuffer(GOT_PREL)-((.LPC6_0+4)-.Ltmp16)
.Lfunc_end6:
	.size	_ZN7IBufferC2Ev, .Lfunc_end6-_ZN7IBufferC2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.type	_ZTV9VideoData,%object  @ @_ZTV9VideoData
	.section	.data.rel.ro._ZTV9VideoData,"aw",%progbits
	.globl	_ZTV9VideoData
	.p2align	2
_ZTV9VideoData:
	.long	0
	.long	_ZTI9VideoData
	.long	_ZN9VideoData7WriteToEPc
	.long	_ZN9VideoData4SizeEv
	.long	_ZN9VideoDataD1Ev
	.long	_ZN9VideoDataD0Ev
	.size	_ZTV9VideoData, 24

	.type	_ZTS9VideoData,%object  @ @_ZTS9VideoData
	.section	.rodata._ZTS9VideoData,"a",%progbits
	.globl	_ZTS9VideoData
_ZTS9VideoData:
	.asciz	"9VideoData"
	.size	_ZTS9VideoData, 11

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

	.type	_ZTI9VideoData,%object  @ @_ZTI9VideoData
	.section	.data.rel.ro._ZTI9VideoData,"aw",%progbits
	.globl	_ZTI9VideoData
	.p2align	2
_ZTI9VideoData:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS9VideoData
	.long	_ZTI11IFLVTagData
	.size	_ZTI9VideoData, 12

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

	.file	8 "<stdin>"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/VideoData.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=218
.Linfo_string3:
	.asciz	"_vptr$IBuffer"         @ string offset=309
.Linfo_string4:
	.asciz	"int"                   @ string offset=323
.Linfo_string5:
	.asciz	"__vtbl_ptr_type"       @ string offset=327
.Linfo_string6:
	.asciz	"_ZN7IBuffer7WriteToEPc" @ string offset=343
.Linfo_string7:
	.asciz	"WriteTo"               @ string offset=366
.Linfo_string8:
	.asciz	"char"                  @ string offset=374
.Linfo_string9:
	.asciz	"_ZN7IBuffer4SizeEv"    @ string offset=379
.Linfo_string10:
	.asciz	"Size"                  @ string offset=398
.Linfo_string11:
	.asciz	"IBuffer"               @ string offset=403
.Linfo_string12:
	.asciz	"IFLVTagData"           @ string offset=411
.Linfo_string13:
	.asciz	"frame_type_"           @ string offset=423
.Linfo_string14:
	.asciz	"unsigned int"          @ string offset=435
.Linfo_string15:
	.asciz	"KEY_FRAME"             @ string offset=448
.Linfo_string16:
	.asciz	"INTER_FRAME"           @ string offset=458
.Linfo_string17:
	.asciz	"DISPOSABLE_FRAME"      @ string offset=470
.Linfo_string18:
	.asciz	"RESERVED"              @ string offset=487
.Linfo_string19:
	.asciz	"VIDEO_INFO_"           @ string offset=496
.Linfo_string20:
	.asciz	"FrameType"             @ string offset=508
.Linfo_string21:
	.asciz	"codec_id_"             @ string offset=518
.Linfo_string22:
	.asciz	"JEPEG"                 @ string offset=528
.Linfo_string23:
	.asciz	"SORENSON_H263"         @ string offset=534
.Linfo_string24:
	.asciz	"SCREEN_VIDEO"          @ string offset=548
.Linfo_string25:
	.asciz	"ON2_VP6"               @ string offset=561
.Linfo_string26:
	.asciz	"ON2_VP6_WITH_ALPHA_CHANNEL" @ string offset=569
.Linfo_string27:
	.asciz	"SCREEN_VIDEO_VERSION"  @ string offset=596
.Linfo_string28:
	.asciz	"AVC_"                  @ string offset=617
.Linfo_string29:
	.asciz	"VideoCodecId"          @ string offset=622
.Linfo_string30:
	.asciz	"video_packet_"         @ string offset=635
.Linfo_string31:
	.asciz	"IVideoPacket"          @ string offset=649
.Linfo_string32:
	.asciz	"VideoData"             @ string offset=662
.Linfo_string33:
	.asciz	"~VideoData"            @ string offset=672
.Linfo_string34:
	.asciz	"_ZN9VideoData7WriteToEPc" @ string offset=683
.Linfo_string35:
	.asciz	"_ZN9VideoData4SizeEv"  @ string offset=708
.Linfo_string36:
	.asciz	"std"                   @ string offset=729
.Linfo_string37:
	.asciz	"decltype(nullptr)"     @ string offset=733
.Linfo_string38:
	.asciz	"nullptr_t"             @ string offset=751
.Linfo_string39:
	.asciz	"_ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket" @ string offset=761
.Linfo_string40:
	.asciz	"_ZN11IFLVTagDataC2Ev"  @ string offset=825
.Linfo_string41:
	.asciz	"_ZN9VideoDataD2Ev"     @ string offset=846
.Linfo_string42:
	.asciz	"_ZN9VideoDataD0Ev"     @ string offset=864
.Linfo_string43:
	.asciz	"_ZN7IBufferC2Ev"       @ string offset=882
.Linfo_string44:
	.asciz	"this"                  @ string offset=898
.Linfo_string45:
	.asciz	"frame_type"            @ string offset=903
.Linfo_string46:
	.asciz	"codec_id"              @ string offset=914
.Linfo_string47:
	.asciz	"video_packet"          @ string offset=923
.Linfo_string48:
	.asciz	"output"                @ string offset=936
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
	.byte	12                      @ Abbreviation Code
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
	.byte	13                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
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
	.byte	15                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
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
	.byte	19                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	59                      @ DW_TAG_unspecified_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
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
	.byte	22                      @ Abbreviation Code
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
	.byte	23                      @ Abbreviation Code
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
	.byte	24                      @ Abbreviation Code
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
	.byte	25                      @ Abbreviation Code
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
	.byte	1                       @ Abbrev [1] 0xb:0x37b DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x11d DW_TAG_class_type
	.long	356                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string32         @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x33:0x7 DW_TAG_inheritance
	.long	323                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	4                       @ Abbrev [4] 0x3a:0xc DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	70                      @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x46:0xb DW_TAG_typedef
	.long	81                      @ DW_AT_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x51:0x27 DW_TAG_enumeration_type
	.long	500                     @ DW_AT_type
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x59:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x5f:0x6 DW_TAG_enumerator
	.long	.Linfo_string16         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x65:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x6b:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x71:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x78:0xc DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	132                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	5                       @ Abbrev [5] 0x84:0xb DW_TAG_typedef
	.long	143                     @ DW_AT_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.byte	6                       @ Abbrev [6] 0x8f:0x33 DW_TAG_enumeration_type
	.long	500                     @ DW_AT_type
	.byte	4                       @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x97:0x6 DW_TAG_enumerator
	.long	.Linfo_string22         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0x9d:0x6 DW_TAG_enumerator
	.long	.Linfo_string23         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0xa3:0x6 DW_TAG_enumerator
	.long	.Linfo_string24         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0xa9:0x6 DW_TAG_enumerator
	.long	.Linfo_string25         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0xaf:0x6 DW_TAG_enumerator
	.long	.Linfo_string26         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0xb5:0x6 DW_TAG_enumerator
	.long	.Linfo_string27         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	7                       @ Abbrev [7] 0xbb:0x6 DW_TAG_enumerator
	.long	.Linfo_string28         @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0xc2:0xc DW_TAG_member
	.long	.Linfo_string30         @ DW_AT_name
	.long	507                     @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0xce:0x1d DW_TAG_subprogram
	.long	.Linfo_string32         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xd6:0x5 DW_TAG_formal_parameter
	.long	533                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0xdb:0x5 DW_TAG_formal_parameter
	.long	70                      @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xe0:0x5 DW_TAG_formal_parameter
	.long	132                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0xe5:0x5 DW_TAG_formal_parameter
	.long	507                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xeb:0x16 DW_TAG_subprogram
	.long	.Linfo_string33         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0xfb:0x5 DW_TAG_formal_parameter
	.long	533                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x101:0x23 DW_TAG_subprogram
	.long	.Linfo_string34         @ DW_AT_linkage_name
	.long	.Linfo_string7          @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	483                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x119:0x5 DW_TAG_formal_parameter
	.long	533                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x11e:0x5 DW_TAG_formal_parameter
	.long	483                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x124:0x1e DW_TAG_subprogram
	.long	.Linfo_string35         @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	476                     @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x13c:0x5 DW_TAG_formal_parameter
	.long	533                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x143:0x21 DW_TAG_class_type
	.long	356                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x150:0x7 DW_TAG_inheritance
	.long	356                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	13                      @ Abbrev [13] 0x157:0xc DW_TAG_subprogram
	.long	.Linfo_string12         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x15d:0x5 DW_TAG_formal_parameter
	.long	647                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x164:0x65 DW_TAG_class_type
	.long	356                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string11         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x171:0xa DW_TAG_member
	.long	.Linfo_string3          @ DW_AT_name
	.long	457                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	12                      @ Abbrev [12] 0x17b:0x23 DW_TAG_subprogram
	.long	.Linfo_string6          @ DW_AT_linkage_name
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	483                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	356                     @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x193:0x5 DW_TAG_formal_parameter
	.long	495                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	10                      @ Abbrev [10] 0x198:0x5 DW_TAG_formal_parameter
	.long	483                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x19e:0x1e DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	476                     @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	1
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	356                     @ DW_AT_containing_type
	.byte	9                       @ Abbrev [9] 0x1b6:0x5 DW_TAG_formal_parameter
	.long	495                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x1bc:0xc DW_TAG_subprogram
	.long	.Linfo_string11         @ DW_AT_name
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1c2:0x5 DW_TAG_formal_parameter
	.long	495                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x1c9:0x5 DW_TAG_pointer_type
	.long	462                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x1ce:0x9 DW_TAG_pointer_type
	.long	471                     @ DW_AT_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	17                      @ Abbrev [17] 0x1d7:0x5 DW_TAG_subroutine_type
	.long	476                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x1dc:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x1e3:0x5 DW_TAG_pointer_type
	.long	488                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x1e8:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x1ef:0x5 DW_TAG_pointer_type
	.long	356                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x1f4:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x1fb:0x5 DW_TAG_pointer_type
	.long	512                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x200:0x15 DW_TAG_class_type
	.long	356                     @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string31         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x20d:0x7 DW_TAG_inheritance
	.long	356                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x215:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x21a:0x11 DW_TAG_namespace
	.long	.Linfo_string36         @ DW_AT_name
	.byte	5                       @ Abbrev [5] 0x21f:0xb DW_TAG_typedef
	.long	555                     @ DW_AT_type
	.long	.Linfo_string38         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x22b:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string37         @ DW_AT_name
	.byte	21                      @ Abbrev [21] 0x230:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	543                     @ DW_AT_import
	.byte	22                      @ Abbrev [22] 0x237:0x50 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	592                     @ DW_AT_object_pointer
	.byte	7                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	.Linfo_string39         @ DW_AT_linkage_name
	.long	206                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x250:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.long	.Linfo_string44         @ DW_AT_name
	.long	886                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	24                      @ Abbrev [24] 0x25c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string45         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	70                      @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x26a:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string46         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	132                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x278:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string47         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	8                       @ DW_AT_decl_line
	.long	507                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x287:0x5 DW_TAG_pointer_type
	.long	323                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x28c:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	677                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	.Linfo_string40         @ DW_AT_linkage_name
	.long	343                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x2a5:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string44         @ DW_AT_name
	.long	891                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x2b2:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	715                     @ DW_AT_object_pointer
	.byte	7                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	.Linfo_string41         @ DW_AT_linkage_name
	.long	235                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x2cb:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string44         @ DW_AT_name
	.long	886                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x2d8:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	753                     @ DW_AT_object_pointer
	.byte	7                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	.Linfo_string42         @ DW_AT_linkage_name
	.long	235                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x2f1:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string44         @ DW_AT_name
	.long	886                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x2fe:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	787                     @ DW_AT_object_pointer
	.byte	7                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	257                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x313:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string44         @ DW_AT_name
	.long	886                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	24                      @ Abbrev [24] 0x31f:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string48         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	483                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x32e:0x22 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	835                     @ DW_AT_object_pointer
	.byte	7                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.long	292                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x343:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string44         @ DW_AT_name
	.long	886                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x350:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	873                     @ DW_AT_object_pointer
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	.Linfo_string43         @ DW_AT_linkage_name
	.long	444                     @ DW_AT_specification
	.byte	23                      @ Abbrev [23] 0x369:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string44         @ DW_AT_name
	.long	896                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x376:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x37b:0x5 DW_TAG_pointer_type
	.long	323                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x380:0x5 DW_TAG_pointer_type
	.long	356                     @ DW_AT_type
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

	.globl	_ZN9VideoDataC1ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket
	.type	_ZN9VideoDataC1ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket,%function
.set _ZN9VideoDataC1ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket, _ZN9VideoDataC2ENS_9FrameTypeENS_12VideoCodecIdEP12IVideoPacket
	.globl	_ZN9VideoDataD1Ev
	.type	_ZN9VideoDataD1Ev,%function
.set _ZN9VideoDataD1Ev, _ZN9VideoDataD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
