Feature:  Passo 3 - Contato para orçamento gratuito

              Description
            Continuar com o preenchimento dos campos necessários para solicitar um orçamento. 
              Ao clicar em 'Enviar' o cliente envia a mensagem solicitando um orçamento.

Citérios de Aceite
     1. Não sei não quis enviar nenhuma mensagem. 😅
     2. Gostaria de saber o valor limite para o campo 'Mensagem' para poder testar melhor 😅

        Scenario: Cadastro passo 3 bem sucedido com dados válidos
            Given que estou na pagina Home do Contato Seguro, no terceiro passo de contato para orçamento gratuito
             When eu seleciono no campo seleção "SComo nos conheceu" com a opção 'Linkedin'
              And eu preencho no campo "Mensagem" com 28 caracteres 'Foi legal fazer esse projeto'
              And clino o botão "Termos de Uso"
             Then quando eu clico em 'Enviar' minha mensagem é enviada com sucesso
              And recebo um pop-up de confirmação de envio

        Scenario: Cadastro passo 3 campo "Mensagem" vázio - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, no terceiro passo de contato para orçamento gratuito
             When eu seleciono no campo seleção "SComo nos conheceu" com a opção 'Linkedin'
              And eu não preencho no campo "Mensagem" vázio ''
              And clino o botão "Termos de Uso"
             Then quando eu clico em 'Enviar' minha mensagem não é enviada
              And recebo a menssagem 'Preencha este campo'

