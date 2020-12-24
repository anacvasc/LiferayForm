Para realizar os testes manuais, utilizei a abordagem de testes exploratórios, a fim de conhecer a aplicação, elaborar cenários de teste e executar ao mesmo tempo.

Uma vez entendido o funcionamento da aplicação, parti para a escrita de cenários de teste utilizando BDD (FormularioTest.java).

A partir dos cenários escritos na linguagem Gherkin, realizei a automação de alguns cenários de teste ("Alterando o en2pt", "Preenchendo form vazio" e "Preenchendo form em ingles"). 

Como nunca tinha preparado um ambiente, achei um grande desafio. Utilizei um arquétipo que já tinha uma solução arquiterural montada, utilizando PageObject, e fiz as alterações necessárias. Algumas coisas não estão funcionando perfeitamente, provavelmente por detalhes técnicos.  

A respeito de bugs, como a única regra de negócio conhecida é a de que todos os campos são obrigatórios, não posso dizer, por exemplo, que cadastrar apenas números no campo nome está errado, mas realizei esse tipo de verificação e a aplicação funcionou normalmente.

Por fim, criei um arquivo .xlsx para exemplificar um Plano de Teste. 
Com a grande variedade de ferramentas disponíveis no mercado, imagino que existam maneiras mais interessantes de documentar o Plano de Teste, porém acho que esse arquivo é simples de ser utilizado e contempla as informações necessárias.
