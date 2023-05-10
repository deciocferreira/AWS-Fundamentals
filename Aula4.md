# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="60" height="40"> 
  
## Auto Scaling, Lambda e BeanStalk
  
*Amazon EC2 Launch Types*

Opções de compra de instância são categorizados de formas diferentes. Existem instâncias de proposito geral, otimizado orçamento, otimizado a memória, etc.
 
Instâncias sobre demandas:
- Sob demanda
- Instâncias Spot
- Instancias reservada e saving plangs
- Host e instâncias dedicada

*On demand*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/080e1052-cdef-40a1-952b-c9526a3292b6" width="600" height="400">   
 
> Serve principalmente para fazer um determinado teste, ou utilizar em algum pico de clientes em seu site, porém ela pode sair cara se ela ficar parada por um grande período do tempo. Seu propósito é atender o trabalho de curto prazo.

*Reserved instances*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ae276dbb-4c32-4c91-ba27-ed9860ed0cb2" width="600" height="400">  

> Ideal para ambiente de produção que foi testado e não será modificado, aplicações que precisar ser estado constante; como banco de dados, ou aplicações de Api acessado a todo momento.

> Instâncias reservadas não são instâncias físicas. 

> O Desconto da instância reservada é aplicada na sua conta AWS, quando você a compra por demanda e coloca no seu espaço.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0e763f1e-6278-4ab0-af64-dc718ee02798" width="600" height="300">    
  
Existe três formas de pagamento como instância reservada:
  
- Pagamento antecipado -> Mais desconto
- Entrada -> Médio desconto
- Final do uso -> menos desconto.

> Você se compromete sempre a 1 ou 3 anos.  
  
*Saving Plans*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8c7fef6b-7da2-40fc-937d-46e9195b9ed8" width="600" height="400">  

> Ideal para Workloads de longa duração, como aplicativo em execução de 24 horas, 7 dias semanas.

> Workload é um termo usado na área de TI para se referir a um conjunto de códigos e recursos que fornece valor empresarial, como um aplicativo voltado ao cliente ou um processo de backend.

*Dedicated Host*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/9a7b81cf-1d81-418c-904f-1c89c1a3bf81" width="600" height="400">   

> O Padrão da AWS é que seja multi host, então os servidores serem divididos entre várias pessoas sem que um interfira no outro, mas algumas empresas precisam de host físico dedicados apenas a elas.

> Apenas o cliente poderia dedicar suas coisas no host com relação em quesito de conformidade.

> Normalmente para sistemas bancarios ou de hospítais.

*Dedicated Instances*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/3f164c82-acf1-4a2b-822b-b87266c25a7b" width="600" height="400"> 

- Permite o uso de servidores físicos dedicados
- Faturamento por instância
- Inserção de instância automática.
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/86c5fd77-784d-49d7-a25b-24c59f7c3cf5" width="600" height="400">   

*Spot instances*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ad39a2fa-a307-410f-80cb-f045d95854d8" width="600" height="400"> 

> Ideal Quando você tem urgência de grande capacidade computacional, workloads que podem parar a serem iniciados novamentes, trabalho em lote, analise de dados, processamento de imagens.

> A AWS pode recuperar a instância a qualquer momento quando ela precisar dando a você o aviso de 2 minutos para concluir o seu trabalho e salvar o estado. Você pode retornar mais tarde e para isso assegure que suas cargas de trabalho possa tolerar interrupções  
(ex: cargas de trabalhos em lotes)

> Dicas do exame:

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/595bae54-ba09-4507-abdb-cb192ef767f7" width="600" height="400">   
  
>Escabilidade automatizada:
>*Scale out* que é Adicionar instâncias e
>*Scale in* Remover instancias

*AWS auto scaling Group*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/14d0b190-59da-4113-a069-a86b78afd84e" width="600" height="400">   
  
- Definição do mínimo, máximo e desejado disponível de escalonar para operação.

> Dá para fazer uma instância funcionar no mínimo com 2 GB mas o desejado é que suba 4 GB.
> O disponível para escalonamento é mais 4 GB e o máximo que pode chegar é 8GB.

No caso que uma instância tem 2 Gb, e tem 4 delas com 2 GB, conhecido como *Health Check*, normalmente você sobe o desejado que é o 4GB acima do mínimo para facilitar, ele sempre mantém a quantidade desejada e remove quando acaba o pico mantendo apenas o desejado. Tudo isso é feito automaticamente.
  
> Semelhante a Netflix abrindo bem mais instância para alcançar o máximo de usuários assistindo, um ambiente elástico.

*Auto scaling com elastic load balancing* 
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d3ce60e2-48cb-4638-b4dc-6bba2265f92b" width="600" height="400">     

Ele distribui a carga entre as instâncias.   

> Dicas de exame:

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/3e20add7-9f2b-454f-a246-9b5d76f8a59f" width="600" height="500">   
  
*AWS Elastic Beanstalk*

É um serviço gerenciado pela AWS onde vai facilitar a vida do desenvolvedor caso necessite colocar no ar uma aplicação, construindo toda a infra seguindo as boas práticas.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0505d985-2af6-4636-9440-46a98004b606" width="600" height="400">      

> Criação da Aplicação -> Envio da Versão - Ainicia o Ambiente - Gerencia o ambiente 

> Dicas do exame:

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/1ecf9802-2391-4497-8063-6be7618dda98" width="600" height="400">     

*AWS Lambda*
  
Serviço *Serverless* da AWS que permite a execução de códigos sem provisionar ou gerenciar servidores, pagando apenas pelo número de solicitações e pelo tempo de computação que você utilizar.

> Vamos imaginar que seja necessário executar código na nuvem, para atender um requisito que o usuário da minha aplicação faz upload de fotografias, além disso pega essa foto deixe ela menor e faça upload para outro bucket. É executar código com determinado *triggers*, neste exemplo da foto é feito quando o usuário faz upload da foto.

> A função deles é executar funções e se vai pagar o tempo para executar as funções.

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0977d5d1-657d-4c29-9fc0-4d8aa01d39f3" width="600" height="400">     
  
Características

Serveless - AWS lAMBDA - Excalável e baixo custo

> Upload de Código ou edição nativa -> Dispara a função do Lambda criada -> Ativa o tempo de execução do Lambda - Se passar, há pagamento do que demorou para iniciar.

> Dicas do exame:

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/d2fe3de3-74de-470e-8016-0944a1974038" width="600" height="400">  
