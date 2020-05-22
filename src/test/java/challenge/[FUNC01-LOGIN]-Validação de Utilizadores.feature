Feature:
  O software deve permitir a autenticação de utilizadores credenciados. Caso contrário(credenciais vazias/inválidas) uma mensagem de erro deve ser apresentada.
  RN04 CA02 Dados obrigatórios para processar uma análise(Um alerta deve ser exibido na sua ausencia):
  a) Nome do documento
  b) Dados para análise (pelo menos 1)
  c) Ficheiro


  Scenario:
  Validação do request com User válido
    Given a user "User 01" is a valid software user
    When the "analysis" request is sent with "login" as "User 01"
    And with "pass" as "user 01"
    And with "doc_name" as "doc 01",
    And with "uploaded_file": "DSFADSADSadghdghjyjfghjfhgj43625654634SFDHSHDGHDGHDHDF"
    And "data" struture with "Costumer" as "Cos 01"
    Then The response is "ok"

  Scenario:
  Validação do request com User válido
    Given a user "Eric" is an invalid software user
    When the "analysis" request is sent with "login" as "Eric"
    And with "pass" as "user 01"
    And with "doc_name" as "doc 01",
    And with "uploaded_file": "DSFADSADSadghdghjyjfghjfhgj43625654634SFDHSHDGHDGHDHDF"
    And "data" struture with "Costumer" as "Cos 01"
    Then The response is "Not Ok"

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