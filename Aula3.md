# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="60" height="50"> 
  
## Security, Identity & Compute Services   

*IAM - Identity and access management*

*Users, Groups and Roles*

![image](https://user-images.githubusercontent.com/12403699/235812460-5190e58a-607f-4b44-85f2-681ae90b2443.png)
  
- Usuários (Users) **Pessoa ou serviço com credencias permanentes. Recomendável não compartilhe o usuário **root** e aplicar o least privilege na criação de novos usuários**

- Grupos(groups) **Coletivo de usuários**. Eles não podem conter outros grupos.**

- Funções (Roles, functions) **Não são permissões e sim métodos de autenticação temporários**

![image](https://user-images.githubusercontent.com/12403699/235812517-3608ffaa-6137-4973-8bc7-97be2400194e.png)   
  
|                     **Autenticação**                                   |                            **Autorização**                               |
| ---------------------------------------------------------------------- | ------------------------------------------------------------------------ |           
| Se aplica a usuários, grupos e funções.                                |  Se aplica a políticas, grupos e funções.                                |
| Identifica pessoa ou serviço buscando acesso a um recurso.             |  Determina o nível de acesso de uma pessoa ou serviço.                   |
| Solicita credenciais legítimas.                                        |  Define os dados que eles podem acessar e o que pode ser feito com eles.  
| Cria base para princípios de identidade e controle de acesso seguros.   
  
> **Ao tentar acessar um determinado serviço, o processo de Autenticação busca minhas informações de acesso no banco e após isso, o processo de Autorização irá dizer o que irei acessar e o que tenho permissão de modificar ou apagar por exemplo.**

![image](https://user-images.githubusercontent.com/12403699/235812543-dbf58bc6-2213-4e09-8d29-862bdd853de8.png)
  
Operador busca recurso através da *API Engine*.
  
![image](https://user-images.githubusercontent.com/12403699/235812582-856f0620-99fe-4de5-a784-d0850730ab16.png)
  
**API Engine* = *AWS IAM* (Autenticação) -> Json (Autorização) -> Usuários, grupos & funções = Recurso**

> **DICAS DE EXAME** &nbsp;
  
- Usuários possuem credenciais permanentes e funções possuem credenciais temporárias;
- Usuário *root* não devem ser compartilhados;
- Use o *least privelege principle* (Mínimo privilégio possível) nos usuários;
- Documentos *Json* definem as permissões de acesso;
- Grupos não contem outros usuários, mas não podem conter outros grupos. Um usuário pode permanecer em outros grupos.


## *Security*

*AWS WAF - Web Apllication Firewalll*

É um FAAS (firewall as a service) de aplicativos web que permite especificar qual tráfego tem o seu acesso permitido ou bloqueado, mediante seu comando.

- Filtragem de tráfego com regras WEB ACL;
- Funciona na camada 7 (Aplicação)
- Bloquea requisições maliciosas como SQL injection SQLi e cross-site scripting (XSS)
- Bloquea países(geo-match), *site constraints* e *rate based-rules*

*AWS SHIELD*

Serviço que atua contra os ataques DDOS (Distributed denial of service) mitigando-os. 
  
![image](https://user-images.githubusercontent.com/12403699/235812628-208a69b8-5280-4429-9a88-b0df22490397.png)

Versão Standard
- Gratuito para todos os clientes AWS;
- Proteção *syn-udp*, *FLOODS*, *REFLECTION Atacks*;
- Proteção de outros ataques na camada 3 e na camada 4.

Versão Advanced 
- Serviço pago; 
- Suporte 24x7;
- Proteção extra no serviços: *Amazon EC2, elastic load balancing (ELB), Amazon cloudfront, aws global accelerator
e Route 53.*



Nuvem virtual privada (VPC) é uma nuvem privada localizada dentro de uma nuvem pública, que torna possível desfrutar dos benefícios de uma rede virtualizada por meio de recursos de rede pública.


A Virtualização hospedada isola os seus dados dos dados de outras empresas, tanto em trânsito quanto na rede do provedor da nuvem, ajudando a criar um ambiente mais seguro.
A VPC conecta-se a redes remotas por meio de uma conexão de rede virtual privada (VPN). A VPC é ideal para empresas que buscam um alto nível de segurança, privacidade e controle, como organizações de assistência médica e financeiras que atendem a conformidades normativas. Para as empresas, a VPC é ideal também para executar aplicativos críticos para o negócio.

Normalmente a VPC é gerenciada por meio do painel de controle do provedor de serviço gerenciado.
A Janela da VPC permite que você consulte e faça as alterações necessárias de maneira simplificada.

Importante TRABALHO: Ver o que rola quando a instância for fechada se o conteúdo dela é totalmente apagado ou fica armazenado.

![image](https://user-images.githubusercontent.com/12403699/235812702-9f4b3249-b21d-4e6f-a7a3-6942a4485a59.png)
![image](https://user-images.githubusercontent.com/12403699/235812727-bf52fca7-7ba4-4ad3-aeaf-afb9a7eb28c6.png)
