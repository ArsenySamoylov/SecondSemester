	.file	"Festival.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/Festival/Festival.cpp"
	.section	.rodata
	.align 32
	.type	_ZL23FESTIVAL_COMMAND_LENGHT, @object
	.size	_ZL23FESTIVAL_COMMAND_LENGHT, 4
_ZL23FESTIVAL_COMMAND_LENGHT:
	.long	1024
	.zero	60
	.align 32
	.type	_ZL15FESTIVAL_ZALUPA, @object
	.size	_ZL15FESTIVAL_ZALUPA, 46
_ZL15FESTIVAL_ZALUPA:
	.string	"echo \"%s\" | festival --language russian --tts"
	.zero	50
	.bss
	.align 32
	.type	_ZZ7festsayPKcE7FestCMD, @object
	.size	_ZZ7festsayPKcE7FestCMD, 1024
_ZZ7festsayPKcE7FestCMD:
	.zero	1056
	.section	.rodata
	.align 32
.LC0:
	.string	"void festsay(const char*)"
	.zero	38
	.align 32
.LC1:
	.string	"../ATC/Festival/Festival.cpp"
	.zero	35
	.align 32
.LC2:
	.string	"text"
	.zero	59
	.text
	.globl	_Z7festsayPKc
	.type	_Z7festsayPKc, @function
_Z7festsayPKc:
.LASANPC13:
.LFB13:
	.file 1 "../ATC/Festival/Festival.cpp"
	.loc 1 9 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 10 6
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 10 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L2:
	.loc 1 13 12
	movl	$1024, %edx
	movl	$0, %esi
	leaq	_ZZ7festsayPKcE7FestCMD(%rip), %rax
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 15 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	_ZL15FESTIVAL_ZALUPA(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZZ7festsayPKcE7FestCMD(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 1 22 12
	leaq	_ZZ7festsayPKcE7FestCMD(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 24 5
	nop
	.loc 1 25 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_Z7festsayPKc, .-_Z7festsayPKc
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC1
	.long	12
	.long	17
	.section	.rodata
.LC3:
	.string	"../ATC/Festival/Festival.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC3
	.long	4
	.long	12
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC3
	.long	3
	.long	11
	.section	.rodata
.LC4:
	.string	"FestCMD"
.LC5:
	.string	"FESTIVAL_ZALUPA"
.LC6:
	.string	"FESTIVAL_COMMAND_LENGHT"
.LC7:
	.string	"*.LC0"
.LC8:
	.string	"*.LC2"
.LC9:
	.string	"*.LC1"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 384
.LASAN0:
	.quad	_ZZ7festsayPKcE7FestCMD
	.quad	1024
	.quad	1056
	.quad	.LC4
	.quad	.LC1
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZL15FESTIVAL_ZALUPA
	.quad	46
	.quad	96
	.quad	.LC5
	.quad	.LC1
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	_ZL23FESTIVAL_COMMAND_LENGHT
	.quad	4
	.quad	64
	.quad	.LC6
	.quad	.LC1
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	.LC0
	.quad	26
	.quad	64
	.quad	.LC7
	.quad	.LC1
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	5
	.quad	64
	.quad	.LC8
	.quad	.LC1
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	29
	.quad	64
	.quad	.LC9
	.quad	.LC1
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$6, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$6, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "../ATC/Festival/Festival.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/stdlib.h"
	.file 5 "/usr/include/c++/11/cstdlib"
	.file 6 "/usr/include/c++/11/bits/std_abs.h"
	.file 7 "/usr/include/c++/11/stdlib.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/string.h"
	.file 10 "/usr/include/assert.h"
	.file 11 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x89d
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	.LASF4
	.byte	0x2
	.byte	0x3
	.byte	0xb
	.long	0x4b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL23FESTIVAL_COMMAND_LENGHT
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x44
	.uleb128 0xe
	.long	0x73
	.long	0x60
	.uleb128 0xf
	.long	0x65
	.byte	0x2d
	.byte	0
	.uleb128 0x7
	.long	0x50
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x7
	.long	0x6c
	.uleb128 0xa
	.long	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0xc
	.long	0x60
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15FESTIVAL_ZALUPA
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x65
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x14
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x6
	.long	0x6c
	.uleb128 0x6
	.long	0x73
	.uleb128 0x3
	.byte	0x20
	.byte	0x3
	.long	.LASF12
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF16
	.uleb128 0xb
	.byte	0x8
	.byte	0x3c
	.long	.LASF20
	.long	0x116
	.uleb128 0xc
	.long	.LASF17
	.byte	0x3d
	.byte	0x9
	.long	0x44
	.uleb128 0xd
	.string	"rem"
	.byte	0x3e
	.byte	0x9
	.long	0x44
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3f
	.byte	0x5
	.long	0xf3
	.uleb128 0xb
	.byte	0x10
	.byte	0x44
	.long	.LASF21
	.long	0x145
	.uleb128 0xc
	.long	.LASF17
	.byte	0x45
	.byte	0xe
	.long	0xbf
	.uleb128 0xd
	.string	"rem"
	.byte	0x46
	.byte	0xe
	.long	0xbf
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x47
	.byte	0x5
	.long	0x122
	.uleb128 0xb
	.byte	0x10
	.byte	0x4e
	.long	.LASF23
	.long	0x174
	.uleb128 0xc
	.long	.LASF17
	.byte	0x4f
	.byte	0x13
	.long	0x174
	.uleb128 0xd
	.string	"rem"
	.byte	0x50
	.byte	0x13
	.long	0x174
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF24
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x51
	.byte	0x5
	.long	0x151
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF26
	.uleb128 0x15
	.long	.LASF27
	.byte	0x4
	.value	0x330
	.byte	0xf
	.long	0x19b
	.uleb128 0x6
	.long	0x1a0
	.uleb128 0x16
	.long	0x44
	.long	0x1b4
	.uleb128 0x1
	.long	0x1b4
	.uleb128 0x1
	.long	0x1b4
	.byte	0
	.uleb128 0x6
	.long	0x1b9
	.uleb128 0x17
	.uleb128 0x18
	.string	"std"
	.byte	0xb
	.value	0x116
	.byte	0xb
	.long	0x359
	.uleb128 0x2
	.byte	0x5
	.byte	0x7f
	.byte	0xb
	.long	0x116
	.uleb128 0x2
	.byte	0x5
	.byte	0x80
	.byte	0xb
	.long	0x145
	.uleb128 0x2
	.byte	0x5
	.byte	0x86
	.byte	0xb
	.long	0x359
	.uleb128 0x2
	.byte	0x5
	.byte	0x89
	.byte	0xb
	.long	0x376
	.uleb128 0x2
	.byte	0x5
	.byte	0x8c
	.byte	0xb
	.long	0x391
	.uleb128 0x2
	.byte	0x5
	.byte	0x8d
	.byte	0xb
	.long	0x3a7
	.uleb128 0x2
	.byte	0x5
	.byte	0x8e
	.byte	0xb
	.long	0x3bd
	.uleb128 0x2
	.byte	0x5
	.byte	0x8f
	.byte	0xb
	.long	0x3d3
	.uleb128 0x2
	.byte	0x5
	.byte	0x91
	.byte	0xb
	.long	0x3fe
	.uleb128 0x2
	.byte	0x5
	.byte	0x94
	.byte	0xb
	.long	0x41a
	.uleb128 0x2
	.byte	0x5
	.byte	0x96
	.byte	0xb
	.long	0x431
	.uleb128 0x2
	.byte	0x5
	.byte	0x99
	.byte	0xb
	.long	0x44d
	.uleb128 0x2
	.byte	0x5
	.byte	0x9a
	.byte	0xb
	.long	0x469
	.uleb128 0x2
	.byte	0x5
	.byte	0x9b
	.byte	0xb
	.long	0x49b
	.uleb128 0x2
	.byte	0x5
	.byte	0x9d
	.byte	0xb
	.long	0x4bc
	.uleb128 0x2
	.byte	0x5
	.byte	0xa0
	.byte	0xb
	.long	0x4dc
	.uleb128 0x2
	.byte	0x5
	.byte	0xa3
	.byte	0xb
	.long	0x4ef
	.uleb128 0x2
	.byte	0x5
	.byte	0xa5
	.byte	0xb
	.long	0x4fc
	.uleb128 0x2
	.byte	0x5
	.byte	0xa6
	.byte	0xb
	.long	0x50d
	.uleb128 0x2
	.byte	0x5
	.byte	0xa7
	.byte	0xb
	.long	0x52d
	.uleb128 0x2
	.byte	0x5
	.byte	0xa8
	.byte	0xb
	.long	0x54d
	.uleb128 0x2
	.byte	0x5
	.byte	0xa9
	.byte	0xb
	.long	0x56d
	.uleb128 0x2
	.byte	0x5
	.byte	0xab
	.byte	0xb
	.long	0x584
	.uleb128 0x2
	.byte	0x5
	.byte	0xac
	.byte	0xb
	.long	0x5aa
	.uleb128 0x2
	.byte	0x5
	.byte	0xf0
	.byte	0x16
	.long	0x17b
	.uleb128 0x2
	.byte	0x5
	.byte	0xf5
	.byte	0x16
	.long	0x60b
	.uleb128 0x2
	.byte	0x5
	.byte	0xf6
	.byte	0x16
	.long	0x625
	.uleb128 0x2
	.byte	0x5
	.byte	0xf8
	.byte	0x16
	.long	0x641
	.uleb128 0x2
	.byte	0x5
	.byte	0xf9
	.byte	0x16
	.long	0x697
	.uleb128 0x2
	.byte	0x5
	.byte	0xfa
	.byte	0x16
	.long	0x657
	.uleb128 0x2
	.byte	0x5
	.byte	0xfb
	.byte	0x16
	.long	0x677
	.uleb128 0x2
	.byte	0x5
	.byte	0xfc
	.byte	0x16
	.long	0x6b2
	.uleb128 0x8
	.string	"abs"
	.byte	0x4f
	.long	.LASF28
	.long	0xec
	.long	0x2df
	.uleb128 0x1
	.long	0xec
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x4b
	.long	.LASF29
	.long	0xde
	.long	0x2f7
	.uleb128 0x1
	.long	0xde
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x47
	.long	.LASF30
	.long	0xe5
	.long	0x30f
	.uleb128 0x1
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x3d
	.long	.LASF31
	.long	0x174
	.long	0x327
	.uleb128 0x1
	.long	0x174
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x38
	.long	.LASF32
	.long	0xbf
	.long	0x33f
	.uleb128 0x1
	.long	0xbf
	.byte	0
	.uleb128 0x10
	.string	"div"
	.byte	0xb1
	.long	.LASF55
	.long	0x145
	.uleb128 0x1
	.long	0xbf
	.uleb128 0x1
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.value	0x25a
	.byte	0xc
	.long	0x44
	.long	0x370
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x6
	.long	0x375
	.uleb128 0x19
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x4
	.value	0x25f
	.byte	0x12
	.long	.LASF34
	.long	0x44
	.long	0x391
	.uleb128 0x1
	.long	0x370
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x4
	.byte	0x66
	.byte	0xf
	.long	0xe5
	.long	0x3a7
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF36
	.byte	0x4
	.byte	0x69
	.byte	0xc
	.long	0x44
	.long	0x3bd
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF37
	.byte	0x4
	.byte	0x6c
	.byte	0x11
	.long	0xbf
	.long	0x3d3
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4
	.value	0x33c
	.byte	0xe
	.long	0xa1
	.long	0x3fe
	.uleb128 0x1
	.long	0x1b4
	.uleb128 0x1
	.long	0x1b4
	.uleb128 0x1
	.long	0x8e
	.uleb128 0x1
	.long	0x8e
	.uleb128 0x1
	.long	0x18e
	.byte	0
	.uleb128 0x1b
	.string	"div"
	.byte	0x4
	.value	0x35c
	.byte	0xe
	.long	0x116
	.long	0x41a
	.uleb128 0x1
	.long	0x44
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x4
	.value	0x281
	.byte	0xe
	.long	0xc6
	.long	0x431
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x4
	.value	0x35e
	.byte	0xf
	.long	0x145
	.long	0x44d
	.uleb128 0x1
	.long	0xbf
	.uleb128 0x1
	.long	0xbf
	.byte	0
	.uleb128 0x4
	.long	.LASF41
	.byte	0x4
	.value	0x3a2
	.byte	0xc
	.long	0x44
	.long	0x469
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x8e
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x4
	.value	0x3ad
	.byte	0xf
	.long	0x8e
	.long	0x48a
	.uleb128 0x1
	.long	0x48a
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x8e
	.byte	0
	.uleb128 0x6
	.long	0x48f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF43
	.uleb128 0x7
	.long	0x48f
	.uleb128 0x4
	.long	.LASF44
	.byte	0x4
	.value	0x3a5
	.byte	0xc
	.long	0x44
	.long	0x4bc
	.uleb128 0x1
	.long	0x48a
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x8e
	.byte	0
	.uleb128 0x11
	.long	.LASF46
	.value	0x346
	.long	0x4dc
	.uleb128 0x1
	.long	0xa1
	.uleb128 0x1
	.long	0x8e
	.uleb128 0x1
	.long	0x8e
	.uleb128 0x1
	.long	0x18e
	.byte	0
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x4
	.value	0x276
	.byte	0xd
	.long	0x4ef
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x1d
	.long	.LASF68
	.byte	0x4
	.value	0x1c6
	.byte	0xc
	.long	0x44
	.uleb128 0x11
	.long	.LASF47
	.value	0x1c8
	.long	0x50d
	.uleb128 0x1
	.long	0x9a
	.byte	0
	.uleb128 0x5
	.long	.LASF48
	.byte	0x4
	.byte	0x76
	.byte	0xf
	.long	0xe5
	.long	0x528
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.byte	0
	.uleb128 0x6
	.long	0xc6
	.uleb128 0x5
	.long	.LASF49
	.byte	0x4
	.byte	0xb1
	.byte	0x11
	.long	0xbf
	.long	0x54d
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x5
	.long	.LASF50
	.byte	0x4
	.byte	0xb5
	.byte	0x1a
	.long	0x65
	.long	0x56d
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x4
	.long	.LASF51
	.byte	0x4
	.value	0x317
	.byte	0xc
	.long	0x44
	.long	0x584
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF52
	.byte	0x4
	.value	0x3b1
	.byte	0xf
	.long	0x8e
	.long	0x5a5
	.uleb128 0x1
	.long	0xc6
	.uleb128 0x1
	.long	0x5a5
	.uleb128 0x1
	.long	0x8e
	.byte	0
	.uleb128 0x6
	.long	0x496
	.uleb128 0x4
	.long	.LASF53
	.byte	0x4
	.value	0x3a9
	.byte	0xc
	.long	0x44
	.long	0x5c6
	.uleb128 0x1
	.long	0xc6
	.uleb128 0x1
	.long	0x48f
	.byte	0
	.uleb128 0x1e
	.long	.LASF54
	.byte	0xb
	.value	0x130
	.byte	0xb
	.long	0x625
	.uleb128 0x2
	.byte	0x5
	.byte	0xc8
	.byte	0xb
	.long	0x17b
	.uleb128 0x2
	.byte	0x5
	.byte	0xd8
	.byte	0xb
	.long	0x625
	.uleb128 0x2
	.byte	0x5
	.byte	0xe3
	.byte	0xb
	.long	0x641
	.uleb128 0x2
	.byte	0x5
	.byte	0xe4
	.byte	0xb
	.long	0x657
	.uleb128 0x2
	.byte	0x5
	.byte	0xe5
	.byte	0xb
	.long	0x677
	.uleb128 0x2
	.byte	0x5
	.byte	0xe7
	.byte	0xb
	.long	0x697
	.uleb128 0x2
	.byte	0x5
	.byte	0xe8
	.byte	0xb
	.long	0x6b2
	.uleb128 0x10
	.string	"div"
	.byte	0xd5
	.long	.LASF56
	.long	0x17b
	.uleb128 0x1
	.long	0x174
	.uleb128 0x1
	.long	0x174
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF57
	.byte	0x4
	.value	0x362
	.byte	0x1e
	.long	0x17b
	.long	0x641
	.uleb128 0x1
	.long	0x174
	.uleb128 0x1
	.long	0x174
	.byte	0
	.uleb128 0x5
	.long	.LASF58
	.byte	0x4
	.byte	0x71
	.byte	0x24
	.long	0x174
	.long	0x657
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF59
	.byte	0x4
	.byte	0xc9
	.byte	0x16
	.long	0x174
	.long	0x677
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x5
	.long	.LASF60
	.byte	0x4
	.byte	0xce
	.byte	0x1f
	.long	0x187
	.long	0x697
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x5
	.long	.LASF61
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.long	0xde
	.long	0x6b2
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.byte	0
	.uleb128 0x5
	.long	.LASF62
	.byte	0x4
	.byte	0x7f
	.byte	0x14
	.long	0xec
	.long	0x6cd
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x528
	.byte	0
	.uleb128 0x2
	.byte	0x7
	.byte	0x27
	.byte	0xc
	.long	0x359
	.uleb128 0x2
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.long	0x376
	.uleb128 0x2
	.byte	0x7
	.byte	0x2e
	.byte	0xe
	.long	0x4dc
	.uleb128 0x2
	.byte	0x7
	.byte	0x33
	.byte	0xc
	.long	0x116
	.uleb128 0x2
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.long	0x145
	.uleb128 0x2
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.long	0x2c7
	.uleb128 0x2
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.long	0x2df
	.uleb128 0x2
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.long	0x2f7
	.uleb128 0x2
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.long	0x30f
	.uleb128 0x2
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.long	0x327
	.uleb128 0x2
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.long	0x391
	.uleb128 0x2
	.byte	0x7
	.byte	0x38
	.byte	0xc
	.long	0x3a7
	.uleb128 0x2
	.byte	0x7
	.byte	0x39
	.byte	0xc
	.long	0x3bd
	.uleb128 0x2
	.byte	0x7
	.byte	0x3a
	.byte	0xc
	.long	0x3d3
	.uleb128 0x2
	.byte	0x7
	.byte	0x3c
	.byte	0xc
	.long	0x60b
	.uleb128 0x2
	.byte	0x7
	.byte	0x3c
	.byte	0xc
	.long	0x33f
	.uleb128 0x2
	.byte	0x7
	.byte	0x3c
	.byte	0xc
	.long	0x3fe
	.uleb128 0x2
	.byte	0x7
	.byte	0x3e
	.byte	0xc
	.long	0x41a
	.uleb128 0x2
	.byte	0x7
	.byte	0x40
	.byte	0xc
	.long	0x431
	.uleb128 0x2
	.byte	0x7
	.byte	0x43
	.byte	0xc
	.long	0x44d
	.uleb128 0x2
	.byte	0x7
	.byte	0x44
	.byte	0xc
	.long	0x469
	.uleb128 0x2
	.byte	0x7
	.byte	0x45
	.byte	0xc
	.long	0x49b
	.uleb128 0x2
	.byte	0x7
	.byte	0x47
	.byte	0xc
	.long	0x4bc
	.uleb128 0x2
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.long	0x4ef
	.uleb128 0x2
	.byte	0x7
	.byte	0x4a
	.byte	0xc
	.long	0x4fc
	.uleb128 0x2
	.byte	0x7
	.byte	0x4b
	.byte	0xc
	.long	0x50d
	.uleb128 0x2
	.byte	0x7
	.byte	0x4c
	.byte	0xc
	.long	0x52d
	.uleb128 0x2
	.byte	0x7
	.byte	0x4d
	.byte	0xc
	.long	0x54d
	.uleb128 0x2
	.byte	0x7
	.byte	0x4e
	.byte	0xc
	.long	0x56d
	.uleb128 0x2
	.byte	0x7
	.byte	0x50
	.byte	0xc
	.long	0x584
	.uleb128 0x2
	.byte	0x7
	.byte	0x51
	.byte	0xc
	.long	0x5aa
	.uleb128 0x4
	.long	.LASF63
	.byte	0x8
	.value	0x166
	.byte	0xc
	.long	0x44
	.long	0x7e2
	.uleb128 0x1
	.long	0xc6
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1f
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0x9
	.byte	0x3d
	.byte	0xe
	.long	0xa1
	.long	0x802
	.uleb128 0x1
	.long	0xa1
	.uleb128 0x1
	.long	0x44
	.uleb128 0x1
	.long	0x8e
	.byte	0
	.uleb128 0x20
	.long	.LASF65
	.byte	0xa
	.byte	0x45
	.byte	0xd
	.long	0x823
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x9a
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.long	.LASF70
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x87e
	.uleb128 0x22
	.long	.LASF71
	.byte	0x1
	.byte	0x8
	.byte	0x1b
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF72
	.long	0x88e
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1
	.byte	0xc
	.byte	0x11
	.long	0x893
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZ7festsayPKcE7FestCMD
	.byte	0
	.uleb128 0xe
	.long	0x73
	.long	0x88e
	.uleb128 0xf
	.long	0x65
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.long	0x87e
	.uleb128 0x24
	.long	0x6c
	.uleb128 0x25
	.long	0x65
	.value	0x3ff
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"_ZSt3absl"
.LASF58:
	.string	"atoll"
.LASF67:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF17:
	.string	"quot"
.LASF18:
	.string	"size_t"
.LASF55:
	.string	"_ZSt3divll"
.LASF31:
	.string	"_ZSt3absx"
.LASF70:
	.string	"_Z7festsayPKc"
.LASF52:
	.string	"wcstombs"
.LASF23:
	.string	"7lldiv_t"
.LASF26:
	.string	"long long unsigned int"
.LASF33:
	.string	"atexit"
.LASF19:
	.string	"div_t"
.LASF24:
	.string	"long long int"
.LASF9:
	.string	"signed char"
.LASF41:
	.string	"mblen"
.LASF72:
	.string	"__PRETTY_FUNCTION__"
.LASF48:
	.string	"strtod"
.LASF61:
	.string	"strtof"
.LASF11:
	.string	"long int"
.LASF49:
	.string	"strtol"
.LASF13:
	.string	"__float128"
.LASF22:
	.string	"ldiv_t"
.LASF15:
	.string	"double"
.LASF44:
	.string	"mbtowc"
.LASF46:
	.string	"qsort"
.LASF12:
	.string	"__unknown__"
.LASF6:
	.string	"unsigned int"
.LASF2:
	.string	"long unsigned int"
.LASF47:
	.string	"srand"
.LASF68:
	.string	"rand"
.LASF20:
	.string	"5div_t"
.LASF8:
	.string	"short unsigned int"
.LASF38:
	.string	"bsearch"
.LASF57:
	.string	"lldiv"
.LASF43:
	.string	"wchar_t"
.LASF63:
	.string	"sprintf"
.LASF39:
	.string	"getenv"
.LASF16:
	.string	"long double"
.LASF34:
	.string	"at_quick_exit"
.LASF40:
	.string	"ldiv"
.LASF45:
	.string	"quick_exit"
.LASF14:
	.string	"float"
.LASF5:
	.string	"FESTIVAL_ZALUPA"
.LASF42:
	.string	"mbstowcs"
.LASF65:
	.string	"__assert_fail"
.LASF35:
	.string	"atof"
.LASF36:
	.string	"atoi"
.LASF37:
	.string	"atol"
.LASF7:
	.string	"unsigned char"
.LASF21:
	.string	"6ldiv_t"
.LASF25:
	.string	"lldiv_t"
.LASF10:
	.string	"short int"
.LASF62:
	.string	"strtold"
.LASF59:
	.string	"strtoll"
.LASF66:
	.string	"FestCMD"
.LASF53:
	.string	"wctomb"
.LASF30:
	.string	"_ZSt3absd"
.LASF28:
	.string	"_ZSt3abse"
.LASF29:
	.string	"_ZSt3absf"
.LASF56:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF4:
	.string	"FESTIVAL_COMMAND_LENGHT"
.LASF3:
	.string	"char"
.LASF71:
	.string	"text"
.LASF60:
	.string	"strtoull"
.LASF69:
	.string	"festsay"
.LASF64:
	.string	"memset"
.LASF50:
	.string	"strtoul"
.LASF51:
	.string	"system"
.LASF27:
	.string	"__compar_fn_t"
.LASF54:
	.string	"__gnu_cxx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../ATC/Festival/Festival.cpp"
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4: