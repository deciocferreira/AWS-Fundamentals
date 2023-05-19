# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## DNS, Route 53, CloudFront & ELB

Route 53 
DNS (Domain Name System)
O amazoon route é um serviço que atua como DNS Domain Name System que encaminha as solicitações dos usuários, para os aplicatiovs de internet
O nome Route 53 É uma referência da porta 53
Sempre DNS É Amazon Route 53

O que é mais fácil de memorizare?
216.238.38.120  ou Www.google.com.br

Então o que é o DNS

É um conjunto de regras e registros que ajudam o cliente a chegar ao destino através de uma URL amigável

url: www.google.com  
IP: 216.238.38.120
Registro: A  = Ipv4
www.google.com
Ip 0:0:0:0:0:fff:d8ef:2678 - Ipv6
seach.google.com: www.google.com CNAME = Hostaname para hostname

exemplo.com Recurso AWS  

Registro/Record
A = IPVA

AAAA = IPv6

CNAME = Hostname para Hostname

ALIAS = ELB, Cloudfront, S3, RDS, Etc

CloudFront~

O Amazon cloudfront serviçio de entrega de conteúdo (CDN) que entrega dados, vídeos aplicaitovs e APIS a clientes de forma mundial, com segurança, baixa latência e alta velocidade

Regiões Zona de disponibilidade
Pontos de presença = Edge Locations

Eles são os componentes da infraestrutura da AWS, que o cloud front usa para entregar conteúdos.

Cloudfront usa componentes essenciais da AWS chamados de ponto de presença, para otimizar a entrega de conteúdos.

Criei um bucket na Europa da S3.
Vou acessar esse bucket, teria toda uma trajetória que seu pacote teria para chegar no bucket e retornar para o usuário.
Teriamos uma certa latência.

Cloudfront atua por meio dos pontos de presença Edge Locations
Se no ponto de presença não for encontrado a requisição que eu queira, o Amazon cloud front vai lá busca o dado na origem, retorna no ponto de presença, manter em em cash e o retorna para mim, quando o dado que eu procuro não se encontra no ponto de presença mais próximo de mim

Basicamente um serviço de cache, melhorando a experiência do usuário não precisando que a requisição vá até a origem.

Cloudfront serve para otimizar a puxada de conteúdo para  aumentar o conteúdo para o usuário, fazendo requisição ser encontrada mais rápido. 

Mesmo conceito utilizado em Torrent ou do filme da Netflix ficar mais próximo em um ponto de presença, sendo que quanto mais popular mais tempo ele fica no cache.

Criamos um bucket no S3 para teste.

Dentro desse bucket colocarei dois objetos
Uma pagina WEB simples e um texto.html simples.
Não coloque o link da imagem diretamente no código só suba junto.

Cloudfront

Create Distribution:

Chose origin DOMAIN:
Colocamos nosso domínio de origem.

Origin acess:
Origin acess control settings a recomendada.

Clicamos em create control setting 

Não precisamos colocar descrição, só clicamos em create.

Ai precisamos atualizar a política de bucket S3 depois.

COLOQUE ESSA OPÇÃO default root object

Vemos qual o arquivo padrão ser retornado, ai colocamos o index.html para retornar paginal

Web Application Firewall WAF

Do not enable security protections, colocamos este só para da uma facilidade no início. 

Clicamos em COpy policy 

Ai editamos a política do bucket S3

Cloudfront é mais uma camada de segurança.

Cloudfront está público e buscou o S3 privado, para o link cloudFront, mas o S3 não está público.

Cloudfront só dá acesso diretamente o que você quer não ao Bucket inteiro

Elastic Load Blancer
Distribuir automaticamente o tráfego de entrada de a´plicativos entre diversos destinos. Como instâmncias do Amazon EC2, conteineres, endereços IP e funções Lambda

Ele é um balanceador de carga, para não deixar nenhuma instÂncia, containers ou mesmo funções de Lambda sobrecarregada.
As requisições dos clientes é distribuída por mais de um servidor, não tendo uma sobrecarga de nenhum servidor.

Existem vários Elastic Load balancing 
Application Load Balancer: HTTP, HTTPS

Network Load Balancer = Atua na Camada 4, camada de transporte, TCP, 

Gateway Load Balancer: Normalmente atua junto com Gneve, é um impactador que engloba diversos pacotes.

Classic Load balancer

Application load balancer: HTTP, HTTPS
Camada 7
Networkd Load balancer: TCP, UDP, TLS
Camada 4
Gateway load balancear: IP GENEVE porta 6081
Camada 3
Classic Load balancer: http, https, tcp, ssl/tls
Camada 7  ou 4

Gustavo, a Amazon tem o Elastic Container Service que executa contêineres Dockers em escala. Tem o Elastic Kubernetes Service para Kubernetes. Acho que tem mais dois que complementam eles o ECS e o Fargate.

Recomendável ALB:
Amazon EC2, conteineres, funções lambda, Endereços IP

Recomendável NLB: Amazon EC2, micro serviços e conteineres.

GLB:
Ele vai encapsular os tráficos em pequenos containeres, gerenciar virtual appliance como firewalll e inespeção de pecotes, no Amazon EC3, pacotes node, etc.

Configurações de Rede na ec2 da para ver as zonas de disponibilidade
Normalmente ele fica ativo na BlackFried para não dá uma sobrecarga no sistema
  
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/f597dc13-237f-471e-91be-ede7d402efe1)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0aac2f23-1e44-47aa-9cae-2c439e7bd76b)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ca6e757c-2aad-449d-b965-61e8844a7c79)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/a9b22d2b-6cec-479a-b129-eb47115e94e2)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/380140b1-0afa-4964-977f-60d2c4aa80ad)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/7a7dc27c-5326-41e6-88c7-e0eca3954fdf)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/e4074593-80dd-4e5a-bfd5-0163bd7a6141)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/4b838c66-99a5-4592-8831-609ead812267)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/7b87b322-e11b-4fbb-b5d6-7ec702d3e4aa)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d95ba397-8944-4644-863b-d1dea480d345)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/a655b547-3602-47e6-bd05-525396f75b7c)
