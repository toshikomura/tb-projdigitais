.text
.globl main

main:
	ori $t0, $zero, 569 #Resultado 569
	ori $t1, $t0, 318 #Resultado 831
    addu $t2, $t0, $t1 #Resultado 1400
	ori $t1, $zero, 318 #Resultado 318
    subu $t2, $t0, $t1 #Resultado 251
    and $t2, $t0, $t1 #Resultado 56
    or $t2, $t0, $t1 #Resultado 831
    xor $t2, $t0, $t1 #775
    nor $t2, $t0, $t1 #Resultado grande
    lui $t2, 569 #Resultado 37289984
    mul $t2, $t0, $t1 #Resultado 180942
    addiu $t2, $t0, 318 #Resultado 887
    j parte
    addiu $t2, $t0, 318 #Resultado 887
parte:
    jal baixo
    j main
baixo:
    ori $t3, $zero, 0 #Modificar aqui para testar o bgtz
    bgtz $t3, pulo
    ori $t3, $zero, 1000
pulo:
    jr $ra
