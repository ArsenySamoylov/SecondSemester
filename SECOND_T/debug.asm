%include "macroses.asm"

%ifndef DNG
%define DNG
%macro __REG 1

    push %1

    mov di, sp

    mov ax, [di]

    mov bx, .DEC_BUF
    call PUT_DECIMAL_IN_BUFFER

    mov dx, [di] ; di - stack top
    mov si, .HEC_BUF
    call PUT_HEX_DX_IN_BUFFER

    mov ax, [di]
    mov bx, .BIT_BUF
    call PUT_BINARY_AX_IN_BUFFER

    __PUT_STRING  .MES, 14h, 29h
    
    add sp, 2h ;now sum in stack is invalid

    jmp .end

%defstr reg__ %1
.MES: db     reg__, " : "
.DEC_BUF: db "_____d, "
.HEC_BUF: db "____h, "
.BIT_BUF: db "________________b$"
    
.end:    __GETCH

%endmacro

%endif