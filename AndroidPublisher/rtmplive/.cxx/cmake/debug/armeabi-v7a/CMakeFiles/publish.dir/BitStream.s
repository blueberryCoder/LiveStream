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
	.file	"BitStream.cpp"
	.file	1 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/__nullptr"
	.file	2 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/c++/v1/stddef.h"
	.section	.text._ZN9BitStreamC2EPh,"ax",%progbits
	.globl	_ZN9BitStreamC2EPh      @ -- Begin function _ZN9BitStreamC2EPh
	.p2align	2
	.type	_ZN9BitStreamC2EPh,%function
	.code	16                      @ @_ZN9BitStreamC2EPh
	.thumb_func
_ZN9BitStreamC2EPh:
.Lfunc_begin0:
	.file	3 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/BitStream.cpp"
	.loc	3 7 0                   @ src/main/cpp/BitStream.cpp:7:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
.Ltmp0:
	.loc	3 7 62 prologue_end     @ src/main/cpp/BitStream.cpp:7:62
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc
	ldr	r1, [r1]
	adds	r1, #8
	str	r1, [r0]
	.loc	3 7 45 is_stmt 0        @ src/main/cpp/BitStream.cpp:7:45
	ldr	r1, [sp]
	.loc	3 7 39                  @ src/main/cpp/BitStream.cpp:7:39
	str	r1, [r0, #4]
	movs	r1, #0
	.loc	3 7 52                  @ src/main/cpp/BitStream.cpp:7:52
	str	r1, [r0, #8]
	.loc	3 8 1 is_stmt 1         @ src/main/cpp/BitStream.cpp:8:1
	add	sp, #8
	bx	lr
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	3 0 1 is_stmt 0         @ src/main/cpp/BitStream.cpp:0:1
.LCPI0_0:
.Ltmp2:
	.long	_ZTV9BitStream(GOT_PREL)-((.LPC0_0+4)-.Ltmp2)
.Lfunc_end0:
	.size	_ZN9BitStreamC2EPh, .Lfunc_end0-_ZN9BitStreamC2EPh
	.cfi_endproc
	.file	4 "/Users/bytedance" "Library/Android/sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/stdint.h"
	.file	5 "/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive" "src/main/cpp/BitStream.h"
	.fnend
                                        @ -- End function
	.section	.text._ZN9BitStreamD2Ev,"ax",%progbits
	.globl	_ZN9BitStreamD2Ev       @ -- Begin function _ZN9BitStreamD2Ev
	.p2align	1
	.type	_ZN9BitStreamD2Ev,%function
	.code	16                      @ @_ZN9BitStreamD2Ev
	.thumb_func
_ZN9BitStreamD2Ev:
.Lfunc_begin1:
	.loc	3 10 0 is_stmt 1        @ src/main/cpp/BitStream.cpp:10:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
	str	r0, [sp]
	ldr	r0, [sp]
.Ltmp3:
	.loc	3 11 1 prologue_end     @ src/main/cpp/BitStream.cpp:11:1
	add	sp, #4
	bx	lr
.Ltmp4:
.Lfunc_end1:
	.size	_ZN9BitStreamD2Ev, .Lfunc_end1-_ZN9BitStreamD2Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9BitStreamD0Ev,"ax",%progbits
	.globl	_ZN9BitStreamD0Ev       @ -- Begin function _ZN9BitStreamD0Ev
	.p2align	1
	.type	_ZN9BitStreamD0Ev,%function
	.code	16                      @ @_ZN9BitStreamD0Ev
	.thumb_func
_ZN9BitStreamD0Ev:
.Lfunc_begin2:
	.loc	3 10 0                  @ src/main/cpp/BitStream.cpp:10:0
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
.Ltmp5:
	.loc	3 10 25 prologue_end    @ src/main/cpp/BitStream.cpp:10:25
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_ZN9BitStreamD1Ev
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	_ZdlPv
	.loc	3 11 1                  @ src/main/cpp/BitStream.cpp:11:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp6:
.Lfunc_end2:
	.size	_ZN9BitStreamD0Ev, .Lfunc_end2-_ZN9BitStreamD0Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9BitStream8ReadBitsEi,"ax",%progbits
	.globl	_ZN9BitStream8ReadBitsEi @ -- Begin function _ZN9BitStream8ReadBitsEi
	.p2align	1
	.type	_ZN9BitStream8ReadBitsEi,%function
	.code	16                      @ @_ZN9BitStream8ReadBitsEi
	.thumb_func
_ZN9BitStream8ReadBitsEi:
.Lfunc_begin3:
	.loc	3 13 0                  @ src/main/cpp/BitStream.cpp:13:0
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
	.pad	#24
	sub	sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r0, [sp, #20]
	movs	r1, #0
.Ltmp7:
	.loc	3 14 9 prologue_end     @ src/main/cpp/BitStream.cpp:14:9
	str	r1, [sp, #12]
.Ltmp8:
	.loc	3 15 14                 @ src/main/cpp/BitStream.cpp:15:14
	str	r1, [sp, #8]
	.loc	3 15 10 is_stmt 0       @ src/main/cpp/BitStream.cpp:15:10
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
.Ltmp9:
	.loc	3 15 21                 @ src/main/cpp/BitStream.cpp:15:21
	ldr	r0, [sp, #8]
	.loc	3 15 25                 @ src/main/cpp/BitStream.cpp:15:25
	ldr	r1, [sp, #16]
.Ltmp10:
	.loc	3 15 5                  @ src/main/cpp/BitStream.cpp:15:5
	cmp	r0, r1
	bge	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @   in Loop: Header=BB3_1 Depth=1
.Ltmp11:
	.loc	3 16 16 is_stmt 1       @ src/main/cpp/BitStream.cpp:16:16
	ldr	r0, [sp, #12]
	lsls	r0, r0, #1
	str	r0, [sp, #12]
	.loc	3 17 19                 @ src/main/cpp/BitStream.cpp:17:19
	ldr	r0, [sp, #4]            @ 4-byte Reload
	bl	_ZN9BitStream9ReadBits1Ev
	.loc	3 17 16 is_stmt 0       @ src/main/cpp/BitStream.cpp:17:16
	ldr	r1, [sp, #12]
	orrs	r0, r1
	str	r0, [sp, #12]
	.loc	3 18 5 is_stmt 1        @ src/main/cpp/BitStream.cpp:18:5
	b	.LBB3_3
.Ltmp12:
.LBB3_3:                                @   in Loop: Header=BB3_1 Depth=1
	.loc	3 15 31                 @ src/main/cpp/BitStream.cpp:15:31
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	.loc	3 15 5 is_stmt 0        @ src/main/cpp/BitStream.cpp:15:5
	b	.LBB3_1
.Ltmp13:
.LBB3_4:
	.loc	3 19 12 is_stmt 1       @ src/main/cpp/BitStream.cpp:19:12
	ldr	r0, [sp, #12]
	.loc	3 19 5 is_stmt 0        @ src/main/cpp/BitStream.cpp:19:5
	add	sp, #24
	pop	{r7, pc}
.Ltmp14:
.Lfunc_end3:
	.size	_ZN9BitStream8ReadBitsEi, .Lfunc_end3-_ZN9BitStream8ReadBitsEi
	.cfi_endproc
	.fnend
                                        @ -- End function
	.section	.text._ZN9BitStream9ReadBits1Ev,"ax",%progbits
	.globl	_ZN9BitStream9ReadBits1Ev @ -- Begin function _ZN9BitStream9ReadBits1Ev
	.p2align	1
	.type	_ZN9BitStream9ReadBits1Ev,%function
	.code	16                      @ @_ZN9BitStream9ReadBits1Ev
	.thumb_func
_ZN9BitStream9ReadBits1Ev:
.Lfunc_begin4:
	.loc	3 22 0 is_stmt 1        @ src/main/cpp/BitStream.cpp:22:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
.Ltmp15:
	.loc	3 23 22 prologue_end    @ src/main/cpp/BitStream.cpp:23:22
	ldr	r1, [r0, #4]
	.loc	3 23 28 is_stmt 0       @ src/main/cpp/BitStream.cpp:23:28
	ldr	r2, [r0, #8]
	.loc	3 23 35                 @ src/main/cpp/BitStream.cpp:23:35
	lsrs	r2, r2, #3
	.loc	3 23 22                 @ src/main/cpp/BitStream.cpp:23:22
	ldrb	r1, [r1, r2]
	.loc	3 23 13                 @ src/main/cpp/BitStream.cpp:23:13
	strb.w	r1, [sp, #3]
	.loc	3 24 16 is_stmt 1       @ src/main/cpp/BitStream.cpp:24:16
	ldr	r1, [r0, #8]
	.loc	3 24 23 is_stmt 0       @ src/main/cpp/BitStream.cpp:24:23
	and	r1, r1, #7
	.loc	3 24 12                 @ src/main/cpp/BitStream.cpp:24:12
	ldrb.w	r2, [sp, #3]
	lsl.w	r1, r2, r1
	strb.w	r1, [sp, #3]
	.loc	3 25 12 is_stmt 1       @ src/main/cpp/BitStream.cpp:25:12
	ldrb.w	r1, [sp, #3]
	lsrs	r1, r1, #7
	strb.w	r1, [sp, #3]
	.loc	3 26 11                 @ src/main/cpp/BitStream.cpp:26:11
	ldr	r1, [r0, #8]
	adds	r1, #1
	str	r1, [r0, #8]
	.loc	3 27 12                 @ src/main/cpp/BitStream.cpp:27:12
	ldrb.w	r0, [sp, #3]
	.loc	3 27 5 is_stmt 0        @ src/main/cpp/BitStream.cpp:27:5
	add	sp, #8
	bx	lr
.Ltmp16:
.Lfunc_end4:
	.size	_ZN9BitStream9ReadBits1Ev, .Lfunc_end4-_ZN9BitStream9ReadBits1Ev
	.cfi_endproc
	.fnend
                                        @ -- End function
	.type	_ZTV9BitStream,%object  @ @_ZTV9BitStream
	.section	.data.rel.ro._ZTV9BitStream,"aw",%progbits
	.globl	_ZTV9BitStream
	.p2align	2
_ZTV9BitStream:
	.long	0
	.long	_ZTI9BitStream
	.long	_ZN9BitStreamD1Ev
	.long	_ZN9BitStreamD0Ev
	.size	_ZTV9BitStream, 16

	.type	_ZTS9BitStream,%object  @ @_ZTS9BitStream
	.section	.rodata._ZTS9BitStream,"a",%progbits
	.globl	_ZTS9BitStream
_ZTS9BitStream:
	.asciz	"9BitStream"
	.size	_ZTS9BitStream, 11

	.type	_ZTI9BitStream,%object  @ @_ZTI9BitStream
	.section	.data.rel.ro._ZTI9BitStream,"aw",%progbits
	.globl	_ZTI9BitStream
	.p2align	2
_ZTI9BitStream:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS9BitStream
	.size	_ZTI9BitStream, 8

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)" @ string offset=0
.Linfo_string1:
	.asciz	"CMakeFiles/publish.dir/BitStream.cpp" @ string offset=181
.Linfo_string2:
	.asciz	"/Users/bytedance/code/my/LiveStream/AndroidPublisher/rtmplive/.cxx/cmake/debug/armeabi-v7a" @ string offset=218
.Linfo_string3:
	.asciz	"std"                   @ string offset=309
.Linfo_string4:
	.asciz	"decltype(nullptr)"     @ string offset=313
.Linfo_string5:
	.asciz	"nullptr_t"             @ string offset=331
.Linfo_string6:
	.asciz	"_vptr$BitStream"       @ string offset=341
.Linfo_string7:
	.asciz	"int"                   @ string offset=357
.Linfo_string8:
	.asciz	"__vtbl_ptr_type"       @ string offset=361
.Linfo_string9:
	.asciz	"data_"                 @ string offset=377
.Linfo_string10:
	.asciz	"unsigned char"         @ string offset=383
.Linfo_string11:
	.asciz	"__uint8_t"             @ string offset=397
.Linfo_string12:
	.asciz	"uint8_t"               @ string offset=407
.Linfo_string13:
	.asciz	"index_"                @ string offset=415
.Linfo_string14:
	.asciz	"unsigned int"          @ string offset=422
.Linfo_string15:
	.asciz	"BitStream"             @ string offset=435
.Linfo_string16:
	.asciz	"~BitStream"            @ string offset=445
.Linfo_string17:
	.asciz	"_ZN9BitStream8ReadBitsEi" @ string offset=456
.Linfo_string18:
	.asciz	"ReadBits"              @ string offset=481
.Linfo_string19:
	.asciz	"_ZN9BitStream9ReadBits1Ev" @ string offset=490
.Linfo_string20:
	.asciz	"ReadBits1"             @ string offset=516
.Linfo_string21:
	.asciz	"_ZN9BitStreamC2EPh"    @ string offset=526
.Linfo_string22:
	.asciz	"_ZN9BitStreamD2Ev"     @ string offset=545
.Linfo_string23:
	.asciz	"_ZN9BitStreamD0Ev"     @ string offset=563
.Linfo_string24:
	.asciz	"this"                  @ string offset=581
.Linfo_string25:
	.asciz	"data"                  @ string offset=586
.Linfo_string26:
	.asciz	"num"                   @ string offset=591
.Linfo_string27:
	.asciz	"result"                @ string offset=595
.Linfo_string28:
	.asciz	"i"                     @ string offset=602
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
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
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
	.byte	20                      @ Abbreviation Code
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
	.byte	21                      @ Abbreviation Code
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
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
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
	.byte	24                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
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
	.byte	1                       @ Abbrev [1] 0xb:0x214 DW_TAG_compile_unit
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
	.byte	6                       @ Abbrev [6] 0x43:0x89 DW_TAG_class_type
	.long	67                      @ DW_AT_containing_type
	.byte	4                       @ DW_AT_calling_convention
	.long	.Linfo_string15         @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x50:0xa DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	204                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x5a:0xc DW_TAG_member
	.long	.Linfo_string9          @ DW_AT_name
	.long	230                     @ DW_AT_type
	.byte	5                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x66:0xc DW_TAG_member
	.long	.Linfo_string13         @ DW_AT_name
	.long	264                     @ DW_AT_type
	.byte	5                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x72:0x13 DW_TAG_subprogram
	.long	.Linfo_string15         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x7a:0x5 DW_TAG_formal_parameter
	.long	271                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x7f:0x5 DW_TAG_formal_parameter
	.long	230                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x85:0x16 DW_TAG_subprogram
	.long	.Linfo_string16         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	67                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x95:0x5 DW_TAG_formal_parameter
	.long	271                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x9b:0x1b DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_linkage_name
	.long	.Linfo_string18         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
	.long	223                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0xab:0x5 DW_TAG_formal_parameter
	.long	271                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0xb0:0x5 DW_TAG_formal_parameter
	.long	223                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xb6:0x15 DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_linkage_name
	.long	.Linfo_string20         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	223                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0xc5:0x5 DW_TAG_formal_parameter
	.long	271                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0xcc:0x5 DW_TAG_pointer_type
	.long	209                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0xd1:0x9 DW_TAG_pointer_type
	.long	218                     @ DW_AT_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	17                      @ Abbrev [17] 0xda:0x5 DW_TAG_subroutine_type
	.long	223                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0xdf:0x7 DW_TAG_base_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0xe6:0x5 DW_TAG_pointer_type
	.long	235                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0xeb:0xb DW_TAG_typedef
	.long	246                     @ DW_AT_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0xf6:0xb DW_TAG_typedef
	.long	257                     @ DW_AT_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	18                      @ Abbrev [18] 0x101:0x7 DW_TAG_base_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	18                      @ Abbrev [18] 0x108:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	15                      @ Abbrev [15] 0x10f:0x5 DW_TAG_pointer_type
	.long	67                      @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x114:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	301                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.long	.Linfo_string21         @ DW_AT_linkage_name
	.long	114                     @ DW_AT_specification
	.byte	20                      @ Abbrev [20] 0x12d:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string24         @ DW_AT_name
	.long	537                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	21                      @ Abbrev [21] 0x139:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string25         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.long	230                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x148:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	353                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	.Linfo_string22         @ DW_AT_linkage_name
	.long	133                     @ DW_AT_specification
	.byte	20                      @ Abbrev [20] 0x161:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string24         @ DW_AT_name
	.long	537                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x16e:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	391                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	.Linfo_string23         @ DW_AT_linkage_name
	.long	133                     @ DW_AT_specification
	.byte	20                      @ Abbrev [20] 0x187:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string24         @ DW_AT_name
	.long	537                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x194:0x56 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	425                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	155                     @ DW_AT_specification
	.byte	20                      @ Abbrev [20] 0x1a9:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.long	.Linfo_string24         @ DW_AT_name
	.long	537                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	21                      @ Abbrev [21] 0x1b5:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.long	.Linfo_string26         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.long	223                     @ DW_AT_type
	.byte	23                      @ Abbrev [23] 0x1c3:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.long	.Linfo_string27         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.long	223                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x1d1:0x18 DW_TAG_lexical_block
	.long	.Ltmp8                  @ DW_AT_low_pc
	.long	.Ltmp13-.Ltmp8          @ DW_AT_high_pc
	.byte	23                      @ Abbrev [23] 0x1da:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.long	.Linfo_string28         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	223                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x1ea:0x2f DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	87
	.long	510                     @ DW_AT_object_pointer
	.byte	3                       @ DW_AT_decl_file
	.long	182                     @ DW_AT_specification
	.byte	20                      @ Abbrev [20] 0x1fe:0xc DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string24         @ DW_AT_name
	.long	537                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	23                      @ Abbrev [23] 0x20a:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	3
	.long	.Linfo_string27         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.long	235                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x219:0x5 DW_TAG_pointer_type
	.long	67                      @ DW_AT_type
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
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
	.byte	0                       @ End Of Macro List Mark

	.globl	_ZN9BitStreamC1EPh
	.type	_ZN9BitStreamC1EPh,%function
.set _ZN9BitStreamC1EPh, _ZN9BitStreamC2EPh
	.globl	_ZN9BitStreamD1Ev
	.type	_ZN9BitStreamD1Ev,%function
.set _ZN9BitStreamD1Ev, _ZN9BitStreamD2Ev
	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
