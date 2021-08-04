#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página do produto

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu efetuar uma compra de um produto
Então devo configurar o tamanho, cor e quantidade obrigatóriamente

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu selecionar a quantidade de peças
Então o contador deve limitar em no máximo 10 peças 

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu limpar as configurações
Então as opções de tamanho, cor e quantidade devem voltar ao estado original


/* O 2º critório gera uma certa ambiguidade: A venda pode ser feita com até 10 produto, algo que deveria ser validado na tela de checkout.
 Ou o produto pode ser adicionado ao carrinho com no máximo 10 peças.*/