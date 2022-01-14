# DOCKER

## ESSENTIAL COMMANDS

##### o comando run executa o download da imagem oficial do docker, também cria e executa container de modo interativo (parte visual)
```sh
docker container run hello-world
```

##### download da imagem
```sh
docker image pool
```

##### criação do container
```sh
docker container create
```

##### inicialização do container
```sh
docker container start
```

##### executação do container
```sh
docker container exec
```

##### versão do bash da máquina
```sh
bash --version
```

##### executa o comando ```run``` e ```bash --version```, mostrando a versão do debian do container
```sh
docker container run debian bash --version
```

##### processos do sistema
```sh
ps
```

##### processos dos containers ativos
```sh
docker container ps
```

##### lista todos os container que foram executados independente do status
```sh
docker container ps -a
```

##### ```--rm``` remove o container
```sh
docker container run --rm debian bash --version
```

##### ```i``` modo interativo, ```t``` uso do terminal
##### comando ```run``` sempre cria um novo container
```sh
docker container run -it debian bash
```

##### ```--help``` lista os comandos a ser utilizados no docker
```sh
docker container --help
docker image --help
docker volume --help
```

##### ```--name``` é para nomear o container
##### ```mydeb``` é o nome do container
```sh
docker container run --name mydeb -it debian bash
```

##### listar os containers ativos
```sh
docker container ls
```

##### executa todos os containers, independentedo status
```sh
docker container ls -a
```

##### ```a``` attached, vai anexar o terminal, ter acesso ao terminal
##### ```i``` modo interativo
##### ```mydeb``` container já criado
```sh
docker container start -ai mydeb
```

##### criação do arquivo dentro do container
```sh
touch doc_docker
```

##### comando para o Windows para encerrar a execução de um container
##### ```stop``` parar container
##### ```mydeb``` nome do container
```sh
docker container stop mydeb
```
