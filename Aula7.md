# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## DNS, Route 53, CloudFront & ELB

*Route 53* 

É um serviço que atua como DNS e que encaminha as solicitações dos usuários, para os aplicatiovs de internet. O nome Route 53 É uma referência da porta 53. 
  
> **DNS** - *Domain Name System* é um conjunto de regras e registros que ajudam o cliente a chegar ao destino através de uma URL amigável.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ca6e757c-2aad-449d-b965-61e8844a7c79" width="700" height="450">    
  
> O que é mais fácil de memorizar? 216.238.38.120  ou www.google.com.br
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0aac2f23-1e44-47aa-9cae-2c439e7bd76b" width="700" height="450">

*Políticas de roteamento*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/a9b22d2b-6cec-479a-b129-eb47115e94e2" width="700" height="450">
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/380140b1-0afa-4964-977f-60d2c4aa80ad" width="700" height="450">  

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/7a7dc27c-5326-41e6-88c7-e0eca3954fdf" width="700" height="450">
  
*CloudFront*

É um serviço de entrega de conteúdo (CDN) que entrega dados, vídeos, aplicativos e APIS a clientes de forma mundial, com segurança, baixa latência e alta velocidade.

O CloudFront usa as Regiões, Zonas de disponibilidade e Edge Locations para entregar conteúdos. Ele faz desse uso para otimizar a entrega de conteúdos.

Exemplo: Foi criado um bucket Se na Europa.
         Para acessar esse bucket, há uma trajetória que o pacote teria para chegar no bucket e retornar para o usuário e pode haver latência.

Cloudfront atua por meio dos Edge Locations. Se no ponto de presença não for encontrado a requisição que eu queira, ele atua buscando o dado na origem, retorna no ponto de presença, cria um cache e o retorna para mim, quando o dado que eu procuro não se encontra no ponto de presença mais próximo de mim.

Ele também otimiza a solicitação de conteúdo para aumentar o conteúdo para o usuário, fazendo requisição ser encontrada mais rápido. 

> Mesmo conceito utilizado no Torrent ou do filme da Netflix ficar mais próximo em um ponto de presença, sendo que quanto mais popular mais tempo ele fica no cache.

*Laboratório CloudFront*
 - Cloudfront: *Create Distribution*;
 - Chose origin DOMAIN e colocamos nosso domínio de origem;
 - Origin Access: *Origin Access control settings* recomendada;
 - Clicar em *Create control setting*; 
 - Não precisa colocar descrição, só clicar em create;
 - Atualizar a política de bucket S3;
 - Coloque a opção *default root object*;
 - Ver qual o arquivo padrão ser retornado e colocar o index.html para retornar a página;
 - Em *Web Application Firewall WAF*, selecionar *Do not enable security protections*, apenas colocar este só para facilitar no início. 
 - Clicar em *Copy policy*; 
 - Editar a política do bucket S3;

Cloudfront é mais uma camada de segurança. Ele está público e buscou o S3 privado, para fazer o link e dá acesso diretamente o que você quer não ao Bucket inteiro.
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/4b838c66-99a5-4592-8831-609ead812267" width="700" height="450"> 

*Elastic Load Blancer*
  
Serviço que distribui automaticamente o tráfego de entrada de aplicativos entre diversos destinos, como instâmncias do Amazon EC2, containers, endereços IP e funções Lambda. Atua como um balanceador de carga, nas requisições dos clientes, distribuindo-as para mais de um servidor para não deixar nenhum serviço sobrecarregado. 

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d95ba397-8944-4644-863b-d1dea480d345" width="700" height="450">  

Existem vários Elastic Load balancing 

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/a655b547-3602-47e6-bd05-525396f75b7c" width="700" height="450">  
  
> Camada 7 - Aplicação , camada 4 - Transporte, camada 3 - Redes

> Recomendável usar ALB em **Amazon EC2, conteineres, funções lambda, Endereços IP.**

> Recomendável usar NLB em **Amazon EC2, micro serviços e conteineres.**

O GLB vai encapsular os tráficos em pequenos containeres, gerenciar virtual appliance como firewalll e inespeção de pecotes, no Amazon EC3, pacotes node, etc.

> Amazon também tem o Elastic Container Service que executa contêineres Dockers em escala. Tem o Elastic Kubernetes Service para Kubernetes. Acho que tem mais dois que complementam eles o ECS e o Fargate.
