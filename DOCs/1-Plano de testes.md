# Desafio
 A proposta deste desafio é criar toda a abordagem de testes para o contexto apresentado.
##Deve ser entregue:
###1/3 - Um plano de testes;
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

## Resposta do contexto em baixo:

### O processo
Um Documento template de Plano de testes podia ter sido usado, mas para efeitos de resumo, ficam as seguintes ideias gerais. 
Em excel, construiu-se a lista de requisitos apartir das funcionalidades(FUNC) e Critérios de aceitação(CA).
Em ambiente de SDLC(Sw Development Life Cycle), mais especificamente Agile Scrum, construir-se-ia estes requisitos:
- usados e inseridos como User stories(US) numa ferramenta tipo JIRA ( ALM-Application Lifecycle Management)
- estes seriam refinados e estimados em tarefas dentro da equipa, e associados aos requisitos em sub-tasks
- tickets alocados a membros da equipa, consoante a capacidade e após o sprint planning
- estas tarefas/tickets seriam associados(traceable) igualmente aos testcases da ferramenta de gestão de testes onde iriam conter a descrição dos testes (e.g. adaptavist, xreport) usualmente:
    em gherkin: GIVEN... WHEN... THEN..
    ou
    Test Case: pre condition, Step description... Step Data... Expected behaviour....

### Os niveis de teste propostos :
- Unit/component tests - Developers em colaboração com o tester mantêem ou aumentam um racio de cobertura acordada de unit tests/testes estáticos (sonarQube) e usam o Continuous integration de modo a ter um feedback quase imediato das alterações implementadas
- Integration tests -
    1/2. Apesar de o backend só ter um interface/endpoint responsivo a requests, o Front-End(FE) da aplicação comunica com todos os serviços REST de BE(backend). A articulação com a dev Team é fundamental para podermos testar todos os requests internamente através da web app.
    2/2. Testes de integração também se deverão focar no serviço REST disponivel externamente e nos que não devem estar disponiveis externamente, com soapUI a um primeiro nivel manual ou com ajuda de framework de requests focado em automação (e.g. REST Assured). Os seguintes requisitos poderão ter mais do que 1 teste, mas representam os requisitos para entrega faseada em sprints ou a longo termo
[REQ003][FUNC01-LOGIN]CA01 - INT- Utilizadores credenciados
[REQ104][FUNC02-Analisar documentos]CA02 - INT - Análise de Documentos
[REQ105][FUNC02-Analisar documentos]CA03 RN05- INT- API REST Analysis request validation
[REQ106][FUNC02-Analisar documentos]CA03 - INT- serviço "Analisar documentos" é o único exposto externamente
[REQ108][FUNC02-Analisar documentos]CA02 RN04- INT- Dados obrigatórios para processar uma análise
[REQ203][FUNC03-Consultar análises de documentos]CA03 - INT - serviço de consulta de análises não disponivel externamente  
[REQ204][FUNC03-Consultar análises de documentos]CA03 - INT - serviço  visualização detalhada das análises não disponivel externamente  
- System Tests e Acceptance Tests -  O conceito de sistema funde-se um pouco com os acceptance tests pois representam Regras de negócio para os Criterios de aceitação
[REQ001][FUNC01-LOGIN] - GUI - Acesso ao sistema bem sucedido (módulo Login)
[REQ002][FUNC01-LOGIN]CA01 RN01- GUI - Acesso ao sistema com Erro de autenticação
[REQ101][FUNC02-Analisar documentos] - GUI - Análise processada bem sucedida
[REQ102][FUNC02-Analisar documentos]CA02 RN02- GUI - Documento válido
[REQ103][FUNC02-Analisar documentos]CA02 RN03- GUI - Documento inválido
[REQ107][FUNC02-Analisar documentos]CA02 RN04- GUI- Dados obrigatórios para processar uma análise
[REQ201][FUNC03-Consultar análises de documentos] - GUI - Consultar análises de documentos
[REQ202][FUNC03-Consultar análises de documentos]CA04 RN06- GUI - Consultar análises somente do utilizador autenticado
[REQ205][FUNC03-Consultar análises de documentos]CA05 RN07- GUI - visualização detalhada das análises
[REQ206][FUNC03-Consultar análises de documentos]CA05 RN08- GUI - visualização detalhada das análises - score total
[REQ207][FUNC03-Consultar análises de documentos]CA05 RN08- GUI - visualização detalhada das análises - score de dados

### A automação
 Será aconselhado sempre automatizar o mais cedo possivel no processo de desenvolvimento.
 - Os unit tests e code coverage seriam obviamente automatizados desde o primeiro dia usando CI (jenkins com nexus), TDD(para de forma iterativa estabilizar o foco dos unit tests e ir modificando a implementação monitorizando o status dos testes), usando também as ferramentas de code Coverage com nivel configurável de racio de cobertura nas linhas de código, por exemplo. 
 - Os integrations tests serão os testes mais urgentes de regressão, e mais aconselhados a automatizar-se na fase inicial, como referido em cima, pelo menos 1 teste será feito para cada requisito:
[REQ003][FUNC01-LOGIN]CA01 - INT- Utilizadores credenciados
[REQ104][FUNC02-Analisar documentos]CA02 - INT - Análise de Documentos
[REQ105][FUNC02-Analisar documentos]CA03 RN05- INT- API REST Analysis request validation
[REQ106][FUNC02-Analisar documentos]CA03 - INT- serviço "Analisar documentos" é o único exposto externamente
[REQ108][FUNC02-Analisar documentos]CA02 RN04- INT- Dados obrigatórios para processar uma análise
[REQ203][FUNC03-Consultar análises de documentos]CA03 - INT - serviço de consulta de análises não disponivel externamente  
[REQ204][FUNC03-Consultar análises de documentos]CA03 - INT - serviço  visualização detalhada das análises não disponivel externamente  
 - Mais tarde numa abordagem conjunta com o FE definiam-se os ID's unicos no DOM das páginas web e sera aconselhado começar a automatizar o GUI o que é o pré-requisito de todo o sistema: 
[REQ001][FUNC01-LOGIN] - GUI - Acesso ao sistema bem sucedido (módulo Login) - Com validação das opções no ecrân principal, pré requisito dos outros use cases 

Após esta automatização do GUI login, reutilizar o teste case será muito prático para todos os outros use cases dependentes do login.

### Load&Performance tests 
 - Devido a ausencia de requisitos deveria-se entrar em colaboração com o system arquitect para retirar parametros de Load, stress and performace. Potenciais testes seriam entre outros, a avaliação da disponibilidades dos serviços através de metricas de BE/servidor das funcionalidades de consulta de análises ou submissão de documentos enquanto simultaneos utilizadores estão logados no sistema.

FIM
 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
## Contexto
- Tu és membro de uma equipa de testes de software,
- Criar toda a abordagem dos testes de um novo software. 
    1. analisador de documentos
    2. aplicação web que comunica com uma camada backend através de uma REST
- funcionalidades do Software:
    FUNC01 - Acesso ao sistema (módulo Login);
    FUNC02 - Analisar documentos:O processo de análise de documentos é simples:
        a) O utilizador deve clicar no link “Analisar documento” no ecrã principal;
        b) O utilizador deve preencher os seguintes dados no ecrã “Análise de documento” (Fig. 03):
            o Nome: (nome do documento);
            o Dados para análise: (conjunto de dados no formato chave/valor que serão analisados no documento)
            o Upload de documento: (ficheiro do documento que será analisado);
        c) Ao clicar no botão “Analisar”, o software iniciará o processo de análise, que será exibido no ecrã “Análise processada” (Fig 04)
        d) Por fim, o utilizador verifica a análise processada pelo software, contendo os seguintes dados:
            o ID: (id da análise gerado pelo software)
            o Nome: (nome do documento);
            o Data/Hora análise: (data e hora da análise);
            o Score: (pontuação total da análise);
            o Dados analisados: (conjunto de dados no formato chave/valor e seus respetivos scores) 
    FUNC03 - Consultar análises: O processo de consultar as análises de documentos é simples:
        a) O utilizador deve clicar no link “Consultar análises” no ecrã principal;
        b) O software apresentará o ecrã “Lista de análises” (Fig. 05) com as análises listada em uma tabela;
        c) O utilizador deve clicar no link “Ver” de uma determinada análise listada na tabela;
        d) O software apresentará o ecrã “Análise processada” (Fig. 04);
- Pré-requisitos:
    1. Um utilizador do software deve estar autenticado para utiliza-lo.(módulo Login -Fig. 01)
    2- O utilizador dispõe dos links das funcionalidades no ecrã principal (Fig. 02).
- Critérios de aceitação:
    CA01 O software deve permitir a autenticação de utilizadores credenciados. Caso contrário(credenciais vazias/inválidas) uma mensagem de erro deve ser apresentada.
    CA02 O software deve permitir a análise de documentos válidos. Documentos inválidos não devem ser processados e uma mensagem de erro deve ser apresentada
    CA03 O serviço “analisar documentos” deve ser exposto para consultas externas. Os demais serviços só devem ser utilizados via aplicação web
    CA04 O software deve permitir a consulta das análises referentes ao utilizador autenticado. Não devem ser mostradas análises de outros utilizadores
    CA05 O software deve permitir a visualização detalhada das análises referentes ao utilizador autenticado.
- Regras de negócio (1/3)
    RN01 CA01 Mensagem de erro: “Erro de autenticação.”
    RN02 CA02 Um documento é considerado válido quando:
        a) Possui o tamanho de até 5MB
        b) Extensão *.pdf ou *.png;
    RN03 CA02 Mensagem de erro: “Documento inválido”
    RN04 CA02 Dados obrigatórios para processar uma análise(Um alerta deve ser exibido na sua ausencia):
        a) Nome do documento
        b) Dados para análise (pelo menos 1)
        c) Ficheiro
    RN06 CA04 Tabela de lista de análises
        || Nome do documentos   || Data de análise  || Acções       ||
        |   doc 01              |01/02/2020 16:30:00|   Ver (link)  |
        |   doc 02              |10/02/2020 10:00:00|   Ver (link)  |
    RN07 CA05 Dados detalhados das análises:
        a) ID: (id da análise gerado pelo software)
        b) Nome: (nome do documento);
        c) Data/Hora análise: (data e hora da análise);
        d) Score: (pontuação total da análise);
        e) Dados analisados: (conjunto de dados no formato chave/valor e seus respetivos scores)
    RN08 CA05 Regra de cálculo de score total:
        (soma dos scores dos dados analisados)/(quantidade de dados analisados):
    RN08 CA05 Regra de cálculo de score de dados:
        Se a chave e valor são validado = 100
        Se a chave ou valor são validados = 50
        Se a chave e valor não são validados = 0
    RN05 CA03 Requisição/Request (exemplo):
{
    "analysis": [
        {
            "login": "User 01",
            "pass": "user01",
            "doc_name": "doc 01",
            "data": [
                {
                    "key": "Costumer",
                    "value": "Cos 01"
                },
                {
                    "key": "Expiration Dt",
                    "value": "01/01/2021"
                }
            ],
            "uploaded_file": "DSFADSADSadghdghjyjfghjfhgj43625654634SFDHSHDGHDGHDHDF"
        }
    ]
}
    Resposta (exemplo): {
    "response": [
        {
            "ID": "AN001",
            "doc_name": "doc 01",
            "date": "01/02/2020 16:30:00",
            "total_score": "50"
    "data": [
                {
                    "key": "Costumer",
                    "value": "Cos 01",
                    "score": "100"
                },
                {
                    "key": "Expiration Dt",
                    "value": "01/01/2021",
                    "score": "0"
                }
            ]
        }
    ]
}
