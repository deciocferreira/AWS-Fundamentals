# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  


##O que é Nuvem? 
É uma tecnologia de computação em que os recursos de infraestrutura, como servidores, armazenamento e software, são fornecidos pela Internet ou por uma rede privada. 
Os usuários podem acessar esses recursos sob demanda e pagar apenas pelo que usam, em vez de ter que investir em infraestrutura de TI própria.

Escalabilidade - aumento de instâncias para determinada workload.

Elasticidade - aumento de recursos computacionais para determinado workload.
  
Região> Az> Edge Location, funciona assim
  
## Serviços regionais x Serviços Globais
  
<image src="https://user-images.githubusercontent.com/12403699/234436103-3ee9e550-8a2c-4d38-b581-d060f3037890.png" width="800" height="450">
  
## *Shared responsability* 
  
<image src="https://user-images.githubusercontent.com/12403699/234436596-8dd96d37-dd6b-456e-938a-5dc61d1ad733.png" width="700" height="400">  

  Enquanto a AWS gerencia a segurança da Nuvem
Você é responsável pela segurança na nuvem
  Guia do exame:
aws.amazon.com

Vá no aprenda
Explorar certificações da AWS
Baixe o guia dos exame.

Visão Geral AWS
Computação
FC2
Amazon FC2 Auto Scaling
AWS Classic Beanstalk
AWS Lambda

Redes e entrega de conteúdo
Amazon VPC Amazon Route 53
Amazon CloudFront 
Balic load balancing 

Gerenciamento e Governança
Amazon CloudWatch
AWS autoScaling 
AWS Trusted Advisor
AWS Organizalions
AWS CloudFormation
AWS COnfig 
AWS CloudTrail

Banco de dados
Amazon RDS

Amazon DynamoDB

Segurança, identidade e compilance
AWS Identify & Acess management
AWS WAF
Aws Shield 
AWS Artifact


O que é computação na nuvem:
Falou em AWS falou em Cloud

"É a entrega sob demanda de recursos computacionais, através de uma plataforma de serviços via internet, sem o gerenciamento ativo do usuário."

Usamos nuvem todos os dias
Netflix
whatsapp
Google Drive


Responsabilidade compartilhada:
O Provedor sempre tem uma parcela da responsabilidade e o cliente também.


Estamos em transição
As empresas estão cada vez mais utilizando a nuvem, algumas roda de forma híbrida 


Um Novo ambiente:
Para aqueles profissionais que já atuam na área de TI, esse novo ambiente não seja tão novo ainda.


Seis vantagens da computação na nuvem:

Economize

Despesas variáveis: Permite que trate a infraestrutura como se fosse a luz da sua casa, quanto mais eu utilizo mais eu gasto, caso eu deixe a luz apagada eu não gasto.


Aumente a velocidade e a agilidade:
Nuvem permite que você tenha mais velocidade e desempenho em suas aplicações em tipos de máquinas diferentes. Time to Marketing.

Pare de fazer suposições: Suposições de compras de servidores e infraestrutura.

Grandes economias em escala: Quanto mais clientes AWS possui, mais barato o serviço sai para o cliente

Torne-se Global:Permite que o negócio se torne global e internacional, diminuindo a latencia do seu negócio em servidores em vários cantos no mundo.


IaaS:
Infraestrutura como serviço. (Amazon EC2)
Servers
Storage
Network
[Hospedar]

PaaS:
Plataforma como serviço (Só preocupa com sua aplicação)
O/S
Servers
Storage
Network
[Programar]

 
& SaaS
Sofware como serviço (Netflix)
APP
Dados
O/S
Servers
Storage
Network
[Usar]


Veja um exemplo como uma Pizza:


Tradicional: Fazer em casa.

IaaS: Comprar no Mercado


PaaS: Pedir no aplicativo ou no telefone.


SaaS: Jantar fora.


Escalabilidade % Elasticidade:

Escabilidade

Amazon EC2 Auto Scaling 

|
Minimo
|| 
Desejado
||||
Maximo

||
Disponível para escalonar


Sempre vou ter a capacidade de aumentar a quantidade de coisas que eu possa ter dentro da nuvem, seja de memórias ou outras coisas, ou seja ter recurso a mais, de escalar seu processo. Expandir seu seus clientes ou processos.

E você só vai pagar pelo que você pagar.
Se sua aplicação pode ir até 100
E você utiliza 50, você só paga os 50

Mas ela pode escalar até o 100 sem cair a aplicação, tudo feito de automatizada.

 
Otimizar a nível horizontal, sempre para criar cópias de várias maquinas para se ter mais instâncias para seu grupo, ou seja tem várias máquinas rodando sua aplicação, então 100 pessoas está na sua instância 1, então para balancear vai 50 para instância 2.

Imagina que um restaurante possui 1 atendente no café da manhã, no entanto no almoço o restaurante encher necessitando 3 atendentes para cobrir os clientes, isso [e escalar horizontalmente 

Benefícios:
<|> Melhorar a disponibilidade
<|> Obter um ambiente tolerante a falhas.
<|> Refletir nos custos operacionais.


Elasticidade: 
Você precisa de mais, possui mais maquinas virtuais 

Se você precisa de menos, terá menos maquinas virtuais.

O Software Pay As You Go (PAYG) ou Pay Per Use é um mecanismo de cobrança virtual, aplicado em sistemas integrados de computação, e foi desenvolvido para empresas e profissionais que desejam otimizar seus processos de maneira prática e econômica.

O PAYG permitirá que o usuário utilize os recursos de maneira esporádica, mais especificamente, quando houver necessidade. Desta forma, será possível reduzir seus gastos com este tipo de investimento, e otimizar o tempo por meio da automatização de diversos processos, como por exemplo, a emissão de documentos atrelados à importação.

Serviços Elásticos:
Amazon EC2
Elastic Balacing
AWS Elastic Beanstalk
Amazon Elasticache


Nuvem sempre escalar em horizontal, com várias instâncias.


Dicas de Exame:
Escalabilidade: Aumentar/diminuir o número de instâncias.
Elasticidade: Aumentar/diminuir os recursos computacionais.


Infrasestrutura Global Aws:


REGIÕES:

Uma Região é a disponibilização de uma coleção de recursos AWS em uma região do mundo, para diminuir a latência da programação. Localização geográfica, sendo ele composto por um conjunto de zonas de disponibilidades.


A AWS tem o conceito de uma região, que é um local físico em todo o mundo onde agrupamos datacenters. Chamamos cada grupo de datacenters lógicos de zona de disponibilidade. Cada região da AWS consiste no mínimo em três AZs isoladas e separadas fisicamente em uma área geográfica. Diferentemente de outros provedores de nuvem, que geralmente definem uma região como um único datacenter, o design de múltiplas AZs de cada região da AWS oferece vantagens para os clientes. Cada AZ tem energia, refrigeração e segurança física independentes e está conectada por meio de redes redundantes de latência ultrabaixa. Os clientes da AWS, focados em alta disponibilidade, podem projetar seus aplicativos para serem executados em várias AZs, a fim de obter tolerância a falhas ainda maior. As regiões de infraestrutura da AWS atendem aos mais altos níveis de segurança, conformidade e proteção de dados.

A AWS fornece uma presença global mais extensa do que qualquer outro provedor de nuvem. Para oferecer suporte à sua presença global e garantir que os clientes sejam atendidos em todo o mundo, a AWS abre novas regiões rapidamente. A AWS mantém várias regiões geográficas, incluindo regiões da América do Norte, África do Sul, América do Sul, Europa, China, Ásia-Pacífico, África do Sul e Oriente Médio.


Zona de Disponibilidade:

Uma zona de disponibilidade é um ou mais data center suq estão na mesma região, porém separados por uma distância significativa, porém agindo de forma independente. 

Uma zona de disponibilidade (AZ) é um ou mais datacenters distintos com energia, rede e conectividade redundantes em uma região da AWS. As AZs proporcionam aos clientes a capacidade de operar aplicativos e bancos de dados de produção com alta disponibilidade, tolerância a falhas e escalabilidade em níveis superiores aos que um único datacenter pode oferecer. Todas as AZs em uma região da AWS estão interconectadas por redes de alta largura de banda e baixa latência, usando fibra metropolitana dedicada e totalmente redundante para proporcionar redes de alto throughput e baixa latência entre AZs. Todo o tráfego entre as AZs é criptografado. O desempenho da rede é suficiente para realizar a replicação síncrona entre as AZs. As AZs particionam aplicativos para facilitar a alta disponibilidade. Se um aplicativo for particionado em várias AZs, as empresas estarão melhor isoladas e protegidas contra problemas como quedas de energia, raios, tornados e terremotos, entre outros. As AZs são fisicamente separadas por uma distância significativa (vários quilômetros) das outras AZs, embora todas estejam em um raio de até 100 km entre si.


https://aws.amazon.com/pt/about-aws/global-infrastructure/regions_az/- Pesquisem.
  

Pontos de presença = edge locations
São utilizados com Amazon cloud front.

Poips são utilizados como cache de dados para distribuir conteúdos

Região é um conjunto de data center em uma localzação geogrÁFICA
Cada região possui um conjunto de zonas de disponibilidade.
Z/D  estão dispostos quilômetros de distância uma das outras, conectadas com alta velocidade, com segurança local, refrigeração e podem ser um Ou mais Data Centers

Edge Locations ou Pops são utilizados como cache de dados para distribuição de conteúdo.



:Seriviços Regionais:
EC2
Aws Lambda
AWS Elastic bREANTAL
aMAZON ec2 aUTO scaling


Serbiços Globais:
Amazon CloudFront

Amazon Route 53

AWS identity & aCESS NABAGENEBT
aws WAF



Reponsabilidade compartilhada:




Dicas do examee

Security Of the cloud é responsabilidade da AWS
Security in the cloud é responsabilidade do Customer.

Um recurso deixa de ser gerenciado por você quando a outra parte inica o gerenciamento, as atualizações, a manutenção do sistema operacional e a segurança. 
  
##Certificação

*https://aws.amazon.com/pt/certification/certified-cloud-practitioner/*
