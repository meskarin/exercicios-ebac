            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que esteja na tela do formulário de checkout

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher os campos
            Então os campos obrigatórios marcados com asterisco devem estar preenchidos

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu preencher o campo com <email invalido>
            Então deve aparecer a mensagem de erro : "Preencha o campo e-mail com um endereço válido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu deixar alguns campos obrigatório sem preenchimento
            E Finalizar Compra
            Então deve aparecer a mensagem de alerta : "Preencha os dados obrigatórios"

            Exemplos:
            | email invalido                  |
            | rafael.ide@@@outlook.com        |
            | rafael.ide@outlook.com.de.br.rj |
            | !##@outlook.com                 |
