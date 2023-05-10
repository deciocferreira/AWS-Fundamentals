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

- Permite o uso de servidores físicos dedicados com faturamento por host.
- Visibilidade de soquetes, núcleos, ids de host
- Afinidade entre um host e uma instância
- Inserção de instâncias específica
- Inserção de instância automática
- Adicione capacidade usando uma solicitação de alocação  
  
> O Padrão da AWS é que seja multi host, então os servidores serem divididos entre várias pessoas sem que um interfira no outro, mas algumas empresas precisam de host físico dedicados apenas a elas.

> Apenas o cliente poderia dedicar suas coisas no host com relação em quesito de conformidade.

> Normalmente para sistemas bancarios ou de hospítais.

*Dedicated Instances*

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/3f164c82-acf1-4a2b-822b-b87266c25a7b" width="600" height="400"> 

- Permite o uso de servidores físicos dedicados
- Faturamento por instância
- Inserção de instância automática.

*Spot instances*
  
<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ad39a2fa-a307-410f-80cb-f045d95854d8" width="600" height="400"> 

> Ideal Quando você tem urgência de grande capacidade computacional, workloads que podem parar a serem iniciados novamentes, trabalho em lote, analise de dados, processamento de imagens.

> A AWS pode recuperar a instância a qualquer momento quando ela precisar dando a você o aviso de 2 minutos para concluir o seu trabalho e salvar o estado. Você pode retornar mais tarde e para isso assegure que suas cargas de trabalho possa tolerar interrupções  
(ex: cargas de trabalhos em lotes)

> Dicas do exame:

<image src="https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/595bae54-ba09-4507-abdb-cb192ef767f7" width="600" height="400">   
  
Para que precisamos?
Escabilidade automatizada
Scale out = Adicionar instâncias
Scale in = Remover instancias. 


*AWS auto scaling Group*

Você define o minimo para operar
O máximo que ela pode chegar.
Se também define o desejado.
Disponível para escalionar

Ou seja dá para fazer uma instancia que para funfar ela no mínimo necessite de 2 GB
mas o desejado é que suba 4 GB
O disponível para escalionar é mais 4 GB
E o máximo que a instância pode chegar é 8GB

No caso imagem que sua instância tem 2 Gb, e tem 4 delas com 2 GB

Isso é chamado de Health Check.

Normalmente você sobe o desejado que é o 4GB acima do mínimo para facilitar, ele sempre mantém a quantidade desejada.

Ele normalmente remove quando acaba o pico mantendo apenas o desejado.

E tudo isso é feito automaticamente.

Seria semelhante a Netflix abrindo bem mais instância para alcançar o máximo de usuários assistindo, a nuvem é um ambiente elástico.

Auto scaling com elastic load balancing: Ele distribuir entre as instâncias a distribuição balanceada entre elas. 

Dicas de exame:
Definir uma quantidade mínima, desejável e máxima de instâncias

Realiza verificações heath check, finaliza as instâncias não saudáveis unhealthy

Elastic load Balancing: Dividi as requisições nas duas instâncias, para não sobrecarregar uma instância.

Scaling out = Adicionar instancias

Scaling in = Tirar instancias.

AWS eLASTIC Beanstalk

Aplicação no AWS, precisa se comunicar com banco de dados, boas práticas da AWS etc.
Ele vai facilitar a vida do desenvolvedor, AWS Elastic BeansStalk serve para ajudar desenvolver que não manja nada de AWS.

O Aws elastic beanstalk é um serviço gerenciado


Criação da Aplicação -> Envio da Versão - Ainicia o Ambiente - Gerencia o ambiente 


Dicas do exame:

Serviço gerenciado e gratuito
Plataforma como serviço PaaS

Upload código arquivo 512MB ou upload via Url Bucket S3

Balanceamento carga (load balancer)
Alta disponibilidade (multi-az)


Você planta o código e a AWS conecta serviços para subir sua aplicação


AWS Lambda:
Permite que você execute código sem provisionar ou gerenciar servidores, pagando pelo número de solicitações e pelo tempo de computação que você utilizar.

Lambda: Vamos imaginar, que a gente precise executar código na nuvem, para atender um requisito, que o usuário da minha aplicação faz upload de fotografias de gatos, além disso pega essa foto deixe ela menor e faça upload para outra bucket. É executar código com determinado gatilhos feito, neste exemplo do gato o gatilho é quando o usuário faz upload da foto.

A função deles é executar funções e se vai pagar o tempo para executar as funções.


Características

Serveless - AWS lAMBDA - Excalável E TEM BAIXO custo


Upload Código ou edição nativa -> Dispara a função do Lambda que tu criou -> Ele ativa o tmepo do lambda - Se passar pagamento do que demorou para iniciar.


Dicas do exame:

Serviço serveless e gerenciado pela AWS

Aws Lambda dimensiona suas aplicações
Você pode otimizar o tempo de execução e o tamanho de memória
Cobrança por número de solicitações de suas funções e pela duração por cada milissegundo que leva para que seu código seja executado.

![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/458b512b-ac4f-47e1-a029-74c36e990f3f)
