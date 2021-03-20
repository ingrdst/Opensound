# OpenSound (Ruby on Rails)

## Funcionamento

Database open-source colaborativa de sons. As interfaces são distintas para visitante regular, usuário e developer. O visitante regular tem acesso somente à página inicial e pode explorar sons. O usuário cadastrado pode, além disso, fazer upload de sons e ter acesso às postagens privadas de teste (beta!) do aplicativo. Já o admin tem acesso aos outros usuários e à versão (omega!) de teste, podendo também criar, editar e deletar postagens de versões da página com os updates.

## Git Clone

```
    $ git clone https://github.com/ingrdst/opensound.git
```

## Pré-Requisitos

* ruby 2.5.1
* ruby on rails 5.2.0
* rvm/rbenv

## Instalação
### Rails no Windows (Com Subsistema Linux)
* https://gorails.com/setup/windows/10#final-steps

### Rails no Linux (Ubuntu 20.10)
* https://gorails.com/setup/ubuntu/20.10

## Execução no Terminal

* cd ~ (pasta 'home')
* cd opensound -> project (pasta do projeto)
* bundle install (instala gems)
* rake db:migrate (gera tabela do banco)
* rails s (inicializa server)
* http://localhost:3000/
* ctrl+c (finaliza server)

<br><br>

Ingrid Soares ©

