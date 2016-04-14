                                                         jmp code
w equ 80    ; dimensiune dreptunghi
h equ 70
 
 
 
 
code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h

 ;colorare plansa
 mov cx, 320
 mov dx, 197
 mov al, 140
n: 
m: mov ah, 0ch
   int 10h
   dec cx
   cmp cx, 1
   ja m
   dec dx
   dec dx
   dec dx
   dec dx
   mov cx, 320
   cmp dx, 65
   ja n
   
   
   
 ;colorare plansa
 mov cx, 320
 mov dx, 65
 mov al, 50
g: 
f: mov ah, 0ch
   int 10h
   dec cx
   cmp cx, 1
   ja f
   dec dx
   dec dx
   dec dx
   dec dx
   mov cx, 320
   cmp dx, 1
   ja g
   










 ; strada 1
 mov cx, 320
 mov dx, 100+h
 mov al, 115
u0: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 0
 ja u0  
 
  ; strada 2
 mov cx, 320
 mov dx, 195
 mov al, 115
u01: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 0
 ja u01
 
 

 
 

 ; latura din stanga
 mov cx, 120
 mov dx, 80+h
 mov al, 200
u3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80
 ja u3
 

  ;latura din dreapta
 mov cx, 120+w
 mov dx, 80+h
 mov al, 200    
u4: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80
 ja u4  
 
 
  ; afisare latura superioara
 mov cx, 120+w ; coloana
 mov dx, 80 ; rand
 mov al, 200 ; alb
u1: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 120 
;dec dx       ;pt latura oblica
;cmp dx, 10   ;
 jae u1




 
 ; afisare latura inferioare
 mov cx, 120+w
 mov dx, 80+h
 mov al, 200
u2: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120
 ja u2


;latura acop stanga
 mov cx, 120 ; coloana
 mov dx, 80 ; rand
 mov al, 200 ; alb
u5: mov ah, 0ch 
 int 10h
 inc cx
 cmp cx, 20 
 dec dx       
 cmp dx, 40  
 jae u5
                   
;latura acop dreapta
 mov cx, 120+w ;
 mov dx, 80 ; rand
 mov al, 200 ; alb
u6: mov ah, 0ch 
 int 10h
 dec cx
 cmp cx, 20 
 dec dx       
 cmp dx, 40   
 jae u6   


;latura acoperis obliga
 mov cx, 160 ; coloana
 mov dx, 40 ; rand
 mov al, 200 ; alb
u7: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 5
 dec dx       ;pt latura oblica
 cmp dx, 5   ;
 jae u7 
 
  ;latura sus obliga
 mov cx, 120 ; coloana
 mov dx, 80 ; rand
 mov al, 200 ; alb
u8: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 45   ;
 jae u8 
 
 
 

;latura jos obliga
 mov cx, 120 ; coloana
 mov dx, 80+h ; rand
 mov al, 200 ; alb
u9: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 15 
 dec dx       ;pt latura oblica
 cmp dx, 115   ;
 jae u9 
 
;spatele
 mov cx, 85 ; coloana
 mov dx, 115 ; rand
 mov al, 200 
u10: mov ah, 0ch 
 int 10h
 dec dx       
 cmp dx, 46 
 jae u10  
   
;latura oblica stanga  laterala acoperis
 mov cx, 85  ; coloana
 mov dx, 46 ; rand
 mov al, 200 
u11: mov ah, 0ch 
 int 10h
 inc cx
 cmp cx, 20
 dec dx       
 cmp dx, 5   
 jae u11 
 
 
;geam jos
 
 mov cx, 150
 mov dx, 110
 mov al, 45
u15: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 130
 ja u15  
 
 ;geam sus
 
 mov cx, 150
 mov dx, 95
 mov al, 45
u16: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 130
 ja u16   
 
 
  ;geam  d
 mov cx, 130
 mov dx, 110
 mov al, 45
u17: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u17 

 ;geam  s
 mov cx, 140
 mov dx, 110
 mov al, 45
u18: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u18  
 
 ;geam  s
 mov cx, 150
 mov dx, 110
 mov al, 45
u19: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u19
         
         
         
 ;usa  drp
 mov cx, 163
 mov dx,  150
 mov al, 45
u12: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 125
 ja u12 
 
 ;usa  stg
 mov cx, 147
 mov dx, 150
 mov al, 45
u13: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 125
 ja u13   
 
  ; toc
 mov cx, 163
 mov dx, 125
 mov al, 45
u14: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 147
 ja u14
 
 ;alee 1
 mov cx, 179 ; coloana
 mov dx, 169 ; rand
 mov al, 115 ; alb
u8151: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 165 
 dec dx       ;pt latura oblica
 cmp dx, 152   ;
 jae u8151
 
  ;alee 2
 mov cx, 163 ; coloana
 mov dx, 169 ; rand
 mov al, 115 ; alb
u81521: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 149 
 dec dx       ;pt latura oblica
 cmp dx, 152   ;
 jae u81521
 
   ; geam 2 jos
 mov cx, 190 ; linie
 mov dx, 110 ; coloana
 mov al, 45
u115: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 170
 ja u115 
  
  ;geam 2 sus
 mov cx, 190  ;linie
 mov dx, 95   ;coloana
 mov al, 45
u116: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 170
 ja u116 
 
   ;geam  2 dreapta
 mov cx, 170
 mov dx, 110
 mov al, 45
u117: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u117  
 
    ;geam  2 stanga
 mov cx, 190
 mov dx, 110
 mov al, 45
u217: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u217 
 
     ;geam  2 mijloc
 mov cx, 180
 mov dx, 110
 mov al, 45
u1117: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 95
 ja u1117  
 
    ;horn stanga
 mov cx, 110
 mov dx, 40
 mov al, 45
u1171: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 30
 ja u1171
 
     ;horn dreapta
 mov cx, 120
 mov dx, 50
 mov al, 45
u1271: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 30
 ja u1271
          
   ;horn sus
 mov cx, 120
 mov dx, 30
 mov al, 45
u2271: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 110
 ja u2271 
 
    ;horn sus 2
 mov cx, 120
 mov dx, 35
 mov al, 45
u2221: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 110
 ja u2221
 
     ;horn sus 3
 mov cx, 120
 mov dx, 40
 mov al, 45
u222: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 110
 ja u222
 
      ;horn sus 3
 mov cx, 120
 mov dx, 45
 mov al, 45
u2222: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 115
 ja u2222 
 
  ;latura horn
 mov cx, 120 ; coloana
 mov dx, 50 ; rand
 mov al, 45 ; alb
u81: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 110 
 dec dx       ;pt latura oblica
 cmp dx, 40   ;
 jae u81   
 
 
    ; caine  jos
 mov cx, 120+w+35 ; linie
 mov dx, 80+h ; coloana
 mov al, 200
u1152: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w
 ja u1152
 
     ; caine  sus
 mov cx, 120+w+35 ; linie
 mov dx, 80+h-35 ; coloana
 mov al, 200
u1153: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w
 ja u1153 
 
 
 
 
       ; caine dreapta
 mov cx, 120+35+w ; linie
 mov dx, 80+h ; coloana
 mov al, 200
u11112: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80+h-35
 ja u11112 
 
        ; usa caine dreapta
 mov cx, 120+w+28 ; linie
 mov dx, 80+h ; coloana
 mov al, 45
u1112: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80+h-25
 ja u1112  
 
         ; usa caine stanga
 mov cx, 120+w+7 ; linie
 mov dx, 80+h ; coloana
 mov al, 45
u111: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 80+h-25
 ja u111 
 
          ; usa caine sus
 mov cx, 120+w+28 ; linie
 mov dx, 80+h-25 ; coloana
 mov al, 45
u1119: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w+7
 ja u1119
 
 ; usa caine sus
 mov cx, 120+w+28 ; linie
 mov dx, 80+h-20 ; coloana
 mov al, 45
u11191: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w+7
 ja u11191
 
  ; usa caine sus
 mov cx, 120+w+28 ; linie
 mov dx, 80+h-15 ; coloana
 mov al, 45
u111912: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w+7
 ja u111912 
 
   ; usa caine sus
 mov cx, 120+w+28 ; linie
 mov dx, 80+h-10 ; coloana
 mov al, 45
u1119121: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w+7
 ja u1119121 
 
   ; usa caine sus
 mov cx, 120+w+28 ; linie
 mov dx, 80+h-5 ; coloana
 mov al, 45
u1119122: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120+w+7
 ja u1119122
 
  ;caine acoperis dreapta
 mov cx, 120+35+w ; coloana
 mov dx, 80+h-35 ; rand
 mov al, 200 ; alb
u811: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 120+68 
 dec dx       ;pt latura oblica
 cmp dx, 80+h-35-17   ;
 jae u811 
 
   ;caine acoperis stanga
 mov cx, 120+w ; coloana
 mov dx, 80+h-35 ; rand
 mov al, 200 ; alb
u8121: mov ah, 0ch ; afisare pixel
 int 10h
 inc cx
 cmp cx, 120+68 
 dec dx       ;pt latura oblica
 cmp dx, 80+h-35-17   ;
 jae u8121 
 
   ;caine acoperis 3D
 mov cx, 120+w+17 ; coloana
 mov dx, 80+h-35-17 ; rand
 mov al, 200 ; alb
u81121: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 dec cx
 cmp cx, 120+68 
 dec dx       ;pt latura oblica
 cmp dx, 80+h-35-25   ;
 jae u81121  
  
  
 ; copac
 mov cx, 40
 mov dx, 80+h+10
 mov al, 115
z1: mov ah, 0ch
    int 10h
    dec dx
    cmp dx, 80+20
    ja z1
    
    
 mov cx, 40
 mov dx, 80+50
 mov al, 190
z2: mov ah, 0ch
    int 10h
    dec cx
    cmp cx, 35
    dec dx
    cmp dx, 80+40
    jae z2
    
 mov cx, 40
 mov dx, 80+60
 mov al, 190
z3: mov ah, 0ch
    int 10h
    inc cx
    cmp cx, 45
    dec dx
    cmp dx, 80+50
    jae z3
    
    
 mov cx, 40
 mov dx, 80+20
 mov al, 190
z4: mov ah, 0ch
    int 10h
    dec cx
    cmp cx, 10
    dec dx
    cmp dx, 65
    jae z4
          
          
 mov cx, 40
 mov dx, 80+20
 mov al, 190
z5: mov ah, 0ch
    int 10h
    inc cx
    cmp cx, 60
    dec dx
    cmp dx, 70
    jae z5         
           
           
 mov cx, 55
 mov dx, 80
 mov al, 190
z6: mov ah, 0ch
    int 10h
    dec cx
    cmp cx, 50
    dec dx
    cmp dx, 75
    jae z6 
  
  
 mov cx, 20
 mov dx, 75
 mov al, 190
z7: mov ah, 0ch
    int 10h
    inc cx
    cmp cx, 35
    dec dx
    cmp dx, 65
    jae z7
            
            
 mov cx, 290
 mov dx, 80
 mov al, 100
q1: mov ah, 0ch
    int 10h
    dec dx
    cmp dx, 25
    ja q1
    
    
 mov cx, 305
 mov dx, 40
 mov al, 100
q2: mov ah, 0ch
    int 10h
    dec cx
    cmp cx, 275
    ja q2
    
    
 mov cx, 280
 mov dx, 50
 mov al, 100
q3: mov ah, 0ch
    int 10h
    inc cx
    cmp cx, 300
    dec dx
    cmp dx, 30
    jae q3 
    
    
 mov cx, 300
 mov dx, 50
 mov al, 100
q4: mov ah, 0ch
    int 10h
    dec cx
    cmp cx, 260
    dec dx
    cmp dx, 30
    jae q4           
            
            
            
         
 ; asteptare apasare tasta
 mov ah,00
 int 16h   
 