# DOCKER

## ESSENTIAL COMMANDS

#### o comando run tem as funções de download da imagem oficial do docker, criação e execução de um container de modo interativo (parte visual)
docker container run hello-world

#### download da imagem
docker image pool

#### criação do container
docker container create

#### inicialização do container
docker container start

#### executar o container
docker container exec

#### ver a versão do bash da máquina
bash --version

#### executa os quatro comandos e mostra a versão do debian do container
docker container run debian bash --version

#### visualizar os processos do sistema
ps

#### visualizar os processos dos containers ativos
docker container ps

#### visualizar todos os container que foram executados independente do status
docker container ps -a

#### --rm: remove o container
docker container run --rm debian bash --version

#### i: modo interativo, t: uso do terminal
#### comando run sempre cria um novo container
docker container run -it debian bash

#### --help: lista todos os comandos a ser utilizados no docker
docker container --help
docker image --help
docker volume --help

####  --name: é para nomear o container, mydeb: é o nome do container
docker container run --name mydeb -it debian bash

#### listar os containers ativos
docker container ls

#### executa todos os containers, independentedo status
docker container ls -a

#### a: attached, vai anexar o terminal, ter acesso ao terminal
#### i: modo interativo
#### mydeb: container já criado
docker container start -ai mydeb

#### criação do arquivo dentro do container
touch doc_docker

#### comando para o Windows para encerrar a execução de um container
#### stop: parar container, mydeb: nome do container
docker container stop mydeb
