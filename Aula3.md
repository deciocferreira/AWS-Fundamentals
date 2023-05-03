# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="60" height="50"> 
  
## Security, Identity & Compute Services   

*IAM - Identity and access management*

Users, Groups, Roles

Usuários (Users)
Pessoa ou serviço com credencias permanentes
Não compartilhe o usuário root & use o least privilege

Grupos(groups)
Coletivo de usuários 
Grupos não podem conter outros grupos

Funções (Roles, function)
Não são suas permissões
É um método de autenticação

Regra básica

Autenticação
Usuários, Grupos & funções.

Autorização
Políticas & grupos funções.

Autorização
Políticas & permissões
Policy documents.
Politica e permissões = Arquivo Json

Api execution startement
Operador -----||-----> Recurso
         API Engine

API ENGINE = AWS  IAM (Autenticação) -> Json (Autorização) -> Usuários, grupos & funções = Recurso


Dicas de exame

Usuários possuem credenciais permanentes e funções possuem credenciais temporárias.

Usuário root não devem ser compartilhados

Use o least privelege principle (Mínimo privilégio possível) nos usuários 

Documentos json definem as permissões de acesso.

Grupos não contem outros usuários, mas não podem conter outros grupos. Um usuário pode permanecer em outros grupos.


AWS identity and acess management.

Web apllication firewalll

O Aws WAF é um firewall de aplicativos web que permite especificar qual tráfego tem o seu acesso permitido ou bloqueado, mediante seu comando


Filtrar o tráfego
com regras
WEB ACL

Camada 7
HTTP

Bloquear requisições maliciosas como SQL injection SQLi e cross-site scripting
XSS

Bloquear
países(geo-match),
sie constraint
e 
rate based-rules


Dicas de exame
WAF é um firewall de aplicações wWEB

Atua na camada 7 -> HTTP

Bloqueia SQL injection 
(SQLi) e cross-site-scripting(XSS)

Geo-match(bloqueio países), size constraints limitas tamanho das requisições e rate-based-rules (limitar qutde. requisições por segundo)

AWS SHIELD

DDOS distributed denial of service
Ataque hackear em ambiente web

AWS Shield Standard
Gratuito para todos os clientes AWS
Proteção syn-udp, FLOODS, REFLECTION Atacks.

Prteção de outros ataques na camada 3 e na camada 4

AWS Shield Advanced 

Serviço pago 
Suporte 24x7

Proteção extra no serviços: Amazon EC2, elastic load balancing (ELB), Amazon cloudfront, aws global accelerator
e Route 53


AWS Shield é para mitigar ataque DDos

Stand é gratuito para todos

Advanced é pago, suporte 24x7 e possui proteção extra em determinados serviços.

Amazon EC2 -> Elastic compute cloud

Modelo infrasestrutura como serviço
Alugar máquinas virtuais EC2
Armazenar dados em volumes virtuais EBS

Distribuir carga de trabalho ELB

Escalar o serviço de acordo com a demanda ASG

Amazon EC2

Amazon Elastic block store

Elastic Load balancing
Amazon EC2 Auto Scaling


Conexão & acesso


Operador -> Interface AWS IAM -> Instâmncias.

Tipos de instância


A, T, M, Mac - Uso geral
C- Computação
R,X,Z - Memória
P,inf, G, F, DL, Trnn, VT - Processamento
I, D, H - Armazenamento


Entendo a instância
Tipo -[ t2.2XLARGE

T2 = Segunda geração da familia T.

2 = Geração

Familia - T2.

2xlarge = Tamanho

tamanhos:
.nano
.micro
.small
.medium
.large
.xlarge
.metal


O Amazon EC2 é um serviço web que disponibiliza uma capacidade computacional segura, representado por uma instância redimensionável na nuvem
mODELO COMPUTACIONAL INFRASTRUTURA COMO SERVIÇO 
aMBIENTE OPERACIONAL wINDOWS, mACoS e Linux

Cobrança por hora ou segundo (Minimo de 60 segundos).


Nuvem virtual privada (VPC) é uma nuvem privada localizada dentro de uma nuvem pública, que torna possível desfrutar dos benefícios de uma rede virtualizada por meio de recursos de rede pública.


A Virtualização hospedada isola os seus dados dos dados de outras empresas, tanto em trânsito quanto na rede do provedor da nuvem, ajudando a criar um ambiente mais seguro.
A VPC conecta-se a redes remotas por meio de uma conexão de rede virtual privada (VPN). A VPC é ideal para empresas que buscam um alto nível de segurança, privacidade e controle, como organizações de assistência médica e financeiras que atendem a conformidades normativas. Para as empresas, a VPC é ideal também para executar aplicativos críticos para o negócio.

Normalmente a VPC é gerenciada por meio do painel de controle do provedor de serviço gerenciado.
A Janela da VPC permite que você consulte e faça as alterações necessárias de maneira simplificada.

Importante TRABALHO: Ver o que rola quando a instância for fechada se o conteúdo dela é totalmente apagado ou fica armazenado.
  
![image](https://user-images.githubusercontent.com/12403699/235812460-5190e58a-607f-4b44-85f2-681ae90b2443.png)
![image](https://user-images.githubusercontent.com/12403699/235812481-5e13cc39-a9de-4c90-940a-b62818cae9bd.png)
![image](https://user-images.githubusercontent.com/12403699/235812517-3608ffaa-6137-4973-8bc7-97be2400194e.png)
![image](https://user-images.githubusercontent.com/12403699/235812543-dbf58bc6-2213-4e09-8d29-862bdd853de8.png)
![image](https://user-images.githubusercontent.com/12403699/235812582-856f0620-99fe-4de5-a784-d0850730ab16.png)
![image](https://user-images.githubusercontent.com/12403699/235812628-208a69b8-5280-4429-9a88-b0df22490397.png)
![image](https://user-images.githubusercontent.com/12403699/235812653-e36d64d9-238f-4bac-9047-ecdc0154fa73.png)
![image](https://user-images.githubusercontent.com/12403699/235812702-9f4b3249-b21d-4e6f-a7a3-6942a4485a59.png)
![image](https://user-images.githubusercontent.com/12403699/235812727-bf52fca7-7ba4-4ad3-aeaf-afb9a7eb28c6.png)
