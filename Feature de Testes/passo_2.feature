Feature: Passo 2 - Contato para orçamento gratuito

              Description
            Continuar com o preenchimento dos campos necessários para solicitar um orçamento. 
              Ao clicar em 'Próximo' o cliente passa para o terceiro passo do contato.

Citérios de Aceite
     1. Campos "Empresa" obrigatório 


        Scenario: Cadastro passo 2 bem sucedido com dados válidos
            Given que estou na pagina Home do Contato Seguro, no segundo passo de contato para orçamento gratuito
             When eu seleciono no campo seleção "Seu cargo" com o cargo 'Outro'
              And eu seleciono no campo seleção "Sua área" a área 'Tecnologia da Informação'
              And eu preencho no campo "Empresa" o nome 'Bernardes_Teste'
             Then quando eu clico em 'Proximo' sou levado para o passo 3 do contato
             
        Scenario: Cadastro passo 2 campo 'Seu Cargo' vazio
            Given que estou na pagina Home do Contato Seguro, no segundo passo de contato para orçamento gratuito
             When eu deixo vázio o campo seleção "Seu cargo"
              And eu seleciono no campo seleção "Sua área" a área 'Tecnologia da Informação'
              And eu preencho no campo "Empresa" o nome 'Bernardes_Teste'
             Then quando eu clico em 'Proximo' sou levado para o passo 3 do contato

        Scenario: Cadastro passo 2 campo 'Sua área' vazio
            Given que estou na pagina Home do Contato Seguro, no segundo passo de contato para orçamento gratuito
             When eu seleciono no campo seleção "Seu cargo" com o cargo 'Gerente'
              And eu deixo vázio o campo seleção "Sua área"
              And eu preencho no campo "Empresa" o nome 'Bernardes_Teste'
             Then quando eu clico em 'Proximo' sou levado para o passo 3 do contato

        Scenario: Cadastro passo 2 campo 'Empresa' vazio - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, no segundo passo de contato para orçamento gratuito
             When eu seleciono no campo seleção "Seu cargo" com o cargo 'Gerente'
              And eu seleciono no campo seleção "Sua área" a área 'Tecnologia da Informação'
              And eu não preencho o campo "Empresa" vázio ''
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'