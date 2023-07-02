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

**NOTE:** Your index file should end in .gemini extension. All other files can end in .gmi or .gmni

For additional help with nemini visit this link: https://codeberg.org/pswilde/Nemini
