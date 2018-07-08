# docker-hastebin

Dockerized version of @seejohnrun' [haste-server](https://github.com/seejohnrun/haste-server) pastebin clone written in Node.

## Installation

1. Make sure you've installed all requirements
2. Clone this repository:

```shell
git clone https://github.com/frdmn/docker-hastebin
```

3. Create a copy of the sample `.env` file and adjust it at will:

```shell
cp .env.sample .env
```

4. Spin up the containers:

```shell
docker-compose up -d
```

## Configuration

You can make use of the following environment variables / configurations:

| Environment variable | Default value | Description
|----------------------|---------------|------------| 
| `HASTEBIN_KEY_LENGTH` | `10` | The length of the keys to user |
| `HASTEBIN_MAX_LENGTH` | `400000` | Maximum length of a paste |
| `HASTEBIN_STATIC_MAX_AGE` | `86400` | Max age for static assets |
| `HASTEBIN_RECOMPRESS_STATIC_ASSETS` | `true` | Whether or not to compile static js assets |
| `HASTEBIN_LOGGING_LEVEL` | `verbose` | Logging level |
| `HASTEBIN_LOGGING_TYPE` | `Console` | Logging type |
| `HASTEBIN_LOGGING_COLORIZE` | `false` | Colorize logging output |
| `HASTEBIN_KEY_GENERATOR_TYPE` | `phonetic` | Key generator options |
	
## Usage

### Services

#### Start/create services


```shell
$ docker-compose up -d
Creating hastebin_hastebin_1  ... done
```

#### Stop services

```shell
$ docker-compose stop
Stopping hastebin_hastebin_1  ... done
```

#### Upgrade services

```shell
$ docker-compose stop
$ docker-compose pull
$ docker-compose rm
$ docker-compose up -d
```

#### Check logs

```shell
$ docker-compose logs -f
```

## Contributing

1. Fork it
2. Create your feature branch:

```shell
git checkout -b feature/my-new-feature
```

3. Commit your changes:

```shell
git commit -am 'Add some feature'
```

4. Push to the branch:

```shell
git push origin feature/my-new-feature
```

5. Submit a pull request

## Requirements / Dependencies

* Docker (incl. `docker-compose`)

## Version

1.1.0

## License

[MIT](LICENSE)
