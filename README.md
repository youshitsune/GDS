# Gemini Docker Server
Gemini Server made in docker image with agate

## Usage

When you start your docker container, see README.md file.
To see it type.

```bash
    cat README.md
```
That's it you can now access it by using gemini client and typing in your domain.

## Installation
Pull it from github packages.
```bash
    docker pull ghcr.io/youshitsune/gds:main
```

## Build
You first need to build Dockerfile from this repository.

```bash
  sudo docker build -t <name_of_your_image> <path_to_Dockerfile>
```

In place of <name_of_your_image> you can type any name.

To run Docker container with it type this.

```bash
  sudo docker run -dt -p 1965:1965 --name <name_of_your_container> <name_of_your_image>
```

Then to get shell in it type this.
```bash
  sudo docker exec -it <name_of_your_container> bash
```

For additional help with agate visit this link: https://github.com/mbrubeck/agate
