Dado('que eu acesso o app') do
   @botões_na_home = Home.new
end
Quando('eu clico no botões do roda pé') do  
end
Então('eu sou direcionado a tela {string} {string} {string} e {string}') do |botão1, botao2, botao3, botao4|

    @botões_na_home.botao_destaques
    proximas_sessões = find_element(id:"com.ingresso.cinemas:id/textview_next_sessions")
    expect(proximas_sessões.text).to eql botão1
    
    @botões_na_home.botao_filmes
    filmes = find_element(id: "com.ingresso.cinemas:id/toolbar_title")
    expect(filmes.text).to eql botao2
    
    @botões_na_home.botao_cinemas
    cinemas = find_element(id: 'com.ingresso.cinemas:id/toolbar_title') 
    expect(cinemas.text).to eql botao3

    @botões_na_home.botao_minha_conta
    minha_conta = find_element(xpath: "//android.widget.TextView[@text='Minha Conta']") 
    expect(minha_conta.text).to eql botao4
end