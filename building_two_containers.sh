# MY FIRST BUILD

# accessing directory
   cd D:/container
   code .

# in VS Code IDE, to create the following route: container/firt-build/Dockerfile
# is a base of the image to be created
# in a production environment it is recommended to use a specific image so you don't have problems with a version your software has never been tested
   FROM nginx:latest

# executando o comando echo colocando a saída h1 no arquivo index.html
   RUN echo '<h1>Hello world!</h1>' > /usr/share/neginx/html/index.html

# build é o construtor
# -t é referente a tag que vai colocar no nome da imagem
# . indicando o local atual onde está executado o comando para criar a imagem
docker image build -t ex-simple-build .

# agora está executando a imagem do comando anterior no container na porta 80:80
docker container run -p 80:80 ex-simple-build


# MY SECOND BUILD

# accessing directory
cd D:/container
code ..

# in VS Code IDE, to create the following route: container/build-com-arg/Dockerfile
    
  # imagem baseada em Debian
    FROM debian
  
  # criando um label apontando um mantenedor (aquele que mantém) da imagem
    LABEL maintainer 'Cod3r Student <student at ernane_cruz@hotmail.com'

  # definindo um argumento, passando um build (construtor), com argumento chamado de S3_BUCKET, o nome do backet de files
    ARG S3_BUCKET=files
  
  # aplicar argumento em uma variável de ambiente, referenciando o argumento anterior (${S3_BUCKET})
    ENV S3_BUCKET=${S3_BUCKET}

# construindo a imagem com o nome ex-build-org na pasta atual
docker image build -t ex-build-org .

# todas as layers (camadas) que pertencem ao Debian vão ser reaproveitadas para a imagem
# para cada novo comando criado, é uma layer

# fazendo um bash (batendo) na variavel de ambiente 'echo $S3_BUCKET'
docker container run ex-build-org bash -c 'echo $S3_BUCKET'

docker image build --build-org S3_BUCKET=myapp
# alterando o dado da variável de ambiente na linha de comando

docker image inspect --format="{{index .Config.Labels \"maintainer\"}}" ex-build-org
# inspeciona um campo especifico a ser inspecionado
