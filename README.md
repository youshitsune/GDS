# Gemini Docker Server
Gemini Server made in docker image with agate

## Usage

Example of docker-compose.yml, **change DOMAIN variable**.
```yml
services:
    gemini:
        image: ghcr.io/youshitsune/gds:main
        ports:
            - 1965:1965
        environment:
            - DOMAIN=example.org
        volumes:
            - ./content:/root/content
        restart: always
```

Just start it using docker-compose, and that's it.


For additional help with agate visit this link: https://github.com/mbrubeck/agate
