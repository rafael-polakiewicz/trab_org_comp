; Trabalho - SSC0511 - Organizacao de Computadores Digitais
;
; DNA Snake 
;
; Grupo:
;
; Felipe Melo 11218598
; Rafael Marques 9846045
;
;---- Inicio ----
jmp main
;---- Dificuldade ----
Tela0Linha0:  string "________________________________________"
Tela0Linha1:  string "|                                      |"
Tela0Linha2:  string "|                                      |"
Tela0Linha3:  string "|                                      |"
Tela0Linha4:  string "|          Jogo DNA-Snake              |"
Tela0Linha5:  string "|                                      |"
Tela0Linha6:  string "|                                      |"
Tela0Linha7:  string "|                                      |"
Tela0Linha8:  string "|      Selecione uma dificuldade       |"
Tela0Linha9:  string "|                                      |"
Tela0Linha10: string "|                                      |"
Tela0Linha11: string "|                                      |"
Tela0Linha12: string "|             Facil                    |"
Tela0Linha13: string "|             Medio                    |"
Tela0Linha14: string "|             Dificil                  |"
Tela0Linha15: string "|                                      |"
Tela0Linha16: string "|                                      |"
Tela0Linha17: string "|                                      |"
Tela0Linha18: string "|                                      |"
Tela0Linha19: string "|                                      |"
Tela0Linha20: string "|                                      |"
Tela0Linha21: string "|                 ORG                  |"
Tela0Linha22: string "|            ___________________       |"
Tela0Linha23: string "|           | Felipe Melo       |      |"
Tela0Linha24: string "|           | Rafael Marques    |      |"
Tela0Linha25: string "|           |                   |      |"
Tela0Linha26: string "|           |                   |      |"
Tela0Linha27: string "|           |___________________|      |"
Tela0Linha28: string "|                                      |"
Tela0Linha29: string "|______________________________________|"

;---- Cenario ----
Tela1Linha0:  string "########################################"
Tela1Linha1:  string "#                                      #"
Tela1Linha2:  string "#                                      #"
Tela1Linha3:  string "#                                      #"
Tela1Linha4:  string "#                                      #"
Tela1Linha5:  string "#                                      #"
Tela1Linha6:  string "#                                      #"
Tela1Linha7:  string "#                                      #"
Tela1Linha8:  string "#                                      #"
Tela1Linha9:  string "#                                      #"
Tela1Linha10: string "#                                      #"
Tela1Linha11: string "#                                      #"
Tela1Linha12: string "#                                      #"
Tela1Linha13: string "#                                      #"
Tela1Linha14: string "#                                      #"
Tela1Linha15: string "#                                      #"
Tela1Linha16: string "#                                      #"
Tela1Linha17: string "#                                      #"
Tela1Linha18: string "#                                      #"
Tela1Linha19: string "#                                      #"
Tela1Linha20: string "#                                      #"
Tela1Linha21: string "#                                      #"
Tela1Linha22: string "#                                      #"
Tela1Linha23: string "#                                      #"
Tela1Linha24: string "#                                      #"
Tela1Linha25: string "#                                      #"
Tela1Linha26: string "#                                      #"
Tela1Linha27: string "#                                      #"
Tela1Linha28: string "#                                      #"
Tela1Linha29: string "########################################"

Tela2Linha0:  string "                                        "
Tela2Linha1:  string "                                        "
Tela2Linha2:  string "                                        "
Tela2Linha3:  string "       ______                           "
Tela2Linha4:  string "      |         |   |\\      /|         "
Tela2Linha5:  string "      |_____    |   | \\    / |         "
Tela2Linha6:  string "      |         |   |  \\  /  |         "
Tela2Linha7:  string "      |         |   |   \\/   |         "
Tela2Linha8:  string "      |         |   |         |         "
Tela2Linha9:  string "                                        "
Tela2Linha10: string "                                        "
Tela2Linha11: string "              |   ___                   "
Tela2Linha12: string "              |  |   |                  "
Tela2Linha13: string "           ___|  |   |                  "
Tela2Linha14: string "          |   |  |   |                  "
Tela2Linha15: string "          |___|  |___|                  "
Tela2Linha16: string "                                        "
Tela2Linha17: string "                                        "
Tela2Linha18: string "       ____  ____    _____   ____       "
Tela2Linha19: string "         |  |    |  |     | |    |      "
Tela2Linha20: string "         |  |    |  |  ___  |    |      "
Tela2Linha21: string "     |   |  |    |  |     | |    |      "
Tela2Linha22: string "     |___|  |____|  |_____| |____|      "
Tela2Linha23: string "                                        "
Tela2Linha24: string "                                        "
Tela2Linha25: string "                                        "
Tela2Linha26: string "                                        "
Tela2Linha27: string "                                        "
Tela2Linha28: string "                                        "
Tela2Linha29: string "                                        "

tela: 			var #1200	; Guarda na memoria o que esta na tela
head:			var #1		; Guarda a posicao da cabeca da cobra
end:			var #1		; Guarda a posicao da calda da cobra
dir:			var #1		; Guarda a diracao dos ponteiros
dificuldade: 	var #1
random_pos:		var #100
randomInd:		var #1

static randomInd, #0

; Tabela de numeros randomicos
static random_pos + #0, #949
static random_pos + #1, #233
static random_pos + #2, #790 
static random_pos + #3, #578 
static random_pos + #4, #1082 
static random_pos + #5, #843 
static random_pos + #6, #95 
static random_pos + #7, #689 
static random_pos + #8, #1106 
static random_pos + #9, #70 
static random_pos + #10, #797 
static random_pos + #11, #1130 
static random_pos + #12, #219 
static random_pos + #13, #754 
static random_pos + #14, #1047 
static random_pos + #15, #647 
static random_pos + #16, #583 
static random_pos + #17, #386 
static random_pos + #18, #463 
static random_pos + #19, #1048 
static random_pos + #20, #481 
static random_pos + #21, #1053 
static random_pos + #22, #142 
static random_pos + #23, #981 
static random_pos + #24, #642 
static random_pos + #25, #995 
static random_pos + #26, #293 
static random_pos + #27, #740 
static random_pos + #28, #1116 
static random_pos + #29, #309 
static random_pos + #30, #809 
static random_pos + #31, #846 
static random_pos + #32, #91 
static random_pos + #33, #955 
static random_pos + #34, #601 
static random_pos + #35, #930 
static random_pos + #36, #208 
static random_pos + #37, #685 
static random_pos + #38, #882 
static random_pos + #39, #943 
static random_pos + #40, #588 
static random_pos + #41, #623 
static random_pos + #42, #88 
static random_pos + #43, #820 
static random_pos + #44, #221 
static random_pos + #45, #162 
static random_pos + #46, #487 
static random_pos + #47, #774 
static random_pos + #48, #1150 
static random_pos + #49, #756 
static random_pos + #50, #928 
static random_pos + #51, #54 
static random_pos + #52, #768 
static random_pos + #53, #736 
static random_pos + #54, #1090 
static random_pos + #55, #232 
static random_pos + #56, #944 
static random_pos + #57, #234 
static random_pos + #58, #669 
static random_pos + #59, #990 
static random_pos + #60, #629 
static random_pos + #61, #581 
static random_pos + #62, #410 
static random_pos + #63, #902 
static random_pos + #64, #870 
static random_pos + #65, #694 
static random_pos + #66, #276 
static random_pos + #67, #131 
static random_pos + #68, #236 
static random_pos + #69, #916 
static random_pos + #70, #270 
static random_pos + #71, #715 
static random_pos + #72, #99 
static random_pos + #73, #369
static random_pos + #74, #474 
static random_pos + #75, #776 
static random_pos + #76, #406 
static random_pos + #77, #993 
static random_pos + #78, #703 
static random_pos + #79, #659 
static random_pos + #80, #419 
static random_pos + #81, #783 
static random_pos + #82, #285 
static random_pos + #83, #714 
static random_pos + #84, #947 
static random_pos + #85, #456 
static random_pos + #86, #514 
static random_pos + #87, #781 
static random_pos + #88, #215 
static random_pos + #89, #997 
static random_pos + #90, #547 
static random_pos + #91, #368 
static random_pos + #92, #536 
static random_pos + #93, #106 
static random_pos + #94, #899 
static random_pos + #95, #1126 
static random_pos + #96, #906 
static random_pos + #97, #288 
static random_pos + #98, #499 
static random_pos + #99, #122 

;---- Main ----
main:
	
	call startGame
	
	main_loop:
		
		call moveSnake	

		call delay
		
	jmp main_loop	

	halt
;---- Fim main ----


;---- Comeca o jogo ----
startGame:
	push fr
	push r1
	push r2

	call apagaTela
	loadn r1, #Tela0Linha0 		
	loadn r2, #2816
	call imprimeTela1
	
	call selecionaDificuldade
	
	call apagaTela
	loadn r1, #Tela1Linha0
	loadn r2, #2816
	call imprimeTela1
	
	call imprimeSnake
	
	pop r2
	pop r1
	pop fr
		
	rts

;---- Fim da funcao que inicia o jogo ----

;---- Dificuldade ----
selecionaDificuldade:
	push fr
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
		
	loadn r0, #'w' ; sobe a selecao
	loadn r1, #'s' ; baixa a selecao
	loadn r2, #13 ; enter (ascii)
	loadn r4, #512 ; cor da tela
	loadn r5, #492 ; posicao que inicia a seta
	loadn r6, #'>' ; seta
	
	outchar r6, r5 ; imprime a seta
	
	selecionaDificuldade_Loop:
		inchar r3	
		cmp r3, r0 ; verifica se w foi apertada
		jne selecionaDificuldade_1 ; se nao foi w
		; caso seja w
		loadn r4, #492  
		cmp r5, r4 ; verifica s eesta na 1 posicao
		jeq selecionaDificuldade_Loop ; caso esteja
		; caso nao
		loadn r4, #' ' ; auxiliar para apagar a seta da posicao anterior
		outchar r4, r5 ; apagando a seta da posicao anterior
		loadn r4, #40 ; auxiliar para mudar a seta de posicao
		sub r5, r5, r4 ; pocisao a cima da anterior
		outchar r6, r5 ; impressao da seta na posicao atual
		jmp selecionaDificuldade_Loop
	 
	selecionaDificuldade_1: ; caso nao seja w
		cmp r3, r1 ; verifica se a letra digitada foi s
		jne selecionaDificuldade_2 ; caso nao seja s
		; caso seja s
		loadn r4, #572 ; auxiliar que guarda a terceira posicao em que a seta pode estar
		cmp r5, r4 ; verifica se a seta nao esta nessa posicao
		jeq selecionaDificuldade_Loop ; caso esteja
		; caso nao esteja
		loadn r4, #' ' ; auxiliar para apagar a seta da posicao anterior
		outchar r4, r5 ; apaga a seta da posicao anterior 		
		loadn r4, #40  ; auxiliar para mudar a seta de posicao
		add r5, r5, r4 ; posicao a baixo da anterior
		outchar r6, r5 ; impressao da seta na nova posicao
		jmp selecionaDificuldade_Loop
		
	selecionaDificuldade_2: ; caso nao seja nem w e nem s
		cmp r3, r2 ; verifica se a tecla enter foi pressionada	 
		jne selecionaDificuldade_Loop ; caso nao tenha sido
		; caso tenha sido 
		loadn r4, #492 ; auxiliar para verificar se a seta esta na primeira posicao
		cmp r5, r4 ; verifica se a seta esta na primeira posicao
		jeq selecionaDificuldade_Case1	; caso esteja
		; caso nao esteja	
		loadn r4, #532 ; auxiliar para verificar se a seta esta na segunda posicao
		cmp r5, r4 ; verifica se a seta esta na segunda posicao
		jeq selecionaDificuldade_Case2 ; caso esteja
		; caso nao esteja
		loadn r4, #572 ; auxiliar para verificar se a seta esta na terceira posicao
		cmp r5, r4 ; verifica se a seta esta na terceira posicao
		jeq selecionaDificuldade_Case3 ; caso esteja
		
	selecionaDificuldade_Case1: ; caso esteja na primeira posicao
		loadn r4, #100 ; 100 velocidade do delay (maior valor ---> maior delay ----> menor velocidade)
		store dificuldade, r4 ; armazena o valor na memoria	
		jmp selecionaDificuldade_Fim 
		
	selecionaDificuldade_Case2: ; caso esteja na segunda posicao
		loadn r4, #70 ; 70 velocidade do delay
		store dificuldade, r4 ; armazena na memoria
		jmp selecionaDificuldade_Fim
		
	selecionaDificuldade_Case3: ; caso esteja na terceira posicao
		loadn r4, #45 ; 45 velocidade do delay
		store dificuldade, r4 ; armazena na memoria
		jmp selecionaDificuldade_Fim			 
			 
	selecionaDificuldade_Fim:
		pop r6
		pop r5
		pop r4	
		pop r3
		pop r2
		pop r1
		pop r0
		pop fr
		
	rts
;---- Fim da funcao selecionaDificuldade ----

;---- Apaga a atela ----
apagaTela:
	push fr 
	push r0				; Posição da tela     
	push r1				; ' '
	push r2				; Ponteiro para o vetor tela
	push r3				; 0

	loadn r0, #1200		; apaga as 1200 posicoes da tela
	loadn r1, #' '		; com "espaco"
	loadn r2, #tela
	loadn r3, #0

	add r2, r2, r0
	
	apagaTela_Loop: 	; label for(r0=1200; r3 > 0; r3--)
		dec r2
		dec r0		
		outchar r1, r0	; apaga monitor
		storei r2, r3	; apaga vetor
		jnz apagaTela_Loop

	pop r3
	pop r2	
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao apagaTela ----


;---- imprime a string 1 ----
 imprimeStr1:	
    ; Rotina de Impresao de Mensagens:
	push fr
	push r0		; protege os registradores na pilha para preservar seus valores
	push r1		
	push r2		
	push r3		
	push r4		
	push r5 	; posição inicial de 'tela'
	push r6		; ponteiro para 'tela' 
	
	loadn r5, #tela
	
	loadn r3, #'\0'	; Criterio de parada

	imprimeStr1_loop:
		loadi r4, r1
		cmp r4, r3
		jeq imprimeStr1_sai
		add r4, r2, r4
		outchar r4, r0
		add r6, r5, r0		; aponta r6 para posição do vetor igual a posição da tela q o char foi impresso
		storei r6, r4		; grava na memória ('tela') extamente o que foi impresso na tela
		
		inc r0
		inc r1
	jmp imprimeStr1_loop
	
	imprimeStr1_sai:	
		pop r6				; Resgata os valores dos registradores utilizados na Subrotina da Pilha
		pop r5
		pop r4	
		pop r3
		pop r2
		pop r1
		pop r0
		pop fr
	rts
;---- Fim da funcao imprimeStr1 ----
	
;---- Imprime a string 2 ----
 imprimeStr2:
	; Rotina de Impresao de Mensagens:
	push fr
	push r0		
	push r1		
	push r2		
	push r3		
	push r4		
	push r5		
	push r6		; posição inicial de 'tela'
	push r7		; ponteiro para 'tela'
	
	loadn r3, #'\0'	; Criterio de parada
	loadn r5, #' '	; Criterio para não imprimir		

	imprimeStr2_loop:	
		loadi r4, r1
		
		cmp r4, r3 ; compara se char == 0 entao acaba a string		
		jeq imprimeStr2_sai		
		
		cmp r4, r5 ; compara se char == ' ' entao nao acaba		
		jeq imprimeStr2_skip
		
		add r4, r2, r4
		outchar r4, r0
		add r7, r6, r0		; aponta r6 para posição do vetor igual a posição da tela q o char foi impresso
		storei r7, r4		; grava na memória ('tela') extamente o que foi impresso na tela
		
		imprimeStr2_skip:
			inc r0
			inc r1	
			jmp imprimeStr2_loop	
	
	imprimeStr2_sai:	
	pop r7				; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r6
	pop r5	
	pop r4	
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts	

;---- Fim da funcao imprimeStr2 ----

;---- Imprime a primeira tela ----
imprimeTela1:
	push fr
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	loadn r0, #0  			   ; Posicao da tela
	loadn r3, #40			   ; Incremento da posicao da tela
	loadn r4, #41              ; Incremento da string
	loadn r5, #1200            ; Fim da tela
	
	
	imprimeTela1_loop:

		call imprimeStr1
		add r0, r0, r3 			; Faz o incremento da posicao da tela
		add r1, r1, r4 			; Faz o incremento da posicao na string
		cmp r0, r5     			; Verifica se chegou no fim da tela
		jne imprimeTela1_loop
			
	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4	
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts
;---- Fim da funcao imprimeTela1 ----

;---- Imprime a cobra ----
imprimeSnake:
	push fr
	push r0				; Caracter a ser impresso
	push r1				; Posição da tela a imprimir o caracter
	push r2 			; Ponteiro para 'tela'
	push r3				; Guarda a posição que a cobra esta movimentando
	
	loadn r3, #'d'
	store dir, r3		; Guarda a direção que a cobra esta andando
	
	loadn r2, #tela		; Aponta r2 para o inicio do vetor tela
	
	loadn r0, #'%'		; Caracter a ser impresso (gomo da cobrinha)
	loadn r1, #512 		; Cor do caracter (verde)
	add r0, r0, r1		; Deixa o caracter colorido
	
	loadn r1, #562		; Posição da tela
	outchar r0, r1		; Imprime o caracter (primeiro gomo da cobrinha)
	store end, r1		; Guarda o a posição do fim da cobra
	
	add r2, r2, r1		; Apontando r2 para a posição de memória igual a posição da tela em que o char foi impresso
	storei r2, r3		; Gravando na memória a direção que foi impressa na tela
	
	inc r1				; Incrementa 1 na posição da tela a ser impresso
	inc r2	
	outchar r0, r1		; Printa o segundo gomo da cobrinha
	store head, r1		; Guarda a posição da cabeça da cobra
	storei r2, r3		; Gravando na memória a direção que foi impressa na tela
	
	call printFood
	
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	rts	
;---- Fim da funcao imprimeSnake ----

;---- Delay de atualizacao ----
delay:
	push fr
	push r0
	push r1
	
	load r1, dificuldade
  	delay_volta2:			; contador de tempo quebrado em duas partes (dois loops de decremento)
		loadn r0, #3000	
   	delay_volta: 
		dec r0				; (4*a + 6)b = 1000000 == 1 seg  em um clock de 1MHz
		jnz delay_volta	
		dec r1
		jnz delay_volta2
	
	pop r1
	pop r0
	pop fr
	rts
;---- Fim da funcao delay ----

;---- le a tecla apertada ----
leTecla:
	
	push fr
	push r0 					; Letra lida
	push r1						; Head - Posição da cabeça 
	push r2 					; Dir
	push r3						; Ponteiro para tela
	push r4 					; Auxiliar
	push r5 					; Auxiliar
		
	; Função que atualiza a variável dir e faz as verificações do movimento quanto a fim de jogo	
	
	inchar r0
	load r1, head
	load r2, dir
	loadn r3, #tela				; r3 aponta para o inicio do vetor tela
	add r3, r1, r3				; r3 aponta para onde está a atual cabeça da cobra
	
	; Caso nenhuma tecla for pressionada r0 <= dir
	loadn r4, #255
	cmp r0, r4
	jne leTecla_case1
	load r4, dir
	mov r0, r4	
	
	leTecla_case1:
		loadn r4, #'w'	; verifica se é w
		cmp r0, r4
		jne leTecla_case2	
		
		; verifica se esta na parede superior
		loadn r4, #79
		cmp r1, r4
		jle gameOver
		
		; verifica se dir esta para baixo
		load r4, dir
		loadn r5, #'s'
		cmp r4, r5
		jeq leTecla_fim
		
		; verifica se a nova posição é cobra
		loadn r4, #40
		sub r3, r3, r4			; aponta r3 para a nova posicao da cabeça
		loadi r4, r3			; r4 = MEM[r3]
		call isSnake
		
		; passou em todas as verificações, agora pode atualizar o label dir		
		loadn r4, #'w'
		store dir, r4
		jmp leTecla_fim
	
	leTecla_case2:
		loadn r4, #'s'	; verifica se é s
		cmp r0, r4
		jne leTecla_case3
		
		; verifica se esta na parede inferior
		loadn r4, #1120
		cmp r1, r4
		jgr gameOver
		
		; verifica se dir esta para cima
		load r4, dir
		loadn r5, #'w'
		cmp r4, r5
		jeq leTecla_fim
		
		; verifica se a nova posição é cobra
		loadn r4, #40
		add r3, r3, r4			; aponta r3 para a nova posicao da cabeça
		loadi r4, r3			; r4 = MEM[r3] -> passagem de parametro para a função isSnake
		call isSnake
		
		; passou em todas as verificações, agora pode atualizar o label dir		
		loadn r4, #'s'
		store dir, r4
		jmp leTecla_fim
		
	leTecla_case3:
		loadn r4, #'a'	; verifica se é a
		cmp r0, r4
		jne leTecla_case4
		
		; verifica se esta na parede esquerda
		loadn r4, #1
		loadn r5, #40
		mod r5, r1, r5
		cmp r4, r5
		jeq gameOver
		
		; verifica se dir esta para direita
		load r4, dir
		loadn r5, #'d'
		cmp r4, r5
		jeq leTecla_fim
		
		; verifica se a nova posição é cobra
		dec r3					; aponta r3 para a nova posicao da cabeça
		loadi r4, r3			; r4 = MEM[r3] -> passagem de parametro para a função isSnake
		call isSnake		
		
		; passou em todas as verificações, agora pode atualizar o label dir		
		loadn r4, #'a'
		store dir, r4
		jmp leTecla_fim
		
	leTecla_case4:
		loadn r4, #'d'	; verifica se é d
		cmp r0, r4
		jne leTecla_fim
		
		; verifica se esta na parede direita
		loadn r4, #38
		loadn r5, #40
		mod r5, r1, r5
		cmp r4, r5
		jeq gameOver
		
		; verifica se dir esta para esquerda
		load r4, dir
		loadn r5, #'a'
		cmp r4, r5
		jeq leTecla_fim
		
		; verifica se a nova posição é cobra
		inc r3					; aponta r3 para a nova posicao da cabeça
		loadi r4, r3			; r4 = MEM[r3] -> passagem de parametro para a função isSnake
		call isSnake
		
		; passou em todas as verificações, agora pode atualizar o label dir		
		loadn r4, #'d'
		store dir, r4
		jmp leTecla_fim
		
	leTecla_fim:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao leTecla ----

;---- Verifica se eh a cobra ----
isSnake:
	push fr
	push r0				; Auxiliar
	push r4				; Parametro, será testado para ver se é ou não cobra

	loadn r0, #'w'
	cmp r4, r0
	jeq gameOver
	loadn r0, #'s'
	cmp r4, r0		
	jeq gameOver
	loadn r0, #'a'
	cmp r4, r0
	jeq gameOver
	loadn r0, #'d'
	cmp r4, r0
	jeq gameOver
	
	pop r4
	pop r0
	pop fr
	
	rts
;---- Fim da funcao isSnake ----

;---- Move a cobra ----
moveSnake:
	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Auxiliar
	push r6				; Auxiliar

	call leTecla		; Atualiza a variável dir
	
	loadn r0, #'%'		; Caracter a ser impresso (gomo da cobrinha)
	loadn r1, #512 		; Cor do caracter (verde)
	add r0, r0, r1		; Deixa o caracter colorido
	load r1, head
	load r2, end
	load r3, dir
	loadn r4, #tela		; Aponta r4 para o inicio do vetor tela
	
	;atualiza a cabeça no vetor tela com a nova direção
	add r4, r1, r4
	load r5, dir
	storei r4, r5
	loadn r4, #tela		; Aponta r4 para o inicio do vetor tela
	
	moveSnake_case1:	; (case W -> UP)
		loadn r5, #'w'
		cmp r3, r5
		ceq moveSnakeUP
		jeq moveSnake_fim
	
	moveSnake_case2:	; (case S -> DOWN)
		loadn r5, #'s'
		cmp r3, r5
		ceq moveSnakeDOWN
		jeq moveSnake_fim
			
	moveSnake_case3:	; (case A -> LEFT)
		loadn r5, #'a'
		cmp r3, r5
		ceq moveSnakeLEFT
		jeq moveSnake_fim
		
	moveSnake_case4:	; (case D -> RIGHT)
		loadn r5, #'d'
		cmp r3, r5
		ceq moveSnakeRIGHT
		jeq moveSnake_fim			
	
	moveSnake_fim:
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
		
	rts
;---- Fim da funcao moveSnake ----

;---- Move para cima ----
moveSnakeUP:

	; Obs: Do r0 ao r4 vem como parametro da função moveSnake
	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Auxiliar
	push r6				; Auxiliar
	
	;Atualiza a cabeça da cobra
	loadn r5, #40
	sub r1, r1, r5		
	outchar r0, r1		; Printa na tela
	add r4, r1, r4		; Aponta o ponteiro tela para onde ele deve imprimir a cabeça
	loadi r5, r4		; Grava em r5 o que tinha na posição da nova cabeça para saber se é comida
	storei r4, r3		; Grava na memória
	store head, r1		; Atualiza Head
	
	loadn r6, #'+'
	cmp r5, r6
	cne atualizaEnd
	ceq printFood
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao moveSnakeUP ----

;---- Move para baixo ----
moveSnakeDOWN:

	; Obs: Do r0 ao r4 vem como parametro da função moveSnake
	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Auxiliar
	push r6				; Auxiliar
	
	;Atualiza a cabeça da cobra
	loadn r5, #40
	add r1, r1, r5		
	outchar r0, r1		; Printa na tela
	add r4, r1, r4		; Aponta o ponteiro tela para onde ele deve imprimir a cabeça
	loadi r5, r4		; Grava em r5 o que tinha na posição da nova cabeça para saber se é comida
	storei r4, r3		; Grava na memória
	store head, r1		; Atualiza Head
	
	loadn r6, #'+'
	cmp r5, r6
	cne atualizaEnd
	ceq printFood
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao moveSnakeDOWN ----

;---- Move para esquerda ----
moveSnakeLEFT:

	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Auxiliar
	push r6				; Auxiliar
	
	;Atualiza a cabeça da cobra
	dec r1
	outchar r0, r1		; Printa na tela
	add r4, r1, r4		; Aponta o ponteiro tela para onde ele deve imprimir a cabeça
	loadi r5, r4		; Grava em r5 o que tinha na posição da nova cabeça para saber se é comida
	storei r4, r3		; Grava na memória
	store head, r1		; Atualiza Head
	
	loadn r6, #'+'
	cmp r5, r6
	cne atualizaEnd
	ceq printFood
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao moveSnakeLEFT ----

;---- Move para direita ----
moveSnakeRIGHT:

	; Obs: Do r0 ao r4 vem como parametro da função moveSnake
	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Auxiliar
	push r6				; Auxiliar
	
	;Atualiza a cabeça da cobra
	inc r1
	outchar r0, r1		; Printa na tela
	add r4, r1, r4		; Aponta o ponteiro tela para onde ele deve imprimir a cabeça
	loadi r5, r4		; Grava em r5 o que tinha na posição da nova cabeça para saber se é comida
	storei r4, r3		; Grava na memória
	store head, r1		; Atualiza Head
	
	loadn r6, #'+'
	cmp r5, r6
	cne atualizaEnd
	ceq printFood
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao moveSnakeRIGHT ----

;---- Atualizada o final da cobra ----
atualizaEnd:

	; Obs: Do r0 ao r4 ja vem como parametro da função moveSnakeX
	push fr
	push r0 			; Caracter a ser impresso (gomo da cobrinha)
	push r1				; Head - Posição da cabeça 
	push r2				; End  - Posição do fim da cobra
	push r3				; Dir
	push r4				; Ponteiro para tela
	push r5				; Direção que o fim da cobra esta andando
	push r6				; Auxiliar
	
	;Atualiza o fim da cobra na tela e na memória
	loadn r6, #' '
	outchar r6, r2		; Apaga o fim na tela
	loadn r4, #tela		; Reseta o ponteiro tela
	add r4, r2, r4		; Aponta o ponteiro tela para onde ele deve apagar, o fim
	loadi r5, r4		; Guarda a direção do fim da cobra
	storei r4, r6		; Apaga o fim na memória
	
	;Atualiza a variável end
	atualizaEnd_case1:	;(case W -> UP) quando o próximo fim da cobra está acima
		loadn r6, #'w'
		cmp r5, r6
		jne atualizaEnd_case2
		
		loadn r5, #40
		sub r2, r2, r5
		store end, r2
		jmp atualizaEnd_fim
	
	atualizaEnd_case2:
		loadn r6, #'s'
		cmp r5, r6
		jne atualizaEnd_case3
		
		loadn r5, #40
		add r2, r2, r5
		store end, r2
		jmp atualizaEnd_fim	
		
	atualizaEnd_case3:
		loadn r6, #'a'
		cmp r5, r6
		jne atualizaEnd_case4
		
		dec r2
		store end, r2
		jmp atualizaEnd_fim			
		
	atualizaEnd_case4:
		loadn r6, #'d'
		cmp r5, r6
		jne atualizaEnd_fim
		
		inc r2
		store end, r2
		jmp atualizaEnd_fim				
	
	atualizaEnd_fim:
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao atualizaEnd ----


;---- Exibe a comida ----
printFood:
	push fr
	push r0						; Ponteiro para random_pos
	push r1						; Ponteiro para tela
	push r2						; Auxiliar
	push r3						; Auxiliar
	push r4						; Auxiliar
	push r5
	
	loadn r1, #tela				; Torna r1 um ponteiro para tela
	load r2, randomInd			; Será o indice dos vetores random_pos e tela
	dec r2						; só para compensar o inc de inicio do loop
	
	loadn r5, #1064
	printFood_loop:
		inc r2
		mod r2, r2, r5				; Atualiza o indice mod 1064
		
		loadn r0, #random_pos		; Torna r0 um ponteiro para random_pos
		add r0, r0, r2				; aponta r0 para o indice dado por r2
				
		loadi r3, r0				; r3 = MEM[r0], ou seja, r3 está recebendo um número randomico da tabela
		add r3, r3, r1				; r3 = o endereço do que tem na tela da onde seria a posição da comida
		loadi r4, r3				; r4 = MEM[r3], ou seja, r4 esta recebendo o que tem na tela na onde seria a posição da comida
		
		loadn r3, #'w'
		cmp r4, r3
		jeq printFood_loop
		loadn r3, #'s'
		cmp r4, r3
		jeq printFood_loop
		loadn r3, #'a'
		cmp r4, r3
		jeq printFood_loop
		loadn r3, #'d'
		cmp r4, r3
		jeq printFood_loop
	
	store randomInd, r2			; Atualiza o indice
	
	loadn r2, #'+'
	loadi r3, r0				; r3 = MEM[r0]
	add r1, r1, r3				; aponta r1 para onde está a comida
	outchar r2, r3				; printa comida na tela
	storei r1, r2				; printa comida na memória
	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	pop fr
	
	rts
;---- Fim da funcao printFood ----

;---- Chama o game over ----
gameOver:

	loadn r1, #Tela2Linha0
	loadn r2, #512
	call imprimeTela1
	
	halt
;---- Fim da funcao ----