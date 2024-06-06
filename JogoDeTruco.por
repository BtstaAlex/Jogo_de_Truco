programa {
inclua biblioteca Util --> u

//   ####    #####   ##   ##  #######   ####      ####   ##   ##  ######     ##       ####    #####   #######   #####
//  ##  ##  ##   ##  ###  ##   ##   #    ##      ##  ##  ##   ##   ##  ##   ####     ##  ##  ##   ##   ##   #  ##   ##
// ##       ##   ##  #### ##   ## #      ##     ##       ##   ##   ##  ##  ##  ##   ##       ##   ##   ## #    #
// ##       ##   ##  ## ####   ####      ##     ##       ##   ##   #####   ##  ##   ##       ##   ##   ####     #####
// ##       ##   ##  ##  ###   ## #      ##     ##  ###  ##   ##   ## ##   ######   ##       ##   ##   ## #         ##
//  ##  ##  ##   ##  ##   ##   ##        ##      ##  ##  ##   ##   ##  ##  ##  ##    ##  ##  ##   ##   ##   #  ##   ##
//   ####    #####   ##   ##  ####      ####      #####   #####   #### ##  ##  ##     ####    #####   #######   #####


//  ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######

//  ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######





inteiro cartas_por_jogador = 3 // Número de cartas por jogador
inteiro rodadas = 48 // Número de rodadas
inteiro numero_de_cartas = 33 // Número de cartas do Baralho
cadeia cartas[numero_de_cartas] = {
"1 de Espada  // 40",
"1 de Paus    // 39",
"7 de Espada  // 38",
"3 de Paus    // 37",
"3 de Copa    // 37",
"2 de Espada  // 36",
"2 de Paus    // 36",
"2 de Copa    // 36",
"2 de Ouro    // 36",
"1 de Copa    // 35",
"1 de Ouro    // 35",
"13 de Paus   // 34",
"13 de Copa   // 34",
"13 de Espada // 34",
"13 de Ouro   // 34",
"12 de Paus   // 33",
"12 de Copa   // 33",
"12 de Espada // 33",
"12 de Ouro   // 33",
"11 de Paus   // 32",
"11 de Copa   // 32",
"11 de Espada // 32",
"11 de Ouro   // 32",
"7 de Paus    // 31",
"7 de Copa    // 31",
"6 de Paus    // 30",
"6 de Copa    // 30",
"6 de Espada  // 30",
"6 de Ouro    // 30",
"5 de Paus    // 29",
"5 de Copa    // 29",
"5 de Espada  // 29",
"5 de Ouro    // 29",
"4 de Paus    // 28"
 } // Todas as cartas do Baralho



//  ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######

//  ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######   ######






cadeia cartas_sorteadas[100]
inteiro aux_cartas_sorteadas = 0
inteiro cartas_usadas = 0
inteiro cartas_jogadores = cartas_por_jogador * 2
cadeia cartas_players[cartas_jogadores]
cadeia jogador1[cartas_por_jogador] 
cadeia jogador2[cartas_por_jogador] 
cadeia escolha_jogador1  
cadeia escolha_jogador2 
inteiro comparar1
inteiro comparar2
inteiro pontuacao_1 = 0
inteiro pontuacao_2 = 0
inteiro rodada_f = 0
inteiro pontuacao_total = 0
inteiro pontos_player_1 = 0
inteiro pontos_player_2 = 0


  funcao inicio() {
    inteiro opcao_menu
    //Menu
    faca{
      escreva("Bem vindo ao jogo. \n")
      escreva("1. iniciar \n")
      escreva("0. Sair \n")
      leia(opcao_menu)
        se(opcao_menu == 1 ){
          menu_game()
          ganhador()
          u.aguarde(2000)
        }
    }enquanto(opcao_menu != 0)
      escreva("Obrigado por participar do jogo.")
  }

  funcao menu_game(){
    escreva("Muito bem, começaremos o jogo! \n")
    escreva("Regras\nCada jogador recebe três cartas por rodada.\nO jogo é disputado em três rodadas, onde os jogadores tentam vencer jogando a carta demaior valor. O jogador que somar 24 pontos vence o jogo.\n")
    escreva("\n")
    u.aguarde(5000)
    limpa()
    rodada_f = 0
          enquanto(rodada_f < rodadas e pontos_player_1 < 24 e pontos_player_2 < 24){ 
          pontuacao_1 = 0
          pontuacao_2 = 0  
          distribuir_cartas()
          escreva("Cartas Distribuidas \n")
          escreva("\n") 
          decidiar_cartas()
          inteiro rodadas_mao = 0
            enquanto(rodadas_mao < cartas_por_jogador) {

              escreva("                                 Pontos Rodadas                  rodada: ", rodada_f + 1 ,"\n")
              escreva("                                 Pontos P1 = ", pontos_player_1, "\n")   
              escreva("                                 Pontos P2 = ", pontos_player_2, "\n")
              escreva("                                 Pontos\n")
              escreva("                                 Pontos P1 = ", pontuacao_1, " \n")
              escreva("                                 Pontos P2 = ", pontuacao_2, "\n")  
              escreva("                              .-==-.         \n")                
              escreva("   ..........................=@%**#%%#+-.      \n")              
              escreva("=%%############################%%*===+*#%%#+-.     \n")          
              escreva("@@-          Player1           -@@========+*#%%#+-.    \n")      
              escreva("@@-                            -@@=============+*#%%#+-.  \n")   
              escreva("@@-                            -@@==================+*#%%#+. \n")
              escreva("@@-                            -@@=======================#@% \n")
              escreva("@@-    1. ",jogador1[0],"   -@@======================#@#. \n")
              escreva("@@-                            -@@====================*@%-   \n")
              escreva("@@-    2. ",jogador1[1],"   -@@==================+%@+     \n")
              escreva("@@-                            -@@=================#@*.   \n")   
              escreva("@@-    3. ",jogador1[2],"   -@@===============*@%-    \n") 
              escreva("@@-                            -@@=============+%@+     \n")   
              escreva("@@-                            -@@============#@*.     \n")     
              escreva("@@-                            -@@==========*@%-     \n")        
              escreva("@@-                            -@@========+%@=      \n")       
              escreva("@@-                            -@@=======%@*.      \n")        
              escreva("@@-                            -@@=====*@%-       \n")          
              escreva("=#%############################%%*===+%@=       \n")            
              escreva("                           .:-+#@%#*%@*.       \n")             
              escreva("                                 :-=-.         \n")   
              escreva("\n")         
              escreva("Escolha o numero da carta que deseja jogar\n")
              escreva("\n")
              leia(escolha_jogador1)
                enquanto(jogador1[escolha_jogador1 - 1] == "                  "){
                  escreva("Escolha Outra! \n")
                  leia(escolha_jogador1)
                }
                limpa()

              escreva("                                 Pontos Rodadas                  rodada: ", rodada_f + 1 ,"\n")
              escreva("                                 Pontos P1 = ", pontos_player_1, "\n")   
              escreva("                                 Pontos P2 = ", pontos_player_2, "\n")
              escreva("                                 Pontos\n")
              escreva("                                 Pontos P1 = ", pontuacao_1, " \n")
              escreva("                                 Pontos P2 = ", pontuacao_2, "\n")      
              escreva("                              .-==-.         \n")                
              escreva("   ..........................=@%**#%%#+-.      \n")              
              escreva("=%%############################%%*===+*#%%#+-.     \n")          
              escreva("@@-          Player2           -@@========+*#%%#+-.    \n")      
              escreva("@@-                            -@@=============+*#%%#+-.  \n")   
              escreva("@@-                            -@@==================+*#%%#+. \n")
              escreva("@@-                            -@@=======================#@% \n")
              escreva("@@-    1. ",jogador2[0],"   -@@======================#@#. \n")
              escreva("@@-                            -@@====================*@%-   \n")
              escreva("@@-    2. ",jogador2[1],"   -@@==================+%@+     \n")
              escreva("@@-                            -@@=================#@*.   \n")   
              escreva("@@-    3. ",jogador2[2],"   -@@===============*@%-    \n") 
              escreva("@@-                            -@@=============+%@+     \n")   
              escreva("@@-                            -@@============#@*.     \n")     
              escreva("@@-                            -@@==========*@%-     \n")        
              escreva("@@-                            -@@========+%@=      \n")       
              escreva("@@-                            -@@=======%@*.      \n")        
              escreva("@@-                            -@@=====*@%-       \n")          
              escreva("=#%############################%%*===+%@=       \n")            
              escreva("                           .:-+#@%#*%@*.       \n")             
              escreva("                                 :-=-.         \n")
              escreva("\n")
              escreva("Escolha o numero da carta que deseja jogar\n")          
              escreva("\n") 
              leia(escolha_jogador2)

                enquanto(jogador2[escolha_jogador2 - 1] == "                  "){
                  escreva("Escolha Outra! \n")
                  leia(escolha_jogador2)
                }
                limpa()
                comparar_cartas()
                ganhador_da_mao()
                u.aguarde(2000)
                limpa()
                rodadas_mao++
            }
          ganhador_da_rodada()
          rodada_f++
    } 
  }

  funcao distribuir_cartas() {
    enquanto(cartas_usadas < cartas_jogadores) {
      inteiro sorteio = u.sorteia(1, numero_de_cartas)
      se(verificar_cartas_sorteadas(cartas[sorteio]) == falso){
        cartas_players[cartas_usadas] = cartas[sorteio]
        cartas_sorteadas[aux_cartas_sorteadas] = cartas[sorteio]
        cartas_usadas++
        aux_cartas_sorteadas++
      }
    }
  }

  funcao logico verificar_cartas_sorteadas(cadeia cartas) {
    para(inteiro i = 0; i < aux_cartas_sorteadas; i++){
      se(cartas == cartas_players[i]){
        retorne verdadeiro
      }
    }
  retorne falso
  }

  funcao decidiar_cartas() {
    escreva("\n")
    para (inteiro i = 0; i < cartas_por_jogador; i++){
      jogador1[i] = cartas_players[i]
    }
    para (inteiro i = 0; i < cartas_por_jogador; i++){
      jogador2[i] = cartas_players[i + 3]
    }
  }
  
  funcao comparar_cartas() {  
    para(inteiro i = 0; i < numero_de_cartas; i++){
      se(jogador1[escolha_jogador1 - 1] == cartas[i]){
          comparar1 = i 
          jogador1[escolha_jogador1 - 1] = "                  "
      }
    }
    para(inteiro i = 0; i < numero_de_cartas; i++){
      se(jogador2[escolha_jogador2 - 1] == cartas[i]){
        comparar2 = i 
        jogador2[escolha_jogador2 - 1] = "                  "
      }
    }  
  }

  funcao ganhador_da_mao(){
    se (comparar1 < comparar2 ){
      escreva("player 1 ganhou!\n")
      pontuacao_1++
    } senao {
      escreva("player 2 ganhou!\n")
      pontuacao_2++
    }
    comparar1 = 0
    comparar2 = 0

  }

  funcao ganhador_da_rodada(){
    se (pontuacao_1 > pontuacao_2){
      escreva("player 1 foi o vencedor da rodada!\n")
      pontos_player_1++
      u.aguarde(2000)
      limpa()      
    } senao {
      escreva("player 2 foi o vencedor da rodada!\n")
      pontos_player_2++   
      u.aguarde(2000)
      limpa()
    }
    }
  funcao ganhador(){
    se(pontos_player_1 > pontos_player_2){
    
    escreva("+++++++++++++++++++++++++++++++\n")
    escreva("+          VENCEDOR           +\n")
    escreva("+                             +\n")
    escreva("+          PLAYER 1           +\n")
    escreva("+                             +\n")
    escreva("+                             +\n")
    escreva("+++++++++++++++++++++++++++++++\n")

    }senao {
    escreva("+++++++++++++++++++++++++++++++\n")
    escreva("+          VENCEDOR           +\n")
    escreva("+                             +\n")
    escreva("+          PLAYER 2           +\n")
    escreva("+                             +\n")
    escreva("+                             +\n")
    escreva("+++++++++++++++++++++++++++++++\n")
    }
  
  }
}

