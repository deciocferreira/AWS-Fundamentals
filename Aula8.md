# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## Monitoria, Governança e melhores práticas na AWS
  
*Amazon CloudWatch*
É um serviço de monitoramento de desempenho dos recursos da sua nuvem AWS.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/950fdff0-547e-491b-a096-1e103b4e2558" width="800" height="500">    

*COLETAR*
  
Métricas e Logs, Recursos e serviços na nuvem e on-premises. Métrica padrão 5 minutos. Métrica detalhada ($$$) por minuto.

Exemplo Métricas
- Amazon EC2: Utilização CPU, Status Check, Red,
- EBS Volume: Leitura e gravação do disco
- S3 Bucket: Tamanho do bucket S3, número de objetos
- Lambda: Tempo de execução e duração.

> **Não há coleta métricas de MEMÓRIA RAM DAS INSTÂNCIAS.**

*MONITORAR:* 
  
- Visualizar as aplicações e a sua infraestrutura em um único local.
- Acessar um dashboard automático
- Criar o seu dashborard personalizado, com os serviços e métricas que deseja acompanhar.
- Configurar alarmes visuais do ambiente

*ATUAR*
  
- Criar alarmes para atuar como *Trigger*, baseado nas métricas de uso e desempenho.
- Opções do gatilho: amostra %, valor máximo, mínimo, etc

Alarm Action
- Auto scaliuong: Aumentar ou diminuir o número de instÂncias no amazon EC2
- Amazon EC2: Para terminar, reiniciar ou recuperar uma instância.
- Amazon SNS: Enviar notificação para um SNS Topic, para que assinantes recebam um e-mail.

*ANALISAR*

- Analisar em tempo real o seu ambiente, em segundos ou posterior com até 15 meses de amazonamento dos logs

Estados de alarmes
- *OK* - Tudo bem
- *Insufficient_data* - Coletando dados para o ambiente 
- *Alarm* - Algo ruim aconteceu ou indica que a métrica não foi atingida.

## AWS CloudTrail

É um serviiço que possibilita GOVERNANÇA, CONFORMIDADE e AUDITORIA operacional e de riscos na conta AWS.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/41ebc762-b722-4a77-9fc7-9b20ef7782b9" width="800" height="500">  
  
*CloudTrail* está mais relacionado a uma trilha. Irá ter resquícios de atividade das pessoas. Ele rastreia e investiga as atividades que foram apagados, modificados ou adicionados. O Histórico permanece por padrão até por 90 dias, no entanto eu posso extender esse limite pagando mais, eu também posso fazer uma configuração exata para estes dados sejam salvos em uma bucket no S3.

*AWS Config*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/3b63184a-a490-447c-b041-a03896eea16d" width="800" height="500">  

Ele trabalha dentro de uma região, com base em uma check list que eu faço junto com o serviço, para avaliação dos meus recursos. É abrangente pois avalia as configurações que foram feitas ao longo do tempo para o recurso que ele está monitorando.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/4e6c27cc-214f-4ae2-b339-9a4e779a8544" width="800" height="500">    

Por exemplo se eu tenho uma instância do EC2 no Config, ele consegue monitorar totalmente a EC2 Sabendo seu Security Group, o tamanho, as mudanças feitas e compara com os estados anteriores da instância te dando um log de acesso. Ele serve como uma ferramenta de Debug para seu serviço da AWS, com base as suas determinações. Trabalha com a idéia de poder analisar um dos seus serviços com passar do tempo.
  
Config é Regional. Auxilia na auditoria das alterações dos recursos para compliance. Mantém o histórico das alterações e armazena em um bucket S3 para posterior análise. Notificações de alterações podem ser enviadas com Amazon SNS e disponibilizadas no Dashboard(painel) do AWS config. É um serviço pago.  

> Como sua instância começou, quando ela mudou, sempre monitorando a vida da sua instância.

*AWS Organization*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/78a4da30-1c33-48fe-8ef4-fa093e63d13c" width="800" height="500">   

Ele serve para organizar as sua conta da AWS. Semelhante a escola da nuvem, que tem uma conta da AWS a conta central, tem diversas subcontas da turma da AWS e todas elas se reportam a conta master da AWS. Todos custos das demais contas são atribuidas a conta Master da AWS, uma conta eleita para pagar. Em uma conta da AWS, eu posso ter várias subcontas como se fosse uma árvore orçamento.
  
É um serviço global que permite gerenciar múltiplas contas AWS. Uma conta principal Master Account com uma API disponível para criação de contas. A restrição das contas ocorre pelo SCP Service Control Police. Tem o objetivo gerenciar seu ambiente de forma mais organizada. 

*AWS Well-Architected*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/affcff5c-f91e-45da-9d22-a351fafe3fd1" width="800" height="500">   
   
> Na Nuvem eu posso simular ambientes, como se fosse em produção. Posso começar de uma forma e ir modificando com tempo. Permite que automatize a arquitetura com base nos dados de projetos.

> *Gamedays* São simulações com base no caos, seja finalização de várias instâncias para ver como seu ambiente vai se comportar. 

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/7b0a90b4-4483-46a3-81bc-4b273e3a9be0" width="800" height="500">   

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/e6fe8212-5eba-44ef-b0c3-d3efb9708f69" width="800" height="500">  

*AWS Artifact* é um local onde os acordos e relatórios de conformidade são armazenados para fins de consulta dos documentos para fazer auditoria.

A conformidade de acesso da AWS evidências que o serviço da AWS está sendo ofertado com as normas de segurança, ou seja, se a AWS segue as regras necessárias para nossos dados. São uma serie de dados, com base a documentos auditados que mostram que a AWS trabalha dentro das conformidade e temos acesso a esses documentos para evidenciar.
  
Seria como encontrar os certificados da AWS que mostram que ela está capacitada a trabalhar com aquelas normas. 

*AWS Trusted Advisor*

Ele analisa a infraestrutura AWS e mostra melhorias para elas, otimização de custos, desempenho, segurança, tolerância a falhas e limites de serviço.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d0eda362-bb44-4306-88a1-2d8ef3a2f580" width="800" height="500">  
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/b4474de4-6056-4be9-9a1a-f91cb684b258" width="800" height="500"> 

Ele da recomendações das coisas baseada no que está errado na sua conta AWS.

## Referências
  
https://aws.amazon.com/pt/organizations/

https://docs.aws.amazon.com/pt_br/organizations/index.html 
  
https://aws.amazon.com/pt/well-architected-tool/?nc2=type_a  
