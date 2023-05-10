# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="60" height="50"> 
  
## Auto Scaling, Lambda e BeanStalk
  
Amazon EC2 Launch Types

Opções de compra de instância.
Instâncias do Amazon EC2 são categorizados de formas diferentes
Existem instâncias de proposito geral, otimizado orçamento, otimizado a memória, etc.

Instâncias sobre demandas:
sob demanda
Instâncias Spot
Instancias reservada e saving plangs
Host e instâncias dedicada

Instâncias sobre demanda (On demand instances)
Alto custo se usado por longo prazo
cobrança o que usar por hora ou por segundo
Sem compromisso de uso
Sem pagamento adiantado
Pode aumentar ou diminuir a capacidade computacional

UTIL: Cargas de trabalho de curto prazo, validar hipóteses, como pico de utilização imprevisível, testar e experimentar um ambiente.

Serve principalmente: Para fazer um determinado teste, ou utilizar em algum pico de clientes em seu site, porém ela pode sair cara se ela ficar parada por um grande período do tempo.

Mas seu positivo é atender o trabalho de curto prazo, situações como black fried e outra coisa.

Ri (Instâncias reservada/reserved instances)

Até 72% desconto comparação instâncias por demanda
Aplicações que xigem capacidade reservada
comportimento de uso de instância por um período de 01 ou 03 anos.
Possui pagamento adiantado

Util: Ambiente de produção que foi testado e não será modificado, aplicações qiue precisar ser estado constante; como banco de dados, ou aplicações de Api acessado a todo momento.


Porém 72% o compromentimento de uso de 01 ou 3 anos.

Não é 1 e 3 anos e sim 1 ou 3 anos.

Instâncias reservadas não são instâncias físicas. 

O Desconto da instÂncia reservada é aplicada na sua conta AWS, quando você compra a instÂncia por demanda e colocar no seu espaço


Saving Plans


Até 72% desconto comparação instâncias por demanda

Compromentimento de gasto por hora por um períodod e 01 ou 03 anos

Possui três formas de pagamentos: Pagamento antecipado, parciaial e sem pargamento adiantado.


Util: Workloads de longa duração, como aplicativo em execução de 24 horas, 7 dias semanas.

Workloads: Workload, é um termo usado na área de tecnologia da informação para se referir a um conjunto de códigos e recursos que fornece valor empresarial, como um aplicativo voltado ao cliente ou um processo de back-end.


Existe três formas de pagamento como instância reservada:
Pagamento antecipado -> Mais desconto
Dá uma entrada -> Medio desconto
ou só no final do uso -> pouco desconto.

Você se compromete sempre a 1 ou 3 anos.

SEMPRE 1 OU 3 ANOS.

Dedicated Host

Hardware dedicado
Servidor físico EC2 exclusivo para você
Cumprir requisitos de conformidade
Visbilidade de soquetes, núcleos, ids de hos.
Compromentimento por um período de 03 anos.
Pode ser comprado sob demanda de horas
Se optar por reserva, até 70% desconto em comparação com as instâncias por demanada:

Util: Vincular licenças de software, como Windows, Server, SQL Server, Suse Linux enterprise Server.

O Padrão  da Aws é que seja multi host, então os servidores serem divididos entre várias pessoas sem que um interfira no outro, mas algumas empresas precisam de host físico dedicados apenas a elas.

Apenas o cliente poderia dedicar suas coisas no host.

É apenas com relação em quesito de conformidade.

Normalmente para sistemas bancarios ou de hospítais.

Dedicated Instances

Hardware dedicado
Pode compartilhar o hardware com outras instâncias, na mesma conta
Não tem controle sobre o posicionamento da instância você ó pode movimentar o hardware sem interromper e reiniciar,.
Compromentiment: por um período de 3 anos.


Host dedicados:
Permite o uso de servidores físicos dedicados
Faturamento por host
[ Visibilidade de soquetes, núcleos, ids de host] - Foco
Afinidade entre um host e uma instância
Inserção de instâncias específica
Inserção de instância automática
Adicione capacidade usando uma solicitação de alocação

Instâncias dedicadas:
Permite o uso de servidores físicos dedicados
Faturamento por instância
Inserção de instância automática.


Spot instances
Até 90% desconto comparação instancias por demanda
são terminadas quando o preço do spot, é maior do que o preço que você estabeleceu para pagar
Memorize como leilão de instâncias
Terminal = (preço spot da AWS > Seu preço)
Não utilize para trabalhos críticos e bancos de dados

Util: Quando você tem urgência de grande capacidade computacional, workloads que podem parar a serem iniciados novamentes, trabalho em lote, analise de dados, processamento de imagens.


AWS pode recuperar a instância a qualquer momento quando ela precisar dando a você o aviso de 2 minutos para concluir o seu trabalho e salvar o estado. 
Você pode retornar mais tarde e para isso assegure que suas cargas de trabalho possa tolerar interrupções  
(ex: cargas de trabalhos em lotes)

Dicas do exame:
Ambiente de testes, picos e homologação, ambiente produção, computação o extra. =  Sob demanda

Homologação = Host/Instância dedicada até 70%

Ambiente de produção  =Instância reservada/Saving plans até 72%

Computação o extra =Desconto de até 90% em relação ao preço das instancias sobre demanada

Para que precisamos?
Escabilidade automatizada
Scale out = Adicionar instâncias
Scale in = Remover instancias. 


Aws auto scaling Groupd

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
  
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/080e1052-cdef-40a1-952b-c9526a3292b6)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ae276dbb-4c32-4c91-ba27-ed9860ed0cb2)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/8c7fef6b-7da2-40fc-937d-46e9195b9ed8)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/9a7b81cf-1d81-418c-904f-1c89c1a3bf81)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/3f164c82-acf1-4a2b-822b-b87266c25a7b)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/ad39a2fa-a307-410f-80cb-f045d95854d8)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/595bae54-ba09-4507-abdb-cb192ef767f7)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/458b512b-ac4f-47e1-a029-74c36e990f3f)
![image](https://github.com/deciocferreira/AWS-Fundamentals/assets/12403699/0e763f1e-6278-4ab0-af64-dc718ee02798)


