Feature: Passo 1

              Description
        Na pagina Home do Site Contato Seguro 'https://canaldaetica.com.br/' o usuário quer Solicitar um orçamento gratuito da empresa.
        O usuário preenche os campos necessário e ao clicar em 'Próximo' o cliente passa para o segundo passo do contato.

     Citérios de Aceite
     1. Todos os campos devem ser preenchidos 
     2. E-mail deve ser um email válido 
     3. Telefone deve ser um telefone válido

        Scenario: Cadastro passo 1 bem sucedido com dados válidos
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu preencho o campo "Nome" com 'Luiz Fernando'
              And eu preencho o campo "Email" com  'borgesluizf@gmail.com'
              And eu preencho o campo "Telefone" com  '(11) 98765-4321'
             Then quando eu clico em 'Proximo' sou levado para o passo 2 do contato

        Scenario Cadastro passo 1 campo 'Nome' vazio - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu não preencho o campo "Nome" vázio ''
              And eu preencho o campo "Email" com  'teste@gmail.com'
              And eu preencho o campo "Telefone" com  '(11) 98765-4321'
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'

        Scenario Cadastro passo 1 campo 'Email' vazio - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu preencho o campo "Nome" com 'Luiz Ferndo'
              And eu não preencho o campo "Email" vázio ''
              And eu preencho o campo "Telefone" com  '(11) 98765-4321'
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'
             
        Scenario Cadastro passo 1 campo 'Email' incorreto - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu preencho o campo "Nome" com 'Luiz Ferndo'
              And eu preencho o campo "Email" com  'teste2contatoseguro.com'
              And eu preencho o campo "Telefone" com  '(11) 98765-4321'
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'
             
        Scenario Cadastro passo 1 campo 'Telefone' vazio - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu preencho o campo "Nome" com 'Luiz Ferndo'
              And eu preencho o campo "Email" com  'teste@teste.com'
              And eu não preencho o campo "Telefone" vázio  ''
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'

        Scenario Cadastro passo 1 campo 'Telefone' incorreto - Teste Negativo
            Given que estou na pagina Home do Contato Seguro, devo avistar a sessão Solicite um orçamento gratuito
             When eu preencho o campo "Nome" com 'Luiz Ferndo'
              And eu preencho o campo "Email" com  'teste@teste.com'
              And eu preencho o campo "Telefone" com  '(11) 11111111111'
             Then quando eu clico em 'Proximo' recebo a menssagem 'Preencha este campo'


