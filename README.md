# DOCKER

## ESSENTIAL COMMANDS

### o comando run tem as funções de download da imagem oficial do docker, criação de um container, a execução de um container e execução do container de modo interativo (parte visual)
docker container run hello-world

### download da imagem
docker image pool

### criação do container
docker container create

### inicialização do container
docker container start

### executar o container
docker container exec

### ver a versão do bash da máquina
bash --version

### executa os quatro comandos e mostra a versão do debian do container
docker container run debian bash --version

### visualizar os processos do sistema
ps

### visualizar os processos dos containers ativos
docker container ps

### visualizar todos os container que foram executados independente do status
docker container ps -a

### --rm: remove o container
docker container run --rm debian bash --version

### i: modo interativo, t: uso do terminal
### comando run sempre cria um novo container
docker container run -it debian bash

### --help: lista todos os comandos a ser utilizados no docker
docker container --help
docker image --help
docker volume --help

###  --name: é para nomear o container, mydeb: é o nome do container
docker container run --name mydeb -it debian bash

### listar os containers ativos
docker container ls

### executa todos os containers, independentedo status
docker container ls -a

### a: attached, vai anexar o terminal, ter acesso ao terminal
### i: modo interativo
### mydeb: container já criado
docker container start -ai mydeb

### criação do arquivo dentro do container
touch doc_docker

### comando para o Windows para encerrar a execução de um container
### stop: parar container, mydeb: nome do container
docker container stop mydeb

## MAPEAR PORTAS DOS CONTAINERS

### -p: flag referente a porta
### 8080: é a porta que vai ser exposta para fora do container
### 80: é a porta interna que o nginx vai ser iniciado
### nginx: é um servidor leve de HTTP, proxy reverso, proxy de e-mail IMAP/POP3, vai ser a imagem usada
docker container run -p 8080:80 nginx

### retorna o caminho atual da pasta onde o terminal está localizado
pwd

### -v: maneira de mapear volume
### $(pwd): local atual onde está executando o comando
## /not-found ou /html: caminho da pasta do host a ser mapeada
### /usr/share/nginx/html: caminho da pasta do container onde está o HTML 
docker container run -p 8080:80 -v $(pwd)/not-found:/usr/share/nginx/html nginx
docker container run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx

### exmaple: html file - html/index.html
    <html>
        <head>
            <title>Curso de Docker</title>
        </head>
        <body>
            <h1>conteudo da pagina</h1>
        </body>
    </html>

