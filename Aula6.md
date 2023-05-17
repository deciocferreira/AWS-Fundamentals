# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## EBS, Snow Family, Glacier, VPC & Cloud Quest
  
ACL - é a nível de rede.
SG - é a nível de instância.

Amazon EBS 
Elastic block store
Amaznamento de blocos em alta estala fácil de usar em qualquer escala.
Diferente do S3 que é tratado como objeto, aqui é armazenamento em bloco ou volume.
Bloco como se fosse disco rígido de nossa máquina
Armazenamento do EBS é permanente 
Sistema operacional - é colocado noamazon block store
Enquanto o S3 é colocado objetos, imagens entre outras coisas, mas o sistema operacional é no EBS
Por padrão quando fechamos uma instÂncia do EC2 ou S3, o volume do EBS iria pro saco também, a ideia do EBS é um armazenamento permanente, sem nenhuma perda.

Blocos persistentes (Recomendado para SO, BD)
Os dados neste volume do EBS Não irá desaparecer.

Quando iniciamos uma instância no EC2, criamos um volume no EBS, quando escolhemos o trabalho e tals.

1GB, 8 GB
ebs: seria como um hd externo

Proteção através de Replicação (SLA 99,.9%)

Ele está em várias zonzas de disponibilidade
Existe diferentes classes:
Tipo Solida State Drive SSD
gp2, gp3 = Uso geral
Provisioned IOPS SSD: io1, io2, io2 block express = Para acessos mais rápidos
Tipo Hard disk drive HDD
Cold HDD
Throghput Optimidez


Redimensionar em minutos:
Ela pode aumentar o tamanho de um volume, enquanto ambiente é executado


Snapshot manual ou automático:
Os dados do usuários, servidor WEb, você consegue criar um volume para guardar os dados do usuário, ou das configurações do seu programma, então guarda aquele momento do EBS

VocÊ pode usar a snapshot para copiar o volume exato, então a colocar em outro recurso


Criptografia em repouso quando o volume for criado você já criptográfa 

Uma zona de disponibilidadE:
O volume deve está em uma zona de disponibilidade mesmo este podendo está atribuído em vários lugares


Link de apoio:https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/AmazonEBS.html

Família AWS SNOW


Snowcone
8 TB
4vcpu
Criptografia em 256 bits
Wi-fi, compativel com 802.11abgn
2x Gib
Resistente a água, poeira, quedas e temperatura
LCD para funções adminstrativas
Peso 2.1 kg
Cenário AWS SNOWCone
Evento esportivo
Exército
Hospital de campanha

AWS Snowcone = 8TB

Amazon Simple storage service SE

utilizamos ele para enviar os arquivos para S3, o Snowcone é como se fosse um grande peendrive 

Normalmente ele é usado em ambientes mais remotos.

Snowball Edge 

Storage optimized
100 TP disponível 80 TB
40 vPU
80 GB memória
Compute optimized
42 TB disponível 39,5, TB, somente no primeiro modelo do compute optimized
104vCpu
416 GB memória
SSD 28 TB NvMe
Criptografia em 256 Bits
Resistente a violações
Menos 23KG


Cenário AWS Snowball Edge

Contexto:
Servidor on-premises 100 TB dados

AWS snowbaal edge Storage optimized
100 TB disponível 80 TB

Amazon simple Storage Service s3
Caso não utilizasse isso demoraria em média 100 dias, 3, 3 meses.


Outro exemplo:

Cruzeiro:
AWS Snowball Edge Compute optimized
42 Tb disponível 39,5 TB


	

Snowmobile

SnowMobile
tRANSPORTE CONJUNTO DE DADOS ESCALA: EXABYTES

Pode transportar até 100 petabytes de dados em uma única ciagem, o equivalente a usar cerca de 1.250 dispositivos AWS SNOWBAL

Mais indicado quando quer 30 anos de dados migrar para AWS

Se fosse utilizar uma internet levaria +990 dias ou seja 2.7 anos.

S3 Glacier 
Glacier Deep Arquive:


Amazon Glacier
Pega objeto em outra determinada classe e colocar ele dentro do Glacier, o glacier é algo que se só precisa acessar de longo prazo, pode ser por command line ou sdk

Sendo imutável após o envio para o Glacier

Armazenamento longo prazo
Glacier instance retrieval: 0,004 usd por gigabyte-mes região nv (norte da virgiina
)
Glacir flexible retrieval: 0,000

Inteligent Tiering:
Com elas estabelecemos as regras do círculo de vida, e ela vai distribuir entre as classes do S3
Ficam até 24 horas no bucket S3

Amazon VPC
Nuvem virtual privada.
Virtual privade Cloud
VPC

Nos podemos criar vpc dentro de regiões

Tudo que fazemos no ambiente ON-premesis ou dados sensíveis, é tudo dentro de VPC

mESMO CONCEITO on-premesis: Trabalha com Firewal ou outras coisas, você tem o total controle da configburação

Oferece camadas de segurança(SG & NACLs)

Os grupos Nacls: São firewal que precisamos definir regras tanto de entregada como de saídas.

Conectativdade com outros servidores.


Ele se conecta com vários serviços da AWS

Como exemplo:
Amazon EC2
Amazon RDS
Amazon S3 

Entre outros. 

Região e Zonza disponibilidade: Toda região terá uma vpc padrão
Sub-redes Pública e Privada
Tabela de roteamento
Internet Gatedway sub-red pública = Um portal para VPC
Nat Gateway sub-rede privada
Security Group [SG] E NetWork acess list
NACLs = a NÍVEL DE SUB-REDe controla em minha sub-rede pública tipo instância EC2 e minha privada como o banco de dados

Nat = Network net translation = Tradutor de informações para Rede.


A nível de sub-rede = É o firewal NaCSLS


Sub rede pública tem acesso ao internet do usuário.
Sub rede privada = É aquela que não pode ter acesso direto a internet a Nacls


NAT Gateway - Posicionamos na rede pública, para ele acessar a rede privada para dá a ela acesso a internet

Toda região que você entra na AWS tem a VPC padrão, mas dentro dela vocÊ pode criar suas sub-redes e suas VPCS própribas.

VPC seria seu datacenter, seu pedaço, sua casinha dentro da Nuvem AWS
  
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/13992b0f-d520-441e-b87c-54ba7fa955c6)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/6f727b68-05f8-45d4-aba7-7883ad9204f0)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/22681807-d75d-444f-b5c5-55ab61a65397)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/826608b6-db24-4410-bbb6-19ef227ae130)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/066218b7-fbad-4cb8-84f7-9db39daead3d)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/f6018666-adf9-42ae-98aa-ea4ac3d1bb39)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8e98c8d7-941e-4260-8b45-8beb5641036c)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/5f892063-7cef-46ff-b261-150f97a6be13)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8e13da47-d423-457e-ace1-9b47b88b0b69)
