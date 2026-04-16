import { error } from "node:console"

export default class HomePage {
    constructor (page){
        this.page = page     // o objeto do playwright interno recebe o playwright externo
        this.titulo = 'h1'
        this.origem = '[name="fromPort"]'
        this.destino = '[name="toPort"]'
        this.btnFindFlights = '.btn-primary'
    }

    // Mapear as acoes
    async selecionar_origem(cidade_origem){
        await this.page.locator(this.origem).selectionOption(cidade_origem)
    }
    
    async selecionar_origem(cidade_estino){
        await this.page.locator(this.destino).selectionOption(cidade_destino)
    }
    async clicar_find_flights(){
        await this.page.locator(this.btnFindFlights).click()   
    }

    // Maneira alternativa fora dos livros - verificação dentro do mapeamento
    async verificar_mensagem_boas_vindas(){
        // espera o seletor indicado carregar: texto que serve de titulo da pagina
        await this.page.waitForSelector(this.titulo)
        // extrair o texto que estava no elemento e guardar na constante titulo_pagina
        const titulo_pagina = await this.page.textContent(this.titulo)
        
        if(!titulo_pagina.includes('Welcome to the Simple Travel Agency!')){
            throw new Error('Titulo na home ausente ou diferente do esperado')
        }
    }
}