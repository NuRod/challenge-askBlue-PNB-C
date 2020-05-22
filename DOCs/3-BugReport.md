Desafio
A proposta deste desafio é criar toda a abordagem de testes para o contexto apresentado.

Deve ser entregue:
3/3 - Um exemplo de bug reportado;

-- 
Response:
Tiplically the most relevant defects/bugs informations have this fields:

Defect Number:
    PROJ000001
Defect type:
    bug/defect
Defect Date:
    PROJ000001
Defect Author:
    NunoRodrigues
Defect development lifecycle phase(s): SPRINT1

Defect Title(writen as a fault/negative):
    [FUNCXXX]-[REQXXX] - O score retornar 100 na análise processada  
Defect prio(Dev fix urgency):
    1
Defect Severity(product):
    1
Defect description:
    - Short Summary: Após consultar análises do ID AN001, para o nome de doc "doc 01" , e data analizada 01/01/2020 16:30 o valor score não coincide com o valor recebido no request(deveria ser 50) 
    - environment: Webpage 
    - Version:01
    - reproduction steps:
        1.fazer login no URL $URL com credenciais do request em anexo 
        2.carregar em "Consultar análises"
        3.Ver documento com nome doc01 carregando no link "Ver" na coluna "ações"
    - Current behavior: o Score retornou 100
    - Expected behavior: O score deveria ser 50
    - Specification/requirement link: 
    [REQ206][FUNC03-Consultar análises de documentos]CA05 RN08- GUI - visualização detalhada das análises - score total
Defect Attachments:
    logs, database dumps,docs,screenshot,recordings,etc

Anexo:
#Requisição Analysis
#{
#    "analysis": [
#        {
#            "login": "User 01",
#            "pass": "user01",
#            "doc_name": "doc 01",
#            "data": [
#                {
#                    "key": "Costumer",
#                    "value": "Cos 01"
#                },
#                {
#                    "key": "Expiration Dt",
#                    "value": "01/01/2021"
#                }
#            ],
#            "uploaded_file": "DSFADSADSadghdghjyjfghjfhgj43625654634SFDHSHDGHDGHDHDF"
#        }
#    ]
#}
#    Resposta (exemplo): {
#    "response": [
#        {
#            "ID": "AN001",
#            "doc_name": "doc 01",
#            "date": "01/02/2020 16:30:00",
#            "total_score": "50"
#    "data": [
#                {
#                    "key": "Costumer",
#                    "value": "Cos 01",
#                    "score": "100"
#                },
#                {
#                    "key": "Expiration Dt",
#                    "value": "01/01/2021",
#                    "score": "0"
#                }
#            ]
#        }
#    ]
#}