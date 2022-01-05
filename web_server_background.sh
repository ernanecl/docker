# SERVIDOR WEB EM BACKGROUND

# -d: modo de executar o container em background
# --name ex-daemon-basic: nomeando o conteúdo a ser criado
docker container run -d --name ex-daemon-basic -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx

# parar o container em background
docker container stop ex-daemon-basic

# reiniciar o container
docker container restart

# comandos para listar os containers em execução
# os 3 comandos podemos usar a flag -a em que listara todos os containers criados
docker container ps
docker container list
docker container ls

# iniciou em modo background
docker container start ex-daemon-basic

# acessar os logs do container
docker container logs ex-daemon-basic

# inspecionar as informações sobre o container em json
docker container inspect ex-daemon-basic

# ver qual é o tipo de sistema que o container está executando
docker container exec ex-daemon-basic uname -or

# listar a criação do container, imagem e volume, respectivamente
docker container ls
docker image ls
docker volume ls

# baixar última (latest) versão da imagem redis
docker image pull redis:latest

# criando uma nova tag para imagem redis, na qual seu ID serão o mesmo, porém são ponteiros para imagens específicas para fins específicos
docker image tag redis:latest cod3r-redis

# responsavel por baixar uma imagem do Docker hub
docker image pull

# para listar
docker image ls

# remover uma ou mais imagens, podendo ser usado o id no lugar do nome
docker image rm image1 image2 image3...

# inspecionar a imagem
docker image inspect image_name

# criar uma nova image da image original
docker image tag origin_image new_image

# busca, interpreta e constroi a imagem
docker image build

# cria uma imagem ou aplica uma nova tag da imagem existente
# podendo publicar a nova imagem
docker image push
