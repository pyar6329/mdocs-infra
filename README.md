# mdocs-infra

## access

| kind     | repository                                             | URL                                              |
|:---------|:-------------------------------------------------------|:-------------------------------------------------|
| frontend | [mdocs-front](https://github.com/pyar6329/mdocs-front) | [http://example.com](http://example.com)         |
| API      | [mdocs-api](https://github.com/pyar6329/mdocs-api)     | [http://api.example.com](http://api.example.com) |

## installation

```bash
$ cd {git clone directory}
$ curl -sL https://goo.gl/AwuFHz | bash
```

## other commands

### Run server

```bash
$ cd mdocs-infra/docker
$ docker-compose up -d
```

### Suspend server

```bash
$ cd mdocs-infra/docker
$ docker-compose down
```

