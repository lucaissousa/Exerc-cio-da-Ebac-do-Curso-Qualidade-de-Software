#language: pt

Funcionalidade: [US-0003] Tela de cadastro - checkout
    Como cliente EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra


    Contexto:
        Dado que estou na tela de checkout


    Esquema do Cenario: Preenchimento dos dados pessoais para faturamento
    Quando o usuário preencher os dados pessoais com <nome> e <sobrenome>
    E preencher os campos de endereço com <país>, <endereço>, <cidade> e <CEP>
    E preencher os campos para contato com <telefone> e <e-mail>
    Então ao clicar no botão Finalizar Compra o sistema deve exibir a mensagem <Pedido realizado com sucesso>
    Exemplos:
            | nome | sobrenome | pais   | endereco | cidade    | CEP       | telefone         | email            | mensagem                                           |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | Detalhes para faturamento atualizados com sucesso! |
            |      | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo Nome é obrigatório!       |
            | João |           | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo Sobrenome é obrigatório!  |
            | João | Silva     |        | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo País é obrigatório!       |
            | João | Silva     | Brasil |          |           | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo Endereço é obrigatório!   |
            | João | Silva     | Brasil | Rua X    |           | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo Cidade é obrigatório!     |
            | João | Silva     | Brasil | Rua X    | São Paulo |           | (11) 99999-9999  | joao@ebac.com.br | O preenchimento do campo CEP é obrigatório!        |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 |                  | joao@ebac.com.br | O preenchimento do campo Telefone é obrigatório!   |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  |                  | O preenchimento do campo E-mail é obrigatório!     |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao2ebac.com.br | E-mail informado inválido!                         |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | @ebac.com.br     | E-mail informado inválido!                         |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac        | E-mail informado inválido!                         |
            | João | Silva     | Brasil | Rua X    | São Paulo | aaaaa-aaa | (11) 99999-9999  | joao@ebac.com.br | Campo CEP deve conter apenas números!              |
            | João | Silva     | Brasil | Rua X    | São Paulo | 01234-567 | telefone testeee | joao@ebac.com.br | Campo telefone deve conter apenas números!         |
            | João | Silva     | xa34   | Rua X    | São Paulo | 01234-567 | (11) 99999-9999  | joao@ebac.com.br | País informado inválido ou não selecionado!        |