#language: pt
Funcionalidade: Compra de Passagem
    Cenario: compra com sucesso                // cenario simples
        Dado que estou no site Blazedemo
        Quando seleciono a origem como "São Paolo"
        E seleciono o destino como "London"
        E clico no botao "Find Flights"
        Entao verifico o texto "Flights from São Paolo to London:"
        E se a url contem "reserve"
        Quando seleciono o voo "9696" da companhia "Aer Lingus"
        Entao verifico se a url contem "purchase"
        Quando preencho o nome como "Klinsmann"
        E seleciono a bandeira do cartao como "amex"
        E marco a opcao "Remember me"
        E clico no botao "Purchase Flight"
        Entao verifico se a url contem "confirmation"
        E se exibe a mensagem de agradecimento "Thank you for your purchase today!"
        E se contem a informacao "Amount" como "555 USD"

    Cenario: Compra com sucesso DDT              //cenario data driven
        Dado que estou no site Blazedemo
        Quando seleciono a origem como "<origem>"
        E seleciono o destino como "<destino>"
        E clico no botao "Find Flights"
        Entao verifico o texto Flights from "<origem>" to "<destino>"
         E se a url contem "reserve"
        Quando seleciono o voo "<voo>" da companhia "<companhia>"
        Entao verifico se a url contem "purchase"
        Quando preencho o nome como "<nome>"
        E seleciono a bandeira do cartao como "<bandeira>"
        E marco a opcao "Remember me"
        E clico no botao "Purchase Flight"
        Entao verifico se a url contem "confirmation"
        E se exibe a mensagem de agradecimento "Thank you for your purchase today!"
        E se contem a informacao "Amount" como "<preco>"

    Exemplos:
    |  origem   | destino  |  voo | companhia      | nome       |  bandeira         |  preco      | 
    | São Paolo | London   | 9696 | Aer Lingus     | Klinsmann  |  Visa             |  555  USD   |
    | Portland  | Dublin   |  12  | Virgin America | Raphael    |  American Express |  555  USD   |
    | Boston    | New York | 4346 | Lufthansa      | Rafaela    |  Dinner's Club    |  555  USD   |
