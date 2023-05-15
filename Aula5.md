# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="60" height="40"> 
  
## Storage and Static Website
 
*S3 - Simple Storage Service*

Benefícios:
- Armazenamento virtualmente ilimitado
- Compartilhar arquivos ou criar um website estático
- Armazenar snapshots, backgups, gerar um armazenamento híbrido do seu ambiente on-premises
- Repositório de data lakes e análise de big data
- Baixa latência e alta velocidade
- Durabilidade 99.99999999999 (onze noves)

> Armazenamento = Buckets

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/822b7eb3-a06c-4b6c-9237-710c61054e09" width="700" height="500">  

> Criar bucket com nome único global  

- Arquivos = objetos
- Sub-pastas = Prefixos

> Configurar permissões para envio de dados.

*Ordem da URL*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/7620916c-d96d-4549-80a9-eb39d7b769d0" width="700" height="500">

**Nome-unico = ID Global** + **s3-website = Serviço** + **sa-east-1 = Região** + **amazonaws.com = Domínio** + **/pasta/ = Prefixo** + **arquivo.txt = objeto**

*Objetos*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d60b387a-2206-48af-b283-d990c802565f" width="700" height="500">

*Dicas de exame*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d5c28184-07c7-4d87-8fed-7006cf273675" width="700" height="500">  

*Classes de armazenamento*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/9dc1a8ad-fe76-4d36-bd78-49905a2c48ec" width="900" height="450">  

> Oferece uma variedade de categorias de armazenamento para atender diferentes casos de uso  

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/cbfcdee9-9bf0-4de0-87c2-c499bda5b61a" width="700" height="500">    
  
> O Hopistal onde você trabalha está procurando formas de armazenar os prontuários médicos com menor custo. Qual a melhor solução?

- S3 Standard: Uso Geral
- S3 Inteligent Tiering: Uso geral e movimentação automática
- S3 Standard Ia: Menor frequência e ideal para backup
- S3 One Zone IA: Menor frequência, mas zó uma ZD
- S3 Glacier instant Retrieval: Longa duração acessados uma vez por trimestre.
- S3 Glacier flexible Retrieval: Longa duração, arquivar dados, acessados uma vez ao ano.
- S3 Glacier Deep arquive: Arquivas dados, retenção longo prazo > 7 anos.

> O Serviço S3 é global. O nome do bucket é também é, como um domínio, mas quando bucket é criado ele passar ser regional pois o armazenamento necessita. Depois ele passa a ser distribuído globalmente.
  
## Referências
  
*https://docs.aws.amazon.com/pt_br/AmazonS3/latest/userguide/example-bucket-policies.html*  
