    .global main
    .extern fin
    .extern fout

    .section .text
_start:
    # TODO: call InitGlobals
    call main 
    movq $0   , %rdi      
    movq $60  , %rax      
    syscall

factorial:
    # set stack frame (1 local vars)
    sub $8, %rsp 
    push %rbp     
    mov %rsp,   %rbp      

    # save callee-save regs
    push %rbx     
    push %r10     
    push %r11     
    push %r12     
    push %r13     
    push %r14     
    push %r15     

    # save param regs on stack
    movq %rdi, 8 (%rbp)       # save parameter 'number' on stack


entry_factorial:
### %op_0 = bigger number, 1
    movq $100 , %r15          # put_value_to_reg: ' const_0' -> %r15
                              # put_value_to_reg: 'number' already in %rdi

    mov %rdi,   %r14          # save 'number' to %r14

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %rdi
    setg %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    imul %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### br %op_0, label than_0, label merge_0
                              # put_value_to_reg: '%op_0' already in %rdi
    cmp $100, %rdi
    je than_0 
    jmp merge_0 

than_0:
### %op_2 = sub number, 1
    movq $100 , %rdi          # put_value_to_reg: ' const_1' -> %rdi
                              # put_value_to_reg: 'number' already in %r14

    mov %r14,   %r15          # save 'number' to %r15

    # math op #
    sub %rdi, %r14


### %c_1 = call: factorial (param %op_2)
    # save busy regs
    # set parameters
    mov %r14,   %rdi      
    call factorial 
    mov %rax,   %rdi          # save call result from rax

### %op_3 = mul number, %c_1
                              # put_value_to_reg: '%c_1' already in %rdi
                              # put_value_to_reg: 'number' already in %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %rdi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### return %op_3

    mov %r15,   %rax          # return %op_3

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $8, %rsp 
    ret 

### br label merge_0
    jmp merge_0 

merge_0:
### return 1

    movq $100 , %rax          # return const_2

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $8, %rsp 
    ret 


main:
    # set stack frame (1 local vars)
    sub $8, %rsp 
    push %rbp     
    mov %rsp,   %rbp      

    # save callee-save regs
    push %rbx     
    push %r10     
    push %r11     
    push %r12     
    push %r13     
    push %r14     
    push %r15     

    # save param regs on stack


entry_main:
### %c_0 = call: factorial (param 6)
    # save busy regs
    # set parameters
    movq $600 , %rdi      
    call factorial 
    mov %rax,   %rdi          # save call result from rax

### result = store(%c_0)
                              # put_value_to_reg: '%c_0' already in %rdi
    movq %rdi, 8 (%rbp)       # copy '%c_0' to stack (to 'result')

### call: fout (param result)
    # save busy regs
    # set parameters
    movq 8 (%rbp), %rdi  
    call fout 

### return 0

    movq $0   , %rax          # return const_1

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $8, %rsp 
    ret 


