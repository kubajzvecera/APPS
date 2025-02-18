;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data

    ; variables
    extern g_string
    extern g_lng_arr
    extern g_int_up
    extern g_int_down
    extern g_long
    extern g_s_passwrd
    extern g_passwrd
;***************************************************************************
 
    section .text 

;1***************************************************************************
    global edit_string
edit_string:
    enter 0,0
    mov byte [ g_string + 4 * 1], '!'
    leave
    ret
;2***************************************************************************
    global swap_arr_elements

swap_arr_elements:
    enter 0,0
    mov r8, [ g_lng_arr + 1 * 8]
    mov r9, [ g_lng_arr + 2 * 8]
    mov [ g_lng_arr + 2 * 8 ],r8
    mov [ g_lng_arr + 1 * 8 ],r9
    leave
    ret 
;3***************************************************************************
    global separate_elements

separate_elements:
    enter 0,0 ; 0x00665544 33221100
    mov eax, [ g_long + 4] ;posun o 4 bajty vlevo takze eax = 00665544 
    mov [g_int_up], eax
    mov ecx, [ g_long ]
    mov [g_int_down], ecx
    leave
    ret
;4***************************************************************************
    global decode
decode:
    mov al, [ g_passwrd + 7]
    mov [ g_s_passwrd ],al

    mov al, [ g_passwrd + 6]
    mov [ g_s_passwrd + 1 ],al

    mov al, [ g_passwrd + 5]
    mov [ g_s_passwrd + 2 ],al

    mov al, [ g_passwrd + 4]
    mov [ g_s_passwrd + 3 ],al

    mov al, [ g_passwrd + 3]
    mov [ g_s_passwrd + 4 ],al

    mov al, [ g_passwrd + 2]
    mov [ g_s_passwrd + 5 ],al

    mov al, [ g_passwrd + 1]
    mov [ g_s_passwrd + 6 ],al

    mov al, [ g_passwrd ]
    mov [ g_s_passwrd + 7 ],al
    ret