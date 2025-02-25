```x86asm
    bits 64

    section .data
    extern g_pole
    extern g_int_pocet
    extern g_int_N
    extern g_long_pole
    extern g_test
    ; variables
    
;***************************************************************************
 
    section .text 

;1***************************************************************************
    global convert
convert:
    mov r8, 0  ; i = 0; i < 3
.foreach:
    mov rcx, 0 ; citac 64bit kvuli adresovani
    mov rax, 0 ; suma
.for:
    mov dl, [ g_pole + rcx + r8*4]
    movzx r9d, dl
    add eax, r9d ;pridam 2 bajty 
    mov dl, 0   ; vynuluji
    inc rcx ;counter--
    cmp rcx, 4
    jl .for ; pokud je cl < 8 iteruj jinak konec
    mov [ g_pole + r8 * 4], eax

    inc r8 ;i++
    cmp r8, 3 ;
    jl .foreach ; pokud je i < 3 

    ret
;2***************************************************************************
    global count_n_in_Array
count_n_in_Array:
    mov r8, 0
    mov edx, 0
    ;1111 1111 je 8 - n (3) = 5 
    mov ecx, 8
    sub ecx, [ g_int_N ] ; n = 3
    mov ebx,0xFF
    shr ebx, cl ;0000 0111
.for:    
    mov eax, [ g_long_pole + 4 * r8] ; ulozeni
    test eax,ebx
    jz .do_inc     ;pokud je nasobkem 2^n inkrementuj pocet cisel  

    test eax,ebx 
    jnz .dont_inc

.do_inc:
    inc edx
    inc r8
    jmp .iterate

.dont_inc:
    inc r8
    jmp .iterate

.iterate:
    cmp r8, 3
    jl .for
    mov [ g_int_pocet ], edx
    ret```
