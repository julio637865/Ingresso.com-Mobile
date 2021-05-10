class  Home

    def botao_destaques
        find_element(id:"com.ingresso.cinemas:id/largeLabel")    #botão destque 
    end

    def botao_filmes 
        find_element(id: "com.ingresso.cinemas:id/tab_movie").click
    end
    
    def botao_cinemas
        find_element(id: "com.ingresso.cinemas:id/tab_theater").click
    end

    def botao_minha_conta
        find_element(id: "com.ingresso.cinemas:id/tab_account").click
    end


end