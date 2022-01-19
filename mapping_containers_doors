# MAPPING CONTAINERS DOORS

# -p: flag referente a porta
# 8080: é a porta que vai ser exposta para fora do container
# 80: é a porta interna que o nginx vai ser iniciado
# nginx: é um servidor leve de HTTP, proxy reverso, proxy de e-mail IMAP/POP3, vai ser a imagem usada
docker container run -p 8080:80 nginx

# retorna o caminho atual da pasta onde o terminal está localizado
pwd

# -v: maneira de mapear volume
# $(pwd): local atual onde está executando o comando
# /not-found ou /html: caminho da pasta do host a ser mapeada
# /usr/share/nginx/html: caminho da pasta do container onde está o HTML 
docker container run -p 8080:80 -v $(pwd)/not-found:/usr/share/nginx/html nginx
docker container run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx

# exmaple: html file - html/index.html
    <html>
        <head>
            <title>Curso de Docker</title>
        </head>
        <body>
            <h1>conteudo da pagina</h1>
        </body>
    </html>
