Algoritmo "Pi Trade Match"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima 
// Descrição   : Programa com duas funcionalidades. Uma de armazenamento de informações e a outra para pesquisa de produtos com base no preço
// Autor(a)    : Enzo Paleari Diniz, Eduardo Cardoso Agostinetti, Pedro Henrique Leite de Souza, Luís Felipe Zuin Zatoni;
// Data atual  : 14/06/2022
tipo
produtos = registro
         nome: caractere
         precoT: real
fimregistro
busca = registro
      nomeB: caractere
      precoB: real

fimregistro

Var
// Seção de Declarações das variáveis 
indice, decidir, c1, c2, bd, preco:inteiro
pn: caractere
prT, bp:real

P : vetor[0..9] de produtos
b : vetor[0..9] de busca
ip :vetor[0..9] de inteiro
ic: vetor[0..9] de inteiro
ir: vetor[0..9] de inteiro

procedimento dados_produtos(pn : caractere;  prT : real)
  var

  inicio
    p.nome[indice] <- pn
    p.precoT[indice] <- prT
    indice <- indice + 1
fimprocedimento

procedimento dados_busca(bp : real)
  var

  inicio
    b.precoB[indice] <- bp
    indice <- indice + 1
fimprocedimento


procedimento buscar(bp : real)
var
   ipcount, ind: inteiro
   achou: logico
   precomais, precomenos, in: real
inicio

    para ind de 0 ate 9 faca

         in <- p.precoT[ind]
         precomais <- in + ((in/ 100) * 15)
         precomenos <- in - ((in/ 100) * 15)

         se (bp >= precomenos) e (bp <= precomais) entao
            achou <- verdadeiro
            ip[ipcount] <- ind
            
            b.nomeB[ipcount] <- p.nome[ind]
            b.precoB[ipcount] <- p.precoT[ind]
            ipcount <- ipcount + 1
         fimse
    fimpara

    se (achou = falso) entao
       escreval("Não encontramos nenhum produto dentro de seus parametros")
    senao
         escreval("")
         escreval("Muito bem, Encontramos ", ipcount, " Produtos de acordo com o preço base.")
         escreval("Eles são:")
         escreval("")
         para ind de 0 ate 9 faca
              escreval("Nome - ", b.nomeB[ind], " preço - ", b.precoB[ind])
         fimpara
    fimse
  fimprocedimento





Inicio
escreval("Bem Vindo ao Trade Match! gostaria de: ")
enquanto (decidir <> 9) faca
escreval("1 - Informar dados do produto!(produto ", c1, " ) ")
escreval ("2 - Buscar outros produtos (busca ", c2, " ) ")

escreval("9 - Sair")
leia(decidir)
escolha(decidir)
                caso(1)
                       c1 <- c1 + 1
                       escreva("Nome - ")
                       leia(pn)
                       escreva("Preço base - ")
                       leia(prT)
                       dados_produtos(pn,  prT)
                caso(2)
                       c2 <- c2 + 1
                       escreva("Preço base - ")
                       leia(bp)
                       buscar(bp)
fimescolha

fimenquanto

Fimalgoritmo
