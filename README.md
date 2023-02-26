## Repositorio do teste de backend na Erural

### Tecnologias usadas

```
Ruby On Rails
Docker
Docker-Compose
Bootstrap
```

#### É recomendável quem for rodar o projeto tenha o [docker](https://www.docker.com/) e o [docker-compose](https://docs.docker.com/compose/) instalado na máquina

### Para rodar o projeto

```
git clone https://github.com/Rubensrvsc/desafio_erural.git
```

```
cd desafio_erural
```

```
docker-compose build
```

```
docker-compose run --rm app rails db:create
```

```
docker-compose run --rm app rails db:migrate
```

```
docker-compose run --rm app rails db:seed
```

```
docker-compose up
```

### EndPoints da aplicação

| Method |EndPoint | Description |
|---|---|---|
| GET | `http://localhost:3000/` | Home da aplicação |
| GET | `http://localhost:3000/user/new_invite` | Obtém o formulário para convidar usuário |
| POST | `http://localhost:3000/user/invite` | Cria o convite |
| GET | `http://localhost:3000/room/index` | Obtém a lista de filmes |
| GET | `http://localhost:3000/room/show/:id` | Obtém o filme pelo ID |
| POST | `http://localhost:3000/room/create` | Cria a sala |
| GET | `http://localhost:3000/room/new` | Obtém o formulário para criar a sala |
| POST | `http://localhost:3000/register_user` | Cria um usuário |
| GET | `http://localhost:3000/new_user` | Cria um usuário |
| GET | `http://localhost:3000/room_view_movie` | Obtém o formulário de autorização para o usuário ver o filme |
| POST | `http://localhost:3000/movie` | Envia o parâmetros para o usuário ver o filme |


#### A forma de autorização para o usuário ver o filme é através do seu username, email e do filme escolhido por ele
