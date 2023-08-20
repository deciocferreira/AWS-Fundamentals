# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## Banco de dados SQL, NoSQL e Iac

*Amazon RDS*
  
O Amazon Relational Database Service é um banco de dados relacional que destaca-se por sua escalabilidade, automatização na aplicação de patches, provisionamento de hardware e backup na Nuvem AWS.
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/b97b7413-e145-458f-83df-9f69d83b2cfd" width="800" height="500">    

Um banco de dados relacional é um monte de tabela se comunicando entre si.

No RDS há:
 
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0d17fb7e-3113-4ccf-8cd4-49cd21d23295" width="800" height="500">

Amazon Aurora: DB criado pela própria AWS, sendo super rápido, ele foi desenvolvido para ser compatível com MySQL e PostgreSQL. Consegue ser 5 vezes mais rápido que o MYSQL.

> Banco de dados normalmente ficam em subnets privadas e o front end fica público. 

- Normalmente o RDS ou banco de dados em outra zonza disponibilidade para manter seguro. O RDS é regional e a instância fica dentro de uma zona de disponibilidade.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ce628082-ea7d-4ead-b7e7-a25036053f4f" width="800" height="500"> 
  
*Multi-AZ* é um sistema que habilita uma réplica da infra, que no nosso caso é um banco de dados, em outra zona de disponibilidade, com isso conseguimos redudância dos nossos dados, diminuindo a latência e congelamento em picos.

> Dá para utilizar o Auto-scaling no Amazon RDS.

> É possível fazer um Snapshot para manter um registro do banco de dados em determinado momento.

*Amazon DynamoDB*
  
É um banco de dados não relacional NoSQL de chave-valor e documento que oferece desempenho de milissegundos. Um BD não relacional normalmente é criado quando precisamos lidar com modelos de dados especificos. Ele consegue escalar na nuvem com muito mais facilidade que banco de dados relacionais. 

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/deae653f-1428-49f4-a9ed-34dcc2cd0f7f" width="800" height="500">   

DAX: Serve como um cache do DynamoDB, que é um serviço super rapido e fica mais rápido usando com cache.

Itens dentro do DynamoDB não pode ultrapassar em itens não ultrapassar 400kb

A chave de classificação: Serve para simplificar facilitar a busca pelos dados.
 
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/6ec1fc8d-92cf-4218-8cee-d63aa40ee7a9" width="800" height="500">    

>  O cliente foca em otimizar o desempenho do BD e passa a responsabilidade da gerência do Hardware para AWS.
  
> A porta de comunicação do MYSQL: É a 3306

*Outros servidor de Banco de Dados na AWS*

**Amazon Neptune** supports open graph APIs for both Gremlin and SPARQL, and provides high performance for both of these graph models and their query languages.

**Amazon Athena** is an interactive query service that makes it easy to analyze data directly in Amazon Simple Storage Service (Amazon S3) using standard SQL.
  
*AWS Cloudformation*
  
É um serviço da Amazon que permite provisionar e gerenciar recursos de infraestrutura na nuvem de maneira automatizada. Ele utiliza um modelo de configuração em formato JSON ou YAML para descrever a infraestrutura desejada. Com o CloudFormation, é possível definir e implantar recursos como servidores, bancos de dados e redes, de forma consistente e repetível. Ele agiliza o processo de implantação, oferece automação e facilita o gerenciamento de ambientes complexos.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8a4bfa9d-dbee-4a5a-8df1-2487e97016c1" width="800" height="500">
  
Time de desenvolvimento usa como ambiente de testes e produção, utilizando em JSON ou YAML para replicar uma infraestrutura múltiplas vezes.

Precisa ter controle de versão

## Referências
  
https://aws.amazon.com/pt/nosql/
