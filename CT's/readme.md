👋 Hi, I’m Fernando<br>
👀 I’m interested in AUTOMATION TESTS, API and FRONT<br>
🌱 I’m currently learning KARATE DSL<br>
📫 How to reach me https://www.linkedin.com/in/fernando-r-46a2b083/<br>

ACRESCENTAR cenários de testes

Teste de Requisições Básicas:
. Verificar se a API responde corretamente a solicitações GET, POST, PUT e DELETE

. Validar os códigos de status HTTP retornados (200 OK, 400 Bad Request, 500 Internal Server Error, etc.)
. Verificar se as respostas possuem os cabeçalhos HTTP corretos (Content-Type, Cache-Control, etc.)

Teste de Validação de Dados:
. Enviar dados de entrada inválidos (por exemplo, valores fora dos limites, formatos inválidos) e verificar se a API lida corretamente com essas situações
. Enviar dados de entrada vazios ou nulos e garantir que a API trate esses casos adequadamente

Teste de Autenticação e Autorização:
. Testar diferentes métodos de autenticação (Token JWT, OAuth, Basic Auth, etc.).
. Verificar se a API nega o acesso a recursos não autorizados.
. Testar cenários de permissões de usuário (usuários com diferentes níveis de acesso).

Teste de Fluxos de Paginação:
. Garantir que a API retorne os resultados esperados ao navegar pelas páginas.

Teste de Respostas e Formatos:
.Validar se as respostas estão no formato esperado (JSON, XML, etc.).
.Verificar se os dados retornados estão corretos e correspondem aos dados esperados.

Teste de Erros e Exceções:
. Enviar solicitações que possam causar erros (por exemplo, referências inexistentes, campos inválidos) e verificar se a API retorna mensagens de erro úteis e relevantes