# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## O que é Cloud? 
É uma tecnologia de computação em que recursos de infraestrutura, como servidores, armazenamento e software, são fornecidos pela Internet através de uma plataforma de serviços ou por uma rede privada, com entrega sob demanda, onde os usuários podem acessar esses recursos sem gerenciamento ativo e pagar apenas pelo que usam, em vez de ter que investir em infraestrutura de TI própria.  

Usamos nuvem todos os dias!

- Netflix
- Spotify
- Google Drive
- Office 365
- Armazenamento de fotos online

## Estamos em transição
As empresas estão cada vez mais migrando sua infra para Cloud, algumas de forma híbrida.

## Visão Geral da AWS

*Compute*
 - EC2
 - Amazon EC2 Auto Scaling
 - AWS Classic Beanstalk
 - AWS Lambda

*Networking e Content Delivery*
 - Amazon VPC Amazon Route 53
 - Amazon CloudFront 
 - Elastic load balancing 

*Governance & Management*
 - Amazon CloudWatch
 - AWS autoScaling 
 - AWS Trusted Advisor
 - AWS Organizalions
 - AWS CloudFormation
 - AWS COnfig 
 - AWS CloudTrail

*Database*
 - Amazon RDS
 - Amazon DynamoDB
 - Amazon Aurora
 - Amazon DocumentDB
 - Amazon Redshift
 - Amazon Neptune
 - Amazon ElastiCache

*Security, Identity & compliance*
 - AWS Identify & Acess management(IAM)
 - AWS WAF
 - Aws Shield 
 - AWS Artifact

## Vantagens de Cloud Computing:

*Economia*:
Despesas variáveis - Fazendo uma analogia como se fosse a luz da sua casa, quanto mais eu utilizo mais eu gasto, caso eu deixe a luz apagada eu não gasto. Em nuvem pagamos apenas pelo que usamos. (Pay-as-you-Go)

Grandes economias em escala - Quanto mais clientes AWS possui, mais barato o serviço sai para o cliente no final.

Pare de fazer suposições: Compras de servidores e infraestrutura(redução de Capex).

*Aumente a velocidade e a agilidade*:
Nuvem permite que você tenha mais velocidade e desempenho em suas aplicações em tipos de máquinas diferentes. *Time to Marketing*.

*Torne-se Global*:
Permite que o negócio se torne global em pouco tempo, diminuindo a latencia do seu negócio em servidores em vários cantos no mundo.
 
Sempre teremos a capacidade de aumentar a quantidade de recursos que eu possa ter em Cloud, seja de memórias ou escalar processos. 

Com isso, temos dois conceitos:
 
**Escalabilidade** - aumento de instâncias para determinado workload.

**Elasticidade** - aumento de recursos computacionais para determinado workload.

E só será pago pelo que foi usado. Se a aplicação pode ir até 100 e foi utilizado 50, só se paga os 50. Podemos ainda escalar até o 100 sem que ela caia, tudo feito de forma automatizada. Exemplo: Otimizar a nível horizontal, sempre para criar cópias de várias maquinas para se ter mais instâncias para seu grupo, ou seja tem várias máquinas rodando sua aplicação, então 100 pessoas está na sua instância 1, então para balancear vai 50 para instância 2. 

<image src="https://user-images.githubusercontent.com/12403699/234676736-db8d7e43-1b60-457a-9445-abf6783cfe1b.png" width="600" height="300">
  
O modelo de cobrança *Pay As You Go* (PAYG) é um mecanismo de cobrança virtual, aplicado em sistemas integrados de computação, e foi desenvolvido para empresas e profissionais que desejam otimizar seus processos de maneira prática e econômica. Ele permite que o usuário utilize os recursos de maneira esporádica, mais especificamente, quando houver necessidade. Desta forma, será possível reduzir seus gastos com este tipo de investimento, e otimizar o tempo por meio da automatização de diversos processos.

Exemplo de serviços elásticos:
- Amazon EC2
- AWS Elastic Beanstalk
- Amazon Elasticache

Objetivos :
Melhorar a disponibilidade | Obter um ambiente tolerante a falhas. | Refletir nos custos operacionais.

## Modelos de serviço de Cloud

*IaaS* Infraestructure as a service
 - Servers
 - Storage
 - Network
 [Hospedar]

*PaaS* Platform as a service 
 - O/S
- Servers
- Storage
- Network
[Programar]

*SaaS* Software as a service 
- APP
- Dados
- O/S
- Servers
- Storage
- Network
[Usar a aplicação pronta em um modelo de Opex]

<image src="https://user-images.githubusercontent.com/12403699/234436596-8dd96d37-dd6b-456e-938a-5dc61d1ad733.png" width="600" height="400">  

## *Infrasestrutura Global Aws* 
 
*Região*

Uma Região é a disponibilização de uma coleção de recursos AWS em uma região do mundo, para diminuir a latência da programação. Localização geográfica, sendo ele composto por um conjunto de zonas de disponibilidades. Um local físico em todo o mundo onde agrupamos datacenters. Chamamos cada grupo de datacenters lógicos de zona de disponibilidade. Cada região da AWS consiste no mínimo em três AZs isoladas e separadas fisicamente em uma área geográfica. Diferentemente de outros provedores de nuvem, que geralmente definem uma região como um único datacenter, o design de múltiplas AZs de cada região da AWS oferece vantagens para os clientes. Cada AZ tem energia, refrigeração e segurança física independentes e está conectada por meio de redes redundantes de latência ultrabaixa. Os clientes da AWS, focados em alta disponibilidade, podem projetar seus aplicativos para serem executados em várias AZs, a fim de obter tolerância a falhas ainda maior. As regiões de infraestrutura da AWS atendem aos mais altos níveis de segurança, conformidade e proteção de dados.

A AWS fornece uma presença global mais extensa do que qualquer outro provedor de nuvem. Para oferecer suporte à sua presença global e garantir que os clientes sejam atendidos em todo o mundo, a AWS abre novas regiões rapidamente. A AWS mantém várias regiões geográficas, incluindo regiões da América do Norte, África do Sul, América do Sul, Europa, China, Ásia-Pacífico, África do Sul e Oriente Médio.

*Availability Zone*

Uma zona de disponibilidade é um ou mais Datacenters que estão na mesma região, porém separados por uma distância significativa, agindo de forma independente. Elas proporcionam aos clientes a capacidade de operar aplicativos e bancos de dados de produção com alta disponibilidade, tolerância a falhas e escalabilidade em níveis superiores aos que um único datacenter pode oferecer. Todas as AZs em uma região da AWS estão interconectadas por redes de alta largura de banda e baixa latência, usando fibra metropolitana dedicada e totalmente redundante para proporcionar redes de alto *throughput* e baixa latência entre AZs. Todo o tráfego entre as AZs é criptografado. O desempenho da rede é suficiente para realizar a replicação síncrona entre as AZs. As AZs particionam aplicativos para facilitar a alta disponibilidade. Se um aplicativo for particionado em várias AZs, as empresas estarão melhor isoladas e protegidas contra problemas como quedas de energia, raios, tornados e terremotos, entre outros. As AZs são fisicamente separadas por uma distância significativa (vários quilômetros) das outras AZs, embora todas estejam em um raio de até 100 km entre si.
 
*Edge locations ou Pops*
 
São utilizados com Amazon cloud front como cache de dados para distribuir conteúdos.

<image src="https://user-images.githubusercontent.com/12403699/234677469-0b1e94c3-8c35-4c61-9602-36470bdcd419.png" width="600" height="350">  
 
Resumindo como elas se interligam:
 
Região é um conjunto de data center em uma localzação geográfica. Cada região possui um conjunto de zonas de disponibilidade. AZ estão dispostas quilômetros de distância uma das outras, conectadas com alta velocidade, com segurança local, refrigeração e podem ser um Ou mais Data Centers
 
**Region > Availability Zone > Edge Location**
  
## Serviços regionais x Serviços Globais
  
<image src="https://user-images.githubusercontent.com/12403699/234436103-3ee9e550-8a2c-4d38-b581-d060f3037890.png" width="700" height="350">
  
## *Shared responsability* 
O Provedor sempre tem uma parcela da responsabilidade e o cliente também.  Enquanto a AWS gerencia a segurança da NuvemVocê é responsável pela segurança na nuvem

Security Of the cloud é responsabilidade da AWS Security in the cloud é responsabilidade do Customer.Um recurso deixa de ser gerenciado por você quando a outra parte inica o gerenciamento, as atualizações, a manutenção do sistema operacional e a segurança. 

<image src="https://user-images.githubusercontent.com/12403699/234677899-a7b318a7-f6b3-4cea-81d1-6a82baa3ad02.png" width="700" height="350"> 
 
  
## Referências

*https://aws.amazon.com/pt/certification/certified-cloud-practitioner/*
 
*https://aws.amazon.com/pt/products/*
 
*https://aws.amazon.com/pt/serverless/*
 
*https://aws.amazon.com/pt/about-aws/global-infrastructure/regions_az/-*
