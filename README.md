# mdocs-infra

## access

| kind     | repository                                             | URL                                              |
|:---------|:-------------------------------------------------------|:-------------------------------------------------|
| frontend | [mdocs-front](https://github.com/pyar6329/mdocs-front) | [http://example.net](http://example.net)         |
| API      | [mdocs-api](https://github.com/pyar6329/mdocs-api)     | [http://api.example.net](http://api.example.net) |

## installation

git cloning

```bash
$ git clone git@github.com:pyar6329/mdocs-infra.git
$ git clone git@github.com:pyar6329/mdocs-api.git mdocs-infra/docker/mdocs-api
$ git clone git@github.com:pyar6329/mdocs-front.git mdocs-infra/docker/mdocs-front
```

configure DNS

```bash
$ echo "127.0.0.1\texample.net" | sudo tee -a /etc/hosts
$ echo "127.0.0.1\tapi.example.net" | sudo tee -a /etc/hosts
```

## Run server

```bash
$ cd mdocs-infra/docker
$ docker-compose up -d
```

## Suspend server

```bash
$ cd mdocs-infra/docker
$ docker-compose down
```

