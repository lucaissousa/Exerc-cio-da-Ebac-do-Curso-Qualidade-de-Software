#language: pt

#com apenas este cenário eu cubro os dois critérios de aceitação
#outras fonts de como usar tabelas em gherkin
#https://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html#tabelas
Funcionalidade: [US-0002] – Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que os usuários estão tentando realizar login na plataforma
            | nome  | email               | senha       | mensagem                          |
            | João  | joão@ebac.com.br    | 123456      | Usuário <nome> logado com sucesso |
            | Maria | maria@ebac.com.br   | 321654      | Usuário <nome> logado com sucesso |
            | Júlio | julio@eebacc.com.br | sdfsdfsdfsd | Usuário ou senha inválidos        |

    Cenário: Login de usuário com redirecionamento para a tela de checkout
    Quando o usuário informar o email <email> e senha <senha>
    Então o usuário <nome> deve ser redirecionado para a tela de checkout
    E a mensagem <mensagem> deve ser exibida na tela