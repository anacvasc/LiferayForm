#language: pt

Funcionalidade: Formulario Liferay

@implementado
Cenario: Alterando o en2pt
  Dado que o form estah aberto
  E o idioma "en-US" estah selecionado
  E o texto "party rock" eh exibido na pagina
  Quando altero o idioma
  Entao o idioma "pt-BR" estah selecionado
  E o texto "party rock" eh exibido na pagina

Cenario: Alterando o pt2en
  Dado que o form estah aberto
  E o idioma "pt-BR" estah selecionado
  E o texto "party rock" eh exibido na pagina
  Quando altero o idioma
  Entao o idioma "en-US" estah selecionado
  E o texto "party rock" eh exibido na pagina

@implementado
Cenario: Preenchendo form vazio
 	Dado que o form estah aberto
 	E o idioma "en-US" estah selecionado
 	E o formulario eh submetido
 	Entao a mensagem de erro "This field is required." eh exibida em todos os campos

@implementado
Cenario: Preenchendo form em ingles
  Dado que o form estah aberto
  E o idioma "en-US" estah selecionado
  Quando eh preenchido o formulario com o nome "anny", data de nascimento "09101999" e motivo "interest in qa"
  E o formulario eh submetido
  Entao eh exibida pagina de sucesso com texto em ingles  

Cenario: Preenchendo form em portugues
  Dado que o form estah aberto
  E com o idioma portugues selecionado
  E nome "godofredo", data de nascimento "09/10/1999" e motivo "gostar de qualidade"
  Quando clica no botão para submeter
  Entao eh exibida pagina de sucesso com texto em portugues  


Esquema do Cenario: Inserindo campos em branco
  Dado um cadastro invalido de '<nome>',  data de nascimento <dtnascimento> e motivo '<motivo>'
  Quando clica no botão para submeter
  Entao o cadastro nao eh realizado

 Exemplos:
  	|  nome  | dtnascimento |   motivo  |
  	|  null  | "11/12/1988" | admiracao |
  	| fulano |     null     | admiracao |
  	| fulano | "11/12/1988" |   null    |