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
