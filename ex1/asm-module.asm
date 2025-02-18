;***************************************************************************
;
;***************************************************************************

    bits 64

    section .data
    extern g_ip_int
    extern g_ip_bytes
    extern g_ip
    extern g_ip_address
    ; variables
    
;***************************************************************************
 
    section .text 

;1***************************************************************************
    global convert_int_to_bytes
convert_int_to_bytes:
    mov al, [ g_ip_int + 3]
    mov [ g_ip_bytes + 0 ],al

    mov al, [ g_ip_int + 2]
    mov [ g_ip_bytes + 1 ],al

    mov al, [ g_ip_int + 1]
    mov [ g_ip_bytes + 2 ],al

    mov al, [ g_ip_int + 0]
    mov [ g_ip_bytes + 3 ],al

    ret 
;2***************************************************************************
    global get_PTR_record
get_PTR_record:
    mov ah, [ g_ip ] 
    mov al, [ g_ip + 3]
    mov [ g_ip + 3 ], ah
    mov [ g_ip ], al

    mov ah, [ g_ip + 1 ] 
    mov al, [ g_ip + 2 ]
    mov [ g_ip + 2 ], ah
    mov [ g_ip + 1 ], al

    ret
;3***************************************************************************
    global get_network_address
get_network_address:
    mov eax,[ g_ip_address]
    mov al,0
    mov [ g_ip_address ], eax
    ret
;4***************************************************************************
