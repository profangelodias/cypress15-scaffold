#language: pt

Funcionalidade: Logins válidos e inválidos
    Eu, como usuário do sistema,
    Quero testar diferentes cenários de login,
    Para garantir que o sistema autentique corretamente os usuário.

    Contexto: Estar na página de login do saucedemo
        Dado que eu estou na página de login

    Cenário: Login válido com usuário padrão
        Quando eu digito o usuário padrão e a senha correta
        E clico no botão Login
        Então eu devo ser redirecionado para a página de Produtos

    Cenário: Usuário inválido - senha qualquer
        Quando eu digito um usuário "invalid_user"
        E digito uma senha "any_password"
        E clico no botão Login
        Então eu devo ver uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"

    Cenário: Senha inválida - usuário padrão
        Quando eu digito um usuário "standard_user"
        E digito uma senha "invalid_password"
        E clico no botão Login
        Então eu devo ver uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"

    Esquema do Cenário: Logins inválidos
        Quando eu digito um usuário "<username>"
        E digito uma senha "<password>"
        E clico no botão Login
        Então eu devo ver uma mensagem de erro "<error_message>"
        Exemplos:
            | username       | password         | error_message                                                                 |
            | invalid_user   | any_password     | Epic sadface: Username and password do not match any user in this service      |
            | standard_user  | invalid_password | Epic sadface: Username and password do not match any user in this service      |
            