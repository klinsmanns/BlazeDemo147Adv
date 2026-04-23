export default class PurchasePage{

    constructor(page){
        this.page = page
        this.url = '/purhcase.\.php'
        this.nome = '#inputName'
        this.bandeira = '#cardType'
        this.remember = '#rememberMe'
        this.btn_purchase_flight ='.btn-primary'
    }

    // Como neste mapeamento está sendo seguido o padrão, não haverá verificação de URL

    async preencher_nome(nome){
        await this.page.locator(this.nome).fill(nome)
    }

    async selecionar_bandeira(bandeira){
        await this.page.locator(this.bandeira).selectOption(bandeira)
    }

    async marcar_lembrete(){
        await this.page.locator(this.bandeira).check()
    }

    async comprar_passagem(){
        await this.page.locator(this.btn_purchase_flight).click()
    }
}