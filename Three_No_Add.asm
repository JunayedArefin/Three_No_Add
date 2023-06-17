.model small
.stack 100h
.data

    msg db "Enter 1st number: $"  
    msg1 db 0ah, "Enter 2nd number: $"
    msg2 db 0ah, "Enter 3nd number: $"
    msg3 db "Sum is: $"
 
.code
main proc

      mov ax,@data
      mov ds,ax 
    
      lea dx,msg
      mov ah,9
      int 21h  

      mov ah,1   ; 1st value
      int 21h    ; data store in al
      mov cl,al  ; move data from al to cl

    
      mov ah,2
      mov dl,0dh
      int 21h     ; for print new line
      mov dl,0ah
      int 21h


      lea dx,msg1
      mov ah,9
      int 21h
       
      mov ah,1   ; 2nd value
      int 21h    ; data store in al
      mov bl,al  ; move data from al to bl

      mov ah,2
      mov dl,0dh
      int 21h     ; for print new line
      mov dl,0ah
      int 21h


      lea dx,msg2
      mov ah,9
      int 21h
      
      mov ah,1   ; 3rd value
      int 21h    ; data store in al
      mov bh,al  ; move data from al to bh
 
      add bl,cl  ;plus bl and cl
      add bl,bh
      
      sub bl,96

      mov ah,2
      mov dl,0dh
      int 21h     ; for print new line
      mov dl,0ah
      int 21h

      lea dx,msg3
      mov ah,9
      int 21h


      mov ah,2   ; show output
      mov dl,bl
      int 21h

    main endp
end main