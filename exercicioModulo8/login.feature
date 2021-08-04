            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login do site EBAC-Shop

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para a tela de checkout

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o <usuario>
            E a senha "errada@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Examplos:
            | usuario                   | senha      | 
            | lazaro.ramos@outlook.com  | padrão@123 |
            | suzane.vonhis@hotmail.com | padrão@123 |
            | nardo@msn.com             | padrão@123 |
            | eliza.matsu@outlook.com   | padrão@123 |