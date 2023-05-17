# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## EBS, Snow Family, Glacier & VPC 
  
*Amazon EBS - Elastic block store*
	
- Amazenamento de blocos fácil de usar em qualquer escala.
- Diferente do S3 que é tratado como objeto, aqui é armazenamento em bloco ou volume.
- Bloco como se fosse disco rígido de nossa máquina.
- Armazenamento do EBS é persistente. 
- Sistema operacional é colocado no Amazon Block Store.
- Enquanto o S3 é colocado objetos, imagens entre outras coisas, NO EBS é o sistema operacional.
- Por padrão quando fechamos uma instÂncia do EC2 ou S3, o volume do EBS seria excluido também, mas a ideia do EBS é um armazenamento permanente, sem nenhuma perda.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/13992b0f-d520-441e-b87c-54ba7fa955c6" width="800" height="500">  	

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/6f727b68-05f8-45d4-aba7-7883ad9204f0" width="800" height="500">	

*Blocos persistentes* - Os dados neste volume do EBS Não irá desaparecer. 
	Exemplo: Ao iniciarmos uma instância no EC2 e criamos um volume de EBS.

*Proteção através de Replicação* - Ele está em várias zonzas de disponibilidade

*Existe diferentes classes*
  - Drive SSD **gp2**, **gp3** = Uso geral
  - Provisioned IOPS SSD: io1, io2, io2 block express = Para acessos mais rápidos
  - Hard disk drive HDD
  - Cold HDD
  - Throghput Optimized

*Redimensionar em minutos* - Pode aumentar o tamanho de um volume, enquanto ambiente é executado.

*Snapshot manual ou automático* **PIT** - Criar um volume para guardar os dados do usuário, ou das configurações do seu programa, então guarda aquele momento do EBS. Snapshot pode ser usado para copiar o volume exato, para alocar em outro recurso.

*Criptografia em repouso* - Assim que o volume for criado, já pode aplicar criptografia. 

*Em uma zona de disponibilidade*- O volume deve estar em uma zona de disponibilidade mesmo este podendo está atribuído em vários lugares.

## Família AWS SNOW
	
*Snowcone*
- 8 TB e 4vcpu
- Criptografia em 256 bits
- Wi-fi, compativel com 802.11abgn
- Resistente a água, poeira, quedas e temperatura
- LCD para funções adminstrativas
- Peso 2.1 kg

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/46c01302-8b2d-4cdb-8f7e-0eaed4479f60" width="800" height="500">

Utilizamos o S3 para enviar os arquivos o Snowcone como se fosse um grande pendrive. Normalmente ele é usado em ambientes mais remotos e inósppitos.

*Snowball Edge* 

- Storage optimized
   - 100 TP disponível 80 TB
   - 40 vPU e 80 GB memória
- Compute optimized
   - 42 TB disponível 39,5 TB 
   - 104vCpu e 416 GB memória
   - SSD 28 TB NvMe
   - Criptografia em 256 Bits
   - Resistente a violações
   - Menos 23KG

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/cd65fbaa-70dc-4f3a-9be5-a2edcd94b88f" width="800" height="500">

> Transporte de conjunto de dados na escala dos **PETABYTES**.

Snowmobile

- Pode transportar até 100 petabytes de dados em uma única ciagem, o equivalente a usar cerca de 1.250 dispositivos AWS SNOWBAL
- Mais indicado quando quer migrar 30 anos de dados para a AWS, o equivalente a utilizar a internet levando 2.7 anos.
	
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/530ca659-69b7-46fb-bb05-c3a6b6ec1ed1" width="800" height="500">
	
> Transporte de conjunto de dados na escala dos **HEXABYTES**.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/22681807-d75d-444f-b5c5-55ab61a65397" width="800" height="500">  	
	
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/826608b6-db24-4410-bbb6-19ef227ae130" width="800" height="500">
	
*S3 Glacier* 
	
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/066218b7-fbad-4cb8-84f7-9db39daead3d" width="800" height="500">	

Pega objeto em outra determinada classe e colocar ele dentro do Glacier, o glacier é algo que se só precisa acessar de longo prazo, pode ser por command line ou SDK, sendo imutável após o envio.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/f6018666-adf9-42ae-98aa-ea4ac3d1bb39" width="800" height="500">

*Amazon VPC -Virtual privade Cloud*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8e98c8d7-941e-4260-8b45-8beb5641036c" width="800" height="500">	

Mesmo conceito de on-premesis: Trabalha com Firewall e outras coisas com total controle da configuração e dados sensíveis.
Oferece camadas de segurança(SG & NACLs)

Os grupos NACLs: São firewalls que precisamos definir regras tanto de entregada como de saídas.
Conectativdade com outros servidores.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/5f892063-7cef-46ff-b261-150f97a6be13" width="800" height="500">	

Ele se conecta com vários serviços da AWS
- Amazon EC2
- Amazon RDS
- Amazon S3 e entre outros

Região e Zona de disponibilidade
- Toda região terá uma vpc padrão
- Sub-redes Pública e Privada
- Tabela de roteamento
- Internet Gatedway sub-red pública = Um portal para VPC
- Nat Gateway sub-rede privada
- Security Group [SG] E NetWork acess list
- NACLs = a NÍVEL DE SUB-REDe controla em minha sub-rede pública tipo instância EC2 e minha privada como o banco de dados
- Nat = Network net translation = Tradutor de informações para Rede.
- NAT Gateway - Posicionamos na rede pública, para ele acessar a rede privada para dá a ela acesso a internet
	
> **ACL** é a nível de rede **SG** é a nível de instância.
	
> Sub rede pública tem acesso ao internet do usuário enquanto a Sub rede privada não permite ter acesso direto a internet.

Toda região que você entra na AWS tem a VPC padrão, mas dentro dela pode-se criar suas sub-redes e suas VPCS próprias.

> VPC seria seu datacenter dentro da AWS.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8e13da47-d423-457e-ace1-9b47b88b0b69" width="800" height="500">	

## Referências	
	
*https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/AmazonEBS.html*	
