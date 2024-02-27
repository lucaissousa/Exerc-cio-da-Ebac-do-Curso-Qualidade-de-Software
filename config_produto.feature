#language: pt

Funcionalidade: [US-0001]Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração do produto
    Esquema do Cenário: Configuração do produco de a cordo com meu gosto e tamanho
    Quando clico no botão selecionar <opcao>
    Então o sistema deve manter selecionado <opcao> do produto
    E com o botão comprar deve ficar destacado
        Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade_produto |




    Esquema do Cenário: Seleção de produtos com tamanho e cor diferentes
    Dado que eu selecione uma blusa da cor <cor> com <tamanho> e <quantidade>
    Então o sistema deve acescentar o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 1          |
            | vermelho | M       | 1          |
            | amarelo  | G       | 2          |
            | verde    | GG      | 3          |

    Cenário: limpar configuração do produto selecionado
    Dado que se clique no botão limpar configuração
    Então o sistema deve limpar a configuração do produto
