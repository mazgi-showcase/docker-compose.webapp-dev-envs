# rails5-webapp

## Setup

```shellsession
(host)$ docker run -it -w /webapp -v $PWD/webapp:/webapp ruby /bin/bash
```

```shellsession
(docker)# bundle
(docker)# bundle exec rails new . --database=mysql --skip-coffee --skip-test
```

```shellsession
(host)$ docker-compose up
```

```shellsession
(host)$ docker-compose run webapp bin/rails db:create
(host)$ open localhost:3000
```
