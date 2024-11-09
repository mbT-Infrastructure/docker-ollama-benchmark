# Ollama Benchmark image

This image contains the [ollama-benchmark] tool from Cloud Mercato.

## Installation

1. Pull from [Docker Hub], download the package from [Releases] or build using `builder/build.sh`

## Usage

This container image runs [ollama-benchmark] in the entrypoint and takes the command as arguments.

The environment variable `SERVER_URL` configures the used Ollama instance and defaults to
`http://host.containers.internal:11434`. It can be overridden by setting the environment variable or by using the `--host` argument.

Example command for running a speed benchmark with the model `llama3.2`:

```
docker run --add-host "host.containers.internal:host-gateway" --rm madebytimo/ollama-benchmark \
    speed --model llama3.2
```

Take a look at the
[projects readme](https://github.com/cloudmercato/ollama-benchmark/blob/main/README.rst#Usage) for a
detailed usage guide.

Alternatively the help message can be printed with:

```
docker run --rm madebytimo/ollama-benchmark --help
```

## Development

To run for development execute:

```bash
docker compose --file docker-compose-dev.yaml up --build
```

[Docker Hub]: https://hub.docker.com/r/madebytimo/ollama-benchmark
[Releases]: https://github.com/madebytimo/docker-ollama-benchmark/releases
[ollama-benchmark]: https://github.com/cloudmercato/ollama-benchmark
