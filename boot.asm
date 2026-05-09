[ORG 0x7C00]
[BITS 16]

start:
    mov ax, 0x07C0
    mov ds, ax
    mov es, ax

    call clear_screen

    mov si, msg
    call print_string

    mov si, msg2
    call print_string

hang:
    jmp hang

print_string:
    pusha
    mov ah, 0x0E
.loop:
    lodsb
    or al, al
    jz .done
    int 0x10
    jmp .loop
.done:
    popa
    ret

clear_screen:
    pusha
    mov ah, 0x00
    mov al, 0x03
    int 0x10
    popa
    ret

msg  db 'ZENITH OS', 13, 10, 0
msg2 db 'Booted successfully bro 🔥', 13, 10, 0

times 510-($-$$) db 0
dw 0xAA55