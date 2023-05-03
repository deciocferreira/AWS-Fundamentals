# AWS Fundamentals  <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">  

## Laboratório Prático - Provisionamento de uma instância EC2 
  
## Console
  
1. Ao logar na console, pesquise pelo serviço *EC2*:
  
<image src="https://user-images.githubusercontent.com/12403699/236019367-e3b684ac-5193-4f79-ba22-408b17f0a664.png" width="800" height="200">  
  
2. Irá aparecer um *dashboard* para criação e gerenciamento de instâncias, Clique em *Launch Instance*:

<image src="https://user-images.githubusercontent.com/12403699/236019966-f5bdc736-c961-489d-8975-0c86360d9aa3.png" width="1000" height="450">

3. Após isso, vai abrir a janela para configuração e criação da instância, de acordo com as configurações necessárias. Dê um nome, recomendo que crie uma *tag* para a mesma.
  
<image src="https://user-images.githubusercontent.com/12403699/236021218-2d20e9e1-1413-42f3-bdd4-1ba91519b7c6.png" width="800" height="200"> 

4. Escolha a EMI (tipo de sistema operacional), no caso AWS Linux:
  
<image src="https://user-images.githubusercontent.com/12403699/236021582-4be9466e-bbf8-4e79-bfc6-02e79383d1a3.png" width="600" height="600"> 

5. Selecione o tipo de instância, que será a t2.micro, pois ela é do *Free tier**:
  
<image src="https://user-images.githubusercontent.com/12403699/236022027-809c6af4-cde3-4759-9432-8cc3870105de.png" width="800" height="200">  

6. Dê um nome pra sua chave de autenticação (Key Pair) para conectar a instância e clica em criar uma nova chave. Crie de acordo com sua necessidade:
  
<image src="https://user-images.githubusercontent.com/12403699/236022413-7344c182-8999-485c-81db-29762a103fe6.png" width="500" height="500">

Após isso, dê um nome para o arquivo (.pem ou .ppk) e clique em create *Key pair*. Ele será baixado no seu computador.
  
7. Agora na parte de Network, a VPC padrão está selecionada, só precisa marcar os 3 checkbox "Allow", o restante a VPC que já está na conta se encarrega de fazer.
    Selecione o grupo de segurança existente ou crie um novo. Configure regras de TCP nas portas 22 (SSH) e 80 (http) se necessário.
  
<image src="https://user-images.githubusercontent.com/12403699/236024041-c9330952-50b6-465b-8a32-2641c7a8ffe7.png" width="500" height="500">
  
8. Configure armazenmento EBS caso seja necessário e após isso, clique em *Launch instance* que o AWS fará o processo de criação e provisionamento na console.
  
<image src="https://user-images.githubusercontent.com/12403699/236025028-9522b5d2-81eb-4737-997f-d30069601d73.png" width="300" height="500">

## CLI
  
## Terraform (Iac)  
  
## Referências  
  
