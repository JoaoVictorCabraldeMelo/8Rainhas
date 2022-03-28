# 8 Queens in Prolog

Esse é um quebra cabeça de colocar 8 rainhas em um tabuleiro de xadrez sem que nenhuma possa atacar a outra.

This is a program done to solve the puzzle of putting 8 queens in a chessboard without any of them attacking each other.


[![Tabuleiro](https://www.researchgate.net/profile/Ellips-Masehian/publication/278681097/figure/fig1/AS:391891729305602@1470445677335/a-A-solution-to-the-non-attacking-8-queens-problem-b-An-optimal-solution-to-the.png)](https://www.researchgate.net/profile/Ellips-Masehian/publication/278681097/figure/fig1/AS:391891729305602@1470445677335/a-A-solution-to-the-non-attacking-8-queens-problem-b-An-optimal-solution-to-the.png)

Esse exercício foi feito como um forma de treino para o entendimento do paradigma lógico de computação e neste programa ainda falta a geração automática de lista para teste.

This excercise was done with the purpose of training the skills of solving problems in prolog in this case specific for swi-prolog. This program is missing the generate part for listing all the results that can be done in the chessboard.

Se você quiser ficar testando sua habilidades utilize este site como exemplo:

- <https://www.brainmetrix.com/8-queens/>

Nesta solução foi utilizado apenas uma lista como representação de um tabuleiro onde cada índice represente uma coluna já que hás únicas soluções possíveis são que cada rainha possui sua propria coluna tendo que apenas verificar se a rainha está em sua linha e diagonal. Para saber se a rainha está na diagonal se calcula a distância entre uma rainha e outra e verifica se a distância é igual a quantidade de diagonal percorrida.

## Referências
  - <https://www.swi-prolog.org/pldoc/man?section=clpfd-n-queens>
  - <https://www.youtube.com/watch?v=l_tbL9RjFdo>
