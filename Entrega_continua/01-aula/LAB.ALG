Algoritmo "Lab1 - Pesquisa de Vestibular"
//Nome:F�bio Flor�ncio de Mendon�a

Var
   resp,respFinal:caracter
   alt:vetor [0..3] de caracter
   questoes:vetor[0..3] de inteiro
   gab:vetor[0..3] de inteiro
   i,cont,totPontos:inteiro
   valida,validaSaida:logico

PROCEDIMENTO respostaInvalida()
inicio
   limpatela
   escreval("Resposta inv�lida! Digite novamente")
FIMPROCEDIMENTO

Inicio
   alt[0] <- "A"
	alt[1] <- "B"
	alt[2] <- "C"
	alt[3] <- "D"
   repita
      limpatela
      cont <- 10
      totPontos <- 0
      para i de 0 ate 3 faca
         questoes[i] <- 0
         gab[i] <- cont *(i+1)
      fimpara
      repita
         escreval("1 - Voc� estudou quanto tempo para entrar na FATEC?")
         escreval("[A] - N�o estudei ","[B] - At� 6 meses ","[C] - At� 8 meses ","[D] - Mais de 12 meses")
         leia(resp)
         se((resp = alt[0])ou(resp = alt[1])ou(resp = alt[2])ou(resp = alt[3]))entao
            valida <- verdadeiro
            escolha(resp)
            caso "a","A"
               questoes[0] <- questoes[0] + 1
            caso "b"
               questoes[1] <- questoes[1] + 1
            caso "c"
               questoes[2] <- questoes[2] + 1
            outrocaso
               questoes[3] <- questoes[3] + 1
            fimescolha
         senao
            respostaInvalida()
         fimse
      ate(valida)

      valida <- falso

       repita
         escreval("2 - Qual � a forma que voc� utiliza para estudar para o vestibular ?")
         escreval("[A] - Nenhum m�todo ","[B] - Apostilas ","[C] - Livros ","[D] - Curso preparat�rio ")
         leia(resp)
         se((resp = alt[0])ou(resp = alt[1])ou(resp = alt[2])ou(resp = alt[3]))entao
            valida <- verdadeiro
            escolha(resp)
            caso "A"
               questoes[0] <- questoes[0] + 1
            caso "B"
               questoes[1] <- questoes[1] + 1
            caso "C"
               questoes[2] <- questoes[2] + 1
            outrocaso
               questoes[3] <- questoes[3] + 1
            fimescolha
         senao
            respostaInvalida()
         fimse
      ate(valida)

      valida <- falso

      repita
         escreval("3 - Quantos dias voc� estudou durante a semana?")
         escreval("[A] - Nenhum dia ","[B] - At� 2 dias ","[C] - At� 5 dias ","[D] - Todos os dias")
         leia(resp)
         se((resp = alt[0])ou(resp = alt[1])ou(resp = alt[2])ou(resp = alt[3]))entao
            valida <- verdadeiro
            escolha(resp)
            caso "A"
               questoes[0] <- questoes[0] + 1
            caso "B"
               questoes[1] <- questoes[1] + 1
            caso "C"
               questoes[2] <- questoes[2] + 1
            outrocaso
               questoes[3] <- questoes[3] + 1
            fimescolha
         senao
            respostaInvalida()
         fimse
      ate(valida)
      
      valida <- falso
      
      repita
         escreval("4 - Quantos horas voc� estuda durante a semana?")
         escreval("[A] - At� 1 hora ","[B] - At� 3 horas ","[C] - At� 6 horas ","[D] - Mais 12 horas")
         leia(resp)
         se((resp = alt[0])ou(resp = alt[1])ou(resp = alt[2])ou(resp = alt[3]))entao
            valida <- verdadeiro
            escolha(resp)
            caso "A"
               questoes[0] <- questoes[0] + 1
            caso "B"
               questoes[1] <- questoes[1] + 1
            caso "C"
               questoes[2] <- questoes[2] + 1
            outrocaso
               questoes[3] <- questoes[3] + 1
            fimescolha
         senao
            respostaInvalida()
         fimse
      ate(valida)
      
      valida <- falso
      
      repita
         escreval("5 - Marque o n�vel de dificuldade da prova?")
         escreval("[A] - F�cil ","[B] - Intermedi�rio ","[C] - Dif�cil ","[D] - Muito dif�cil")
         leia(resp)
         se((resp = alt[0])ou(resp = alt[1])ou(resp = alt[2])ou(resp = alt[3]))entao
            valida <- verdadeiro
            escolha(resp)
            caso "A"
               questoes[0] <- questoes[0] + 1
            caso "B"
               questoes[1] <- questoes[1] + 1
            caso "C"
               questoes[2] <- questoes[2] + 1
            outrocaso
               questoes[3] <- questoes[3] + 1
            fimescolha
         senao
            respostaInvalida()
         fimse
      ate(valida)
      
      valida <- falso
      
      escreval("----------------------------------------------")
      para i de 0 ate 3 faca
         totPontos <- totPontos + (gab[i] * questoes[i])
         escolha(questoes[i])
         caso 0
            escreval("Alternativa ",alt[i]," (Vale ",gab[i], " pontos) - nenhuma vez")
         caso 1
            escreval("Alternativa ",alt[i]," (Vale ",gab[i]," pontos) - ",questoes[i]," vez")
         caso 2
            escreval("Alternativa ",alt[i]," (Vale ",gab[i]," pontos) - ",questoes[i]," vezes")
         outrocaso
            escreval("Alternativa ",alt[i]," (Vale ",gab[i]," pontos) - ",questoes[i]," vezes")
         fimescolha
      fimpara
      escreval("----------------------------------------------")
      escreval("Pontua��o:",totPontos," pontos.")
      se (totPontos = 50)entao
         escreval("Voc� n�o estudou tanto assim !!!")
      senao
         se ((totPontos > 50) e (totPontos <= 160))entao
            escreval("Voc� se prepararou para o vestibular!")
         senao
            escreval("Voc� estudou muito para o vestibular!")
         fimse
      fimse
      escreval("----------------------------------------------")
      repita
			escreva("Deseja fazer o teste novamente? Digite [S/N]")
         leia(respFinal)
			valida <- ((respFinal <> "S") e (respFinal <> "N"))
			se(valida)entao
			   validaSaida <- falso
			   respostaInvalida()
			senao
            valida <- nao (respFinal = "s")
				validaSaida <- verdadeiro
			fimse
		ate(validaSaida)
   ate(valida)
Fimalgoritmo





