# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## Compute Services
  
## EC2 - *Elastic Compute Cloud*
  
- Capacidade computacional segura e redimensionável
- Computação: CPU, Memória, Rede, Armazenamento, Sistema operacional
- Definição de preço conforme uso e modalidades específicas a necessidade
- Instâncias com tipos otimizados para sua atividade 
  
  ***Conceito chave - Instância***
  
- Servidor virtual na nuvem AWS
- Possui configurações de memória, CPU, disco, rede e sistema operacional
  
  ![image](https://user-images.githubusercontent.com/12403699/235537388-08d166e2-8867-481c-ab8a-69ced9af14bc.png)

  *Tipos de instância*
- Diferentes tipos para casos de uso diferentes
- Várias combinações diferentes de configurações
   
  *Uso geral*
- Otimizadas para computação
- Otimizadas para memória
- Computação acelerada

**Otimizadas para armazenamento**
- Equilíbrio de recursos de computação, memória e rede
- Indicado para servidores de aplicativo, jogos, backend, banco de dados pequenos
  
**Otimizadas para computação**
- Ideal para cargas de trabalho que exigem processadores de alto desempenho
- Pode ser usado para os mesmos casos de uso da categoria de uso geral mas quando se deseja um melhor desempenho
- Ideal também para processamento em lote
  
**Otimizadas para memória**
- Projeto para alto desempenho no processamento de grandes
quantidades de informações na memória
- Exemplo: Bancos de dados de alto desempenho,
processamento em tempo real de dado
  
**Computação acelerada**
- Usa aceleração de hardware ou coprocessadores para executar alguns funções de forma mais eficiente do que em um software executado direto na CPU
- Exemplos de casos de uso: Cálculo de ponto flutuante, processamento de gráficos e correspondência de padrões de dados.
    
**Otimizadas para armazenamento**
  
- Ideal para cargas de trabalho que exigem acesso de leitura e gravação com grande volume de dados. 
- Casos de uso: Sistemas de arquivos distribuídos, Data warehouse, sistema de processamento de transações on-line.
  
 ## **ELB – Elastic Load Balancing**
- Balanceamento de carga de aplicação, gateway e rede
- Escopo regional
- Escala de forma automática, sem custos
- Junto ao EC2 AutoScaling permite criar aplicações altamente
disponíveis
  
  
## Mensageria
  
**Amazon Simple Queue Service**

- Sistema de enfileiramento de mensagens
- Um usuário envia uma mensagem para fila, o outro usuário lê, processa e a exclui da fila
  
**Amazon Simple Notification**

- Sistema pub/sub
- Utiliza tópicos como estrutura
- Usuário publica mensagens no tópico e assinantes escutam
  
## Serverless  
  
  **AWS Lambda**
- Execução de código sem provisionar servidores
- Código organizado em funções
- Você pode escolher a linguagem de programação de sua preferência
- Executa a partir de eventos ou chamadas diretas a API do Lambda
  
<image src="https://user-images.githubusercontent.com/12403699/235768004-20a01695-4964-4589-9327-34434f509e61.png" width="450" height="450">  
 
• ECR
   
<image src="https://user-images.githubusercontent.com/12403699/235768133-855666a9-9877-43c8-ae8d-57f44c4639bd.png" width="900" height="450">   
  
• ECS
  
<image src="https://user-images.githubusercontent.com/12403699/235768196-b73f5d59-e4ab-4823-945e-8242f641f77b.png" width="900" height="450">   

• EKS
  
<image src="https://user-images.githubusercontent.com/12403699/235768238-738cafac-3c1a-45e7-952c-9648dafaaa99.png" width="900" height="450">   
  
• AWS Fargate
  
<image src="https://user-images.githubusercontent.com/12403699/235768291-069cea7f-579a-42ab-9fa5-96484ae8a59e.png" width="900" height="450">   
    
## Referências
  
*https://aws.amazon.com/pt/ec2/*
*https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/concepts.html*
*https://aws.amazon.com/pt/ec2/instance-types/*
